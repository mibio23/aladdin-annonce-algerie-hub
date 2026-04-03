-- ============================================================
-- CHUNK 26/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'd474c71b-3c02-4b49-aa48-83eb536538d2'::uuid AS category_uuid, 'synthetiseurs' AS slug, 'Synthétiseurs' AS name, d6061e19-6b8d-4b7f-a9e8-c353a718c4ed::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'e6fac3a1-ebd3-48c3-8109-57916e5df290'::uuid AS category_uuid, 'batteries-acoustiques' AS slug, 'Batteries acoustiques' AS name, d6061e19-6b8d-4b7f-a9e8-c353a718c4ed::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a12357c8-c574-4772-94f4-798c48a782c5'::uuid AS category_uuid, 'batteries-electroniques' AS slug, 'Batteries électroniques' AS name, d6061e19-6b8d-4b7f-a9e8-c353a718c4ed::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '53359e5e-aa6f-48ad-b6df-af8a89245500'::uuid AS category_uuid, 'percussions' AS slug, 'Percussions' AS name, d6061e19-6b8d-4b7f-a9e8-c353a718c4ed::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'f4247a7a-a4cd-45f9-84fd-0ffb4d1f7836'::uuid AS category_uuid, 'harmonicas' AS slug, 'Harmonicas' AS name, d6061e19-6b8d-4b7f-a9e8-c353a718c4ed::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'c80637ed-b9ea-4cc6-b43a-8b4d69048d72'::uuid AS category_uuid, 'platines-dj' AS slug, 'Platines DJ (vinyle, numérique)' AS name, 3cf9ecc0-cef1-494d-939b-820eacecc071::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'cddd1ce8-bda3-499a-b48e-97963845d856'::uuid AS category_uuid, 'controleurs-dj' AS slug, 'Contrôleurs DJ' AS name, 3cf9ecc0-cef1-494d-939b-820eacecc071::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'b6cf4584-ee14-4e1f-ac81-725e3669e08c'::uuid AS category_uuid, 'mixeurs-dj' AS slug, 'Mixeurs DJ' AS name, 3cf9ecc0-cef1-494d-939b-820eacecc071::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '4ed93a9e-1510-4c61-a3ad-636643492997'::uuid AS category_uuid, 'casques-dj-2' AS slug, 'Casques DJ' AS name, 3cf9ecc0-cef1-494d-939b-820eacecc071::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '97ad7fcb-50dd-4199-b616-9f206428c974'::uuid AS category_uuid, 'eclairage-dj' AS slug, 'Éclairage DJ' AS name, 3cf9ecc0-cef1-494d-939b-820eacecc071::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '56e18df2-8483-4ad6-ada5-46fa4b43d993'::uuid AS category_uuid, 'pads-boites-rythmes' AS slug, 'Pads & boîtes à rythmes' AS name, 3cf9ecc0-cef1-494d-939b-820eacecc071::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'f8c7ed79-b469-4b83-b23d-a0d68e166e23'::uuid AS category_uuid, 'logiciels-dj' AS slug, 'Logiciels DJ' AS name, 3cf9ecc0-cef1-494d-939b-820eacecc071::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'c660cd1e-0b46-4b71-b794-044bceb25d09'::uuid AS category_uuid, 'interfaces-dj' AS slug, 'Interfaces DJ' AS name, 3cf9ecc0-cef1-494d-939b-820eacecc071::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '389cf774-1bd0-403f-96a1-efefd580a778'::uuid AS category_uuid, 'cordes-guitare-violon' AS slug, 'Cordes guitare & violon' AS name, 93d550f1-69c8-44b1-b33b-ac24916660b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'ffaa923d-1408-4061-91a2-808f5f964561'::uuid AS category_uuid, 'mediators' AS slug, 'Médiators' AS name, 93d550f1-69c8-44b1-b33b-ac24916660b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a91237f0-da00-4360-b9fb-0bcca696ee39'::uuid AS category_uuid, 'capodastres' AS slug, 'Capodastres' AS name, 93d550f1-69c8-44b1-b33b-ac24916660b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '446b067b-fc21-4c6e-883a-f944cce91bb6'::uuid AS category_uuid, 'stands-instruments' AS slug, 'Stands instruments' AS name, 93d550f1-69c8-44b1-b33b-ac24916660b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '7047be04-f60a-4eb2-b2b8-c9552dfe9e9c'::uuid AS category_uuid, 'housses-etuis' AS slug, 'Housses & étuis' AS name, 93d550f1-69c8-44b1-b33b-ac24916660b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '6ef4dcb5-7a5a-47dd-9d34-9af3c077b3f5'::uuid AS category_uuid, 'accordeurs-electroniques' AS slug, 'Accordeurs électroniques' AS name, 93d550f1-69c8-44b1-b33b-ac24916660b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '45ac3b9e-c460-4b2b-a9d8-00570c1263d8'::uuid AS category_uuid, 'metronome' AS slug, 'Métronome' AS name, 93d550f1-69c8-44b1-b33b-ac24916660b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '687622b3-c340-46bf-9b93-03ceab74a1f8'::uuid AS category_uuid, 'batteries-peaux' AS slug, 'Batteries & peaux' AS name, 93d550f1-69c8-44b1-b33b-ac24916660b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '0c09b882-5142-4e7a-902f-12c595c20a93'::uuid AS category_uuid, 'accessoires-instruments-baguettes' AS slug, 'Baguettes' AS name, 93d550f1-69c8-44b1-b33b-ac24916660b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '5b125aa5-aab5-4a0b-8b67-16d2a6e1ffb9'::uuid AS category_uuid, 'ampli-guitare-basse' AS slug, 'Ampli guitare & basse' AS name, 93d550f1-69c8-44b1-b33b-ac24916660b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '6e9cba3d-2018-49aa-a81f-78db85696c8a'::uuid AS category_uuid, 'cables-jack-xlr' AS slug, 'Câbles jack et XLR' AS name, 93d550f1-69c8-44b1-b33b-ac24916660b6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '8a0228cc-f159-43e4-9b82-a24976b4791f'::uuid AS category_uuid, 'streaming-creation-contenu-cameras-streaming' AS slug, 'Caméras streaming' AS name, 6475cd8e-a735-4fe0-be28-a8b8ea6019ab::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'da2a73f8-b340-453c-9dfc-267d2544ce0e'::uuid AS category_uuid, 'webcams-hd' AS slug, 'Webcams HD' AS name, 6475cd8e-a735-4fe0-be28-a8b8ea6019ab::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a071efa6-4235-461a-a44b-dea09b28b4fc'::uuid AS category_uuid, 'micros-streaming' AS slug, 'Micros streaming' AS name, 6475cd8e-a735-4fe0-be28-a8b8ea6019ab::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a2b6fdd7-c87b-4bfb-8991-b8362004c43b'::uuid AS category_uuid, 'anneaux-lumineux' AS slug, 'Anneaux lumineux' AS name, 6475cd8e-a735-4fe0-be28-a8b8ea6019ab::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '591ead1b-f7fa-4e4c-a6e8-f74f966ea167'::uuid AS category_uuid, 'lampes-led-createurs' AS slug, 'Lampes LED créateurs' AS name, 6475cd8e-a735-4fe0-be28-a8b8ea6019ab::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '8aeeeadd-00ac-443a-b55b-5e5b122d0053'::uuid AS category_uuid, 'green-screen' AS slug, 'Green screen' AS name, 6475cd8e-a735-4fe0-be28-a8b8ea6019ab::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '2968d5f2-8b95-4bf2-845f-10561c77bf7c'::uuid AS category_uuid, 'pupitres-streaming' AS slug, 'Pupitres streaming' AS name, 6475cd8e-a735-4fe0-be28-a8b8ea6019ab::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'e35fb875-ee6d-4c1c-a44b-20e991467d86'::uuid AS category_uuid, 'streaming-creation-contenu-cartes-acquisition-video' AS slug, 'Cartes d' AS name, 6475cd8e-a735-4fe0-be28-a8b8ea6019ab::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'c921bf96-dd01-48b0-b657-ba9249e5c8f7'::uuid AS category_uuid, 'equipement-podcast' AS slug, 'Équipement podcast' AS name, 6475cd8e-a735-4fe0-be28-a8b8ea6019ab::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a6091310-7d56-4f6e-b950-a15b4247836b'::uuid AS category_uuid, 'radios-fm' AS slug, 'Radios FM' AS name, 9808de6f-2010-4760-8c74-ec294f70792a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '3ef0e18b-66be-4012-8c17-666eee6a3349'::uuid AS category_uuid, 'radios-digitaux' AS slug, 'Radios digitaux' AS name, 9808de6f-2010-4760-8c74-ec294f70792a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'f4fb1e9c-1b62-4713-a302-a68f49af821c'::uuid AS category_uuid, 'lecteurs-mp3' AS slug, 'Lecteurs MP3' AS name, 9808de6f-2010-4760-8c74-ec294f70792a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'f96e5ac5-8aec-4d9d-80ba-9b1007151a90'::uuid AS category_uuid, 'enceintes-nomades' AS slug, 'Enceintes nomades' AS name, 9808de6f-2010-4760-8c74-ec294f70792a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '901b11f6-beb6-41a7-8519-a10a80ac84ce'::uuid AS category_uuid, 'autoradios' AS slug, 'Autoradios' AS name, 9808de6f-2010-4760-8c74-ec294f70792a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '19ce4662-33ab-4935-8ce8-b47fa9e632ad'::uuid AS category_uuid, 'amplificateurs-voiture' AS slug, 'Amplificateurs voiture' AS name, 9808de6f-2010-4760-8c74-ec294f70792a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '37af0a3f-69ad-446d-bcaa-4978e8a23d78'::uuid AS category_uuid, 'subwoofers-voiture' AS slug, 'Subwoofers voiture' AS name, 9808de6f-2010-4760-8c74-ec294f70792a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a5a6f431-6be0-4ed2-8be5-a07602c5891a'::uuid AS category_uuid, 'ecrans-android-voiture' AS slug, 'Écrans Android voiture' AS name, 9808de6f-2010-4760-8c74-ec294f70792a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a09fcfcd-c1d7-4c73-9662-55de46a5d583'::uuid AS category_uuid, 'videoprojecteurs-4k' AS slug, 'Vidéoprojecteurs 4K' AS name, 08fede23-c2d7-42f2-8757-e0ac0741da7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '1121633c-d0ac-4e51-a450-72b163a10cea'::uuid AS category_uuid, 'ecrans-de-projection' AS slug, 'Écrans de projection' AS name, 08fede23-c2d7-42f2-8757-e0ac0741da7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '089aa269-fce8-48cb-a524-475acbc329a5'::uuid AS category_uuid, 'supports-plafond' AS slug, 'Supports plafond' AS name, 08fede23-c2d7-42f2-8757-e0ac0741da7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '08d49368-0752-4977-b367-a292d9e425a2'::uuid AS category_uuid, 'systemes-audio-surround' AS slug, 'Systèmes audio surround' AS name, 08fede23-c2d7-42f2-8757-e0ac0741da7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a27dfdef-90eb-4317-a6f8-f31eca9b3dee'::uuid AS category_uuid, 'cablage-hdmi' AS slug, 'Câblage HDMI' AS name, 08fede23-c2d7-42f2-8757-e0ac0741da7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'd8e3174d-c57e-459d-9a0a-2f190e505f5d'::uuid AS category_uuid, 'convertisseurs-audio-video' AS slug, 'Convertisseurs audio/vidéo' AS name, 08fede23-c2d7-42f2-8757-e0ac0741da7d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '38a0b1dc-6988-4399-9287-c11c19dea9dd'::uuid AS category_uuid, 'mini-projecteurs-portables' AS slug, 'Mini projecteurs portables' AS name, 20a46e3a-dce9-4ba4-953f-98f64d110460::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'd3dc5656-378b-4304-ae09-b87515e9974d'::uuid AS category_uuid, 'enceintes-outdoor' AS slug, 'Enceintes outdoor' AS name, 20a46e3a-dce9-4ba4-953f-98f64d110460::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a1525449-ccc2-4f1e-af39-13f10b1686e3'::uuid AS category_uuid, 'casques-sport' AS slug, 'Casques sport' AS name, 20a46e3a-dce9-4ba4-953f-98f64d110460::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'b87764ac-b2e8-4d49-b594-ccdc57dda9c9'::uuid AS category_uuid, 'amplis-nomades' AS slug, 'Amplis nomades' AS name, 20a46e3a-dce9-4ba4-953f-98f64d110460::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '0db92b26-4d0c-45b4-9401-486a94d79a2f'::uuid AS category_uuid, 'enregistreurs-de-terrain' AS slug, 'Enregistreurs de terrain' AS name, 20a46e3a-dce9-4ba4-953f-98f64d110460::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'baa68db1-747e-4420-b902-424146abe98a'::uuid AS category_uuid, 'accessoires-image-son-cables-hdmi' AS slug, 'Câbles HDMI' AS name, ec67e3df-2f3f-45bc-b18b-8c9e74a45dd1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'e7ca5472-1ae4-4567-8fa5-8eedad004cee'::uuid AS category_uuid, 'cables-audio-jack-rca' AS slug, 'Câbles audio jack & RCA' AS name, ec67e3df-2f3f-45bc-b18b-8c9e74a45dd1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'cbb357be-f1e2-4ef5-a018-53f432c63015'::uuid AS category_uuid, 'accessoires-image-son-adaptateurs' AS slug, 'Adaptateurs' AS name, ec67e3df-2f3f-45bc-b18b-8c9e74a45dd1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '4ab7023d-de89-4b4b-ba89-518828883609'::uuid AS category_uuid, 'accessoires-image-son-batteries-chargeurs' AS slug, 'Batteries & chargeurs' AS name, ec67e3df-2f3f-45bc-b18b-8c9e74a45dd1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '45631f0c-910f-4a01-a216-d7f11c7c007b'::uuid AS category_uuid, 'nettoyants-lentilles' AS slug, 'Nettoyants lentilles' AS name, ec67e3df-2f3f-45bc-b18b-8c9e74a45dd1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '0356edf6-febf-4f51-ae1b-b1606e9ce435'::uuid AS category_uuid, 'filtres-photo' AS slug, 'Filtres photo' AS name, ec67e3df-2f3f-45bc-b18b-8c9e74a45dd1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'c0127faa-14a5-438c-b7c8-66fba7a084b2'::uuid AS category_uuid, 'cartes-sd' AS slug, 'Cartes SD' AS name, ec67e3df-2f3f-45bc-b18b-8c9e74a45dd1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'b1358153-89f4-4ea4-acbc-9a54bd8f94e5'::uuid AS category_uuid, 'boitiers-transport' AS slug, 'Boîtiers transport' AS name, ec67e3df-2f3f-45bc-b18b-8c9e74a45dd1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '4dccd97d-144e-4895-8577-f38e67e15930'::uuid AS category_uuid, 'pieds-camera' AS slug, 'Pieds caméra' AS name, ec67e3df-2f3f-45bc-b18b-8c9e74a45dd1::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '450c2c39-a75c-4393-bf67-30f004ecff46'::uuid AS category_uuid, 'marques-populaires-sony' AS slug, 'Sony' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '8807644e-1faa-4600-9264-5ec933dc6edc'::uuid AS category_uuid, 'marques-populaires-samsung' AS slug, 'Samsung' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'd872782f-898c-46b4-b560-3da9b139b5a9'::uuid AS category_uuid, 'marques-populaires-lg' AS slug, 'LG' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '57f994ea-96ae-4da3-9767-6bd5c6a16459'::uuid AS category_uuid, 'panasonic' AS slug, 'Panasonic' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '8aab9690-48be-4582-9f85-6fce802bdc19'::uuid AS category_uuid, 'canon' AS slug, 'Canon' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'cf0a6ac8-8d3c-4bd9-8f4c-9979663efd9f'::uuid AS category_uuid, 'nikon' AS slug, 'Nikon' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '2c3652c3-3e70-40e7-b47f-d980323e3949'::uuid AS category_uuid, 'fujifilm' AS slug, 'Fujifilm' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'c2d6a172-83e5-4852-9788-450fd65a723b'::uuid AS category_uuid, 'marques-populaires-jbl' AS slug, 'JBL' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '57efbead-559e-4bad-9a7c-c292da690e6a'::uuid AS category_uuid, 'bose' AS slug, 'Bose' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '2fb3eb78-8684-49ba-8670-617e1aa6b5fe'::uuid AS category_uuid, 'marques-populaires-yamaha' AS slug, 'Yamaha' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '81fb5ffe-f284-468b-af62-81a879cf4b8c'::uuid AS category_uuid, 'pioneer' AS slug, 'Pioneer' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'bbc03d15-cbca-4bf3-9a18-8b27b70b69b2'::uuid AS category_uuid, 'shure' AS slug, 'Shure' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'b7f391d1-6e3e-4a35-8544-c72ef44249e9'::uuid AS category_uuid, 'rode' AS slug, 'Rode' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '5af5d888-e148-4471-9685-b2002ce7f9e6'::uuid AS category_uuid, 'behringer' AS slug, 'Behringer' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '573ed45e-82bb-4f08-b0e1-6235b410d274'::uuid AS category_uuid, 'sennheiser' AS slug, 'Sennheiser' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'cf4eb3b7-50ea-47ed-b25e-5d8904b3ab09'::uuid AS category_uuid, 'marshall' AS slug, 'Marshall' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '5751631c-fc8f-484e-a462-e0334a547c02'::uuid AS category_uuid, 'roland' AS slug, 'Roland' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '4ce0fc33-e25b-4115-a826-a787fcf39012'::uuid AS category_uuid, 'casio' AS slug, 'Casio' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '34c6530a-565b-47eb-a0ce-599a9d3e4429'::uuid AS category_uuid, 'alesis' AS slug, 'Alesis' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '0839cb79-e8f6-42ba-839a-216ca04cb665'::uuid AS category_uuid, 'numark' AS slug, 'Numark' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '9a5dea94-a19d-4e79-acf5-6e4b8903178c'::uuid AS category_uuid, 'image-domestique' AS slug, 'Image domestique' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'cb027956-e32f-44c2-94ba-c0a57b6e5f08'::uuid AS category_uuid, 'son-domestique' AS slug, 'Son domestique' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'e6d0de40-e9c6-4e7f-9d7c-563bfe2684fb'::uuid AS category_uuid, 'audio-professionnel' AS slug, 'Audio professionnel' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '19116fe7-7541-4fab-820b-bac9948faeb6'::uuid AS category_uuid, 'studio-enregistrement' AS slug, 'Studio d’enregistrement' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '8383754c-de5a-41b1-b59a-824fb640bb19'::uuid AS category_uuid, 'dj-evenementiel' AS slug, 'DJ & événementiel' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '1dcdb077-ac99-45df-b07b-c3aad3eabc33'::uuid AS category_uuid, 'segments-usage-creation-contenu' AS slug, 'Création de contenu' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a0773420-629c-44aa-867e-ddc34bb4dc39'::uuid AS category_uuid, 'musique-amateur' AS slug, 'Musique amateur' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '758246b1-b3d9-4df5-a91b-59ca67a4bacd'::uuid AS category_uuid, 'musique-professionnelle' AS slug, 'Musique professionnelle' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '665a3873-3612-44a7-b016-962c4f55f06c'::uuid AS category_uuid, 'jeux-video-consoles' AS slug, 'Jeux Vidéo & Consoles' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'f4158431-0af9-40cd-ba6d-4dd32fd95809'::uuid AS category_uuid, 'consoles-de-salon' AS slug, 'Consoles de salon' AS name, 665a3873-3612-44a7-b016-962c4f55f06c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'c2140154-2990-4698-8c20-b8297e02d5ce'::uuid AS category_uuid, 'consoles-portables' AS slug, 'Consoles portables' AS name, 665a3873-3612-44a7-b016-962c4f55f06c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'c897c786-a012-4be1-a5ac-a40958e19c10'::uuid AS category_uuid, 'jeux-playstation' AS slug, 'Jeux PlayStation' AS name, 665a3873-3612-44a7-b016-962c4f55f06c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '72228892-6790-4233-989f-99daaeb4cac5'::uuid AS category_uuid, 'jeux-xbox' AS slug, 'Jeux Xbox' AS name, 665a3873-3612-44a7-b016-962c4f55f06c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'a81c858d-757e-455a-83ed-78137a6cc548'::uuid AS category_uuid, 'jeux-nintendo' AS slug, 'Jeux Nintendo' AS name, 665a3873-3612-44a7-b016-962c4f55f06c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'e79a3f5a-1c6f-42b8-b147-73d6ea204a40'::uuid AS category_uuid, 'jeux-pc-mac' AS slug, 'Jeux PC & Mac' AS name, 665a3873-3612-44a7-b016-962c4f55f06c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT 'f58ed181-f2ca-4e26-94b8-0e24b6abb75f'::uuid AS category_uuid, 'jeux-retro-collections' AS slug, 'Jeux rétro & collections' AS name, 665a3873-3612-44a7-b016-962c4f55f06c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '6d10bfdc-a581-4e4a-b1da-cf015a9fd566'::uuid AS category_uuid, 'accessoires-gaming' AS slug, 'Accessoires gaming' AS name, 665a3873-3612-44a7-b016-962c4f55f06c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '964de3a7-ec71-48fd-ace6-5d19eaba81eb'::uuid AS category_uuid, 'equipements-vr-ar' AS slug, 'Équipements VR & AR' AS name, 665a3873-3612-44a7-b016-962c4f55f06c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '8cc9061e-17db-40c1-bd36-b1effbbd60bd'::uuid AS category_uuid, 'composants-e-sport' AS slug, 'Composants & équipements e‑sport' AS name, 665a3873-3612-44a7-b016-962c4f55f06c::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 26 terminé: 100 entrées
