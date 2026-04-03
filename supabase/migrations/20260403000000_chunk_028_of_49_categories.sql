-- ============================================================
-- CHUNK 28/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '17bc4193-644c-47fe-99cd-27708c129433'::uuid AS category_uuid, 'accessoires-cosplay' AS slug, 'Accessoires cosplay' AS name, b5919e72-662d-46f1-be19-b88995804712::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '2cd004a5-196c-4abb-a72a-d0eb301545ce'::uuid AS category_uuid, 'collections-officielles' AS slug, 'Collections officielles' AS name, b5919e72-662d-46f1-be19-b88995804712::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '7df2227b-8acf-4034-8497-486ffc40bf21'::uuid AS category_uuid, 'quincaillerie-generale' AS slug, 'Quincaillerie Générale' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '59727a09-4015-47a4-bc8c-89abbbc4a0e9'::uuid AS category_uuid, 'quincaillerie-generale-outils-manuels' AS slug, 'Outils manuels' AS name, 7df2227b-8acf-4034-8497-486ffc40bf21::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '6b648a29-5350-4e1b-ad84-2851f3e56267'::uuid AS category_uuid, 'outils-electriques-electroportatifs' AS slug, 'Outils électriques & électroportatifs' AS name, 7df2227b-8acf-4034-8497-486ffc40bf21::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.885Z' AS updated_at
  UNION ALL
  SELECT '368a9c70-fa8d-42e4-8667-2ff81f0ea48a'::uuid AS category_uuid, 'materiel-de-fixation' AS slug, 'Matériel de fixation' AS name, 7df2227b-8acf-4034-8497-486ffc40bf21::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.885Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '769b1c9b-ea2f-4341-aed0-cc81c47d7a3e'::uuid AS category_uuid, 'quincaillerie-porte-fenetre' AS slug, 'Quincaillerie de porte & fenêtre' AS name, 7df2227b-8acf-4034-8497-486ffc40bf21::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'e3ab67e6-5f7a-4944-9401-1b022521604c'::uuid AS category_uuid, 'quincaillerie-generale-securite-protection' AS slug, 'Sécurité & protection' AS name, 7df2227b-8acf-4034-8497-486ffc40bf21::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '7512c13c-f028-4673-9fac-95e4ebd4a8bd'::uuid AS category_uuid, 'materiel-de-plomberie' AS slug, 'Matériel de plomberie' AS name, 7df2227b-8acf-4034-8497-486ffc40bf21::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '55abb76e-f6b8-43ea-9d17-c248b20e9cb9'::uuid AS category_uuid, 'materiel-electrique' AS slug, 'Matériel électrique' AS name, 7df2227b-8acf-4034-8497-486ffc40bf21::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'cf507d8e-da22-4999-b6d8-f03c0185f28e'::uuid AS category_uuid, 'colles-adhesifs' AS slug, 'Colles & adhésifs' AS name, 7df2227b-8acf-4034-8497-486ffc40bf21::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '4dd3cfa2-e412-49d6-beeb-34ab53ac54c5'::uuid AS category_uuid, 'produits-soudure-brasage' AS slug, 'Produits de soudure & brasage' AS name, 7df2227b-8acf-4034-8497-486ffc40bf21::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'c40c6b5e-f82c-4ef5-b62b-76f823168628'::uuid AS category_uuid, 'outillage-de-mesure' AS slug, 'Outillage de mesure' AS name, 7df2227b-8acf-4034-8497-486ffc40bf21::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'c744a033-d55f-40a6-8612-034673def56b'::uuid AS category_uuid, 'rangements-organisation' AS slug, 'Rangements & organisation' AS name, 7df2227b-8acf-4034-8497-486ffc40bf21::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'c9aba546-48b3-4881-9a15-5653e2b62cb2'::uuid AS category_uuid, 'materiaux-metalliques-accessoires' AS slug, 'Matériaux métalliques & accessoires' AS name, 7df2227b-8acf-4034-8497-486ffc40bf21::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '4ff16881-635c-44f4-92a4-a7ea2db2a165'::uuid AS category_uuid, 'peinture-preparation' AS slug, 'Peinture & préparation' AS name, 7df2227b-8acf-4034-8497-486ffc40bf21::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'd19d843c-0746-4db4-b34c-4646e6da70a5'::uuid AS category_uuid, 'jardinerie-bricolage-leger' AS slug, 'Jardinerie & bricolage léger' AS name, 7df2227b-8acf-4034-8497-486ffc40bf21::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'b93bec0b-5603-4a39-bd6d-cf471a387903'::uuid AS category_uuid, 'accessoires-divers' AS slug, 'Accessoires divers' AS name, 7df2227b-8acf-4034-8497-486ffc40bf21::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '42fc968b-1b38-4895-be57-e43a83aaaaaa'::uuid AS category_uuid, 'tournevis-plats' AS slug, 'Tournevis plats' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '6393cc89-8625-4111-a396-a43f7bd12a1c'::uuid AS category_uuid, 'tournevis-cruciformes' AS slug, 'Tournevis cruciformes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '60938604-4fa4-4e28-bf17-d50f1a6a221e'::uuid AS category_uuid, 'tournevis-de-precision' AS slug, 'Tournevis de précision' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '44b5a336-e32b-4b20-b6dd-56bb83a1865a'::uuid AS category_uuid, 'marteaux-de-menuisier' AS slug, 'Marteaux de menuisier' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '76b6e9a5-013d-465f-b375-87296960356a'::uuid AS category_uuid, 'marteaux-de-macon' AS slug, 'Marteaux de maçon' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '1eea23a3-27cf-4154-bb05-6cea18af03a1'::uuid AS category_uuid, 'pinces-universelles' AS slug, 'Pinces universelles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '0ee28753-4f78-4e91-a410-257c1a7e7b6f'::uuid AS category_uuid, 'pinces-coupantes' AS slug, 'Pinces coupantes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '7947c9c8-ab03-42dd-a189-10ab26ba2f28'::uuid AS category_uuid, 'pinces-multiprises' AS slug, 'Pinces multiprises' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '6898f70c-5f1a-4a5c-87e2-84e1785a097a'::uuid AS category_uuid, 'cles-plates' AS slug, 'Clés plates' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '1f472f86-8fcc-4d36-8208-13b455db6415'::uuid AS category_uuid, 'cles-mixtes' AS slug, 'Clés mixtes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '03ff90f2-e25e-4bb7-802a-50bd47448867'::uuid AS category_uuid, 'cle-a-molette' AS slug, 'Clé à molette' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'b51f0782-0cb1-4de5-b9b0-9e721e4ad292'::uuid AS category_uuid, 'cles-allen' AS slug, 'Clés Allen' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'ed04d102-ac5e-4b28-8db8-dd2196451962'::uuid AS category_uuid, 'scies-manuelles' AS slug, 'Scies manuelles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '20450fa1-1002-4f61-9bce-7095aac750e7'::uuid AS category_uuid, 'scies-a-metaux' AS slug, 'Scies à métaux' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '05994223-a8f8-4009-b6e8-7500fd1b824c'::uuid AS category_uuid, 'cutters' AS slug, 'Cutters' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'f7b9dda3-590f-4f58-b435-d9016f8e8abc'::uuid AS category_uuid, 'grattoirs' AS slug, 'Grattoirs' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '0b0a1501-17cc-4e28-ac0c-3a53037b8899'::uuid AS category_uuid, 'ciseaux-a-bois' AS slug, 'Ciseaux à bois' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '1e4040ab-cf10-4fcb-85bb-d1676ae25725'::uuid AS category_uuid, 'jeux-de-douilles' AS slug, 'Jeux de douilles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'bd7bc5b3-d549-4bd8-809d-2138c2b1c146'::uuid AS category_uuid, 'cliquets' AS slug, 'Cliquets' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'fd0845a7-82e8-4c07-ac6e-eb15dc835030'::uuid AS category_uuid, 'outils-manuels-niveaux-a-bulle' AS slug, 'Niveaux à bulle' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '5821e350-c8d4-4c6d-bed9-445ebb8c0e8e'::uuid AS category_uuid, 'serre-joints' AS slug, 'Serre-joints' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'c9d431f0-b4c6-42fb-9825-e3db9c1f7f5f'::uuid AS category_uuid, 'outils-manuels-limes' AS slug, 'Limes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '726729ad-630c-469d-85f2-2d825a914e7c'::uuid AS category_uuid, 'rabots' AS slug, 'Rabots' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '38f16f64-1d5c-4b4d-bff4-4288f15a36ee'::uuid AS category_uuid, 'maillets' AS slug, 'Maillets' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '2bbc7055-c332-475c-83a4-6114792736f2'::uuid AS category_uuid, 'scies-egoines' AS slug, 'Scies égoïnes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '8f31d082-e117-4992-a687-13d1fd1f9867'::uuid AS category_uuid, 'scies-japonaises' AS slug, 'Scies japonaises' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '71ee918c-459f-4542-ac1a-408f7f56f4d4'::uuid AS category_uuid, 'outils-electriques-electroportatifs-perceuses' AS slug, 'Perceuses' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'f5944055-8e46-4b7f-bc19-255d0cf9d094'::uuid AS category_uuid, 'perceuses-a-percussion' AS slug, 'Perceuses à percussion' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'b8de8dcc-2570-4504-b5e3-c278a6481ee8'::uuid AS category_uuid, 'perceuses-sans-fil' AS slug, 'Perceuses sans fil' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'a6cf0a6a-c813-4422-985b-cf476bbc57ea'::uuid AS category_uuid, 'visseuses' AS slug, 'Visseuses' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '3d5f30d3-9af5-44d8-ba5e-74df971ca185'::uuid AS category_uuid, 'visseuses-a-choc' AS slug, 'Visseuses à choc' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'a2bb7008-3750-4656-8032-3aecd1e1111b'::uuid AS category_uuid, 'outils-electriques-electroportatifs-meuleuses' AS slug, 'Meuleuses' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '12724d08-5157-4706-bd22-908f8fe896f0'::uuid AS category_uuid, 'meuleuses-d-angle' AS slug, 'Meuleuses d’angle' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'dc03c3f4-488b-4dc5-916e-38d39083c05b'::uuid AS category_uuid, 'scies-electriques' AS slug, 'Scies électriques' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '4258628b-b0d3-490e-a7cb-8a31b665145a'::uuid AS category_uuid, 'outils-electriques-electroportatifs-scies-circulaires' AS slug, 'Scies circulaires' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '96905b01-8627-4a0d-b337-813999c4e0c8'::uuid AS category_uuid, 'scies-sauteuses' AS slug, 'Scies sauteuses' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'f398cb72-1a4c-4a06-ad3e-2b97d1250197'::uuid AS category_uuid, 'scies-sabres' AS slug, 'Scies sabres' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'b5ef7dd9-95ba-4332-a746-dad607d0d48c'::uuid AS category_uuid, 'ponceuses-orbitales' AS slug, 'Ponceuses orbitales' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '619f600c-6882-4566-a668-4a788f49413e'::uuid AS category_uuid, 'ponceuses-vibrantes' AS slug, 'Ponceuses vibrantes' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'bad25847-39cd-442a-937a-b40e8feea259'::uuid AS category_uuid, 'ponceuses-a-bande' AS slug, 'Ponceuses à bande' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '2c90b72b-c471-419f-9a12-2e1298d8396b'::uuid AS category_uuid, 'marteaux-perforateurs' AS slug, 'Marteaux-perforateurs' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'c275dc7a-606a-43ae-a819-18839450bbb6'::uuid AS category_uuid, 'defonceuses' AS slug, 'Défonceuses' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '5601f659-8fd4-4ecc-9697-5cfb8c92dfe0'::uuid AS category_uuid, 'pistolets-a-chaleur' AS slug, 'Pistolets à chaleur' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'dc519d26-72da-4bea-823e-9acbf52ee56a'::uuid AS category_uuid, 'pistolets-a-colle' AS slug, 'Pistolets à colle' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'c87851e5-1668-4ca3-839d-a0e99036d09e'::uuid AS category_uuid, 'agrafeuses-electriques' AS slug, 'Agrafeuses électriques' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'd2b23b48-d94a-4015-aa87-1ee5b46b806c'::uuid AS category_uuid, 'decoupeurs-multifonctions' AS slug, 'Découpeurs multifonctions' AS name, 6b648a29-5350-4e1b-ad84-2851f3e56267::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'c5d25b2e-959b-4d6c-9807-43f4e1f3390a'::uuid AS category_uuid, 'vis-bois' AS slug, 'Vis bois' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'c5e683d7-95a2-4b5d-a18c-e302b9dbb114'::uuid AS category_uuid, 'vis-metal' AS slug, 'Vis métal' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'c632f053-9899-4515-bf11-f28ff665e3d5'::uuid AS category_uuid, 'vis-auto-perceuses' AS slug, 'Vis auto-perceuses' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '130c4a3b-95f2-4e5b-9057-8720f8f59282'::uuid AS category_uuid, 'vis-placo' AS slug, 'Vis placo' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '97283834-7697-43b9-968d-ac1617006d1c'::uuid AS category_uuid, 'boulons' AS slug, 'Boulons' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '6fcc2ffa-4f4d-4258-a2b6-44427820fb58'::uuid AS category_uuid, 'ecrous' AS slug, 'Écrous' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '1104c095-b2c2-418a-bf09-25233b2d80a9'::uuid AS category_uuid, 'rondelles-plates' AS slug, 'Rondelles plates' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '4d1281c2-bdcf-4640-9a51-78b9a37e3975'::uuid AS category_uuid, 'rondelles-frein' AS slug, 'Rondelles frein' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '5ca1d9af-337e-4131-b109-2de3237745a7'::uuid AS category_uuid, 'chevilles-classiques' AS slug, 'Chevilles classiques' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '58415e82-21ab-4fbe-ad46-6dbd1abd23ab'::uuid AS category_uuid, 'chevilles-molly' AS slug, 'Chevilles Molly' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '5b04a25a-e92c-4244-b2b0-4ebdd6e7e51f'::uuid AS category_uuid, 'chevilles-metalliques' AS slug, 'Chevilles métalliques' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '79a3fd81-a1b0-499b-9f40-7f949ad087fe'::uuid AS category_uuid, 'chevilles-chimiques' AS slug, 'Chevilles chimiques' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '2984ed1e-97cb-4ceb-a349-3106c8a8042a'::uuid AS category_uuid, 'rivets' AS slug, 'Rivets' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '68670054-74f2-418f-b828-59a1da8008e4'::uuid AS category_uuid, 'materiel-de-fixation-clous' AS slug, 'Clous' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '17da0adc-1f77-404c-929b-9e2288e3451f'::uuid AS category_uuid, 'pointes' AS slug, 'Pointes' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '9e90f535-f150-4220-846c-c87f021ae53f'::uuid AS category_uuid, 'crochets-muraux' AS slug, 'Crochets muraux' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'd0afad67-95b2-4a20-8721-e05afc41cfae'::uuid AS category_uuid, 'equerres-renforcees' AS slug, 'Équerres renforcées' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '917b2526-3c91-4dbc-9dda-ee472d17fed7'::uuid AS category_uuid, 'pitons' AS slug, 'Pitons' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '53697209-8418-4973-aa64-d913b8da90b7'::uuid AS category_uuid, 'serre-cables' AS slug, 'Serre-câbles' AS name, 368a9c70-fa8d-42e4-8667-2ff81f0ea48a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'e645c0c1-72bd-4d4c-ac94-5f25f089fb06'::uuid AS category_uuid, 'serrures-a-cle' AS slug, 'Serrures à clé' AS name, 769b1c9b-ea2f-4341-aed0-cc81c47d7a3e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'bca8f951-a426-4e20-8102-acd488d2e4e4'::uuid AS category_uuid, 'serrures-multipoints' AS slug, 'Serrures multipoints' AS name, 769b1c9b-ea2f-4341-aed0-cc81c47d7a3e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '47651d79-5fe6-4035-9c2b-a3f6a2755521'::uuid AS category_uuid, 'cylindres-europeens' AS slug, 'Cylindres européens' AS name, 769b1c9b-ea2f-4341-aed0-cc81c47d7a3e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '5e377347-2d61-47e1-9773-66aa29f2c764'::uuid AS category_uuid, 'poignees-de-porte' AS slug, 'Poignées de porte' AS name, 769b1c9b-ea2f-4341-aed0-cc81c47d7a3e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '90e12538-6564-4613-b0ea-7b2750169fd2'::uuid AS category_uuid, 'poignees-de-fenetre' AS slug, 'Poignées de fenêtre' AS name, 769b1c9b-ea2f-4341-aed0-cc81c47d7a3e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'b91aeb71-a759-436e-ae8e-8c903700aa9b'::uuid AS category_uuid, 'paumelles' AS slug, 'Paumelles' AS name, 769b1c9b-ea2f-4341-aed0-cc81c47d7a3e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '87932178-1897-4643-99ce-3f3bbf180270'::uuid AS category_uuid, 'charnieres-renforcees' AS slug, 'Charnières renforcées' AS name, 769b1c9b-ea2f-4341-aed0-cc81c47d7a3e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '98b68c34-b887-4e08-aada-15556b55fec2'::uuid AS category_uuid, 'verrous' AS slug, 'Verrous' AS name, 769b1c9b-ea2f-4341-aed0-cc81c47d7a3e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '8161a26f-c135-49bf-a508-7053fda66457'::uuid AS category_uuid, 'loquets' AS slug, 'Loquets' AS name, 769b1c9b-ea2f-4341-aed0-cc81c47d7a3e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '0cc7f12c-519e-4b48-89f2-de9775087fc8'::uuid AS category_uuid, 'cremones' AS slug, 'Crémenes' AS name, 769b1c9b-ea2f-4341-aed0-cc81c47d7a3e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '96b82cf1-9fce-472d-9be6-de2781de2464'::uuid AS category_uuid, 'butees-de-porte' AS slug, 'Butées de porte' AS name, 769b1c9b-ea2f-4341-aed0-cc81c47d7a3e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'e5f6d01b-accc-45ed-97ed-44a323c6be1a'::uuid AS category_uuid, 'heurtoirs' AS slug, 'Heurtoirs' AS name, 769b1c9b-ea2f-4341-aed0-cc81c47d7a3e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '388d46be-112c-4da6-bf5a-07746548cda3'::uuid AS category_uuid, 'arrets-de-porte-magnetiques' AS slug, 'Arrêts de porte magnétiques' AS name, 769b1c9b-ea2f-4341-aed0-cc81c47d7a3e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'e9763d22-1645-41f0-bd88-3dedebcef2bc'::uuid AS category_uuid, 'joints-detancheite' AS slug, 'Joints d’étanchéité' AS name, 769b1c9b-ea2f-4341-aed0-cc81c47d7a3e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'fc0ad296-25c5-45bf-8799-1360ce28e03c'::uuid AS category_uuid, 'cadenas-standards' AS slug, 'Cadenas standards' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT '8e48bf7f-a66c-452e-a4c9-b0dffcdbbccd'::uuid AS category_uuid, 'cadenas-haute-securite' AS slug, 'Cadenas haute sécurité' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
  UNION ALL
  SELECT 'ad27d157-220f-4031-af9b-70b863507da5'::uuid AS category_uuid, 'antivols-portes-portails' AS slug, 'Antivols pour portes et portails' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.886Z' AS created_at, '2026-04-03T10:15:31.886Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 28 terminé: 100 entrées
