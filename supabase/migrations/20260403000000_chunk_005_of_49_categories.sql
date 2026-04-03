-- ============================================================
-- CHUNK 5/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '83e25452-d920-41e0-93b1-183509fe0b35'::uuid AS category_uuid, 'objets-connectes-mobile-montres-connectees' AS slug, 'Montres connectées' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'a89ddabc-2867-4a1c-9219-ba7ddf4e936d'::uuid AS category_uuid, 'objets-connectes-mobile-bracelets-connectes' AS slug, 'Bracelets connectés' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'aae06473-fc05-403d-937b-07845c2a84e3'::uuid AS category_uuid, 'objets-connectes-mobile-trackers-gps' AS slug, 'Trackers GPS' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '7c07e2dc-250d-4ed1-9354-26c559f1eb40'::uuid AS category_uuid, 'objets-connectes-mobile-ecouteurs-intelligents' AS slug, 'Écouteurs intelligents' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '0cf1db1b-69fe-4af4-9358-accb10f2ad63'::uuid AS category_uuid, 'objets-connectes-mobile-lunettes-connectees' AS slug, 'Lunettes connectées' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '4d3c1531-b3a9-4efc-b786-3fd2ea9d6c3f'::uuid AS category_uuid, 'objets-connectes-mobile-balises-bluetooth' AS slug, 'Balises Bluetooth' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'b4930ee0-3f2b-4bc7-8ab9-068ba82577ae'::uuid AS category_uuid, 'objets-connectes-mobile-assistants-vocaux-portables' AS slug, 'Assistants vocaux portables' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'c52031ea-1d81-4cf3-a8ea-fc12359c883d'::uuid AS category_uuid, 'reseau-communication-mobile-cartes-sim' AS slug, 'Cartes SIM' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '9c2f28ca-00ca-4c86-bd66-7748aac4be57'::uuid AS category_uuid, 'reseau-communication-mobile-esim' AS slug, 'eSIM' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '32ebd06f-ed3d-45af-a27d-8830f3e8acc2'::uuid AS category_uuid, 'reseau-communication-mobile-routeurs-4g-5g' AS slug, 'Routeurs 4G/5G' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '6e9ab984-3ed3-4ec0-9f8e-3bb2f19c7144'::uuid AS category_uuid, 'reseau-communication-mobile-modems-portables' AS slug, 'Modems portables' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'babfd492-07f5-418b-bb20-6ecb2d4944bb'::uuid AS category_uuid, 'reseau-communication-mobile-antennes-amplificateurs-reseau' AS slug, 'Antennes et amplificateurs réseau' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '9edeee4b-5b91-420c-98ee-27464108ecdd'::uuid AS category_uuid, 'reseau-communication-mobile-repeteurs-gsm' AS slug, 'Répéteurs GSM' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'addbccad-dccb-489e-a3e5-bdb99ccb643d'::uuid AS category_uuid, 'reseau-communication-mobile-boitiers-wifi-mobiles' AS slug, 'Boîtiers Wi‑Fi mobiles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'd949e806-0a8b-43b0-9306-9065c49c3f77'::uuid AS category_uuid, 'reseau-communication-mobile-adaptateurs-reseau-telephone' AS slug, 'Adaptateurs réseau téléphone' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '2ddc1366-4e78-4b01-9410-f2ae4c137725'::uuid AS category_uuid, 'securite-protection-antivols-telephone' AS slug, 'Antivols téléphone' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'a0706ebf-5a00-4d0b-8d13-cb3c1c2f6746'::uuid AS category_uuid, 'securite-protection-etuis-renforces' AS slug, 'Étuis renforcés' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'c4751e48-25f8-4c95-9af8-feb123437933'::uuid AS category_uuid, 'securite-protection-coques-anti-chute' AS slug, 'Coques anti‑chute' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'd05d21e3-c6df-48d0-af5c-bc2570747592'::uuid AS category_uuid, 'securite-protection-protections-etanches-ip68' AS slug, 'Protections étanches IP68' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'c6e38bc8-f8d3-44da-abe1-fa826fba669f'::uuid AS category_uuid, 'securite-protection-housses-anti-choc' AS slug, 'Housses anti‑choc' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'f9e490a8-ebf2-4263-b8fb-8b274d43cb5c'::uuid AS category_uuid, 'securite-protection-verres-trempes-haute-resistance' AS slug, 'Verres trempés haute résistance' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'b78b516c-329f-41ae-82ec-1599b4bd0348'::uuid AS category_uuid, 'securite-protection-accessoires-confidentialite' AS slug, 'Accessoires de confidentialité' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'd2efcef9-608e-4622-b45c-fe87c426c006'::uuid AS category_uuid, 'applications-services-services-reparation-mobile' AS slug, 'Services de réparation mobile' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'fe2bc137-c3da-45a7-a6e0-f14e8592714a'::uuid AS category_uuid, 'applications-services-debloquage-desimlockage' AS slug, 'Déblocage & désimlockage' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '3a0391ae-d011-46a9-9e1b-146599b90301'::uuid AS category_uuid, 'applications-services-transfert-donnees' AS slug, 'Transfert de données' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'c73211d9-32eb-4c76-aa24-1f80b7ede26a'::uuid AS category_uuid, 'applications-services-diagnostics-mobiles' AS slug, 'Diagnostics' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'c1b454c7-624f-40ce-bc54-6e8342119036'::uuid AS category_uuid, 'applications-services-accessoires-sur-mesure' AS slug, 'Accessoires sur mesure' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'dd4930dc-a711-4649-ae5d-67c741273d6a'::uuid AS category_uuid, 'applications-services-personnalisation-mobile' AS slug, 'Personnalisation mobile' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'e987a9d6-be1f-4024-b91a-20ec7d70fb95'::uuid AS category_uuid, 'marques-populaires-mobiles-apple' AS slug, 'Apple' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'a9c23590-fed2-4e35-87d3-9e7ae9d7f7b0'::uuid AS category_uuid, 'marques-populaires-mobiles-samsung' AS slug, 'Samsung' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '61b0a514-7fa2-46b5-a158-9bcc9011cfe6'::uuid AS category_uuid, 'marques-populaires-mobiles-xiaomi' AS slug, 'Xiaomi' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '4e48fa7f-28d9-4e90-99d8-004bf5a781c0'::uuid AS category_uuid, 'marques-populaires-mobiles-huawei' AS slug, 'Huawei' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '8299bbac-4b05-4efb-a313-c0656dc684e9'::uuid AS category_uuid, 'marques-populaires-mobiles-oppo' AS slug, 'Oppo' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '6298a4a0-45b3-41c1-b4a6-1138caefcf21'::uuid AS category_uuid, 'marques-populaires-mobiles-vivo' AS slug, 'Vivo' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'd1ab3a01-eaba-4073-a690-f51384ece6e1'::uuid AS category_uuid, 'marques-populaires-mobiles-realme' AS slug, 'Realme' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '729493c1-397c-4a6b-b700-93588233b3bb'::uuid AS category_uuid, 'marques-populaires-mobiles-infinix' AS slug, 'Infinix' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'c492f4c1-b497-4746-b4d1-d0336368d374'::uuid AS category_uuid, 'marques-populaires-mobiles-tecno' AS slug, 'Tecno' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'ceeffac5-f67c-4cdd-9bdd-57af355a8929'::uuid AS category_uuid, 'marques-populaires-mobiles-oneplus' AS slug, 'OnePlus' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '0699bfea-b8b9-44f4-9dc8-7386318dd96d'::uuid AS category_uuid, 'marques-populaires-mobiles-sony' AS slug, 'Sony' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '9dbcdd64-7c24-44b7-875c-b417605e38b0'::uuid AS category_uuid, 'marques-populaires-mobiles-nokia' AS slug, 'Nokia' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '00c59a88-6766-45ab-b5f3-14dc6edadbe3'::uuid AS category_uuid, 'marques-populaires-mobiles-honor' AS slug, 'Honor' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'f623c1bc-8f28-4b1f-b924-5350029a3c3c'::uuid AS category_uuid, 'marques-populaires-mobiles-motorola' AS slug, 'Motorola' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'e7c8af07-2826-4c80-b79c-2aca1327c439'::uuid AS category_uuid, 'marques-populaires-mobiles-lenovo' AS slug, 'Lenovo' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '5977245f-b882-4437-a28c-a8a277585bfe'::uuid AS category_uuid, 'marques-populaires-mobiles-asus' AS slug, 'Asus' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'a673d8fc-7d49-4c84-a733-004923c909aa'::uuid AS category_uuid, 'marques-populaires-mobiles-zte' AS slug, 'ZTE' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'a0425fed-a688-4620-aa3e-5f2edc4906cb'::uuid AS category_uuid, 'marques-populaires-mobiles-google-pixel' AS slug, 'Google Pixel' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '662e5344-6229-4292-b3fc-421861fe069f'::uuid AS category_uuid, 'operateurs-mobiles-algerie-djezzy' AS slug, 'Djezzy' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'f174da42-c286-4238-bff2-469dc31528ee'::uuid AS category_uuid, 'operateurs-mobiles-algerie-ooredoo' AS slug, 'Ooredoo' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '90230cd5-b5fb-4297-9545-11a94a8985bc'::uuid AS category_uuid, 'operateurs-mobiles-algerie-mobilis' AS slug, 'Mobilis' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'e9e10ab9-50f4-4f9c-9eb5-1d616f62443c'::uuid AS category_uuid, 'operateurs-mobiles-algerie-algerie-telecom' AS slug, 'Algérie Télécom' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '86711ea0-9562-4dd0-8f90-09d2e1cb20b9'::uuid AS category_uuid, 'processeurs' AS slug, 'Processeurs (Intel, AMD)' AS name, 35c1092e-5e69-4abb-b637-be494f0aab74::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '1877dbcf-7d0e-4220-97fb-a259612af930'::uuid AS category_uuid, 'composants-informatiques-cartes-graphiques' AS slug, 'Cartes graphiques (NVIDIA, AMD)' AS name, 35c1092e-5e69-4abb-b637-be494f0aab74::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '4a40d1d8-aaa0-4bd6-85d9-3525624d537b'::uuid AS category_uuid, 'cartes-meres' AS slug, 'Cartes mères' AS name, 35c1092e-5e69-4abb-b637-be494f0aab74::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '668654c1-be58-41c3-94d6-7554c466eae7'::uuid AS category_uuid, 'memoires-ram' AS slug, 'Mémoires RAM' AS name, 35c1092e-5e69-4abb-b637-be494f0aab74::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'cb8b146e-b8f1-4bbb-b979-42f9776cbf1c'::uuid AS category_uuid, 'composants-informatiques-ssd' AS slug, 'SSD' AS name, 35c1092e-5e69-4abb-b637-be494f0aab74::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '5bf5e2bd-f71f-4a19-b257-9fc42f7ff3d7'::uuid AS category_uuid, 'disques-durs-hdd' AS slug, 'Disques durs HDD' AS name, 35c1092e-5e69-4abb-b637-be494f0aab74::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '3031d708-9a77-40b4-ac45-316fcb950dd7'::uuid AS category_uuid, 'alimentation-pc' AS slug, 'Alimentations PC' AS name, 35c1092e-5e69-4abb-b637-be494f0aab74::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'b3869972-18a3-42a9-b3c5-14eb4e6062a3'::uuid AS category_uuid, 'boitiers-pc' AS slug, 'Boîtiers PC' AS name, 35c1092e-5e69-4abb-b637-be494f0aab74::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '6bc45fab-c228-4a9d-8dbc-4eedbd724a3e'::uuid AS category_uuid, 'refroidissement-liquide' AS slug, 'Systèmes de refroidissement liquide' AS name, 35c1092e-5e69-4abb-b637-be494f0aab74::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '2ac4b660-8114-4c9d-848b-6c7b90914830'::uuid AS category_uuid, 'ventilateurs-air' AS slug, 'Ventilateurs et refroidissement air' AS name, 35c1092e-5e69-4abb-b637-be494f0aab74::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'c8a6b7c7-62dd-4d8f-a3cf-6ba80ada8b74'::uuid AS category_uuid, 'pates-thermiques' AS slug, 'Pâtes thermiques' AS name, 35c1092e-5e69-4abb-b637-be494f0aab74::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'e394549d-f716-4115-9645-43b859090a36'::uuid AS category_uuid, 'cartes-son' AS slug, 'Cartes son' AS name, 35c1092e-5e69-4abb-b637-be494f0aab74::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '0b093458-cbe2-4603-b15f-9c73a6b5f3a0'::uuid AS category_uuid, 'cartes-reseau' AS slug, 'Cartes réseau' AS name, 35c1092e-5e69-4abb-b637-be494f0aab74::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'b7db6864-7487-4a39-bd13-15a14056ad26'::uuid AS category_uuid, 'composants-informatiques-cartes-acquisition-video' AS slug, 'Cartes d’acquisition vidéo' AS name, 35c1092e-5e69-4abb-b637-be494f0aab74::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '554ef3ad-7d12-4b08-bf07-85cb80ebf038'::uuid AS category_uuid, 'ecrans-moniteurs' AS slug, 'Écrans et moniteurs' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '0d97052c-18d0-49a0-840b-55e941eb1b9e'::uuid AS category_uuid, 'moniteurs-gaming' AS slug, 'Moniteurs gaming' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'c4ed79ec-9032-4801-b8e0-0d62c1c8133c'::uuid AS category_uuid, 'moniteurs-incurves' AS slug, 'Moniteurs incurvés' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'a550bcef-3c10-479c-9656-77a2ab85fb6b'::uuid AS category_uuid, 'claviers' AS slug, 'Claviers' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '629944e4-c0e5-4a52-8033-a54dde174d3e'::uuid AS category_uuid, 'claviers-mecaniques' AS slug, 'Mécaniques' AS name, a550bcef-3c10-479c-9656-77a2ab85fb6b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '3339f2e0-4e08-4dfd-aef0-d9a60e85aee7'::uuid AS category_uuid, 'claviers-sans-fil' AS slug, 'Sans fil' AS name, a550bcef-3c10-479c-9656-77a2ab85fb6b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '59067e0d-aa6f-4ae9-8741-74a369d6638f'::uuid AS category_uuid, 'claviers-claviers-gaming' AS slug, 'Gaming' AS name, a550bcef-3c10-479c-9656-77a2ab85fb6b::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '77e4303b-829d-459f-99a5-01576066de6c'::uuid AS category_uuid, 'souris' AS slug, 'Souris' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '0201e931-d1e6-4e99-891e-1221902e4c31'::uuid AS category_uuid, 'souris-filaire' AS slug, 'Filaire' AS name, 77e4303b-829d-459f-99a5-01576066de6c::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '2c923f23-030f-4d28-9d7c-8164e364fea6'::uuid AS category_uuid, 'souris-sans-fil' AS slug, 'Sans fil' AS name, 77e4303b-829d-459f-99a5-01576066de6c::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '1b5ebdc2-b2d3-4853-affe-1e53868c29af'::uuid AS category_uuid, 'souris-souris-gaming' AS slug, 'Gaming' AS name, 77e4303b-829d-459f-99a5-01576066de6c::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'feafb9a6-f556-4a57-84d4-ba8a30054c44'::uuid AS category_uuid, 'tapis-souris' AS slug, 'Tapis de souris' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '3fe7ff19-28d9-440a-82a2-6e45c320e147'::uuid AS category_uuid, 'webcams' AS slug, 'Webcams' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '2cfe7edd-6a9b-4cb7-8dbc-2e3f27896605'::uuid AS category_uuid, 'microphones' AS slug, 'Microphones' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '75c9e12b-bb2d-44aa-96c0-9bb02563a622'::uuid AS category_uuid, 'enceintes-pc' AS slug, 'Enceintes PC' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '6071be50-3842-40f2-8b9a-c24bdf652b87'::uuid AS category_uuid, 'casques-audio' AS slug, 'Casques audio' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '18572769-0dbb-453c-9dfb-8726a4be5824'::uuid AS category_uuid, 'disques-durs-externes' AS slug, 'Disques durs externes' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '9d49098f-b3f7-4c43-8676-80090beebbee'::uuid AS category_uuid, 'cles-usb' AS slug, 'Clés USB' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'ccc98abf-df6a-441a-b123-f6cde50da907'::uuid AS category_uuid, 'lecteurs-cartes-memoire' AS slug, 'Lecteurs de cartes mémoire' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '11f55cb3-6aee-435b-9cea-b1847c06a678'::uuid AS category_uuid, 'stations-accueil' AS slug, 'Stations d’accueil' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '4bdc8d0e-d1b1-4176-8caf-0f456651e237'::uuid AS category_uuid, 'imprimantes' AS slug, 'Imprimantes' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'ec76bd3d-17e3-408e-9806-671461d564d8'::uuid AS category_uuid, 'scanners' AS slug, 'Scanners' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'd97d5c09-ccde-4e7d-a698-925b235cde34'::uuid AS category_uuid, 'peripheriques-pc-videoprojecteurs' AS slug, 'Vidéoprojecteurs' AS name, cb23182a-6953-43a2-a615-d08c62e82ca2::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'ebcd4b91-3996-4c24-af9b-2fc60dee8267'::uuid AS category_uuid, 'routeurs-wifi' AS slug, 'Routeurs Wi‑Fi' AS name, d0139b9e-768a-4818-8fec-ef9464c9f96a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'd15f5372-325a-4ddf-9ec9-09645eb3e7d0'::uuid AS category_uuid, 'wifi-mesh' AS slug, 'Systèmes Wi‑Fi mesh' AS name, d0139b9e-768a-4818-8fec-ef9464c9f96a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '80c45bed-7f83-4c55-8118-ebaca1232fd0'::uuid AS category_uuid, 'modems' AS slug, 'Modems' AS name, d0139b9e-768a-4818-8fec-ef9464c9f96a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '05649876-4139-4063-b8cb-4098893ceec9'::uuid AS category_uuid, 'repeteurs' AS slug, 'Répéteurs' AS name, d0139b9e-768a-4818-8fec-ef9464c9f96a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '4c385319-1bef-4e78-9a10-80df7591bd30'::uuid AS category_uuid, 'points-acces' AS slug, 'Points d’accès' AS name, d0139b9e-768a-4818-8fec-ef9464c9f96a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '20e82684-a0d4-4c3c-b8b5-7eae79e38a88'::uuid AS category_uuid, 'switches' AS slug, 'Switches réseau' AS name, d0139b9e-768a-4818-8fec-ef9464c9f96a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '5ea128e3-47cd-40a9-960f-12d4e92e8f28'::uuid AS category_uuid, 'cables-ethernet' AS slug, 'Câbles Ethernet' AS name, d0139b9e-768a-4818-8fec-ef9464c9f96a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'e0fd4c80-7a99-4d84-9604-3328274305a7'::uuid AS category_uuid, 'fibre-optique' AS slug, 'Équipements fibre optique' AS name, d0139b9e-768a-4818-8fec-ef9464c9f96a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'e1c8b74e-39f4-4100-890b-941f452bfc2b'::uuid AS category_uuid, 'reseau-internet-routeurs-4g-5g' AS slug, 'Routeurs 4G/5G' AS name, d0139b9e-768a-4818-8fec-ef9464c9f96a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'a877fa5d-2ec2-4a2c-9845-d4b80e3a0b9f'::uuid AS category_uuid, 'antennes-reseau' AS slug, 'Antennes réseau' AS name, d0139b9e-768a-4818-8fec-ef9464c9f96a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '674caa48-d6a1-4e53-b373-6d991477310e'::uuid AS category_uuid, 'adaptateurs-usb-wifi' AS slug, 'Adaptateurs Wi‑Fi USB' AS name, d0139b9e-768a-4818-8fec-ef9464c9f96a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT '01aa6b3f-19d2-4fc8-ad53-2d7493500fd8'::uuid AS category_uuid, 'routeurs-vpn' AS slug, 'Routeurs VPN' AS name, d0139b9e-768a-4818-8fec-ef9464c9f96a::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
  UNION ALL
  SELECT 'f823bf3c-85c8-498a-abdb-916b8ed1063b'::uuid AS category_uuid, 'imprimantes-laser' AS slug, 'Imprimantes laser' AS name, 9e494024-3085-4285-8102-d9564f79b767::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.874Z' AS created_at, '2026-04-03T10:15:31.874Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 5 terminé: 100 entrées
