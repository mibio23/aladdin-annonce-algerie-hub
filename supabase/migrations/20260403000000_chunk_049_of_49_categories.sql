-- ============================================================
-- CHUNK 49/49 — 36 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'c5e5ccbb-b277-4fb7-adc4-7886e053d434'::uuid AS category_uuid, 'dons-divers' AS slug, 'dons divers' AS name, 5aef51ee-7ec7-48de-a9a3-30506618a967::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '9e90e89a-d5ea-4f7b-ab9b-ad47a09a676c'::uuid AS category_uuid, 'pret-outils' AS slug, 'prêt outils' AS name, e722b50d-2146-4da9-ac18-be9fd157767c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '7b929e14-8c44-4764-8cdb-3ef6307858b5'::uuid AS category_uuid, 'pret-appareils' AS slug, 'prêt appareils' AS name, e722b50d-2146-4da9-ac18-be9fd157767c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '4f9ebaae-eb73-44e9-b1fb-73775b6e7519'::uuid AS category_uuid, 'pret-velos' AS slug, 'prêt vélos' AS name, e722b50d-2146-4da9-ac18-be9fd157767c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '05385e36-7183-4bd3-965d-42947a02de81'::uuid AS category_uuid, 'pret-materiel-pro' AS slug, 'prêt matériel pro' AS name, e722b50d-2146-4da9-ac18-be9fd157767c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'b4907441-adda-4f31-a0f1-555d3430fd2e'::uuid AS category_uuid, 'pret-equipements-maison' AS slug, 'prêt équipements maison' AS name, e722b50d-2146-4da9-ac18-be9fd157767c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '6cc1055b-70cd-4919-b1c2-1bdbfe4193c6'::uuid AS category_uuid, 'cours-gratuits' AS slug, 'cours gratuits' AS name, dd570656-a4d7-4bca-a878-e05c12f88ec3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '22f486fd-a35e-4969-8041-c590c027f636'::uuid AS category_uuid, 'echanges-competences' AS slug, 'échanges compétences' AS name, dd570656-a4d7-4bca-a878-e05c12f88ec3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '75118fb0-ead5-48f1-8235-9c419bcd2300'::uuid AS category_uuid, 'ateliers-partages' AS slug, 'ateliers partagés' AS name, dd570656-a4d7-4bca-a878-e05c12f88ec3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '24d0fe45-c452-4beb-bc5a-f6c74e7fac73'::uuid AS category_uuid, 'bricolage-entraide' AS slug, 'bricolage entraide' AS name, dd570656-a4d7-4bca-a878-e05c12f88ec3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '530c4e3a-bc0e-45e5-9697-c5514ed7faa9'::uuid AS category_uuid, 'partage-competences-soutien-scolaire' AS slug, 'soutien scolaire' AS name, dd570656-a4d7-4bca-a878-e05c12f88ec3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '93954978-24bf-4363-887e-1fa4b2f3abb0'::uuid AS category_uuid, 'covoiturage-local' AS slug, 'covoiturage local' AS name, 6473cd65-3cf6-488b-a0d3-2bccaa5a98a7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'c10374f3-b567-4b05-bf1a-c5833ef05a6c'::uuid AS category_uuid, 'partage-trajet' AS slug, 'partage trajet' AS name, 6473cd65-3cf6-488b-a0d3-2bccaa5a98a7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '555f6a2b-0db3-42ce-8c37-02341d91219f'::uuid AS category_uuid, 'transport-solidaire' AS slug, 'transport solidaire' AS name, 6473cd65-3cf6-488b-a0d3-2bccaa5a98a7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'f3622e98-629d-42f3-a50f-7c1289b20985'::uuid AS category_uuid, 'livraison-solidaire' AS slug, 'livraison solidaire' AS name, 6473cd65-3cf6-488b-a0d3-2bccaa5a98a7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '1bcada22-0e4f-45de-8afb-229890f94584'::uuid AS category_uuid, 'cohabitation-solidaire' AS slug, 'cohabitation solidaire' AS name, 1ae8a2dd-7585-46c7-a0f7-0dc3f91c943a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'f7a1ef7a-5d1a-44ee-98d5-6d3482f34eca'::uuid AS category_uuid, 'colocation-echange' AS slug, 'colocation échange' AS name, 1ae8a2dd-7585-46c7-a0f7-0dc3f91c943a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '03d2c775-b8e2-4fe1-94d8-e6a013b0ea0d'::uuid AS category_uuid, 'accueil-temporaire' AS slug, 'accueil temporaire' AS name, 1ae8a2dd-7585-46c7-a0f7-0dc3f91c943a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'cae47292-3813-43b7-a033-134d062f6f66'::uuid AS category_uuid, 'echange-maison' AS slug, 'échange maison' AS name, 1ae8a2dd-7585-46c7-a0f7-0dc3f91c943a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '4b9d475a-b235-4552-9f0b-aa78c6e0c127'::uuid AS category_uuid, 'service-contre-service' AS slug, 'service contre service' AS name, ae8d64c2-3ac1-4807-a665-4428202ba180::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '5ea15818-23a2-4ddb-baeb-052d4cb81ce2'::uuid AS category_uuid, 'aide-mutuelle' AS slug, 'aide mutuelle' AS name, ae8d64c2-3ac1-4807-a665-4428202ba180::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'c5277d99-e430-4a50-b7e0-9f00e2456aeb'::uuid AS category_uuid, 'reparation-echange' AS slug, 'réparation échange' AS name, ae8d64c2-3ac1-4807-a665-4428202ba180::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '05793bd9-4d3a-418a-a86d-53ef202f798f'::uuid AS category_uuid, 'menage-contre-aide' AS slug, 'ménage contre aide' AS name, ae8d64c2-3ac1-4807-a665-4428202ba180::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'ad405a52-46de-4f7a-aca7-642b861163a9'::uuid AS category_uuid, 'entraide-quartier' AS slug, 'entraide quartier' AS name, 8d62bc62-f795-42c4-b651-ca13415deb3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '83d0a9a8-5b28-470f-96c9-3691409aa450'::uuid AS category_uuid, 'recuperation-objets' AS slug, 'récupération objets' AS name, 8d62bc62-f795-42c4-b651-ca13415deb3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'd5b3d330-dfb3-4584-a6e8-883315abcacf'::uuid AS category_uuid, 'partage-alimentaire' AS slug, 'partage alimentaire' AS name, 8d62bc62-f795-42c4-b651-ca13415deb3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '80009a91-14ef-4bb5-bc9a-99d7ae525105'::uuid AS category_uuid, 'solidarite-locale' AS slug, 'solidarité locale' AS name, 8d62bc62-f795-42c4-b651-ca13415deb3a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '52a2db4c-3278-4c1c-a9c7-7979e24f8698'::uuid AS category_uuid, 'echange-culturel-echange-livres' AS slug, 'échange livres' AS name, 087faae5-2c9e-4a6f-b708-9aafd3ab9d07::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '07c278b6-dacf-45fd-ae6e-70f059addb11'::uuid AS category_uuid, 'partage-musique' AS slug, 'partage musique' AS name, 087faae5-2c9e-4a6f-b708-9aafd3ab9d07::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'e72e0d9f-0c38-432c-8a67-bd883b659fd8'::uuid AS category_uuid, 'partage-jeux' AS slug, 'partage jeux' AS name, 087faae5-2c9e-4a6f-b708-9aafd3ab9d07::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'c3774fa5-9043-4304-b63c-6cf4169fe701'::uuid AS category_uuid, 'activites-communes' AS slug, 'activités communes' AS name, 087faae5-2c9e-4a6f-b708-9aafd3ab9d07::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '98bddda9-8c01-4f8e-9700-4efe40948d68'::uuid AS category_uuid, 'sorties-partagees' AS slug, 'sorties partagées' AS name, 087faae5-2c9e-4a6f-b708-9aafd3ab9d07::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'be5b477d-f8ec-426d-9cb7-ebd034be6675'::uuid AS category_uuid, 'recyclage-objets' AS slug, 'recyclage objets' AS name, 5cc62cba-bd02-4e22-8459-cab88432ebba::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'ed4bc52e-6a10-4852-bbe7-29d414c17e09'::uuid AS category_uuid, 'recuperation-materiaux' AS slug, 'récup matériaux' AS name, 5cc62cba-bd02-4e22-8459-cab88432ebba::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '05b96aea-652a-497b-bf12-e72a841f4f6e'::uuid AS category_uuid, 'recuperation-meubles' AS slug, 'récup meubles' AS name, 5cc62cba-bd02-4e22-8459-cab88432ebba::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'a34d38c7-11ec-434e-8415-2e4e203c97c3'::uuid AS category_uuid, 'upcycling-creatif' AS slug, 'upcycling créatif' AS name, 5cc62cba-bd02-4e22-8459-cab88432ebba::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 49 terminé: 36 entrées
