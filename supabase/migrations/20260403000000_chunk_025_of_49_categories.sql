-- ============================================================
-- CHUNK 25/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '027a0e09-0aef-4695-836f-9408e05f10f3'::uuid AS category_uuid, 'decorations-traditionnelles' AS slug, 'Décorations traditionnelles' AS name, 6ecf55a1-23c4-4060-aa23-41334c1743c0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'd24fec18-a92d-4e25-bc64-4c453707bf54'::uuid AS category_uuid, 'articles-berberes-orientaux' AS slug, 'Articles berbères & orientaux' AS name, 6ecf55a1-23c4-4060-aa23-41334c1743c0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '2799aba6-9026-49e2-b209-ebadb6aef212'::uuid AS category_uuid, 'berberes' AS slug, 'Berbères' AS name, d24fec18-a92d-4e25-bc64-4c453707bf54::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '53e6a485-7f1b-4582-8c3c-dc08a1029886'::uuid AS category_uuid, 'articles-berberes-orientaux-orientaux' AS slug, 'Orientaux' AS name, d24fec18-a92d-4e25-bc64-4c453707bf54::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '21658cf8-42ad-4855-92f5-8df4294b56f2'::uuid AS category_uuid, 'objets-artisanaux-locaux-paniers-tresses' AS slug, 'Paniers tressés' AS name, 6ecf55a1-23c4-4060-aa23-41334c1743c0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '234d9e50-8083-4dd8-98de-f706069e2976'::uuid AS category_uuid, 'poufs-artisanaux' AS slug, 'Poufs artisanaux' AS name, 6ecf55a1-23c4-4060-aa23-41334c1743c0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '57574987-5864-4d74-8ee7-39968b222878'::uuid AS category_uuid, 'art-mural-local' AS slug, 'Art mural local' AS name, 6ecf55a1-23c4-4060-aa23-41334c1743c0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '93dc65db-85bc-4212-b6ac-58402e67989e'::uuid AS category_uuid, 'image-son-equipement-musique' AS slug, 'Image, Son & Équipement de Musique' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'fc416b6b-8557-4d79-ad42-eb33f0881487'::uuid AS category_uuid, 'televiseurs-affichage' AS slug, 'Téléviseurs & Affichage' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '960d08e7-3852-40bd-8843-5e607d8afc65'::uuid AS category_uuid, 'audio-home-cinema' AS slug, 'Audio & Home Cinéma' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '2b2d2702-edde-4970-88c2-a3b8966753cb'::uuid AS category_uuid, 'casques-ecouteurs' AS slug, 'Casques & Écouteurs' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '9f0394de-9dbc-4c12-9297-ab134a7bc784'::uuid AS category_uuid, 'image-son-equipement-musique-photo-video' AS slug, 'Photo & Vidéo' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '55661456-2952-40d3-be29-5f96f91a21eb'::uuid AS category_uuid, 'studios-audio-enregistrement' AS slug, 'Studios Audio & Enregistrement' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'c00f8648-855e-41b1-8db0-ccb981cecdcc'::uuid AS category_uuid, 'sonorisation-evenementiel' AS slug, 'Sonorisation & Événementiel' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'd6061e19-6b8d-4b7f-a9e8-c353a718c4ed'::uuid AS category_uuid, 'equipement-musique' AS slug, 'Équipement de Musique' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '3cf9ecc0-cef1-494d-939b-820eacecc071'::uuid AS category_uuid, 'equipement-dj' AS slug, 'Équipement DJ' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '93d550f1-69c8-44b1-b33b-ac24916660b6'::uuid AS category_uuid, 'accessoires-instruments' AS slug, 'Accessoires Instruments' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '6475cd8e-a735-4fe0-be28-a8b8ea6019ab'::uuid AS category_uuid, 'streaming-creation-contenu' AS slug, 'Streaming, Création & Contenu' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '9808de6f-2010-4760-8c74-ec294f70792a'::uuid AS category_uuid, 'radios-multimedia' AS slug, 'Radios & Multimédia' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '08fede23-c2d7-42f2-8757-e0ac0741da7d'::uuid AS category_uuid, 'equipements-cinema-maison' AS slug, 'Équipements Cinéma Maison' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '20a46e3a-dce9-4ba4-953f-98f64d110460'::uuid AS category_uuid, 'electroniques-portables' AS slug, 'Électroniques Portables' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'ec67e3df-2f3f-45bc-b18b-8c9e74a45dd1'::uuid AS category_uuid, 'accessoires-image-son' AS slug, 'Accessoires Image & Son' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'fbb49f62-59b4-4e7e-a636-e9ea4fa8d428'::uuid AS category_uuid, 'image-son-equipement-musique-marques-populaires' AS slug, 'Marques Populaires' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '9d60374d-f457-4975-ab4b-a7e2898276e8'::uuid AS category_uuid, 'image-son-equipement-musique-segments-usage' AS slug, 'Segments d’Usage' AS name, 93dc65db-85bc-4212-b6ac-58402e67989e::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '14ca4632-643e-4062-a0f3-839c5884e677'::uuid AS category_uuid, 'tv-led' AS slug, 'TV LED' AS name, fc416b6b-8557-4d79-ad42-eb33f0881487::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '67b5f412-1f1f-4e5b-9cff-cb03c0246bec'::uuid AS category_uuid, 'tv-oled' AS slug, 'TV OLED' AS name, fc416b6b-8557-4d79-ad42-eb33f0881487::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '654801a1-19c1-431a-bbb3-6eecc56d3ecb'::uuid AS category_uuid, 'tv-qled' AS slug, 'TV QLED' AS name, fc416b6b-8557-4d79-ad42-eb33f0881487::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'd0b769c3-331a-4227-94e4-f4cd18edce3d'::uuid AS category_uuid, 'tv-4k' AS slug, 'TV 4K' AS name, fc416b6b-8557-4d79-ad42-eb33f0881487::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'e2294e6c-cd3d-49ce-b470-477dee5073fc'::uuid AS category_uuid, 'tv-8k' AS slug, 'TV 8K' AS name, fc416b6b-8557-4d79-ad42-eb33f0881487::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '63a15d4d-1426-4e8d-baec-ebe6d0f4d16c'::uuid AS category_uuid, 'tv-smart-android' AS slug, 'TV Smart Android' AS name, fc416b6b-8557-4d79-ad42-eb33f0881487::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '2f5bc8be-054b-46db-a5ec-006a72478251'::uuid AS category_uuid, 'tv-connectees' AS slug, 'TV connectées' AS name, fc416b6b-8557-4d79-ad42-eb33f0881487::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '60858ee6-6c6b-49cc-8eb1-268f53401c56'::uuid AS category_uuid, 'moniteurs-streaming' AS slug, 'Moniteurs streaming' AS name, fc416b6b-8557-4d79-ad42-eb33f0881487::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '058ce58a-5df6-4fff-973f-ca3b7a040a2c'::uuid AS category_uuid, 'televiseurs-affichage-videoprojecteurs' AS slug, 'Vidéoprojecteurs' AS name, fc416b6b-8557-4d79-ad42-eb33f0881487::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'c24e629e-d9ff-4785-8e95-51a4334da98c'::uuid AS category_uuid, 'televiseurs-affichage-mini-projecteurs' AS slug, 'Mini projecteurs' AS name, fc416b6b-8557-4d79-ad42-eb33f0881487::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'e047c966-50e0-47cd-8e2b-22cc7f4c3f94'::uuid AS category_uuid, 'ecrans-portables' AS slug, 'Écrans portables' AS name, fc416b6b-8557-4d79-ad42-eb33f0881487::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '4d335bcf-bc30-420b-8d26-b9a999bba993'::uuid AS category_uuid, 'supports-tv-muraux' AS slug, 'Supports TV muraux' AS name, fc416b6b-8557-4d79-ad42-eb33f0881487::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '51e7f605-3b88-43e5-ac0a-316cc2415073'::uuid AS category_uuid, 'pieds-tv' AS slug, 'Pieds TV' AS name, fc416b6b-8557-4d79-ad42-eb33f0881487::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'dcd4f6a5-9e44-4d33-94bd-749e892fa47d'::uuid AS category_uuid, 'audio-home-cinema-barres-de-son' AS slug, 'Barres de son' AS name, 960d08e7-3852-40bd-8843-5e607d8afc65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'b3d744e7-4664-4b14-a02a-91009565f949'::uuid AS category_uuid, 'home-cinema-5-1' AS slug, 'Home cinéma 5.1' AS name, 960d08e7-3852-40bd-8843-5e607d8afc65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'ba3e8a1b-ed79-4244-ad84-81cc1dc88880'::uuid AS category_uuid, 'systemes-audio-2-1' AS slug, 'Systèmes audio 2.1' AS name, 960d08e7-3852-40bd-8843-5e607d8afc65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'ca368c19-b463-4294-aca5-e6120d4bdb17'::uuid AS category_uuid, 'caissons-de-basses' AS slug, 'Caissons de basses' AS name, 960d08e7-3852-40bd-8843-5e607d8afc65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '4d4b27e1-9c8c-4d50-991d-586ffb560df2'::uuid AS category_uuid, 'amplificateurs' AS slug, 'Amplificateurs' AS name, 960d08e7-3852-40bd-8843-5e607d8afc65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '33e385df-0108-446f-a712-6546d630f889'::uuid AS category_uuid, 'recepteurs-av' AS slug, 'Récepteurs AV' AS name, 960d08e7-3852-40bd-8843-5e607d8afc65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '17e6ffd9-e773-48d8-a897-1546b8a5bf28'::uuid AS category_uuid, 'enceintes-hifi' AS slug, 'Enceintes hi-fi' AS name, 960d08e7-3852-40bd-8843-5e607d8afc65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'c18aad89-7f31-4f6b-be43-c7cc269b3f78'::uuid AS category_uuid, 'audio-home-cinema-enceintes-bluetooth' AS slug, 'Enceintes Bluetooth' AS name, 960d08e7-3852-40bd-8843-5e607d8afc65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'e21af7f1-5e1a-404b-84dc-75e2018af41a'::uuid AS category_uuid, 'enceintes-intelligentes' AS slug, 'Enceintes intelligentes' AS name, 960d08e7-3852-40bd-8843-5e607d8afc65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'ebb84699-a0c4-458e-ad19-fa62ad18ed7b'::uuid AS category_uuid, 'multiroom-audio' AS slug, 'Multiroom audio' AS name, 960d08e7-3852-40bd-8843-5e607d8afc65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '035176e2-f8e2-4e80-8ce0-569c0e5102f9'::uuid AS category_uuid, 'soundbars-gaming' AS slug, 'Soundbars gaming' AS name, 960d08e7-3852-40bd-8843-5e607d8afc65::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '834ff234-020c-44ce-bbb2-875ba2173896'::uuid AS category_uuid, 'casques-ecouteurs-casques-filaires' AS slug, 'Casques filaires' AS name, 2b2d2702-edde-4970-88c2-a3b8966753cb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '9975af77-7419-434e-af26-6e5e160d0eae'::uuid AS category_uuid, 'casques-bluetooth' AS slug, 'Casques Bluetooth' AS name, 2b2d2702-edde-4970-88c2-a3b8966753cb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '2613ad85-9466-480c-88f2-f83db945b578'::uuid AS category_uuid, 'casques-ecouteurs-casques-gaming' AS slug, 'Casques gaming' AS name, 2b2d2702-edde-4970-88c2-a3b8966753cb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '97bf4dde-d768-4e9b-859b-332317f0ae78'::uuid AS category_uuid, 'casques-antibruit' AS slug, 'Casques antibruit' AS name, 2b2d2702-edde-4970-88c2-a3b8966753cb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'e806bb4b-e101-46cc-b0a9-4db09d1eefce'::uuid AS category_uuid, 'ecouteurs-intra-auriculaires' AS slug, 'Écouteurs intra-auriculaires' AS name, 2b2d2702-edde-4970-88c2-a3b8966753cb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '5cc12928-d395-459d-aa0c-c417dcba154a'::uuid AS category_uuid, 'ecouteurs-tws' AS slug, 'Écouteurs TWS' AS name, 2b2d2702-edde-4970-88c2-a3b8966753cb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '6a1c264d-b62a-4655-b01c-6e7fa775b48d'::uuid AS category_uuid, 'ecouteurs-sport' AS slug, 'Écouteurs sport' AS name, 2b2d2702-edde-4970-88c2-a3b8966753cb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '0672337e-a411-4f2c-bb73-3c93d0ebe927'::uuid AS category_uuid, 'casques-studio' AS slug, 'Casques studio' AS name, 2b2d2702-edde-4970-88c2-a3b8966753cb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'abc8ca6f-5f19-4772-95ee-f33216c09da6'::uuid AS category_uuid, 'casques-dj' AS slug, 'Casques DJ' AS name, 2b2d2702-edde-4970-88c2-a3b8966753cb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '59f64fbd-6e60-44b8-8369-c49f6051308c'::uuid AS category_uuid, 'appareils-photo-reflex' AS slug, 'Appareils photo reflex' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '5d6eba62-3287-451b-a11a-f06d84bc5990'::uuid AS category_uuid, 'appareils-photo-hybrides' AS slug, 'Appareils photo hybrides' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '2b278605-d481-4a9c-a778-f22798c488a8'::uuid AS category_uuid, 'appareils-compacts' AS slug, 'Appareils compacts' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'e64b6f90-291b-4174-818f-789b39a4b362'::uuid AS category_uuid, 'camescopes' AS slug, 'Caméscopes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'bffbcb97-8fac-45eb-b542-5447f812f77f'::uuid AS category_uuid, 'photo-video-action-cams' AS slug, 'Action cams' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'cbd9edc2-02a7-4286-83f6-24255308a1aa'::uuid AS category_uuid, 'drones-camera' AS slug, 'Drones caméra' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '1d393a63-0399-4cff-92a4-9d6c3520b995'::uuid AS category_uuid, 'objectifs-photo' AS slug, 'Objectifs photo' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '472f7c69-2da8-4a49-9ca0-afbd61bdf6d7'::uuid AS category_uuid, 'trepieds' AS slug, 'Trépieds' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'f566a22e-619b-48b5-a6bf-9641d82f06da'::uuid AS category_uuid, 'photo-video-stabilisateurs' AS slug, 'Stabilisateurs' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'fa4ff241-c97c-478f-94c4-50d6d2332232'::uuid AS category_uuid, 'gimbals' AS slug, 'Gimbals' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '9e474eed-bd5a-40d3-8f35-bc84ea9b0ec1'::uuid AS category_uuid, 'flashes-eclairages' AS slug, 'Flashes & éclairages' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'd4bbec36-7355-42c5-ae02-7dddc72dbd65'::uuid AS category_uuid, 'cartes-memoire' AS slug, 'Cartes mémoire' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '05433fcb-95d2-46ec-9e1e-fa039156657e'::uuid AS category_uuid, 'fonds-photo' AS slug, 'Fonds photo' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '3ba64c47-5363-49bc-9421-4b6c61547510'::uuid AS category_uuid, 'microphones-usb' AS slug, 'Microphones USB' AS name, 55661456-2952-40d3-be29-5f96f91a21eb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '4576ce47-4cf1-4a4f-a517-e311312a215d'::uuid AS category_uuid, 'microphones-xlr' AS slug, 'Microphones XLR' AS name, 55661456-2952-40d3-be29-5f96f91a21eb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '8b75b0b7-03b2-4037-8fed-a7b5383d4684'::uuid AS category_uuid, 'interfaces-audio' AS slug, 'Interfaces audio' AS name, 55661456-2952-40d3-be29-5f96f91a21eb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'df672b0b-7ff7-4b49-8bdb-d13d00f3959f'::uuid AS category_uuid, 'casques-studio-2' AS slug, 'Casques studio' AS name, 55661456-2952-40d3-be29-5f96f91a21eb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'be5c7be2-b904-44cb-8650-7509e80924d6'::uuid AS category_uuid, 'moniteurs-de-studio' AS slug, 'Moniteurs de studio' AS name, 55661456-2952-40d3-be29-5f96f91a21eb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '4f8854f6-3a9e-42b6-a7eb-742729f7143f'::uuid AS category_uuid, 'mixeurs-audio' AS slug, 'Mixeurs audio' AS name, 55661456-2952-40d3-be29-5f96f91a21eb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '00910c20-a49e-4d49-9c8a-5feb45674f2d'::uuid AS category_uuid, 'preamplis' AS slug, 'Préamplis' AS name, 55661456-2952-40d3-be29-5f96f91a21eb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT '55491b68-47ee-41d7-a180-cf4af8cc8136'::uuid AS category_uuid, 'enregistreurs-portables' AS slug, 'Enregistreurs portables' AS name, 55661456-2952-40d3-be29-5f96f91a21eb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.884Z' AS created_at, '2026-04-03T10:15:31.884Z' AS updated_at
  UNION ALL
  SELECT 'a712bb52-9373-4f15-ae67-1cb580330189'::uuid AS category_uuid, 'cartes-son-externes' AS slug, 'Cartes son externes' AS name, 55661456-2952-40d3-be29-5f96f91a21eb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '41257c14-6ab4-430a-8ce4-316be5f32184'::uuid AS category_uuid, 'shields-acoustiques' AS slug, 'Shields acoustiques' AS name, 55661456-2952-40d3-be29-5f96f91a21eb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '94209eec-5348-4a95-93d4-98b05ee6bbd8'::uuid AS category_uuid, 'accessoires-studio' AS slug, 'Accessoires studio' AS name, 55661456-2952-40d3-be29-5f96f91a21eb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '976917af-3f3b-45b2-9173-f35e8d8a6dbf'::uuid AS category_uuid, 'enceintes-professionnelles' AS slug, 'Enceintes professionnelles' AS name, c00f8648-855e-41b1-8db0-ccb981cecdcc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'be876f8d-3871-4f23-b55f-a3942ee63221'::uuid AS category_uuid, 'caissons-de-basses-pro' AS slug, 'Caissons de basses pro' AS name, c00f8648-855e-41b1-8db0-ccb981cecdcc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '330d15f3-d288-4f6a-bf25-0252ce7e8ef5'::uuid AS category_uuid, 'amplis-de-puissance' AS slug, 'Amplis de puissance' AS name, c00f8648-855e-41b1-8db0-ccb981cecdcc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '974ac9b5-3f9e-4664-be12-0e5423f2cdce'::uuid AS category_uuid, 'mixeurs-tables-de-mixage' AS slug, 'Mixeurs & tables de mixage' AS name, c00f8648-855e-41b1-8db0-ccb981cecdcc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '1ea508f2-25bb-4797-90a5-0902a1c56530'::uuid AS category_uuid, 'micros-hf-sans-fil' AS slug, 'Micros HF & sans fil' AS name, c00f8648-855e-41b1-8db0-ccb981cecdcc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '8eb0bfb5-5349-456d-8351-c9deb6e7bacd'::uuid AS category_uuid, 'systemes-karaoke' AS slug, 'Systèmes karaoke' AS name, c00f8648-855e-41b1-8db0-ccb981cecdcc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '66d806b2-7605-44ee-a481-c13338bb65ac'::uuid AS category_uuid, 'jeux-de-lumiere' AS slug, 'Jeux de lumière' AS name, c00f8648-855e-41b1-8db0-ccb981cecdcc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'c0aca4e0-e096-4e99-86ee-40ba278b99ec'::uuid AS category_uuid, 'lasers' AS slug, 'Lasers' AS name, c00f8648-855e-41b1-8db0-ccb981cecdcc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '8f044fe0-a4ff-4bdd-83dc-3a1a14b3e19a'::uuid AS category_uuid, 'machines-a-fumee' AS slug, 'Machines à fumée' AS name, c00f8648-855e-41b1-8db0-ccb981cecdcc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'fb8e0b49-8068-46ad-b169-597d9b948167'::uuid AS category_uuid, 'stands-et-trepieds' AS slug, 'Stands et trépieds' AS name, c00f8648-855e-41b1-8db0-ccb981cecdcc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a25fc331-8e0a-48fd-aa1c-f95034526c9c'::uuid AS category_uuid, 'cablage-audio-xlr' AS slug, 'Câblage audio & XLR' AS name, c00f8648-855e-41b1-8db0-ccb981cecdcc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'aa286a33-34a5-4c84-8d1c-5d0f634c6625'::uuid AS category_uuid, 'guitares-acoustiques' AS slug, 'Guitares acoustiques' AS name, d6061e19-6b8d-4b7f-a9e8-c353a718c4ed::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '3ec46e41-97bd-4858-b86a-4e65f98dc64b'::uuid AS category_uuid, 'guitares-electriques' AS slug, 'Guitares électriques' AS name, d6061e19-6b8d-4b7f-a9e8-c353a718c4ed::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'e96eb91f-0970-40c8-a28f-6bb4f122ed41'::uuid AS category_uuid, 'guitares-basses' AS slug, 'Guitares basses' AS name, d6061e19-6b8d-4b7f-a9e8-c353a718c4ed::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'c5c93480-4490-43cb-9731-4fce1a2f6c72'::uuid AS category_uuid, 'violons' AS slug, 'Violons' AS name, d6061e19-6b8d-4b7f-a9e8-c353a718c4ed::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'e928bfcd-0d85-4c82-bccd-6946ebcda264'::uuid AS category_uuid, 'mandolines' AS slug, 'Mandolines' AS name, d6061e19-6b8d-4b7f-a9e8-c353a718c4ed::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'f2e45842-0d87-40e4-a2a3-c860ac51bd42'::uuid AS category_uuid, 'oud-instruments-orientaux' AS slug, 'Oud & instruments orientaux' AS name, d6061e19-6b8d-4b7f-a9e8-c353a718c4ed::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '6347d3a7-d212-4bf4-a5c1-4320823850aa'::uuid AS category_uuid, 'pianos-numeriques' AS slug, 'Pianos numériques' AS name, d6061e19-6b8d-4b7f-a9e8-c353a718c4ed::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '00b11019-e7e9-49e9-a417-1a812eef35c5'::uuid AS category_uuid, 'claviers-arrangeurs' AS slug, 'Claviers arrangeurs' AS name, d6061e19-6b8d-4b7f-a9e8-c353a718c4ed::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 25 terminé: 100 entrées
