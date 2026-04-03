-- ============================================================
-- CHUNK 2/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'bdb2d38c-cd3e-4d6d-a36a-6411c1159b7c'::uuid AS category_uuid, 'douches' AS slug, 'Douches' AS name, 4d2d2c3f-6e56-4e34-ab64-663987980ce2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '0ad73930-6729-4d5c-b9f7-7dace6bb4744'::uuid AS category_uuid, 'lavabos' AS slug, 'Lavabos' AS name, 4d2d2c3f-6e56-4e34-ab64-663987980ce2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '8783a5ec-25d2-4812-9c4c-561ee3d34b50'::uuid AS category_uuid, 'robinetterie' AS slug, 'Robinetterie' AS name, 4d2d2c3f-6e56-4e34-ab64-663987980ce2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'ee0a281d-db9c-4212-a470-5b1959d6814b'::uuid AS category_uuid, 'meubles-de-salle-de-bain' AS slug, 'Meubles de salle de bain' AS name, 4d2d2c3f-6e56-4e34-ab64-663987980ce2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '7f708ae4-2297-4245-9dd7-7258aa9d6ea2'::uuid AS category_uuid, 'mobilier-de-jardin' AS slug, 'Mobilier de jardin' AS name, 3390b6fd-3360-4e70-85eb-8df015fc0e6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'ddcefed4-d9af-4e3c-be4d-c3d2ec026a66'::uuid AS category_uuid, 'salons-exterieurs' AS slug, 'Salons extérieurs' AS name, 3390b6fd-3360-4e70-85eb-8df015fc0e6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '666e8749-c7cb-4133-ba16-8577c9c896aa'::uuid AS category_uuid, 'jardin-exterieur-parasols' AS slug, 'Parasols' AS name, 3390b6fd-3360-4e70-85eb-8df015fc0e6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '7e4da104-f71e-43b8-be35-00a0e98f2e21'::uuid AS category_uuid, 'barbecues' AS slug, 'Barbecues' AS name, 3390b6fd-3360-4e70-85eb-8df015fc0e6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'a2a8d38e-ef92-4e69-a2fc-f25e678c4c2f'::uuid AS category_uuid, 'jardin-exterieur-tondeuses' AS slug, 'Tondeuses' AS name, 3390b6fd-3360-4e70-85eb-8df015fc0e6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '998018f9-2862-4327-954c-4af7c9fa4921'::uuid AS category_uuid, 'debroussailleuses' AS slug, 'Débroussailleuses' AS name, 3390b6fd-3360-4e70-85eb-8df015fc0e6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'e07a66ea-b1fb-4203-b532-ca2a7b5a8971'::uuid AS category_uuid, 'tronconneuses' AS slug, 'Tronçonneuses' AS name, 3390b6fd-3360-4e70-85eb-8df015fc0e6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '6af66479-44cb-43fd-9bbe-64651af0aef6'::uuid AS category_uuid, 'outils-de-jardinage' AS slug, 'Outils de jardinage' AS name, 3390b6fd-3360-4e70-85eb-8df015fc0e6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'ae695fb9-e1c1-4206-9d74-316f57b94409'::uuid AS category_uuid, 'pots-jardinieres' AS slug, 'Pots & jardinières' AS name, 3390b6fd-3360-4e70-85eb-8df015fc0e6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '719bf681-b7ff-4e3d-a0f4-ca7878e0f114'::uuid AS category_uuid, 'serres' AS slug, 'Serres' AS name, 3390b6fd-3360-4e70-85eb-8df015fc0e6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '045554ea-39d7-4dd5-b770-021b4a0397b3'::uuid AS category_uuid, 'piscines-accessoires' AS slug, 'Piscines & accessoires' AS name, 3390b6fd-3360-4e70-85eb-8df015fc0e6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '2ffe688b-76e2-4a24-8c1d-06e899bf0ff6'::uuid AS category_uuid, 'jardin-exterieur-eclairage-exterieur' AS slug, 'Éclairage extérieur' AS name, 3390b6fd-3360-4e70-85eb-8df015fc0e6e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'b4af8dbf-ed15-46d2-b887-084453d6ac1a'::uuid AS category_uuid, 'outils-electroportatifs' AS slug, 'Outils électroportatifs (perceuses, visseuses, meuleuses)' AS name, 2f98f692-ff1f-4fab-ba11-e6896d3c6a62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'd7e366c5-7ff4-4bdb-ad6d-58b295a91e38'::uuid AS category_uuid, 'outils-a-main' AS slug, 'Outils à main' AS name, 2f98f692-ff1f-4fab-ba11-e6896d3c6a62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '07682802-556b-495d-9ce7-2d4cbcf981d8'::uuid AS category_uuid, 'peinture' AS slug, 'Peinture' AS name, 2f98f692-ff1f-4fab-ba11-e6896d3c6a62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '2421c562-cb7c-4694-8ef4-3b94595cfceb'::uuid AS category_uuid, 'revetements-murs-sols' AS slug, 'Revêtements murs & sols' AS name, 2f98f692-ff1f-4fab-ba11-e6896d3c6a62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'f4c352d9-491d-4d4d-bd18-2db7c6a566d6'::uuid AS category_uuid, 'parquet' AS slug, 'Parquet' AS name, 2f98f692-ff1f-4fab-ba11-e6896d3c6a62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '0816a4ec-7fe2-415a-9029-db306f6fa640'::uuid AS category_uuid, 'carrelage' AS slug, 'Carrelage' AS name, 2f98f692-ff1f-4fab-ba11-e6896d3c6a62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'a45c7c05-572c-4fca-98df-1c1c5a27aa00'::uuid AS category_uuid, 'bricolage-amelioration-maison-plomberie' AS slug, 'Plomberie' AS name, 2f98f692-ff1f-4fab-ba11-e6896d3c6a62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'e80df106-b981-40dc-b7ce-90edda2d5ce9'::uuid AS category_uuid, 'bricolage-amelioration-maison-electricite' AS slug, 'Électricité' AS name, 2f98f692-ff1f-4fab-ba11-e6896d3c6a62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'f659ee68-e77a-437c-993a-efcfdf594b02'::uuid AS category_uuid, 'isolation' AS slug, 'Isolation' AS name, 2f98f692-ff1f-4fab-ba11-e6896d3c6a62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '47e82de4-977c-44b6-a237-190f8e444a9d'::uuid AS category_uuid, 'bricolage-amelioration-maison-materiaux-de-construction' AS slug, 'Matériaux de construction' AS name, 2f98f692-ff1f-4fab-ba11-e6896d3c6a62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'ec24b4c7-38eb-4731-919e-fe052498af01'::uuid AS category_uuid, 'portes-fenetres' AS slug, 'Portes & fenêtres' AS name, 2f98f692-ff1f-4fab-ba11-e6896d3c6a62::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '941b58a4-9380-4fef-8267-96bd2652d0f6'::uuid AS category_uuid, 'cameras-de-surveillance' AS slug, 'Caméras de surveillance' AS name, 60cbceec-2632-4684-84ad-5ac12b2088e3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'f418bb60-fd39-42c3-9ad3-632ceb574e0c'::uuid AS category_uuid, 'alarmes-connectees' AS slug, 'Alarmes connectées' AS name, 60cbceec-2632-4684-84ad-5ac12b2088e3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '96c28701-8546-4ff2-84c5-108b8eeeac8b'::uuid AS category_uuid, 'detecteurs-de-fumee' AS slug, 'Détecteurs de fumée' AS name, 60cbceec-2632-4684-84ad-5ac12b2088e3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '769aa9a1-fcf8-4835-a0cd-e63a604e638b'::uuid AS category_uuid, 'serrures-cadenas' AS slug, 'Serrures & cadenas' AS name, 60cbceec-2632-4684-84ad-5ac12b2088e3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '190b3e3f-dedb-4f97-a142-0b1b2221d639'::uuid AS category_uuid, 'portails-automatiques' AS slug, 'Portails automatiques' AS name, 60cbceec-2632-4684-84ad-5ac12b2088e3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '17573878-b8ae-4877-96b2-81776a40897c'::uuid AS category_uuid, 'visiophones' AS slug, 'Visiophones' AS name, 60cbceec-2632-4684-84ad-5ac12b2088e3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '7d3efd6a-7663-4efc-b227-da19644f0efe'::uuid AS category_uuid, 'coffres-forts' AS slug, 'Coffres-forts' AS name, 60cbceec-2632-4684-84ad-5ac12b2088e3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '2a7edfb6-5cda-413b-a8bf-ec7434c8939c'::uuid AS category_uuid, 'agences-immobilieres' AS slug, 'Agences immobilières' AS name, e81215d8-020d-48a2-8e38-1b2c5da5c80e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '8bfab35c-78d8-40cf-bb16-df705e307991'::uuid AS category_uuid, 'services-architecture' AS slug, 'Services d’architecture' AS name, e81215d8-020d-48a2-8e38-1b2c5da5c80e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '83f36432-bd50-4aee-9fe1-ceeb04581e66'::uuid AS category_uuid, 'artisans-plomberie-electricite-peinture' AS slug, 'Artisans (plomberie, électricité, peinture)' AS name, e81215d8-020d-48a2-8e38-1b2c5da5c80e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '5cfddcc0-35fc-4386-aafe-3dec1f0b772d'::uuid AS category_uuid, 'demenagement' AS slug, 'Déménagement' AS name, e81215d8-020d-48a2-8e38-1b2c5da5c80e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'ac23c4a0-d8b6-4483-9901-b1bacc57657d'::uuid AS category_uuid, 'nettoyage' AS slug, 'Nettoyage' AS name, e81215d8-020d-48a2-8e38-1b2c5da5c80e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '57349bc3-7e61-4aaf-a0f5-5dfb0714d9b0'::uuid AS category_uuid, 'services-maison-immobilier-entretien-jardin' AS slug, 'Entretien jardin' AS name, e81215d8-020d-48a2-8e38-1b2c5da5c80e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'a20be108-fee6-4f2c-866c-7b8163355d01'::uuid AS category_uuid, 'renovation' AS slug, 'Rénovation' AS name, e81215d8-020d-48a2-8e38-1b2c5da5c80e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '5895f020-ec02-448d-a9cd-fb0016da80a0'::uuid AS category_uuid, 'gestion-locative' AS slug, 'Gestion locative' AS name, e81215d8-020d-48a2-8e38-1b2c5da5c80e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'c660a0e7-797f-4f78-9d95-82e667f0acb3'::uuid AS category_uuid, 'diagnostics-immobiliers' AS slug, 'Diagnostics immobiliers' AS name, e81215d8-020d-48a2-8e38-1b2c5da5c80e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '4d646ceb-a1c2-4e13-9bf2-81c7d5cca43c'::uuid AS category_uuid, 'marques-materiel-populaire-ikea' AS slug, 'Ikea' AS name, ae06f713-ab95-4b48-ae4f-61a8c2a369cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'dbe150dd-04cd-45b6-8828-f2603c1eabf4'::uuid AS category_uuid, 'samsung-home' AS slug, 'Samsung Home' AS name, ae06f713-ab95-4b48-ae4f-61a8c2a369cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '88517a99-863f-4822-a45d-2b364a251ba1'::uuid AS category_uuid, 'marques-materiel-populaire-lg' AS slug, 'LG' AS name, ae06f713-ab95-4b48-ae4f-61a8c2a369cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'd5688f02-de6b-44a5-95b4-284270c74acd'::uuid AS category_uuid, 'marques-materiel-populaire-bosch' AS slug, 'Bosch' AS name, ae06f713-ab95-4b48-ae4f-61a8c2a369cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '28df7210-753b-4d23-9afe-5572e7349501'::uuid AS category_uuid, 'marques-materiel-populaire-beko' AS slug, 'Beko' AS name, ae06f713-ab95-4b48-ae4f-61a8c2a369cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '8ac93dc5-e78d-486e-be56-760512c2407d'::uuid AS category_uuid, 'marques-materiel-populaire-whirlpool' AS slug, 'Whirlpool' AS name, ae06f713-ab95-4b48-ae4f-61a8c2a369cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '07a7ae7f-0243-4ff5-a1d2-ee4993bb0652'::uuid AS category_uuid, 'philips-lighting' AS slug, 'Philips Lighting' AS name, ae06f713-ab95-4b48-ae4f-61a8c2a369cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'f50fb971-9c77-4679-9df1-bcf02b8ee4d3'::uuid AS category_uuid, 'schneider-electric' AS slug, 'Schneider Electric' AS name, ae06f713-ab95-4b48-ae4f-61a8c2a369cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '225b0ae8-5faa-4e40-abd9-155738733988'::uuid AS category_uuid, 'karcher' AS slug, 'Kärcher' AS name, ae06f713-ab95-4b48-ae4f-61a8c2a369cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'afb1cd3a-45cf-405f-8a16-e16af1a86b07'::uuid AS category_uuid, 'ariston' AS slug, 'Ariston' AS name, ae06f713-ab95-4b48-ae4f-61a8c2a369cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '79818bd8-9204-43f2-8c9e-a5e922602db1'::uuid AS category_uuid, 'marques-materiel-populaire-moulinex' AS slug, 'Moulinex' AS name, ae06f713-ab95-4b48-ae4f-61a8c2a369cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '69827e32-79ad-4213-bd71-39b2418ef4e2'::uuid AS category_uuid, 'tefal' AS slug, 'Tefal' AS name, ae06f713-ab95-4b48-ae4f-61a8c2a369cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '6d6dc286-4013-4a15-8e12-43da059603cc'::uuid AS category_uuid, 'jaga' AS slug, 'Jaga' AS name, ae06f713-ab95-4b48-ae4f-61a8c2a369cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '5a708e1d-7965-4aef-a80a-91299960f181'::uuid AS category_uuid, 'daikin' AS slug, 'Daikin' AS name, ae06f713-ab95-4b48-ae4f-61a8c2a369cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT '786c27ea-ef39-4954-93af-342bd33ddaf5'::uuid AS category_uuid, 'hitachi' AS slug, 'Hitachi' AS name, ae06f713-ab95-4b48-ae4f-61a8c2a369cf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'b7520b6b-17d3-4dea-83a3-8532cf4dcace'::uuid AS category_uuid, 'telephonie' AS slug, 'Téléphonie' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.871Z' AS created_at, '2026-04-03T10:15:31.871Z' AS updated_at
  UNION ALL
  SELECT 'b4985ff6-e041-4f17-a149-e28a6e08cea2'::uuid AS category_uuid, 'telephonie-smartphones' AS slug, 'Smartphones' AS name, b7520b6b-17d3-4dea-83a3-8532cf4dcace::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'aeab5ffc-d3be-4483-be6e-fe52400acea7'::uuid AS category_uuid, 'telephonie-telephones-classiques-fixes' AS slug, 'Téléphones Classiques & Fixes' AS name, b7520b6b-17d3-4dea-83a3-8532cf4dcace::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'b7925c49-2bf6-4427-a36a-5d69bd10d14a'::uuid AS category_uuid, 'telephonie-tablettes-appareils-mobiles' AS slug, 'Tablettes & Appareils Mobiles' AS name, b7520b6b-17d3-4dea-83a3-8532cf4dcace::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'ef617fad-0480-4d11-b594-ab8cafc50dba'::uuid AS category_uuid, 'telephonie-accessoires-telephones' AS slug, 'Accessoires Téléphones' AS name, b7520b6b-17d3-4dea-83a3-8532cf4dcace::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'd2ff6cd9-a5b4-43f9-b503-63b000fe24f7'::uuid AS category_uuid, 'telephonie-batteries-charge' AS slug, 'Batteries & Charge' AS name, b7520b6b-17d3-4dea-83a3-8532cf4dcace::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '262a871b-79ab-4705-87d1-ced730177c06'::uuid AS category_uuid, 'telephonie-audio-mobile' AS slug, 'Audio Mobile' AS name, b7520b6b-17d3-4dea-83a3-8532cf4dcace::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'c464bb38-04b4-4de4-9989-b8c2eb9c931b'::uuid AS category_uuid, 'telephonie-pieces-reparation-telephone' AS slug, 'Pièces & Réparation Téléphone' AS name, b7520b6b-17d3-4dea-83a3-8532cf4dcace::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '42984df7-5409-4de5-b26a-6acb84a805b9'::uuid AS category_uuid, 'telephonie-objets-connectes-mobile' AS slug, 'Objets Connectés (Mobile)' AS name, b7520b6b-17d3-4dea-83a3-8532cf4dcace::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '789258a9-ad67-4b53-8005-ae6d016b2dd3'::uuid AS category_uuid, 'telephonie-reseau-communication-mobile' AS slug, 'Réseau & Communication Mobile' AS name, b7520b6b-17d3-4dea-83a3-8532cf4dcace::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'be189312-ace2-4ce6-8354-acc2f40733ae'::uuid AS category_uuid, 'telephonie-securite-protection' AS slug, 'Sécurité & Protection' AS name, b7520b6b-17d3-4dea-83a3-8532cf4dcace::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '8853d753-4f0a-445b-9115-1edfa3096f57'::uuid AS category_uuid, 'telephonie-applications-services' AS slug, 'Applications & Services' AS name, b7520b6b-17d3-4dea-83a3-8532cf4dcace::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'e64120ac-2a6e-4207-b859-91ed49944cfa'::uuid AS category_uuid, 'telephonie-marques-populaires-mobiles' AS slug, 'Marques Populaires (Mobiles)' AS name, b7520b6b-17d3-4dea-83a3-8532cf4dcace::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '50c5a9c0-7dae-4676-995b-7cb3f3d894b6'::uuid AS category_uuid, 'telephonie-operateurs-mobiles-algerie' AS slug, 'Opérateurs Mobiles en Algérie' AS name, b7520b6b-17d3-4dea-83a3-8532cf4dcace::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '50650f52-2e24-4997-b23b-5a12ac7215c4'::uuid AS category_uuid, 'smartphones-smartphones-android' AS slug, 'Smartphones Android' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '150e7d17-2927-4a72-b213-c37601f30c02'::uuid AS category_uuid, 'smartphones-iphone' AS slug, 'iPhone' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'cc6ac45d-3a79-4ff3-9f40-6bffd69c4a88'::uuid AS category_uuid, 'smartphones-smartphones-5g' AS slug, 'Smartphones 5G' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '1010646d-bb71-4cc6-8f36-3f2784b8062a'::uuid AS category_uuid, 'smartphones-smartphones-gaming' AS slug, 'Smartphones gaming' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '5d4d6134-88dd-4d42-9e77-04da36b6bc10'::uuid AS category_uuid, 'smartphones-smartphones-pliables' AS slug, 'Smartphones pliables' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '0d5a6107-9bff-429e-8a48-38512211f31c'::uuid AS category_uuid, 'smartphones-smartphones-entree-de-gamme' AS slug, 'Smartphones d’entrée de gamme' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '9767bd87-adb5-4d92-b0e8-7d480e1a459b'::uuid AS category_uuid, 'smartphones-smartphones-milieu-de-gamme' AS slug, 'Smartphones milieu de gamme' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'de16d9d6-b8a2-4a17-b791-2009be91b56e'::uuid AS category_uuid, 'smartphones-smartphones-haut-de-gamme' AS slug, 'Smartphones haut de gamme' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'b39101a1-d74c-4b66-bac6-661ac472e70b'::uuid AS category_uuid, 'smartphones-smartphones-reconditionnes' AS slug, 'Smartphones reconditionnés' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'dcf9884a-ecbe-4478-b9f6-a28600d548d5'::uuid AS category_uuid, 'smartphones-telephones-robustes-rugged' AS slug, 'Téléphones robustes (rugged)' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '4e4b6957-5a99-490d-8f6f-64128787c3c4'::uuid AS category_uuid, 'smartphones-mini-smartphones' AS slug, 'Mini smartphones' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '324b05b9-97cf-4979-8f0d-80e7245823d7'::uuid AS category_uuid, 'smartphones-smartphones-professionnels' AS slug, 'Smartphones professionnels' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '2625d755-7818-4732-98bc-e3255c70b299'::uuid AS category_uuid, 'telephones-classiques-fixes-telephones-portables-classiques' AS slug, 'Téléphones portables classiques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'e08786e2-3fe6-4a6f-bbdb-ac3e65c10579'::uuid AS category_uuid, 'telephones-classiques-fixes-telephones-a-clapet' AS slug, 'Téléphones à clapet' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'c1b8eeeb-8b55-4ad0-8e22-2bd581f98086'::uuid AS category_uuid, 'telephones-classiques-fixes-telephones-seniors' AS slug, 'Téléphones seniors' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '96678125-9dd6-46a8-bba2-a4b4aa394893'::uuid AS category_uuid, 'telephones-classiques-fixes-telephones-fixes-filaires' AS slug, 'Téléphones fixes filaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'f6ac0864-4ea7-4c37-b26a-1aa03d623b8b'::uuid AS category_uuid, 'telephones-classiques-fixes-telephones-fixes-sans-fil' AS slug, 'Téléphones fixes sans fil' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'd2e7fda7-a603-4880-b3f9-89f0132a249f'::uuid AS category_uuid, 'telephones-classiques-fixes-combines-dect' AS slug, 'Combinés DECT' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'bfa0c0f0-670a-446c-88b2-47cd6921e22d'::uuid AS category_uuid, 'telephones-classiques-fixes-telephones-voip' AS slug, 'Téléphones VoIP' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '96ba2e59-6c99-4379-a7de-87319b2cacf1'::uuid AS category_uuid, 'tablettes-appareils-mobiles-tablettes-android' AS slug, 'Tablettes Android' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'd12729b7-5242-4d9a-a1a3-d0fc8eff5eb7'::uuid AS category_uuid, 'tablettes-appareils-mobiles-ipad' AS slug, 'iPad' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '28d58950-51cf-4f23-b100-37b3cf643463'::uuid AS category_uuid, 'tablettes-appareils-mobiles-tablettes-graphiques' AS slug, 'Tablettes graphiques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '27ee4922-26bf-4eae-b62a-e69c1f6196d4'::uuid AS category_uuid, 'tablettes-appareils-mobiles-tablettes-enfants' AS slug, 'Tablettes enfants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '7db10c4a-098b-4271-8d6a-07d4554ff69a'::uuid AS category_uuid, 'tablettes-appareils-mobiles-liseuses-electroniques' AS slug, 'Liseuses électroniques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '7b237c0e-5726-41e1-8040-56d73c71d135'::uuid AS category_uuid, 'tablettes-appareils-mobiles-phablettes' AS slug, 'Phablettes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '1f9c4cc4-daa1-44c0-aa2d-8d1600f93408'::uuid AS category_uuid, 'tablettes-appareils-mobiles-mini-tablettes' AS slug, 'Mini tablettes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'bf43fcd1-196e-4398-a27d-c068b6a13fb7'::uuid AS category_uuid, 'tablettes-appareils-mobiles-tablettes-professionnelles' AS slug, 'Tablettes professionnelles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '151554c1-e0a7-4701-bae7-3ba2b7e1b2a4'::uuid AS category_uuid, 'accessoires-telephones-coques-protection' AS slug, 'Coques de protection' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 2 terminé: 100 entrées
