-- ============================================================
-- CHUNK 1/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '44ce3d22-e8a3-41a9-a517-e4208791d1d7'::uuid AS category_uuid, 'immobilier-maison' AS slug, 'Immobilier & Maison' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.870Z' AS created_at, '2026-04-03T10:15:31.870Z' AS updated_at
  UNION ALL
  SELECT '317f9e58-6f78-47f0-a56b-cb753276f430'::uuid AS category_uuid, 'ventes-immobilieres' AS slug, 'Ventes Immobilières' AS name, 44ce3d22-e8a3-41a9-a517-e4208791d1d7::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.870Z' AS created_at, '2026-04-03T10:15:31.870Z' AS updated_at
  UNION ALL
  SELECT '698498e5-ae6f-4d89-b74a-769b872f716a'::uuid AS category_uuid, 'locations-immobilieres' AS slug, 'Locations Immobilières' AS name, 44ce3d22-e8a3-41a9-a517-e4208791d1d7::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '1aedf123-99dc-4980-91e8-bce504595ff9'::uuid AS category_uuid, 'immobilier-professionnel' AS slug, 'Immobilier Professionnel' AS name, 44ce3d22-e8a3-41a9-a517-e4208791d1d7::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'c9d321c3-dc34-4dca-963c-f9ff7718c621'::uuid AS category_uuid, 'investissement-immobilier' AS slug, 'Investissement Immobilier' AS name, 44ce3d22-e8a3-41a9-a517-e4208791d1d7::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '1e3a4521-a62c-4a6d-97e1-75a14bcd264d'::uuid AS category_uuid, 'maison-mobilier-interieur' AS slug, 'Maison & Mobilier Intérieur' AS name, 44ce3d22-e8a3-41a9-a517-e4208791d1d7::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'a1201121-909a-4665-b6ba-c6b9d2b2f9c6'::uuid AS category_uuid, 'decoration-accessoires-maison' AS slug, 'Décoration & Accessoires Maison' AS name, 44ce3d22-e8a3-41a9-a517-e4208791d1d7::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '4d2d2c3f-6e56-4e34-ab64-663987980ce2'::uuid AS category_uuid, 'cuisine-salle-de-bain' AS slug, 'Cuisine & Salle de Bain' AS name, 44ce3d22-e8a3-41a9-a517-e4208791d1d7::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '3390b6fd-3360-4e70-85eb-8df015fc0e6e'::uuid AS category_uuid, 'jardin-exterieur' AS slug, 'Jardin & Extérieur' AS name, 44ce3d22-e8a3-41a9-a517-e4208791d1d7::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '2f98f692-ff1f-4fab-ba11-e6896d3c6a62'::uuid AS category_uuid, 'bricolage-amelioration-maison' AS slug, 'Bricolage & Amélioration Maison' AS name, 44ce3d22-e8a3-41a9-a517-e4208791d1d7::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '60cbceec-2632-4684-84ad-5ac12b2088e3'::uuid AS category_uuid, 'securite-maison' AS slug, 'Sécurité Maison' AS name, 44ce3d22-e8a3-41a9-a517-e4208791d1d7::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'e81215d8-020d-48a2-8e38-1b2c5da5c80e'::uuid AS category_uuid, 'services-maison-immobilier' AS slug, 'Services Maison & Immobilier' AS name, 44ce3d22-e8a3-41a9-a517-e4208791d1d7::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'ae06f713-ab95-4b48-ae4f-61a8c2a369cf'::uuid AS category_uuid, 'marques-materiel-populaire' AS slug, 'Marques & Matériel Populaire' AS name, 44ce3d22-e8a3-41a9-a517-e4208791d1d7::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '169f930f-27e0-4c3b-ba0c-c0f447b2ce6d'::uuid AS category_uuid, 'appartements-a-vendre' AS slug, 'Appartements à vendre' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'd8edf478-69a6-4fd6-84c9-a422dbc3cdb6'::uuid AS category_uuid, 'ventes-immobilieres-studios' AS slug, 'Studios' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '407d3d78-b1c3-4428-a409-679f7c2947a8'::uuid AS category_uuid, 'ventes-immobilieres-f2' AS slug, 'F2' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'a833b79e-f9e1-4ad3-abdc-03c19a7b7e7b'::uuid AS category_uuid, 'ventes-immobilieres-f3' AS slug, 'F3' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '76aeb302-e82a-44b7-92b5-cfb48546277a'::uuid AS category_uuid, 'ventes-immobilieres-f4' AS slug, 'F4' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '6d17b177-ffbb-4d02-b0ca-2db18668038f'::uuid AS category_uuid, 'f5-plus' AS slug, 'F5+' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '5a3bbbee-c517-42dc-89ac-03eb3f3363b0'::uuid AS category_uuid, 'appartements-neufs' AS slug, 'Appartements neufs' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '883dcf2f-d14a-4c67-872c-e06e15252c17'::uuid AS category_uuid, 'appartements-promotion-immobiliere' AS slug, 'Appartements promotion immobilière' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '0827308a-f5f4-436f-ac4f-6fb1856251b4'::uuid AS category_uuid, 'maisons-a-vendre' AS slug, 'Maisons à vendre' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'e04f3409-9603-45b9-9403-14f227ae2f40'::uuid AS category_uuid, 'ventes-immobilieres-villas' AS slug, 'Villas' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '561ce1ed-cbb8-4209-8027-226ba9a23683'::uuid AS category_uuid, 'ventes-immobilieres-duplex' AS slug, 'Duplex' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'e75f44a4-68d9-496c-9681-9c7ff6b04c4d'::uuid AS category_uuid, 'ventes-immobilieres-triplex' AS slug, 'Triplex' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '41432035-a7e8-4c59-9252-caeb62783ad7'::uuid AS category_uuid, 'maisons-plain-pied' AS slug, 'Maisons plain-pied' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '482968b1-c836-4041-9c52-ae5fa6c20bcd'::uuid AS category_uuid, 'fermes-proprietes-rurales' AS slug, 'Fermes & propriétés rurales' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'f33db77c-fb30-462f-9d8d-4eadafafe770'::uuid AS category_uuid, 'terrains-constructibles' AS slug, 'Terrains constructibles' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '66f8d66e-1f6d-447e-af40-40f1b9683ed9'::uuid AS category_uuid, 'terrains-agricoles' AS slug, 'Terrains agricoles' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '08f50488-9d93-489f-bca4-ce9bf9894f14'::uuid AS category_uuid, 'locaux-commerciaux' AS slug, 'Locaux commerciaux' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'e83b48d5-6b6b-4349-8295-164841d54bca'::uuid AS category_uuid, 'bureaux' AS slug, 'Bureaux' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '8640ad33-71c5-4a6a-8ea0-f6e5e93824c1'::uuid AS category_uuid, 'immeubles' AS slug, 'Immeubles' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'f8c96695-9c77-4301-b440-1b65f59b1ffa'::uuid AS category_uuid, 'garages-a-vendre' AS slug, 'Garages à vendre' AS name, 317f9e58-6f78-47f0-a56b-cb753276f430::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '5870f989-5193-4ddc-94c2-12e8fdcdb47d'::uuid AS category_uuid, 'appartements-en-location' AS slug, 'Appartements en location' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '79bf53db-339e-4ad7-86b4-1d28d9fbe6b9'::uuid AS category_uuid, 'locations-immobilieres-studios' AS slug, 'Studios' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '46ffc181-0f52-465b-a7f5-e298b01ead07'::uuid AS category_uuid, 'locations-immobilieres-f2' AS slug, 'F2' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '2cd01b02-220a-4530-bdee-b48ea38312de'::uuid AS category_uuid, 'locations-immobilieres-f3' AS slug, 'F3' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'a6e75940-c9af-468f-a2d4-9d3f389a6b71'::uuid AS category_uuid, 'locations-immobilieres-f4' AS slug, 'F4' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '5312b38e-bda1-43e8-bc61-4538f838db6c'::uuid AS category_uuid, 'maisons-en-location' AS slug, 'Maisons en location' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'b7896ab7-23be-4315-bfb6-c0fee3b6cb2f'::uuid AS category_uuid, 'locations-immobilieres-villas' AS slug, 'Villas' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '3dc6d902-aa52-44b6-914a-aa915caacaaf'::uuid AS category_uuid, 'locations-immobilieres-duplex' AS slug, 'Duplex' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'ba9bf8bb-44fb-4a49-b9db-f56848dc9921'::uuid AS category_uuid, 'locations-immobilieres-triplex' AS slug, 'Triplex' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'dcd608ad-1895-41a2-87a7-49595dd0ab8c'::uuid AS category_uuid, 'chambres-en-location' AS slug, 'Chambres en location' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '288d94cd-4037-450a-95d6-e63374ede56a'::uuid AS category_uuid, 'colocation' AS slug, 'Colocation' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '203b9bf6-9635-4b93-801f-ab49406b44e6'::uuid AS category_uuid, 'locations-meublees' AS slug, 'Locations meublées' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '3523620a-c5ad-4b66-95c4-16fced86dcfa'::uuid AS category_uuid, 'locations-non-meublees' AS slug, 'Locations non meublées' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'dd05a166-1aaa-46f7-9f63-df55dfb5d55f'::uuid AS category_uuid, 'locations-immobilieres-locations-saisonnieres' AS slug, 'Locations saisonnières' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'a95e2a5a-a909-49f4-8761-90153f78b30c'::uuid AS category_uuid, 'locations-vacances' AS slug, 'Locations vacances' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '1fe9566d-e849-41e7-a28f-8d60864aa27b'::uuid AS category_uuid, 'bureaux-a-louer' AS slug, 'Bureaux à louer' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'da306928-8ca0-4676-beca-63fa7aebdc98'::uuid AS category_uuid, 'locaux-commerciaux-a-louer' AS slug, 'Locaux commerciaux à louer' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'd11142c9-39fe-4766-bf5d-b96a7a002c64'::uuid AS category_uuid, 'garages-parkings-a-louer' AS slug, 'Garages & parkings à louer' AS name, 698498e5-ae6f-4d89-b74a-769b872f716a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '0133d46f-c31e-46d0-8b71-b8fe7e659eeb'::uuid AS category_uuid, 'entrepots' AS slug, 'Entrepôts' AS name, 1aedf123-99dc-4980-91e8-bce504595ff9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'b44e7431-1d95-4966-9431-0ee0dac459b7'::uuid AS category_uuid, 'hangars' AS slug, 'Hangars' AS name, 1aedf123-99dc-4980-91e8-bce504595ff9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '81c5b1fd-180a-4c1d-9974-5a30f8a2b8f4'::uuid AS category_uuid, 'locaux-industriels' AS slug, 'Locaux industriels' AS name, 1aedf123-99dc-4980-91e8-bce504595ff9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'e77962cc-4338-427b-a920-403c57f8fbd9'::uuid AS category_uuid, 'ateliers' AS slug, 'Ateliers' AS name, 1aedf123-99dc-4980-91e8-bce504595ff9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '24323379-ed9c-41f4-a65b-2c5333288606'::uuid AS category_uuid, 'zones-logistiques' AS slug, 'Zones logistiques' AS name, 1aedf123-99dc-4980-91e8-bce504595ff9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '135ad042-774e-41dc-8f45-f53b34fd7baa'::uuid AS category_uuid, 'bureaux-professionnels' AS slug, 'Bureaux professionnels' AS name, 1aedf123-99dc-4980-91e8-bce504595ff9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'a75aac6a-2e2a-4842-80af-acdeee9fa491'::uuid AS category_uuid, 'open-spaces' AS slug, 'Open-spaces' AS name, 1aedf123-99dc-4980-91e8-bce504595ff9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '3e5f7620-10cf-4a16-93fe-6f3754539307'::uuid AS category_uuid, 'magasins' AS slug, 'Magasins' AS name, 1aedf123-99dc-4980-91e8-bce504595ff9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'b44ea1ee-c46b-4e26-a109-75d7a62d88ec'::uuid AS category_uuid, 'restaurants-cafes' AS slug, 'Restaurants & cafés' AS name, 1aedf123-99dc-4980-91e8-bce504595ff9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'd3dc098a-2cbf-4610-a9c7-c0ef0693f7fb'::uuid AS category_uuid, 'pharmacies' AS slug, 'Pharmacies' AS name, 1aedf123-99dc-4980-91e8-bce504595ff9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '65318265-f375-439a-be84-f0689f31a966'::uuid AS category_uuid, 'cabinets-medicaux' AS slug, 'Cabinets médicaux' AS name, 1aedf123-99dc-4980-91e8-bce504595ff9::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'd79ae061-ad41-4770-b52c-643b3e1b5240'::uuid AS category_uuid, 'programmes-neufs' AS slug, 'Programmes neufs' AS name, c9d321c3-dc34-4dca-963c-f9ff7718c621::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '7acf0999-7c2f-45ac-8640-7083a90b104c'::uuid AS category_uuid, 'logements-promotionnels' AS slug, 'Logements promotionnels' AS name, c9d321c3-dc34-4dca-963c-f9ff7718c621::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'ced1a021-59f0-4cc1-a9dc-69ab374db123'::uuid AS category_uuid, 'immobiliers-lpp' AS slug, 'Immobiliers LPP' AS name, c9d321c3-dc34-4dca-963c-f9ff7718c621::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '483dfd13-90cd-41f8-8eeb-0b7a65c1a21a'::uuid AS category_uuid, 'logements-sociaux' AS slug, 'Logements sociaux' AS name, c9d321c3-dc34-4dca-963c-f9ff7718c621::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '8a625828-4a2e-43a1-a3e0-7d0278fb756d'::uuid AS category_uuid, 'residences-etudiantes' AS slug, 'Résidences étudiantes' AS name, c9d321c3-dc34-4dca-963c-f9ff7718c621::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '7d28ddb6-8b84-4610-baa3-9bdf0c725a99'::uuid AS category_uuid, 'residences-seniors' AS slug, 'Résidences seniors' AS name, c9d321c3-dc34-4dca-963c-f9ff7718c621::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '4817338c-2b49-4bdd-a79f-ba59f931f9dd'::uuid AS category_uuid, 'biens-locatifs' AS slug, 'Biens locatifs' AS name, c9d321c3-dc34-4dca-963c-f9ff7718c621::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '77d3825b-999e-4072-bbd4-a175fc79280e'::uuid AS category_uuid, 'immeubles-de-rapport' AS slug, 'Immeubles de rapport' AS name, c9d321c3-dc34-4dca-963c-f9ff7718c621::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'a96922ae-94d6-4316-a53d-33e81f6314f9'::uuid AS category_uuid, 'terrains-promotionnels' AS slug, 'Terrains promotionnels' AS name, c9d321c3-dc34-4dca-963c-f9ff7718c621::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '5127ff33-a913-40fc-9ba0-8974686a6292'::uuid AS category_uuid, 'salons-canapes' AS slug, 'Salons & canapés' AS name, 1e3a4521-a62c-4a6d-97e1-75a14bcd264d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '521feee4-e051-41bb-b718-b7eaa71ce083'::uuid AS category_uuid, 'tables-chaises' AS slug, 'Tables & chaises' AS name, 1e3a4521-a62c-4a6d-97e1-75a14bcd264d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'a3bfdd60-02f6-496a-9c70-07c955293a6e'::uuid AS category_uuid, 'maison-mobilier-interieur-armoires' AS slug, 'Armoires' AS name, 1e3a4521-a62c-4a6d-97e1-75a14bcd264d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'd96b561e-5b9d-46fb-a391-b2db9ee74811'::uuid AS category_uuid, 'dressings' AS slug, 'Dressings' AS name, 1e3a4521-a62c-4a6d-97e1-75a14bcd264d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '0a9d0cd8-abdb-45e4-92ec-cc5c1c254d77'::uuid AS category_uuid, 'lits-matelas' AS slug, 'Lits & matelas' AS name, 1e3a4521-a62c-4a6d-97e1-75a14bcd264d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'd20ead50-7502-4453-a94c-42e40030e0ee'::uuid AS category_uuid, 'maison-mobilier-interieur-meubles-tv' AS slug, 'Meubles TV' AS name, 1e3a4521-a62c-4a6d-97e1-75a14bcd264d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '27e50bb1-901d-4d34-b0b3-986dee446670'::uuid AS category_uuid, 'buffets-commodes' AS slug, 'Buffets & commodes' AS name, 1e3a4521-a62c-4a6d-97e1-75a14bcd264d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '3a581a93-a954-4b88-ad66-eb6f7ff4ae4e'::uuid AS category_uuid, 'bibliotheques' AS slug, 'Bibliothèques' AS name, 1e3a4521-a62c-4a6d-97e1-75a14bcd264d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'fe7be7fd-0037-4df1-8d60-0bd5d871485e'::uuid AS category_uuid, 'meubles-enfants' AS slug, 'Meubles enfants' AS name, 1e3a4521-a62c-4a6d-97e1-75a14bcd264d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '2193a872-6f75-4055-92e3-61466bfd6906'::uuid AS category_uuid, 'petits-meubles' AS slug, 'Petits meubles' AS name, 1e3a4521-a62c-4a6d-97e1-75a14bcd264d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'd557fe6d-abb9-4e22-a084-b488fb344132'::uuid AS category_uuid, 'maison-mobilier-interieur-rangements' AS slug, 'Rangements' AS name, 1e3a4521-a62c-4a6d-97e1-75a14bcd264d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '6792a85b-43b7-41e4-a122-7234b2f8aaae'::uuid AS category_uuid, 'decoration-accessoires-maison-tapis' AS slug, 'Tapis' AS name, a1201121-909a-4665-b6ba-c6b9d2b2f9c6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '4e1beab4-1432-487f-982b-d46db96b7582'::uuid AS category_uuid, 'decoration-accessoires-maison-rideaux-voilages' AS slug, 'Rideaux & voilages' AS name, a1201121-909a-4665-b6ba-c6b9d2b2f9c6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '563c4e9a-1c57-4b2f-aef4-d2c35ae563eb'::uuid AS category_uuid, 'luminaires' AS slug, 'Luminaires' AS name, a1201121-909a-4665-b6ba-c6b9d2b2f9c6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '6844f791-097f-4068-9efb-09accae6f5e9'::uuid AS category_uuid, 'cadres-tableaux' AS slug, 'Cadres & tableaux' AS name, a1201121-909a-4665-b6ba-c6b9d2b2f9c6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '2963ba7b-c4b6-4294-ab5e-fb6b578ee759'::uuid AS category_uuid, 'decoration-accessoires-maison-miroirs' AS slug, 'Miroirs' AS name, a1201121-909a-4665-b6ba-c6b9d2b2f9c6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '37a08038-a891-41c9-abcb-c6a9ecedf9ee'::uuid AS category_uuid, 'decoration-accessoires-maison-horloges' AS slug, 'Horloges' AS name, a1201121-909a-4665-b6ba-c6b9d2b2f9c6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'a755f48a-499b-460f-8b44-9697c1433198'::uuid AS category_uuid, 'accessoires-decoratifs' AS slug, 'Accessoires décoratifs' AS name, a1201121-909a-4665-b6ba-c6b9d2b2f9c6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '12c65e6a-6c07-4e9c-92fb-d99612fe0141'::uuid AS category_uuid, 'decoration-accessoires-maison-stickers-muraux' AS slug, 'Stickers muraux' AS name, a1201121-909a-4665-b6ba-c6b9d2b2f9c6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '40bc6ed3-80c1-4a38-97bd-941d389fd65c'::uuid AS category_uuid, 'coussins-textiles' AS slug, 'Coussins & textiles' AS name, a1201121-909a-4665-b6ba-c6b9d2b2f9c6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '2bde2a09-403e-40fb-99d3-2e47f9422b13'::uuid AS category_uuid, 'vases-decor-floral' AS slug, 'Vases & décor floral' AS name, a1201121-909a-4665-b6ba-c6b9d2b2f9c6::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'a1666873-ea24-4fe1-a01f-35826c223b24'::uuid AS category_uuid, 'ustensiles-de-cuisine' AS slug, 'Ustensiles de cuisine' AS name, 4d2d2c3f-6e56-4e34-ab64-663987980ce2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '55dc8cd0-bf39-4047-8bb9-f1ba74b50db9'::uuid AS category_uuid, 'casseroles-poeles' AS slug, 'Casseroles & poêles' AS name, 4d2d2c3f-6e56-4e34-ab64-663987980ce2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '9b432873-1ac9-40de-b6ee-3258d1fa3482'::uuid AS category_uuid, 'vaisselle' AS slug, 'Vaisselle' AS name, 4d2d2c3f-6e56-4e34-ab64-663987980ce2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '163e9bab-2a61-4b9d-8ff9-f50e9eec3d46'::uuid AS category_uuid, 'couverts' AS slug, 'Couverts' AS name, 4d2d2c3f-6e56-4e34-ab64-663987980ce2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '6edcb31f-a775-4819-aac1-9dfdfc8ad0b4'::uuid AS category_uuid, 'robots-de-cuisine' AS slug, 'Robots de cuisine' AS name, 4d2d2c3f-6e56-4e34-ab64-663987980ce2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '09d1095d-9dbf-460f-b707-1a8ac8d7dbb8'::uuid AS category_uuid, 'plaques-fours' AS slug, 'Plaques & fours' AS name, 4d2d2c3f-6e56-4e34-ab64-663987980ce2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'e00a96c5-1dce-4bf9-a1f6-c31d43481829'::uuid AS category_uuid, 'equipements-sanitaires' AS slug, 'Équipements sanitaires' AS name, 4d2d2c3f-6e56-4e34-ab64-663987980ce2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '39320ae2-08af-4a7a-a1fd-ab0cc90502de'::uuid AS category_uuid, 'baignoires' AS slug, 'Baignoires' AS name, 4d2d2c3f-6e56-4e34-ab64-663987980ce2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 1 terminé: 100 entrées
