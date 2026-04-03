-- ============================================================
-- CHUNK 20/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '0325d5b3-cb87-4043-9ecd-94343ee3576a'::uuid AS category_uuid, 'sacs-createurs' AS slug, 'Sacs de créateurs' AS name, 4c05cba0-c5e9-4073-af53-78ee55c70960::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '99144318-7f3a-4d93-b694-3f30bfe8939e'::uuid AS category_uuid, 'edition-limitee' AS slug, 'Sacs en édition limitée' AS name, 4c05cba0-c5e9-4073-af53-78ee55c70960::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '6f9a3a67-6cf1-45b5-932f-de623ba69d0b'::uuid AS category_uuid, 'haute-couture' AS slug, 'Sacs haute couture' AS name, 4c05cba0-c5e9-4073-af53-78ee55c70960::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'b262a363-ae15-4b72-bb5c-4a2f9d67e8d8'::uuid AS category_uuid, 'vintage-certifies' AS slug, 'Sacs vintage certifiés' AS name, 4c05cba0-c5e9-4073-af53-78ee55c70960::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '2260a425-f357-48b5-b336-0b88301e5683'::uuid AS category_uuid, 'collection-dior' AS slug, 'Sacs collection Dior' AS name, 4c05cba0-c5e9-4073-af53-78ee55c70960::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '5873941b-0786-4f48-a3cf-75e1bf23255a'::uuid AS category_uuid, 'collection-chanel' AS slug, 'Sacs collection Chanel' AS name, 4c05cba0-c5e9-4073-af53-78ee55c70960::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'a49e7540-c705-4949-8fe1-a7a18e51c8c4'::uuid AS category_uuid, 'collection-lv' AS slug, 'Sacs collection LV' AS name, 4c05cba0-c5e9-4073-af53-78ee55c70960::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '1cf9bbbd-0a1e-4645-8d4c-b274a82beba9'::uuid AS category_uuid, 'collection-ysl' AS slug, 'Sacs collection YSL' AS name, 4c05cba0-c5e9-4073-af53-78ee55c70960::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '7b06c60f-270e-4834-b2ca-5b6cef7e1c27'::uuid AS category_uuid, 'expertise-authentification' AS slug, 'Expertise & authentification' AS name, 4c05cba0-c5e9-4073-af53-78ee55c70960::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '139e804f-bed8-4316-98c4-26e3aabf3b04'::uuid AS category_uuid, 'cuir-artisanal' AS slug, 'Sacs en cuir artisanal' AS name, e0d3550f-2848-4a85-ae0c-bef334924232::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'f20ddff6-1eb4-4b83-9fa1-f1fd097fffa5'::uuid AS category_uuid, 'sacs-tresses' AS slug, 'Sacs tressés' AS name, e0d3550f-2848-4a85-ae0c-bef334924232::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '79f0c8a8-4e58-432d-935a-6f6839e1c839'::uuid AS category_uuid, 'sacs-berberes' AS slug, 'Sacs berbères' AS name, e0d3550f-2848-4a85-ae0c-bef334924232::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'f4749944-5835-4c15-be00-7c31be66383b'::uuid AS category_uuid, 'sacs-traditionnels' AS slug, 'Sacs traditionnels' AS name, e0d3550f-2848-4a85-ae0c-bef334924232::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'a373cdbb-fa9e-42ef-b4ed-dfe196e3b26a'::uuid AS category_uuid, 'sacs-faits-main' AS slug, 'Sacs faits main' AS name, e0d3550f-2848-4a85-ae0c-bef334924232::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '8beff625-bb07-4e42-acca-44db380aae72'::uuid AS category_uuid, 'creations-locales' AS slug, 'Créations locales & pièces uniques' AS name, e0d3550f-2848-4a85-ae0c-bef334924232::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'b8eabe69-73a5-44b6-94b5-ac1c83bd7890'::uuid AS category_uuid, 'cuir-veritable' AS slug, 'Cuir véritable' AS name, 54598672-c01e-4991-a1d5-83fa8149eeb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '3cb4a3bb-ecd5-4bca-9774-ac18e13eb00c'::uuid AS category_uuid, 'cuir-vegan' AS slug, 'Cuir vegan' AS name, 54598672-c01e-4991-a1d5-83fa8149eeb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '31250950-ef95-4be2-92cb-a451908a16e6'::uuid AS category_uuid, 'cuir-recycle' AS slug, 'Cuir recyclé' AS name, 54598672-c01e-4991-a1d5-83fa8149eeb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '1da97e40-25f8-406b-9033-6dab734bd76a'::uuid AS category_uuid, 'nylon' AS slug, 'Nylon' AS name, 54598672-c01e-4991-a1d5-83fa8149eeb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'f1f09cca-34bb-472c-8520-9fca3dc389c2'::uuid AS category_uuid, 'polyester' AS slug, 'Polyester' AS name, 54598672-c01e-4991-a1d5-83fa8149eeb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '3f0581b4-aa87-4ac2-a1e7-1693bcd65bac'::uuid AS category_uuid, 'materiaux-fabrication-toile' AS slug, 'Toile' AS name, 54598672-c01e-4991-a1d5-83fa8149eeb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '3da2d4ff-9583-405e-976f-93a4945b4c5b'::uuid AS category_uuid, 'canevas' AS slug, 'Canevas' AS name, 54598672-c01e-4991-a1d5-83fa8149eeb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '0e0119ca-6a6f-4c98-8b76-58e907ae941c'::uuid AS category_uuid, 'abs' AS slug, 'ABS' AS name, 54598672-c01e-4991-a1d5-83fa8149eeb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '272f7395-ff21-43ca-b08e-31e275768e19'::uuid AS category_uuid, 'polycarbonate' AS slug, 'Polycarbonate' AS name, 54598672-c01e-4991-a1d5-83fa8149eeb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '6f1eee95-0f05-49a2-8f54-ccfb47b510a0'::uuid AS category_uuid, 'materiaux-fabrication-aluminium' AS slug, 'Aluminium' AS name, 54598672-c01e-4991-a1d5-83fa8149eeb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '8bfbdf07-c828-4fd8-a8d7-60caadb5b233'::uuid AS category_uuid, 'paille-fibres-naturelles' AS slug, 'Paille & fibres naturelles' AS name, 54598672-c01e-4991-a1d5-83fa8149eeb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '6ce16d02-2dc0-4424-9984-e273de903c54'::uuid AS category_uuid, 'waterproof-impermeables' AS slug, 'Waterproof & imperméables' AS name, 54598672-c01e-4991-a1d5-83fa8149eeb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'ae579b9e-30d9-425e-be27-a04d70d17ead'::uuid AS category_uuid, 'anti-dechirure' AS slug, 'Anti-déchirure' AS name, 54598672-c01e-4991-a1d5-83fa8149eeb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'bf1c00f7-39cd-44ed-b91c-072614a9499c'::uuid AS category_uuid, 'resistants-aux-chocs' AS slug, 'Résistants aux chocs' AS name, 54598672-c01e-4991-a1d5-83fa8149eeb4::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '3c7ac917-fbc3-4a3b-a4c8-4ed4b3378b42'::uuid AS category_uuid, 'voyage' AS slug, 'Voyage' AS name, 4d8248d5-b081-4774-b387-b2ab0e46475f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'bade26cd-6ced-4902-8422-e38649b75277'::uuid AS category_uuid, 'quotidien' AS slug, 'Quotidien' AS name, 4d8248d5-b081-4774-b387-b2ab0e46475f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'e2158ee9-dd1e-4f63-ae0c-54f56a21a0a9'::uuid AS category_uuid, 'etude-scolaire' AS slug, 'Étude/scolaire' AS name, 4d8248d5-b081-4774-b387-b2ab0e46475f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'f4e1fcab-0b18-4a5f-808b-602f7e5a3e68'::uuid AS category_uuid, 'travail-business' AS slug, 'Travail & Business' AS name, 4d8248d5-b081-4774-b387-b2ab0e46475f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '0b4e80b0-ad0b-40c2-924d-9799656f4d06'::uuid AS category_uuid, 'sport-usage' AS slug, 'Sport' AS name, 4d8248d5-b081-4774-b387-b2ab0e46475f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '7b060db5-65cf-4e3b-8e6e-85d76f78f05a'::uuid AS category_uuid, 'outdoor' AS slug, 'Outdoor' AS name, 4d8248d5-b081-4774-b387-b2ab0e46475f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'e2fb6b6c-fc77-4a1d-ad1f-5b447d6dafd6'::uuid AS category_uuid, 'professionnels' AS slug, 'Professionnels' AS name, 4d8248d5-b081-4774-b387-b2ab0e46475f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '144c7fdf-bd4b-4ac2-a542-607c41364795'::uuid AS category_uuid, 'luxe' AS slug, 'Luxe' AS name, 4d8248d5-b081-4774-b387-b2ab0e46475f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '499bc303-2b56-4b27-aa39-93acaca7e5e0'::uuid AS category_uuid, 'artisanal' AS slug, 'Artisanal' AS name, 4d8248d5-b081-4774-b387-b2ab0e46475f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'a57dc1b6-5b5e-4fbf-86ce-ce2809f10413'::uuid AS category_uuid, 'casual' AS slug, 'Casual' AS name, 4d8248d5-b081-4774-b387-b2ab0e46475f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '7697f112-0cca-4207-a30c-4dc0239d4c74'::uuid AS category_uuid, 'urban-tech' AS slug, 'Urban tech' AS name, 4d8248d5-b081-4774-b387-b2ab0e46475f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'c49df5d5-d113-4be9-ba95-277459b6cd44'::uuid AS category_uuid, 'electromenager' AS slug, 'Électroménager' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '04f3173c-bcd0-410c-adde-53b93a24950d'::uuid AS category_uuid, 'refrigerateurs-congelateurs' AS slug, 'Réfrigérateurs & Congélateurs' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '0298e5cb-e79d-4737-8f88-a12a0b91916b'::uuid AS category_uuid, 'lavage-sechage' AS slug, 'Lavage & Séchage' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '4368e290-3680-49e1-b6f8-c829584000ee'::uuid AS category_uuid, 'cuisson-cuisine' AS slug, 'Cuisson & Cuisine' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '844fb534-3e04-4688-9a8c-56651abb45c3'::uuid AS category_uuid, 'petits-appareils-cuisine' AS slug, 'Petits Appareils de Cuisine' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'c2fe12ec-c2fa-4eb9-9cbf-caf307afb04b'::uuid AS category_uuid, 'entretien-maison' AS slug, 'Entretien de la Maison' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '9f603d9b-2096-45d3-bb06-7cd7abedb8d9'::uuid AS category_uuid, 'climatisation-chauffage' AS slug, 'Climatisation & Chauffage' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '2b09fa7a-c359-415d-86a9-b2c97a302736'::uuid AS category_uuid, 'electromenager-salle-de-bain' AS slug, 'Électroménager pour Salle de Bain' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '15b09361-0f9b-4396-8e97-6a7b31712475'::uuid AS category_uuid, 'traitement-eau' AS slug, 'Traitement de l’Eau' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '059043e3-ea7c-4636-aba3-ba42d33fa2c2'::uuid AS category_uuid, 'appareils-specialises' AS slug, 'Appareils Spécialisés' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '4fa2441e-d631-4e39-a5ce-9bd58a02f54e'::uuid AS category_uuid, 'froid-congelation-pro' AS slug, 'Froid & Congélation Professionnel' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'c5dcdef5-f543-4fd6-9000-77789e649aa9'::uuid AS category_uuid, 'cuisson-professionnelle' AS slug, 'Cuisson Professionnelle' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '90c7121d-0413-45c2-859b-87bb69f72a94'::uuid AS category_uuid, 'accessoires-pieces-detachees' AS slug, 'Accessoires & Pièces Détachées' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'c5fda5fb-8ee9-4bd9-b0b3-4d2749bc8558'::uuid AS category_uuid, 'electromenager-nomade-mini' AS slug, 'Électroménager Nomade & Mini' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '553f0e8e-90fe-47c5-8851-7bb18d1a0b77'::uuid AS category_uuid, 'securite-energie' AS slug, 'Sécurité & Énergie' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '0257cb3d-cf10-4ffd-9e59-ba338563c4c1'::uuid AS category_uuid, 'electromenager-marques-populaires' AS slug, 'Marques Populaires' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '52e43141-dcca-4875-a058-81757cbc1dd5'::uuid AS category_uuid, 'electromenager-segments-usage' AS slug, 'Segments d’Usage' AS name, c49df5d5-d113-4be9-ba95-277459b6cd44::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'b78e704b-c315-4151-a28b-a6f3df808316'::uuid AS category_uuid, 'refrigerateurs-combines' AS slug, 'Réfrigérateurs combinés' AS name, 04f3173c-bcd0-410c-adde-53b93a24950d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '65ff47a0-91d1-4dd4-bbeb-be90d3eff5ef'::uuid AS category_uuid, 'refrigerateurs-simples' AS slug, 'Réfrigérateurs simples' AS name, 04f3173c-bcd0-410c-adde-53b93a24950d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '17871d7d-364c-424d-9621-9756c73777fa'::uuid AS category_uuid, 'refrigerateurs-americains' AS slug, 'Réfrigérateurs américains' AS name, 04f3173c-bcd0-410c-adde-53b93a24950d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '756d4304-23ad-478b-9079-81cdd8cd90d6'::uuid AS category_uuid, 'refrigerateurs-multi-portes' AS slug, 'Réfrigérateurs multi-portes' AS name, 04f3173c-bcd0-410c-adde-53b93a24950d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '80c2433b-e9cb-42f9-b387-0b87863b1a17'::uuid AS category_uuid, 'refrigerateurs-encastrables' AS slug, 'Réfrigérateurs encastrables' AS name, 04f3173c-bcd0-410c-adde-53b93a24950d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'aada335a-d0c2-4fb4-b543-2960b182e183'::uuid AS category_uuid, 'mini-frigos' AS slug, 'Mini-frigos' AS name, 04f3173c-bcd0-410c-adde-53b93a24950d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '4ac28261-ad5f-442f-8fc2-c889c7f74a71'::uuid AS category_uuid, 'congelateurs-coffre' AS slug, 'Congélateurs coffre' AS name, 04f3173c-bcd0-410c-adde-53b93a24950d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'def12be7-ddcb-43a0-a4e4-3850dd61c5d7'::uuid AS category_uuid, 'congelateurs-armoires' AS slug, 'Congélateurs armoires' AS name, 04f3173c-bcd0-410c-adde-53b93a24950d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'b260a70f-f396-4300-a52b-84cb9c578369'::uuid AS category_uuid, 'congelateurs-compacts' AS slug, 'Congélateurs compacts' AS name, 04f3173c-bcd0-410c-adde-53b93a24950d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '3c8373fe-0b8b-44ce-bd04-887aab0730ba'::uuid AS category_uuid, 'refrigerateurs-boissons' AS slug, 'Réfrigérateurs à boissons' AS name, 04f3173c-bcd0-410c-adde-53b93a24950d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '570196b7-3728-4a28-9fb8-1e58efb8f3a7'::uuid AS category_uuid, 'refrigerateurs-vitres' AS slug, 'Réfrigérateurs vitrés' AS name, 04f3173c-bcd0-410c-adde-53b93a24950d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'cd1f4127-ad5a-42d5-bb0e-20f800ab3104'::uuid AS category_uuid, 'refrigerateurs-professionnels' AS slug, 'Réfrigérateurs professionnels' AS name, 04f3173c-bcd0-410c-adde-53b93a24950d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '9399efa1-58ed-44e9-bc6d-874942af4a52'::uuid AS category_uuid, 'lave-linge-frontal' AS slug, 'Machines à laver frontales' AS name, 0298e5cb-e79d-4737-8f88-a12a0b91916b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'c5861832-6aab-4184-9564-e0fabab5ef88'::uuid AS category_uuid, 'lave-linge-top' AS slug, 'Machines à laver top' AS name, 0298e5cb-e79d-4737-8f88-a12a0b91916b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT 'c39b28d4-dbb1-493d-87f6-c594ee2a550c'::uuid AS category_uuid, 'lave-linge-grande-capacite' AS slug, 'Lave-linges grande capacité' AS name, 0298e5cb-e79d-4737-8f88-a12a0b91916b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '43fe8ab5-d1d0-463d-baef-84e38e806a0e'::uuid AS category_uuid, 'lave-linge-connecte' AS slug, 'Lave-linges connectés' AS name, 0298e5cb-e79d-4737-8f88-a12a0b91916b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '072f3bdf-ed00-41e0-8ba8-d79a31bc4541'::uuid AS category_uuid, 'seche-linge-condensation' AS slug, 'Sèche-linges à condensation' AS name, 0298e5cb-e79d-4737-8f88-a12a0b91916b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '5d98a09e-aa6b-4364-ba18-7bccb0f0ebe3'::uuid AS category_uuid, 'seche-linge-pompe-a-chaleur' AS slug, 'Sèche-linges pompe à chaleur' AS name, 0298e5cb-e79d-4737-8f88-a12a0b91916b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.881Z' AS created_at, '2026-04-03T10:15:31.881Z' AS updated_at
  UNION ALL
  SELECT '52ae09e5-4ce1-4289-a1ee-51405e64e31e'::uuid AS category_uuid, 'seche-linge-evacuation' AS slug, 'Sèche-linges évacuation' AS name, 0298e5cb-e79d-4737-8f88-a12a0b91916b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '0c69f84d-4714-456c-bb52-edc1bbcf7da5'::uuid AS category_uuid, 'lave-linge-sechant' AS slug, 'Lave-linge séchant' AS name, 0298e5cb-e79d-4737-8f88-a12a0b91916b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '344b0d2d-1fda-4f52-b132-8fd1435413c9'::uuid AS category_uuid, 'mini-lave-linge' AS slug, 'Mini lave-linges' AS name, 0298e5cb-e79d-4737-8f88-a12a0b91916b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'cb9949e3-9fb8-4673-b4db-99d399ecf353'::uuid AS category_uuid, 'machines-professionnelles-lavage' AS slug, 'Machines professionnelles' AS name, 0298e5cb-e79d-4737-8f88-a12a0b91916b::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '0c2feb39-59ae-4bee-9ca5-2145b0cab404'::uuid AS category_uuid, 'cuisinieres' AS slug, 'Cuisinières' AS name, 4368e290-3680-49e1-b6f8-c829584000ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'dee148ab-167d-4603-89e6-5cfc92abf89a'::uuid AS category_uuid, 'gaz' AS slug, 'Gaz' AS name, 0c2feb39-59ae-4bee-9ca5-2145b0cab404::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '222e675c-a8d6-4ca1-9e22-809f6d78c81e'::uuid AS category_uuid, 'electrique' AS slug, 'Électrique' AS name, 0c2feb39-59ae-4bee-9ca5-2145b0cab404::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '5e386023-4903-40c1-a56b-3a30860af103'::uuid AS category_uuid, 'mixte' AS slug, 'Mixte' AS name, 0c2feb39-59ae-4bee-9ca5-2145b0cab404::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'b354d381-d13e-4131-9010-5732d24f6270'::uuid AS category_uuid, 'fours-encastrables' AS slug, 'Fours encastrables' AS name, 4368e290-3680-49e1-b6f8-c829584000ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'a757ada8-a015-4cf1-bfb2-48512c18342a'::uuid AS category_uuid, 'pyrolyse' AS slug, 'Pyrolyse' AS name, b354d381-d13e-4131-9010-5732d24f6270::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '52691e11-47ee-4523-befe-fe8d41d62859'::uuid AS category_uuid, 'catalyse' AS slug, 'Catalyse' AS name, b354d381-d13e-4131-9010-5732d24f6270::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'c63e662d-3ab6-45a9-83d8-60b27965f454'::uuid AS category_uuid, 'vapeur' AS slug, 'Vapeur' AS name, b354d381-d13e-4131-9010-5732d24f6270::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '4387086e-389b-4879-9718-dcb2301964b2'::uuid AS category_uuid, 'micro-ondes' AS slug, 'Micro-ondes' AS name, 4368e290-3680-49e1-b6f8-c829584000ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'aeea91f8-24b2-4de0-a020-7f7d7203f8c0'::uuid AS category_uuid, 'grill' AS slug, 'Grill' AS name, 4387086e-389b-4879-9718-dcb2301964b2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '34553c14-8132-4c72-8bcd-a95b1084b538'::uuid AS category_uuid, 'combine' AS slug, 'Combiné' AS name, 4387086e-389b-4879-9718-dcb2301964b2::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '9de04fee-344b-4dda-bf53-3b4077b6800d'::uuid AS category_uuid, 'plaques-de-cuisson' AS slug, 'Plaques de cuisson' AS name, 4368e290-3680-49e1-b6f8-c829584000ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'c5d22ae2-d190-453b-a873-5b3ae0d34b10'::uuid AS category_uuid, 'gaz-plaques' AS slug, 'Gaz' AS name, 9de04fee-344b-4dda-bf53-3b4077b6800d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'dc44f86f-aa46-4922-8c22-6b4d920a7137'::uuid AS category_uuid, 'induction' AS slug, 'Induction' AS name, 9de04fee-344b-4dda-bf53-3b4077b6800d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '4f35a105-5680-42d5-9b46-7acd7dc4ae7f'::uuid AS category_uuid, 'vitroceramique' AS slug, 'Vitrocéramique' AS name, 9de04fee-344b-4dda-bf53-3b4077b6800d::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '42c4bd30-767b-45c8-bd21-12919ce530f1'::uuid AS category_uuid, 'tables-de-cuisson-portatives' AS slug, 'Tables de cuisson portatives' AS name, 4368e290-3680-49e1-b6f8-c829584000ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '379b7b8b-7823-443f-a73d-0482b35c8df0'::uuid AS category_uuid, 'friteuses' AS slug, 'Friteuses' AS name, 4368e290-3680-49e1-b6f8-c829584000ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '3548cf64-5dba-41e9-a135-75abf9d29f33'::uuid AS category_uuid, 'friteuses-classiques' AS slug, 'Classiques' AS name, 379b7b8b-7823-443f-a73d-0482b35c8df0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '6cb30974-77e4-4539-97f9-347a6290afed'::uuid AS category_uuid, 'air-fryer' AS slug, 'Air fryer' AS name, 379b7b8b-7823-443f-a73d-0482b35c8df0::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT '0e292737-b77b-4d9a-9daa-c6765a507682'::uuid AS category_uuid, 'multicuiseurs' AS slug, 'Multicuiseurs' AS name, 4368e290-3680-49e1-b6f8-c829584000ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
  UNION ALL
  SELECT 'd9a390e0-6d4c-40a8-a9d9-f229f3936f17'::uuid AS category_uuid, 'autocuiseurs-cocottes' AS slug, 'Autocuiseurs & cocottes' AS name, 4368e290-3680-49e1-b6f8-c829584000ee::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.882Z' AS created_at, '2026-04-03T10:15:31.882Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 20 terminé: 100 entrées
