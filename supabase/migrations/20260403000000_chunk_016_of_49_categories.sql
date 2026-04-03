-- ============================================================
-- CHUNK 16/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '64d7634f-9e61-435d-8cb7-d21608126deb'::uuid AS category_uuid, 'pluie' AS slug, 'Pluie' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'c798f1db-e002-4888-b595-c97dd6084b75'::uuid AS category_uuid, 'fourrees' AS slug, 'Fourrées' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'b33b51e7-b5aa-4260-9c0e-9e544b2fb6f5'::uuid AS category_uuid, 'motardes' AS slug, 'Motardes' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'bc4aa5a0-2d53-488e-91b4-def61e565b07'::uuid AS category_uuid, 'sandales-plates' AS slug, 'Sandales plates' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'e1eac593-9524-4c1d-b14d-efe89022c8fd'::uuid AS category_uuid, 'sandales-compensees' AS slug, 'Sandales compensées' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '420c8812-39be-4c17-9740-bf9b5d144f51'::uuid AS category_uuid, 'tongs' AS slug, 'Tongs' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '9a513da3-2aa7-4214-adc8-5b5b2316df8b'::uuid AS category_uuid, 'nu-pieds' AS slug, 'Nu-pieds' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '891530e0-eeed-434b-aa6b-2c80825b35c8'::uuid AS category_uuid, 'claquettes' AS slug, 'Claquettes' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '34b78fbb-edab-46ac-8da0-89c1218b2c61'::uuid AS category_uuid, 'espadrilles' AS slug, 'Espadrilles' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '512954fd-b898-48f3-95a4-1e84cf8325f3'::uuid AS category_uuid, 'football' AS slug, 'Football' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '9af795ad-15e9-4a13-a907-70769a45ebf7'::uuid AS category_uuid, 'futsal' AS slug, 'Futsal' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '72c01e26-94fa-452d-8be2-2bbc80837fd9'::uuid AS category_uuid, 'basketball' AS slug, 'Basketball' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '947e90b4-2458-4e76-aa49-90c84ae493f9'::uuid AS category_uuid, 'tennis-chaussures' AS slug, 'Tennis' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '8d5f3c30-acde-4954-850d-d3ff95edfdd3'::uuid AS category_uuid, 'golf-chaussures' AS slug, 'Golf' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '23fe19a6-5ff4-4962-ae4a-08fd4e5fc970'::uuid AS category_uuid, 'running-trail' AS slug, 'Running trail' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '88e74972-2d43-4dd2-8f8c-1b454926b46e'::uuid AS category_uuid, 'skateboard' AS slug, 'Skateboard' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '9ab92f2d-5c10-4f1f-9280-f2d8174d39c8'::uuid AS category_uuid, 'chaussures-fitness' AS slug, 'Fitness' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'a1201d35-dd9b-4d7c-b6ba-874fb364c855'::uuid AS category_uuid, 'premiers-pas' AS slug, 'Premiers pas' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '4434062d-f6b3-407e-aaea-65835ae3e4eb'::uuid AS category_uuid, 'ecole' AS slug, 'École' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '357f0b2d-161f-403c-9a7e-c6cc8120d695'::uuid AS category_uuid, 'lumineuses-led' AS slug, 'Lumineuses LED' AS name, d8dd4dd8-f46e-40f2-8baf-a433f72f5ec8::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '246bafde-349e-4790-bef2-f6846cc569c3'::uuid AS category_uuid, 'automatique' AS slug, 'Automatique' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'c0ffa01f-549f-4824-bc2b-28537de11bab'::uuid AS category_uuid, 'quartz' AS slug, 'Quartz' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'a47ef0a0-c95e-4ae0-a385-f845142047a7'::uuid AS category_uuid, 'connectee' AS slug, 'Connectée' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'faf5f13d-8489-44fc-bcbd-a9c0a46904ee'::uuid AS category_uuid, 'chronographe' AS slug, 'Chronographe' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '3f26b933-6912-42a4-8ac0-e0a0843fd13a'::uuid AS category_uuid, 'bijoux-montres-plongee' AS slug, 'Plongée' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '2cd8eca9-41e4-4e21-b075-33682883a896'::uuid AS category_uuid, 'sport-gps' AS slug, 'Sport GPS' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '439b3e4e-87bb-4ea8-83ae-f0e31bb66c41'::uuid AS category_uuid, 'bracelet-cuir' AS slug, 'Bracelet cuir' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '0ce868cf-a5cc-46bb-b6f5-4c06a4d504df'::uuid AS category_uuid, 'bracelet-acier' AS slug, 'Bracelet acier' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '3e420f9d-ab8e-40c9-b84d-55b951a19338'::uuid AS category_uuid, 'bracelet-silicone' AS slug, 'Bracelet silicone' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'fa7306d6-ca9e-4911-a0f0-19fc532a88af'::uuid AS category_uuid, 'chaines-fines' AS slug, 'Chaînes fines' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '471f364e-77fe-44ab-8e80-c56b8f1038cf'::uuid AS category_uuid, 'ras-de-cou' AS slug, 'Ras-de-cou' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '245810cd-7c2d-4503-a786-06a79eb5264f'::uuid AS category_uuid, 'sautoirs' AS slug, 'Sautoirs' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '58998759-9757-427f-b149-5ff107131abd'::uuid AS category_uuid, 'multi-rangs' AS slug, 'Multi-rangs' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'f2586bb0-7078-4095-bc05-e64c3ef5856e'::uuid AS category_uuid, 'medailles' AS slug, 'Médailles' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '41a764ad-4dc1-4c68-867b-09c9fa62c00a'::uuid AS category_uuid, 'croix' AS slug, 'Croix' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '703e7972-f03b-43c9-bb56-94e1c4ab4149'::uuid AS category_uuid, 'initiales' AS slug, 'Initiales' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'd6601fd4-9ea6-498a-a36f-91b44075e268'::uuid AS category_uuid, 'pierres-precieuses' AS slug, 'Pierres précieuses' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'cd5a73c6-b67d-421f-99fe-6618aff33408'::uuid AS category_uuid, 'pierres-semi-precieuses' AS slug, 'Pierres semi-précieuses' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'b500639d-0d45-4449-9245-15cce14166d8'::uuid AS category_uuid, 'perles' AS slug, 'Perles' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT 'a5002e30-fdda-4a8b-9b5e-57e954e8a89c'::uuid AS category_uuid, 'or' AS slug, 'Or' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '538ca6f5-e053-4faa-9933-b513d63c07f2'::uuid AS category_uuid, 'argent' AS slug, 'Argent' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '60df2419-8e4d-4f11-a951-5a2f8986cb9d'::uuid AS category_uuid, 'vermeil' AS slug, 'Vermeil' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '0f2764b5-267a-41de-aeaa-aed796fe28f1'::uuid AS category_uuid, 'puces' AS slug, 'Puces' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.879Z' AS created_at, '2026-04-03T10:15:31.879Z' AS updated_at
  UNION ALL
  SELECT '8e9f7e62-3094-42c5-854d-10cf8d9dd244'::uuid AS category_uuid, 'creoles' AS slug, 'Créoles' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'aa75c055-54e2-4132-9b36-435a63b13fd7'::uuid AS category_uuid, 'pendantes' AS slug, 'Pendantes' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '6df8c13a-54bc-4720-8ae2-15ec5ab2cbae'::uuid AS category_uuid, 'clips-boucles' AS slug, 'Clips' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '1c79a65d-42bf-48a1-8c06-08e17c32b10d'::uuid AS category_uuid, 'bracelets-chaine' AS slug, 'Bracelets chaîne' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '480c7fb7-30ae-409a-86fd-f217f0d9ba46'::uuid AS category_uuid, 'gourmette' AS slug, 'Gourmette' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'bb0bdbe4-9fb6-4c9c-b2b1-da7bbd439000'::uuid AS category_uuid, 'joncs' AS slug, 'Joncs' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '83ea5905-bd32-4ec8-9a3b-eec89421e0b7'::uuid AS category_uuid, 'manchettes' AS slug, 'Manchettes' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '7edf170e-dd44-42d4-9e36-c05dd6256feb'::uuid AS category_uuid, 'tennis-bijoux' AS slug, 'Tennis' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'ed688209-b0b4-47c4-816c-f18125897b55'::uuid AS category_uuid, 'perles-bracelets' AS slug, 'Perles' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '37200688-0c98-4b55-94d7-0672316a4ee8'::uuid AS category_uuid, 'bijoux-montres-cuir-tresse' AS slug, 'Cuir tressé' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '83d78f68-c5f3-478c-8060-9eb42be597a2'::uuid AS category_uuid, 'charms' AS slug, 'Charms' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '80e2dbe3-611a-4a8e-857c-d67c2bcdb063'::uuid AS category_uuid, 'alliance' AS slug, 'Alliance' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '8a87f08b-caa1-4e65-9efb-cf6131e32c3e'::uuid AS category_uuid, 'solitaire' AS slug, 'Solitaire' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '757334ca-dc7d-429e-ba01-445dc1de8ea4'::uuid AS category_uuid, 'chevaliere' AS slug, 'Chevalière' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '9e653436-f8f3-4fc8-9339-97eaa712e746'::uuid AS category_uuid, 'empilables' AS slug, 'Empilables' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '6e1312ab-623a-4fd0-944c-aa1741ecbbb8'::uuid AS category_uuid, 'midi-bagues' AS slug, 'Midi' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '69aeb012-3f26-47c7-af9f-5c88d8d24f11'::uuid AS category_uuid, 'cocktail-bagues' AS slug, 'Cocktail' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'a8e3794a-6023-4fb5-9f7d-a8b655862d6d'::uuid AS category_uuid, 'fantaisie' AS slug, 'Fantaisie' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '7f4f6cf4-91d3-484e-971c-045d6a1556c4'::uuid AS category_uuid, 'ethnique' AS slug, 'Ethnique' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '628962e0-5c39-4237-a626-b6d34088025b'::uuid AS category_uuid, 'bijoux-montres-minimaliste' AS slug, 'Minimaliste' AS name, 1a49898a-6022-43e7-8413-caad2801ac05::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '2d2be06c-8658-4eae-ab35-0de7dead5279'::uuid AS category_uuid, 'aviateur' AS slug, 'Aviateur' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'f0d66021-baf2-456f-8482-6a5bc2994ed8'::uuid AS category_uuid, 'wayfarer' AS slug, 'Wayfarer' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'b5516977-f258-4b95-839a-e0ae4386e3e9'::uuid AS category_uuid, 'cat-eye' AS slug, 'Cat-eye' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'b05d6b70-edab-4229-825e-ef959ad1329b'::uuid AS category_uuid, 'rondes' AS slug, 'Rondes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '574fdbc3-31e5-4873-a940-de91b743a8fd'::uuid AS category_uuid, 'masque-sport' AS slug, 'Masque sport' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'e28ca51d-c8f7-408a-a249-4be0e8776849'::uuid AS category_uuid, 'lunettes-oversize' AS slug, 'Oversize' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '4d73bb46-4529-4689-9aa1-1c60c4797efa'::uuid AS category_uuid, 'polarisees' AS slug, 'Polarisées' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'f8c109d5-46c4-4f77-a6c5-b8d09f1ccaf9'::uuid AS category_uuid, 'miroir' AS slug, 'Miroir' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '1423bab6-bbbc-494a-acbd-e7349e8cf979'::uuid AS category_uuid, 'progressives' AS slug, 'Progressives' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '829e8e1a-249b-4db8-9f7b-a8a572deb167'::uuid AS category_uuid, 'lumiere-bleue' AS slug, 'Lumière bleue' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'be59752c-a0d9-41ff-91d2-7de4f9296005'::uuid AS category_uuid, 'photochromiques' AS slug, 'Photochromiques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'c6b398df-0b32-45ac-ac0e-c3cd78b15778'::uuid AS category_uuid, 'lecture' AS slug, 'Lecture' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '242023ed-a578-42d9-b0d2-3ed00735e482'::uuid AS category_uuid, 'lunettes-pliables' AS slug, 'Pliables' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'eb36b755-c159-499c-b6b3-228b8cda0575'::uuid AS category_uuid, 'etuis-rigides' AS slug, 'Étuis rigides' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '1d43208f-981a-4823-9c37-95f2dfae3466'::uuid AS category_uuid, 'lunettes-pochettes' AS slug, 'Pochettes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '23649c63-b39e-47ca-8620-f12d513bb4f2'::uuid AS category_uuid, 'cordons' AS slug, 'Cordons' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '7d4d96b1-f0a8-40e6-b7b7-6350ee471de0'::uuid AS category_uuid, 'sprays-nettoyants' AS slug, 'Sprays nettoyants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '371c5929-69a2-4b61-b22b-9be661506cf8'::uuid AS category_uuid, 'chouchous' AS slug, 'Chouchous' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '9c276257-17a1-449f-b2b0-5d39e4b20bb9'::uuid AS category_uuid, 'elastiques' AS slug, 'Élastiques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'edd2101c-3bdd-4a1a-aa5c-620faf85d643'::uuid AS category_uuid, 'spirales' AS slug, 'Spirales' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '90ded44d-ba81-4513-986b-a2e496211934'::uuid AS category_uuid, 'barrettes' AS slug, 'Barrettes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'd12a8a43-9988-4217-98da-4ed1d9d81a44'::uuid AS category_uuid, 'pinces-crocodile' AS slug, 'Pinces crocodile' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '63e97e34-9177-444f-836f-e41bc4b1f4f6'::uuid AS category_uuid, 'pinces-crabes' AS slug, 'Pinces crabes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'f584416a-cac2-42a3-8665-903aabb4ef13'::uuid AS category_uuid, 'bobby-pins' AS slug, 'Bobby pins' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '8ed6abbd-d15d-46d2-bc42-e44338708d2a'::uuid AS category_uuid, 'bandeaux-larges' AS slug, 'Bandeaux larges' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '1606371d-870e-4ed7-adf4-d36ed6d64557'::uuid AS category_uuid, 'serre-tetes' AS slug, 'Serre-têtes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '7e58cdbc-f966-47b1-b31f-a10d8cbe77ec'::uuid AS category_uuid, 'accessoires-cheveux-sport' AS slug, 'Sport' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'e62cb33c-deb4-426d-82c0-b813fa76e042'::uuid AS category_uuid, 'accessoires-cheveux-velours' AS slug, 'Velours' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '9105213a-f0cb-4ee1-a1d7-c694e7620718'::uuid AS category_uuid, 'perles-cheveux' AS slug, 'Perles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '09ab4d2c-0ffd-4d91-a66c-2edc67c85208'::uuid AS category_uuid, 'accessoires-cheveux-peignes' AS slug, 'Peignes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'fbcc9df3-8edf-4fc3-a388-5a5bca9446de'::uuid AS category_uuid, 'epingles' AS slug, 'Épingles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '2ee02c09-7c68-4612-86a5-aa47421cf09d'::uuid AS category_uuid, 'pics' AS slug, 'Pics' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '10277cc4-90bf-4aa3-af0c-959eaf8c39f0'::uuid AS category_uuid, 'accessoires-cheveux-bigoudis' AS slug, 'Bigoudis' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '753229fd-d8e5-4ddc-802e-f69bae9ca1a0'::uuid AS category_uuid, 'filets' AS slug, 'Filets' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT '6f3ace42-f48e-466c-82a8-5a5ac6a179b1'::uuid AS category_uuid, 'cuir-classique' AS slug, 'Cuir classique' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'a1956a66-5e42-4be0-aa59-2a6142605501'::uuid AS category_uuid, 'ceintures-bretelles-cuir-tresse' AS slug, 'Cuir tressé' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
  UNION ALL
  SELECT 'a37a8483-dca1-4ab3-ae0f-dc9eb401758c'::uuid AS category_uuid, 'cuir-grain' AS slug, 'Cuir grainé' AS name, c8846249-e9e2-45f9-add8-e58c86ee85aa::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.880Z' AS created_at, '2026-04-03T10:15:31.880Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 16 terminé: 100 entrées
