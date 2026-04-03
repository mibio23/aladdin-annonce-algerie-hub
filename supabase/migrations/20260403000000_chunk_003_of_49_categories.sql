-- ============================================================
-- CHUNK 3/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'f6b274ce-5e47-4e12-bbd1-aad63488b610'::uuid AS category_uuid, 'accessoires-telephones-housses' AS slug, 'Housses' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '9a470a65-1b42-46bf-bb94-c273a3454cb2'::uuid AS category_uuid, 'accessoires-telephones-etuis' AS slug, 'Étuis' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '3c01a444-519d-4f64-9d38-ef1c094a4a23'::uuid AS category_uuid, 'accessoires-telephones-bumpers' AS slug, 'Bumpers' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'acb150f3-1915-4269-bc10-403968c4c3c4'::uuid AS category_uuid, 'accessoires-telephones-vitres-protections-ecran' AS slug, 'Vitres & protections d’écran' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'b618f67c-632a-41fd-a436-5263f7b45b1c'::uuid AS category_uuid, 'accessoires-telephones-supports-telephones' AS slug, 'Supports téléphones' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'e1123fe5-928b-4e90-9b7e-9d0c12ee774b'::uuid AS category_uuid, 'accessoires-telephones-supports-voiture' AS slug, 'Supports voiture' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '256261f1-e79d-4ae0-aa09-b81712260eca'::uuid AS category_uuid, 'accessoires-telephones-stylos-tactiles' AS slug, 'Stylos tactiles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '4d771a1a-472a-419e-be8a-5dcc24ca9d8d'::uuid AS category_uuid, 'accessoires-telephones-anneaux-grips' AS slug, 'Anneaux & grips' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '4403385d-d4cc-4df5-942b-27c5fb8c9e7e'::uuid AS category_uuid, 'accessoires-telephones-pochettes-impermeables' AS slug, 'Pochettes imperméables' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '6c3a2261-2c25-43a2-a76e-b00c3747e0c5'::uuid AS category_uuid, 'batteries-charge-chargeurs-standard' AS slug, 'Chargeurs standard' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'e4e3b9f6-daea-41d6-9f32-c48372f76472'::uuid AS category_uuid, 'batteries-charge-chargeurs-rapides-fast-quick' AS slug, 'Chargeurs rapides (Fast Charge, Quick Charge)' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '8b5b9fe2-4e8b-48b7-9317-5f2535dd4b49'::uuid AS category_uuid, 'batteries-charge-chargeurs-sans-fil' AS slug, 'Chargeurs sans fil' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '972ad89c-e232-42df-bb6d-48005617425b'::uuid AS category_uuid, 'batteries-charge-stations-recharge' AS slug, 'Stations de recharge' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '5242d0a7-2b79-4566-aff1-87293ecec0b0'::uuid AS category_uuid, 'batteries-charge-powerbanks' AS slug, 'Powerbanks' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '45155a5a-61eb-4004-9026-44551830a9b2'::uuid AS category_uuid, 'batteries-charge-batteries-externes-haute-capacite' AS slug, 'Batteries externes haute capacité' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'e20ca584-e33a-4dbf-a8c5-295b5af1ed44'::uuid AS category_uuid, 'batteries-charge-cables-usb' AS slug, 'Câbles USB (Type‑C, Lightning, Micro‑USB)' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '40663a48-57b9-4de4-9676-360565744561'::uuid AS category_uuid, 'batteries-charge-adaptateurs-secteur' AS slug, 'Adaptateurs secteur' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '7276eb55-21e9-4d90-a251-2a4324514b6f'::uuid AS category_uuid, 'batteries-charge-chargeurs-voiture' AS slug, 'Chargeurs voiture' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '9e876e1a-40f4-4917-8d6e-444283ef92e6'::uuid AS category_uuid, 'batteries-charge-hubs-usb-multiprises-intelligentes' AS slug, 'Hubs USB & multiprises intelligentes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '187dcbd8-5f6e-4b9d-a5c3-00285d0cc9e6'::uuid AS category_uuid, 'audio-mobile-ecouteurs-filaires' AS slug, 'Écouteurs filaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '2d811975-da69-4078-9414-e150f5a88896'::uuid AS category_uuid, 'audio-mobile-ecouteurs-bluetooth' AS slug, 'Écouteurs Bluetooth' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '95db8856-84f5-459f-b450-37a45a785257'::uuid AS category_uuid, 'audio-mobile-airpods' AS slug, 'AirPods' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'e81c7422-f1c1-46e9-8abc-1c471f2130f0'::uuid AS category_uuid, 'audio-mobile-casques-sans-fil' AS slug, 'Casques sans fil' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '353812b5-d0d2-471a-b313-8f3f60bedc64'::uuid AS category_uuid, 'audio-mobile-casques-filaires' AS slug, 'Casques filaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '233c0766-ac57-4048-89c5-b9be7af65b8c'::uuid AS category_uuid, 'audio-mobile-enceintes-bluetooth' AS slug, 'Enceintes Bluetooth' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'ad3c09d3-b633-4f77-95f6-4a04142dade9'::uuid AS category_uuid, 'audio-mobile-kits-mains-libres' AS slug, 'Kits mains‑libres' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'ed4ca6cd-f20e-4e3d-be9b-8c48572bae01'::uuid AS category_uuid, 'audio-mobile-micros-mobiles' AS slug, 'Micros mobiles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT '80ef9199-dae5-4c40-abdb-153e1b5b4456'::uuid AS category_uuid, 'audio-mobile-adaptateurs-audio' AS slug, 'Adaptateurs audio' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.872Z' AS created_at, '2026-04-03T10:15:31.872Z' AS updated_at
  UNION ALL
  SELECT 'dd5d02ab-36b1-4a1a-b528-1b5c7e4a92d3'::uuid AS category_uuid, 'pieces-reparation-telephone-ecrans-lcd-oled' AS slug, 'Écrans LCD et OLED' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '70e04fa5-21de-4fa1-b8f8-9c99e1a7c5fa'::uuid AS category_uuid, 'pieces-reparation-telephone-batteries-internes' AS slug, 'Batteries internes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '95305ad0-3fa8-4319-a01b-a1d1e062946b'::uuid AS category_uuid, 'pieces-reparation-telephone-connecteurs-charge' AS slug, 'Connecteurs de charge' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'e250e2e1-b7c4-481a-80b1-1d19b654676e'::uuid AS category_uuid, 'pieces-reparation-telephone-nappes-circuits' AS slug, 'Nappes et circuits' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '54c83399-aa7f-4f1b-93c4-9a409f52064b'::uuid AS category_uuid, 'pieces-reparation-telephone-cameras-avant-arriere' AS slug, 'Caméras avant/arrière' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '784dc3ee-0ee9-4408-927c-9a83bec3d695'::uuid AS category_uuid, 'pieces-reparation-telephone-chassis-coques-arriere' AS slug, 'Châssis et coques arrière' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'd689b244-7438-4417-b4ea-bc416ecf8084'::uuid AS category_uuid, 'pieces-reparation-telephone-boutons-flex' AS slug, 'Boutons & flex' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '0f4d590b-075c-472a-91f7-65320860c637'::uuid AS category_uuid, 'pieces-reparation-telephone-haut-parleurs-micros' AS slug, 'Haut‑parleurs & micros' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '6f1afb7d-fac9-4edb-a88f-051cb10eb344'::uuid AS category_uuid, 'pieces-reparation-telephone-vitres-arriere' AS slug, 'Vitres arrière' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '7feaa6c2-bb6c-45ae-acb9-2da0d2592a57'::uuid AS category_uuid, 'pieces-reparation-telephone-kits-reparation' AS slug, 'Kits de réparation' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '3cd4d9c3-bf23-49f4-a3d6-39b65162cb70'::uuid AS category_uuid, 'pieces-reparation-telephone-outils-demontage' AS slug, 'Outils de démontage' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '5492f0b7-0675-47c0-af5e-ca431b69d01b'::uuid AS category_uuid, 'pieces-reparation-telephone-stations-soudure' AS slug, 'Stations de soudure' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '0b7e371d-be44-4ad7-92f8-c5bb2070487d'::uuid AS category_uuid, 'pieces-reparation-telephone-ecrans-reconditionnes' AS slug, 'Écrans reconditionnés' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '83e25452-d920-41e0-93b1-183509fe0b35'::uuid AS category_uuid, 'objets-connectes-mobile-montres-connectees' AS slug, 'Montres connectées' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'a89ddabc-2867-4a1c-9219-ba7ddf4e936d'::uuid AS category_uuid, 'objets-connectes-mobile-bracelets-connectes' AS slug, 'Bracelets connectés' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'aae06473-fc05-403d-937b-07845c2a84e3'::uuid AS category_uuid, 'objets-connectes-mobile-trackers-gps' AS slug, 'Trackers GPS' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '7c07e2dc-250d-4ed1-9354-26c559f1eb40'::uuid AS category_uuid, 'objets-connectes-mobile-ecouteurs-intelligents' AS slug, 'Écouteurs intelligents' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '0cf1db1b-69fe-4af4-9358-accb10f2ad63'::uuid AS category_uuid, 'objets-connectes-mobile-lunettes-connectees' AS slug, 'Lunettes connectées' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '4d3c1531-b3a9-4efc-b786-3fd2ea9d6c3f'::uuid AS category_uuid, 'objets-connectes-mobile-balises-bluetooth' AS slug, 'Balises Bluetooth' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'b4930ee0-3f2b-4bc7-8ab9-068ba82577ae'::uuid AS category_uuid, 'objets-connectes-mobile-assistants-vocaux-portables' AS slug, 'Assistants vocaux portables' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'c52031ea-1d81-4cf3-a8ea-fc12359c883d'::uuid AS category_uuid, 'reseau-communication-mobile-cartes-sim' AS slug, 'Cartes SIM' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '9c2f28ca-00ca-4c86-bd66-7748aac4be57'::uuid AS category_uuid, 'reseau-communication-mobile-esim' AS slug, 'eSIM' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '32ebd06f-ed3d-45af-a27d-8830f3e8acc2'::uuid AS category_uuid, 'reseau-communication-mobile-routeurs-4g-5g' AS slug, 'Routeurs 4G/5G' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '6e9ab984-3ed3-4ec0-9f8e-3bb2f19c7144'::uuid AS category_uuid, 'reseau-communication-mobile-modems-portables' AS slug, 'Modems portables' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'babfd492-07f5-418b-bb20-6ecb2d4944bb'::uuid AS category_uuid, 'reseau-communication-mobile-antennes-amplificateurs-reseau' AS slug, 'Antennes et amplificateurs réseau' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '9edeee4b-5b91-420c-98ee-27464108ecdd'::uuid AS category_uuid, 'reseau-communication-mobile-repeteurs-gsm' AS slug, 'Répéteurs GSM' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'addbccad-dccb-489e-a3e5-bdb99ccb643d'::uuid AS category_uuid, 'reseau-communication-mobile-boitiers-wifi-mobiles' AS slug, 'Boîtiers Wi‑Fi mobiles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'd949e806-0a8b-43b0-9306-9065c49c3f77'::uuid AS category_uuid, 'reseau-communication-mobile-adaptateurs-reseau-telephone' AS slug, 'Adaptateurs réseau téléphone' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '2ddc1366-4e78-4b01-9410-f2ae4c137725'::uuid AS category_uuid, 'securite-protection-antivols-telephone' AS slug, 'Antivols téléphone' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'a0706ebf-5a00-4d0b-8d13-cb3c1c2f6746'::uuid AS category_uuid, 'securite-protection-etuis-renforces' AS slug, 'Étuis renforcés' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'c4751e48-25f8-4c95-9af8-feb123437933'::uuid AS category_uuid, 'securite-protection-coques-anti-chute' AS slug, 'Coques anti‑chute' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'd05d21e3-c6df-48d0-af5c-bc2570747592'::uuid AS category_uuid, 'securite-protection-protections-etanches-ip68' AS slug, 'Protections étanches IP68' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'c6e38bc8-f8d3-44da-abe1-fa826fba669f'::uuid AS category_uuid, 'securite-protection-housses-anti-choc' AS slug, 'Housses anti‑choc' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'f9e490a8-ebf2-4263-b8fb-8b274d43cb5c'::uuid AS category_uuid, 'securite-protection-verres-trempes-haute-resistance' AS slug, 'Verres trempés haute résistance' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'b78b516c-329f-41ae-82ec-1599b4bd0348'::uuid AS category_uuid, 'securite-protection-accessoires-confidentialite' AS slug, 'Accessoires de confidentialité' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'd2efcef9-608e-4622-b45c-fe87c426c006'::uuid AS category_uuid, 'applications-services-services-reparation-mobile' AS slug, 'Services de réparation mobile' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'fe2bc137-c3da-45a7-a6e0-f14e8592714a'::uuid AS category_uuid, 'applications-services-debloquage-desimlockage' AS slug, 'Déblocage & désimlockage' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '3a0391ae-d011-46a9-9e1b-146599b90301'::uuid AS category_uuid, 'applications-services-transfert-donnees' AS slug, 'Transfert de données' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'c73211d9-32eb-4c76-aa24-1f80b7ede26a'::uuid AS category_uuid, 'applications-services-diagnostics-mobiles' AS slug, 'Diagnostics' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'c1b454c7-624f-40ce-bc54-6e8342119036'::uuid AS category_uuid, 'applications-services-accessoires-sur-mesure' AS slug, 'Accessoires sur mesure' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'dd4930dc-a711-4649-ae5d-67c741273d6a'::uuid AS category_uuid, 'applications-services-personnalisation-mobile' AS slug, 'Personnalisation mobile' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'e987a9d6-be1f-4024-b91a-20ec7d70fb95'::uuid AS category_uuid, 'marques-populaires-mobiles-apple' AS slug, 'Apple' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'a9c23590-fed2-4e35-87d3-9e7ae9d7f7b0'::uuid AS category_uuid, 'marques-populaires-mobiles-samsung' AS slug, 'Samsung' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '61b0a514-7fa2-46b5-a158-9bcc9011cfe6'::uuid AS category_uuid, 'marques-populaires-mobiles-xiaomi' AS slug, 'Xiaomi' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '4e48fa7f-28d9-4e90-99d8-004bf5a781c0'::uuid AS category_uuid, 'marques-populaires-mobiles-huawei' AS slug, 'Huawei' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '8299bbac-4b05-4efb-a313-c0656dc684e9'::uuid AS category_uuid, 'marques-populaires-mobiles-oppo' AS slug, 'Oppo' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '6298a4a0-45b3-41c1-b4a6-1138caefcf21'::uuid AS category_uuid, 'marques-populaires-mobiles-vivo' AS slug, 'Vivo' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'd1ab3a01-eaba-4073-a690-f51384ece6e1'::uuid AS category_uuid, 'marques-populaires-mobiles-realme' AS slug, 'Realme' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '729493c1-397c-4a6b-b700-93588233b3bb'::uuid AS category_uuid, 'marques-populaires-mobiles-infinix' AS slug, 'Infinix' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'c492f4c1-b497-4746-b4d1-d0336368d374'::uuid AS category_uuid, 'marques-populaires-mobiles-tecno' AS slug, 'Tecno' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'ceeffac5-f67c-4cdd-9bdd-57af355a8929'::uuid AS category_uuid, 'marques-populaires-mobiles-oneplus' AS slug, 'OnePlus' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '0699bfea-b8b9-44f4-9dc8-7386318dd96d'::uuid AS category_uuid, 'marques-populaires-mobiles-sony' AS slug, 'Sony' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '9dbcdd64-7c24-44b7-875c-b417605e38b0'::uuid AS category_uuid, 'marques-populaires-mobiles-nokia' AS slug, 'Nokia' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '00c59a88-6766-45ab-b5f3-14dc6edadbe3'::uuid AS category_uuid, 'marques-populaires-mobiles-honor' AS slug, 'Honor' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'f623c1bc-8f28-4b1f-b924-5350029a3c3c'::uuid AS category_uuid, 'marques-populaires-mobiles-motorola' AS slug, 'Motorola' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'e7c8af07-2826-4c80-b79c-2aca1327c439'::uuid AS category_uuid, 'marques-populaires-mobiles-lenovo' AS slug, 'Lenovo' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '5977245f-b882-4437-a28c-a8a277585bfe'::uuid AS category_uuid, 'marques-populaires-mobiles-asus' AS slug, 'Asus' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'a673d8fc-7d49-4c84-a733-004923c909aa'::uuid AS category_uuid, 'marques-populaires-mobiles-zte' AS slug, 'ZTE' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'a0425fed-a688-4620-aa3e-5f2edc4906cb'::uuid AS category_uuid, 'marques-populaires-mobiles-google-pixel' AS slug, 'Google Pixel' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '662e5344-6229-4292-b3fc-421861fe069f'::uuid AS category_uuid, 'operateurs-mobiles-algerie-djezzy' AS slug, 'Djezzy' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'f174da42-c286-4238-bff2-469dc31528ee'::uuid AS category_uuid, 'operateurs-mobiles-algerie-ooredoo' AS slug, 'Ooredoo' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '90230cd5-b5fb-4297-9545-11a94a8985bc'::uuid AS category_uuid, 'operateurs-mobiles-algerie-mobilis' AS slug, 'Mobilis' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'e9e10ab9-50f4-4f9c-9eb5-1d616f62443c'::uuid AS category_uuid, 'operateurs-mobiles-algerie-algerie-telecom' AS slug, 'Algérie Télécom' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '344dd817-d318-4e9e-b4af-acdfc41f90e6'::uuid AS category_uuid, 'informatique-electronique' AS slug, 'Informatique & Électronique' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '315e0f3b-5fe2-448d-b3fd-9c81a6da4f23'::uuid AS category_uuid, 'ordinateurs-pc' AS slug, 'Ordinateurs & PC' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '22615cc5-1dfd-4330-97a9-8b3979547047'::uuid AS category_uuid, 'informatique-electronique-smartphones' AS slug, 'Smartphones' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '6f0a9872-2ddd-453c-8b17-2962fcc66f23'::uuid AS category_uuid, 'informatique-electronique-telephones-classiques-fixes' AS slug, 'Téléphones Classiques & Fixes' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'f3d7d2c7-8ee5-4d63-8407-d98b2f9c0f2b'::uuid AS category_uuid, 'informatique-electronique-tablettes-appareils-mobiles' AS slug, 'Tablettes & Appareils Mobiles' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '8120bb79-6dcd-4098-ad61-dad10469ddcf'::uuid AS category_uuid, 'informatique-electronique-accessoires-telephones' AS slug, 'Accessoires Téléphones' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '3eb64752-65e1-4962-89c3-97cedf5f3cd3'::uuid AS category_uuid, 'informatique-electronique-batteries-charge' AS slug, 'Batteries & Charge' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT '368ea23d-eafb-47d1-a149-9fd143a39907'::uuid AS category_uuid, 'informatique-electronique-audio-mobile' AS slug, 'Audio Mobile' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
  UNION ALL
  SELECT 'c9c7dd4c-2078-4531-a533-bb3e262045bb'::uuid AS category_uuid, 'informatique-electronique-pieces-reparation-telephone' AS slug, 'Pièces & Réparation Téléphone' AS name, 344dd817-d318-4e9e-b4af-acdfc41f90e6::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.873Z' AS created_at, '2026-04-03T10:15:31.873Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 3 terminé: 100 entrées
