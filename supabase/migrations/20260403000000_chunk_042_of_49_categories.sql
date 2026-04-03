-- ============================================================
-- CHUNK 42/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'eba24b9a-89f6-4980-a70b-498a83f68691'::uuid AS category_uuid, 'sacs-dos' AS slug, 'sacs à dos' AS name, 02268560-67bd-4748-b601-35f71dbe3eb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '6a536378-4928-4688-a19d-79278b6fb960'::uuid AS category_uuid, 'accessoires-trekking' AS slug, 'accessoires de trekking' AS name, 02268560-67bd-4748-b601-35f71dbe3eb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '72dd8052-17c4-442e-8a78-178f92b0fee6'::uuid AS category_uuid, 'equipements-outdoor' AS slug, 'équipements outdoor' AS name, 02268560-67bd-4748-b601-35f71dbe3eb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'a2e1fbb2-c9a2-4fda-8051-46fc8a3d1021'::uuid AS category_uuid, 'cartes-touristiques' AS slug, 'cartes touristiques' AS name, 02268560-67bd-4748-b601-35f71dbe3eb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'f8e06ebe-5fef-4af4-81a1-95f873443a85'::uuid AS category_uuid, 'guides-papier' AS slug, 'guides papier' AS name, 02268560-67bd-4748-b601-35f71dbe3eb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '1fad7ca1-0ce7-4186-99c0-116dab8ede20'::uuid AS category_uuid, 'equipements-plage' AS slug, 'équipements de plage' AS name, 02268560-67bd-4748-b601-35f71dbe3eb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '630e2c27-8b9c-4c86-a1a0-69cb8aa2d970'::uuid AS category_uuid, 'accessoires-securite' AS slug, 'accessoires de sécurité' AS name, 02268560-67bd-4748-b601-35f71dbe3eb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT 'd1fe84a9-209c-4b2f-82e0-199cd33e1fcc'::uuid AS category_uuid, 'trousses-voyage' AS slug, 'trousses de voyage' AS name, 02268560-67bd-4748-b601-35f71dbe3eb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '0180e81d-5f31-4d16-b0a9-a846c204a03f'::uuid AS category_uuid, 'kits-medicaux-voyage' AS slug, 'kits médicaux de voyage' AS name, 02268560-67bd-4748-b601-35f71dbe3eb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.893Z' AS created_at, '2026-04-03T10:15:31.893Z' AS updated_at
  UNION ALL
  SELECT '6feedeb5-d314-48e8-923b-f34a43f6602b'::uuid AS category_uuid, 'materiels-camping' AS slug, 'matériels de camping' AS name, 02268560-67bd-4748-b601-35f71dbe3eb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'ca1383ce-a0f9-40fc-8547-7c6c413bd258'::uuid AS category_uuid, 'lampes-frontales' AS slug, 'lampes frontales' AS name, 02268560-67bd-4748-b601-35f71dbe3eb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '85a7d9fe-4626-4c2d-b164-20ed69d3b48f'::uuid AS category_uuid, 'gourdes' AS slug, 'gourdes' AS name, 02268560-67bd-4748-b601-35f71dbe3eb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '1a304842-7ad3-4b6b-905f-3858d2a73ab5'::uuid AS category_uuid, 'equipements-sahariens' AS slug, 'équipements sahariens' AS name, 02268560-67bd-4748-b601-35f71dbe3eb9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '06b5ff51-b20b-47f0-b51d-a30563d3692f'::uuid AS category_uuid, 'restaurants-locaux' AS slug, 'restaurants locaux' AS name, 71d8abd1-0ebf-470a-a47a-5924755aff19::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '6c300131-84e4-4bad-a6c2-c8cba560bad3'::uuid AS category_uuid, 'specialites-regionales' AS slug, 'spécialités régionales' AS name, 71d8abd1-0ebf-470a-a47a-5924755aff19::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'a17dd3f8-fea4-4e01-b3b0-00dcef2f80da'::uuid AS category_uuid, 'degustations-traditionnelles' AS slug, 'dégustations traditionnelles' AS name, 71d8abd1-0ebf-470a-a47a-5924755aff19::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'b00146cc-938c-46c4-b60a-460d2750b1c4'::uuid AS category_uuid, 'repas-typiques' AS slug, 'repas typiques' AS name, 71d8abd1-0ebf-470a-a47a-5924755aff19::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '582f6bc1-fc81-4f84-98fd-786216e25355'::uuid AS category_uuid, 'visites-fermes' AS slug, 'visites de fermes' AS name, 71d8abd1-0ebf-470a-a47a-5924755aff19::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'f5183873-4067-4ea1-b77d-4e4366f894f6'::uuid AS category_uuid, 'visites-plantations' AS slug, 'visites de plantations' AS name, 71d8abd1-0ebf-470a-a47a-5924755aff19::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '213a2f07-b66e-4a59-b724-1c7192bbf6cd'::uuid AS category_uuid, 'routes-gastronomiques' AS slug, 'routes gastronomiques' AS name, 71d8abd1-0ebf-470a-a47a-5924755aff19::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'e7f15112-8b7e-42de-8539-95d6941be126'::uuid AS category_uuid, 'produits-terroir' AS slug, 'produits du terroir' AS name, 71d8abd1-0ebf-470a-a47a-5924755aff19::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '1fb82048-8014-49f2-a98b-f6c4ef603d1d'::uuid AS category_uuid, 'experiences-culinaires' AS slug, 'expériences culinaires' AS name, 71d8abd1-0ebf-470a-a47a-5924755aff19::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'e8def778-4c39-4d6c-bf77-f67a0ada56cb'::uuid AS category_uuid, 'participation-fetes-locales' AS slug, 'participation à des fêtes locales' AS name, 71d8abd1-0ebf-470a-a47a-5924755aff19::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '1b1ffe3f-2dd3-4aab-b4e3-b9432042b971'::uuid AS category_uuid, 'evenements-billetterie' AS slug, 'Événements & Billetterie' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '7665ca8e-c935-4cdf-a5d9-c0072ead0907'::uuid AS category_uuid, 'concerts-spectacles' AS slug, 'Concerts & Spectacles' AS name, 1b1ffe3f-2dd3-4aab-b4e3-b9432042b971::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '2e968a29-93e2-4943-bfed-80b4ca872d5d'::uuid AS category_uuid, 'evenements-sportifs' AS slug, 'Événements Sportifs' AS name, 1b1ffe3f-2dd3-4aab-b4e3-b9432042b971::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '23bac679-6dbf-4614-881a-a54b7e43176b'::uuid AS category_uuid, 'cinema-avant-premieres' AS slug, 'Cinéma & Avant-premières' AS name, 1b1ffe3f-2dd3-4aab-b4e3-b9432042b971::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'a8f553ec-e808-4f3f-b8a5-9412708e0042'::uuid AS category_uuid, 'theatre-arts-sceniques' AS slug, 'Théâtre & Arts Scéniques' AS name, 1b1ffe3f-2dd3-4aab-b4e3-b9432042b971::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '3d732569-ddb2-4317-9001-ac48b6aa3a5c'::uuid AS category_uuid, 'conferences-formations' AS slug, 'Conférences & Formations' AS name, 1b1ffe3f-2dd3-4aab-b4e3-b9432042b971::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'e0a18379-56da-4390-9827-c0477efe96d8'::uuid AS category_uuid, 'festivals-fetes' AS slug, 'Festivals & Fêtes' AS name, 1b1ffe3f-2dd3-4aab-b4e3-b9432042b971::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '200d5efc-e13a-47fc-80c9-e20cc5698b77'::uuid AS category_uuid, 'parcs-loisirs' AS slug, 'Parcs & Loisirs' AS name, 1b1ffe3f-2dd3-4aab-b4e3-b9432042b971::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'e0c15765-8c09-4228-8cc7-5e90d90e395d'::uuid AS category_uuid, 'evenements-familiaux' AS slug, 'Événements Familiaux' AS name, 1b1ffe3f-2dd3-4aab-b4e3-b9432042b971::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'bf17319c-5816-4e0c-aff6-6b9b189d37cc'::uuid AS category_uuid, 'gala-receptions' AS slug, 'Gala & Réceptions' AS name, 1b1ffe3f-2dd3-4aab-b4e3-b9432042b971::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'd175811d-6beb-44c5-a98f-a4735f531536'::uuid AS category_uuid, 'salons-expositions' AS slug, 'Salons & Expositions' AS name, 1b1ffe3f-2dd3-4aab-b4e3-b9432042b971::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '9a063851-152b-404c-bed6-1ce35f43d0c3'::uuid AS category_uuid, 'billetterie-transport' AS slug, 'Billetterie de Transport' AS name, 1b1ffe3f-2dd3-4aab-b4e3-b9432042b971::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '66f65609-25be-4ef2-bc3d-8e8b56076a45'::uuid AS category_uuid, 'evenements-religieux-traditionnels' AS slug, 'Événements Religieux & Traditionnels' AS name, 1b1ffe3f-2dd3-4aab-b4e3-b9432042b971::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '95259fd5-a637-4bff-8c06-dbd78e7d6479'::uuid AS category_uuid, 'evenements-billetterie-services-evenementiels' AS slug, 'Services Événementiels' AS name, 1b1ffe3f-2dd3-4aab-b4e3-b9432042b971::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'fb3d8907-34ee-4fe5-a8fa-a350d8a88e31'::uuid AS category_uuid, 'packages-offres-speciales' AS slug, 'Packages & Offres Spéciales' AS name, 1b1ffe3f-2dd3-4aab-b4e3-b9432042b971::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'ae08610f-7e95-41e9-a6b9-f6e939163ae6'::uuid AS category_uuid, 'concerts-live' AS slug, 'concerts live' AS name, 7665ca8e-c935-4cdf-a5d9-c0072ead0907::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '7efd0fe9-fd20-41ac-8206-1833cd14a306'::uuid AS category_uuid, 'festivals-musicaux' AS slug, 'festivals musicaux' AS name, 7665ca8e-c935-4cdf-a5d9-c0072ead0907::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '53235a6f-b6cc-4153-849c-48d0c1ee96f2'::uuid AS category_uuid, 'spectacles-humoristiques' AS slug, 'spectacles humoristiques' AS name, 7665ca8e-c935-4cdf-a5d9-c0072ead0907::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '379cc5cb-67e3-4491-964f-9449933bb7c6'::uuid AS category_uuid, 'one-man-show' AS slug, 'one-man-show' AS name, 7665ca8e-c935-4cdf-a5d9-c0072ead0907::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'ed70f1e6-75b0-4da0-bb51-184ee6d73209'::uuid AS category_uuid, 'comedies-musicales' AS slug, 'comédies musicales' AS name, 7665ca8e-c935-4cdf-a5d9-c0072ead0907::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '1605ef8b-116e-4062-8fc7-375c13c4f5bf'::uuid AS category_uuid, 'soirees-artistiques' AS slug, 'soirées artistiques' AS name, 7665ca8e-c935-4cdf-a5d9-c0072ead0907::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'd49a6026-bad2-4947-9438-caa2bf53b31a'::uuid AS category_uuid, 'performances-culturelles' AS slug, 'performances culturelles' AS name, 7665ca8e-c935-4cdf-a5d9-c0072ead0907::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '74c36a6e-2c26-44b5-8346-810b0dc9e618'::uuid AS category_uuid, 'recitals' AS slug, 'récitals' AS name, 7665ca8e-c935-4cdf-a5d9-c0072ead0907::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '08b0e6fa-fc30-4794-9d3b-3169c6c726e8'::uuid AS category_uuid, 'matchs-football' AS slug, 'matchs de football' AS name, 2e968a29-93e2-4943-bfed-80b4ca872d5d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '6343ca82-8f1c-47ec-a5be-6b6132992b3d'::uuid AS category_uuid, 'competitions-sportives' AS slug, 'compétitions sportives' AS name, 2e968a29-93e2-4943-bfed-80b4ca872d5d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '46e9f914-03b5-4f37-a3f4-f1ec0962d481'::uuid AS category_uuid, 'tournois' AS slug, 'tournois' AS name, 2e968a29-93e2-4943-bfed-80b4ca872d5d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '270222ab-56d8-4952-b36c-a9283000696b'::uuid AS category_uuid, 'sports-mecaniques' AS slug, 'sports mécaniques' AS name, 2e968a29-93e2-4943-bfed-80b4ca872d5d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'ac2620a1-3705-45d0-97ab-5eed2406348a'::uuid AS category_uuid, 'arts-martiaux' AS slug, 'arts martiaux' AS name, 2e968a29-93e2-4943-bfed-80b4ca872d5d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '8ca47546-d894-4478-a0c2-af8407a05485'::uuid AS category_uuid, 'marathons' AS slug, 'marathons' AS name, 2e968a29-93e2-4943-bfed-80b4ca872d5d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '9234b05d-e164-4f13-ac8c-1902f92e9586'::uuid AS category_uuid, 'evenements-e-sport' AS slug, 'événements e-sport' AS name, 2e968a29-93e2-4943-bfed-80b4ca872d5d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'f1373594-5736-4753-b87d-877241c6d2db'::uuid AS category_uuid, 'billets-cinema' AS slug, 'billets cinéma' AS name, 23bac679-6dbf-4614-881a-a54b7e43176b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'fd5c30d4-d8b7-40dc-a459-a9f64b300f7e'::uuid AS category_uuid, 'projections-speciales' AS slug, 'projections spéciales' AS name, 23bac679-6dbf-4614-881a-a54b7e43176b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '1c53d031-dd4e-459a-a6a1-3368a5d445e1'::uuid AS category_uuid, 'avant-premieres' AS slug, 'avant-premières' AS name, 23bac679-6dbf-4614-881a-a54b7e43176b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'f771a311-2abb-4653-9fdc-d14d5c4cf51f'::uuid AS category_uuid, 'festivals-film' AS slug, 'festivals du film' AS name, 23bac679-6dbf-4614-881a-a54b7e43176b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'f84c8e44-f538-4df9-b2ca-775f58f166af'::uuid AS category_uuid, 'seances-vip' AS slug, 'séances VIP' AS name, 23bac679-6dbf-4614-881a-a54b7e43176b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '5597d83c-b08e-478d-bb08-dadc7cc1afba'::uuid AS category_uuid, 'pieces-theatre' AS slug, 'pièces de théâtre' AS name, a8f553ec-e808-4f3f-b8a5-9412708e0042::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '634083fe-9a22-4460-a78d-8855cd67d6b6'::uuid AS category_uuid, 'operas' AS slug, 'opéras' AS name, a8f553ec-e808-4f3f-b8a5-9412708e0042::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '3c433522-3a55-4722-aac9-30217d354b20'::uuid AS category_uuid, 'ballets' AS slug, 'ballets' AS name, a8f553ec-e808-4f3f-b8a5-9412708e0042::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'fed34a65-7bca-48be-abf6-1cc433f35a98'::uuid AS category_uuid, 'danse-contemporaine' AS slug, 'danse contemporaine' AS name, a8f553ec-e808-4f3f-b8a5-9412708e0042::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '72a03b5f-b815-4b72-b559-3b3ad821eadc'::uuid AS category_uuid, 'representations-culturelles' AS slug, 'représentations culturelles' AS name, a8f553ec-e808-4f3f-b8a5-9412708e0042::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '54bee536-9f57-4b27-a3c7-cdd373ab80f0'::uuid AS category_uuid, 'conferences-professionnelles' AS slug, 'conférences professionnelles' AS name, 3d732569-ddb2-4317-9001-ac48b6aa3a5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '6b0069ee-fae1-4975-96e2-97c1b87e227e'::uuid AS category_uuid, 'seminaires' AS slug, 'séminaires' AS name, 3d732569-ddb2-4317-9001-ac48b6aa3a5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '0958edfe-549d-4a00-ad47-684c1dc756a5'::uuid AS category_uuid, 'formations' AS slug, 'formations' AS name, 3d732569-ddb2-4317-9001-ac48b6aa3a5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'a546731c-ee7a-417a-85b3-9951305e0593'::uuid AS category_uuid, 'conferences-formations-ateliers-pratiques' AS slug, 'ateliers pratiques' AS name, 3d732569-ddb2-4317-9001-ac48b6aa3a5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '267d6f43-9b83-4ced-a1a8-98c964de4c46'::uuid AS category_uuid, 'masterclass' AS slug, 'masterclass' AS name, 3d732569-ddb2-4317-9001-ac48b6aa3a5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'd8d39ad2-bd16-4013-9ad6-8e71486a25f0'::uuid AS category_uuid, 'salons' AS slug, 'salons' AS name, 3d732569-ddb2-4317-9001-ac48b6aa3a5c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'd9606ddf-ce2d-4c36-9069-9dbfdc79b824'::uuid AS category_uuid, 'festivals-fetes-festivals-culturels' AS slug, 'festivals culturels' AS name, e0a18379-56da-4390-9827-c0477efe96d8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'd4d11d8e-30c7-475c-9995-aeaaa23d2ae1'::uuid AS category_uuid, 'fetes-locales' AS slug, 'fêtes locales' AS name, e0a18379-56da-4390-9827-c0477efe96d8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'd26759ef-c9c1-4f94-960f-f1fcc8702c25'::uuid AS category_uuid, 'evenements-traditionnels' AS slug, 'événements traditionnels' AS name, e0a18379-56da-4390-9827-c0477efe96d8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '347cfe5d-800a-4529-95ba-6283e8c77cff'::uuid AS category_uuid, 'carnavals' AS slug, 'carnavals' AS name, e0a18379-56da-4390-9827-c0477efe96d8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '4911ba22-e2f3-48ff-9149-4baa2b62602a'::uuid AS category_uuid, 'celebrations-nationales' AS slug, 'célébrations nationales' AS name, e0a18379-56da-4390-9827-c0477efe96d8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'af5744e0-40a6-4622-9e75-fa1950aec6fb'::uuid AS category_uuid, 'parcs-attraction' AS slug, 'billets parcs d’attraction' AS name, 200d5efc-e13a-47fc-80c9-e20cc5698b77::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '2ebdc7d4-18e3-4351-8a33-77c37cfe4a6a'::uuid AS category_uuid, 'parcs-aquatiques' AS slug, 'parcs aquatiques' AS name, 200d5efc-e13a-47fc-80c9-e20cc5698b77::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '12dcfabe-80be-4548-8b77-b6b77ae06faa'::uuid AS category_uuid, 'jardins-zoologiques' AS slug, 'jardins zoologiques' AS name, 200d5efc-e13a-47fc-80c9-e20cc5698b77::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '519dcbd9-901b-4153-b13f-257bbc18176b'::uuid AS category_uuid, 'circuits-decouvertes' AS slug, 'circuits découvertes' AS name, 200d5efc-e13a-47fc-80c9-e20cc5698b77::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '0d717003-5296-4d4c-b60d-48d88f579861'::uuid AS category_uuid, 'activites-loisirs' AS slug, 'activités de loisirs' AS name, 200d5efc-e13a-47fc-80c9-e20cc5698b77::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '7ea79b9f-6c88-47b5-b710-27f31e2f6d83'::uuid AS category_uuid, 'spectacles-enfants' AS slug, 'spectacles pour enfants' AS name, e0c15765-8c09-4228-8cc7-5e90d90e395d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '44b59369-0f11-455d-b700-e54b9c6d3523'::uuid AS category_uuid, 'animations' AS slug, 'animations' AS name, e0c15765-8c09-4228-8cc7-5e90d90e395d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '8bd0d25f-dd03-4ad5-a701-f7c912cb4d78'::uuid AS category_uuid, 'evenements-familiaux-ateliers-creatifs' AS slug, 'ateliers créatifs' AS name, e0c15765-8c09-4228-8cc7-5e90d90e395d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '146f02a0-8cfa-495e-9779-e78111343a52'::uuid AS category_uuid, 'evenements-familiaux-evenements-educatifs' AS slug, 'événements éducatifs' AS name, e0c15765-8c09-4228-8cc7-5e90d90e395d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '2b756cae-867e-4433-8e22-09081332cdc0'::uuid AS category_uuid, 'shows-interactifs' AS slug, 'shows interactifs' AS name, e0c15765-8c09-4228-8cc7-5e90d90e395d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'cdb98616-64e4-40bc-b081-44d1a016ca77'::uuid AS category_uuid, 'soirees-gala' AS slug, 'soirées gala' AS name, bf17319c-5816-4e0c-aff6-6b9b189d37cc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '2227ea45-2ea0-4438-8f49-2dcb18d73b2a'::uuid AS category_uuid, 'diners-caritatifs' AS slug, 'dîners caritatifs' AS name, bf17319c-5816-4e0c-aff6-6b9b189d37cc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '1f98a9e7-6a60-41f3-8e10-1e47b6682a01'::uuid AS category_uuid, 'evenements-vip' AS slug, 'événements VIP' AS name, bf17319c-5816-4e0c-aff6-6b9b189d37cc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'e243fc2c-23c1-4ced-aa09-a799b17b9204'::uuid AS category_uuid, 'soirees-privees' AS slug, 'soirées privées' AS name, bf17319c-5816-4e0c-aff6-6b9b189d37cc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '69cd0d6e-256a-4cbb-bd64-7d20e7c69542'::uuid AS category_uuid, 'evenements-prestige' AS slug, 'événements de prestige' AS name, bf17319c-5816-4e0c-aff6-6b9b189d37cc::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'cbc4660b-c3d5-4869-aea8-afeb06cc5d03'::uuid AS category_uuid, 'salons-professionnels' AS slug, 'salons professionnels' AS name, d175811d-6beb-44c5-a98f-a4735f531536::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '2604d52c-e3ce-4c97-974b-6a10806cfe25'::uuid AS category_uuid, 'foires-commerciales' AS slug, 'foires commerciales' AS name, d175811d-6beb-44c5-a98f-a4735f531536::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '0441cf0a-98f6-41cd-8997-94d5af6c37c9'::uuid AS category_uuid, 'expositions-artistiques' AS slug, 'expositions artistiques' AS name, d175811d-6beb-44c5-a98f-a4735f531536::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '50edfdd7-18f5-45e7-8195-f1b16758a738'::uuid AS category_uuid, 'expositions-scientifiques' AS slug, 'expositions scientifiques' AS name, d175811d-6beb-44c5-a98f-a4735f531536::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT 'fdf227bb-5c50-46f0-902b-0b9544e2f924'::uuid AS category_uuid, 'billets-autocar' AS slug, 'billets d’autocar' AS name, 9a063851-152b-404c-bed6-1ce35f43d0c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '794aa5d1-0cb4-428e-a068-95d2e9599610'::uuid AS category_uuid, 'billets-train' AS slug, 'billets de train' AS name, 9a063851-152b-404c-bed6-1ce35f43d0c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '4d250d67-c97e-41c4-b046-f7b72186f9b2'::uuid AS category_uuid, 'billets-ferry' AS slug, 'billets de ferry' AS name, 9a063851-152b-404c-bed6-1ce35f43d0c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '49eb624a-121f-43ea-9b0a-e99b3162681e'::uuid AS category_uuid, 'traversees-maritimes' AS slug, 'traversées maritimes' AS name, 9a063851-152b-404c-bed6-1ce35f43d0c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '5fec885d-f09f-44c0-a524-93147ca1ecf0'::uuid AS category_uuid, 'bus-interwilayas' AS slug, 'bus interwilayas' AS name, 9a063851-152b-404c-bed6-1ce35f43d0c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '9bb1f974-08c9-49cc-a105-e300f0a50b6a'::uuid AS category_uuid, 'billets-touristiques' AS slug, 'billets touristiques' AS name, 9a063851-152b-404c-bed6-1ce35f43d0c3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
  UNION ALL
  SELECT '36b0e676-2910-4106-b841-67fe0574869a'::uuid AS category_uuid, 'mawlid' AS slug, 'mawlid' AS name, 66f65609-25be-4ef2-bc3d-8e8b56076a45::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.894Z' AS created_at, '2026-04-03T10:15:31.894Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 42 terminé: 100 entrées
