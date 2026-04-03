-- ============================================================
-- CHUNK 47/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT '0d2a99db-397d-4e7b-8521-ea1bc6f2d276'::uuid AS category_uuid, 'photographie-animaliere' AS slug, 'photographie animalière' AS name, adceb422-c65c-47d4-a54b-171236d3721e::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '7003952b-3e85-4690-b59c-b8111d17381d'::uuid AS category_uuid, 'transport-animaux' AS slug, 'transport d' AS name, adceb422-c65c-47d4-a54b-171236d3721e::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '87e0be58-0991-4ceb-a900-510e94b277dc'::uuid AS category_uuid, 'services-veterinaires' AS slug, 'services vétérinaires privés' AS name, adceb422-c65c-47d4-a54b-171236d3721e::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '67220fa2-a67d-489a-8bdc-dccd14819b4a'::uuid AS category_uuid, 'clotures-enclos' AS slug, 'Clôtures & Enclos' AS name, d9fa9da5-9fc1-45d2-b853-a0ea04b801ef::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'ca7400f1-1084-48b6-a066-e49ca21df8e3'::uuid AS category_uuid, 'clotures-animaux' AS slug, 'clôtures pour animaux' AS name, 67220fa2-a67d-489a-8bdc-dccd14819b4a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'cd17e7f0-b48c-456a-b3c5-d1ecc6f77b08'::uuid AS category_uuid, 'enclos' AS slug, 'enclos' AS name, 67220fa2-a67d-489a-8bdc-dccd14819b4a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'babe7fd8-3d13-415b-a0b6-5a7b408087c9'::uuid AS category_uuid, 'abris-exterieurs' AS slug, 'Abris Extérieurs' AS name, d9fa9da5-9fc1-45d2-b853-a0ea04b801ef::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'e43bdec9-70ae-4b2a-beec-f2f7b367be20'::uuid AS category_uuid, 'abris-exterieurs-animaux' AS slug, 'abris extérieurs' AS name, babe7fd8-3d13-415b-a0b6-5a7b408087c9::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '22ecbb14-605c-4999-b5f0-15b5ff4c7a29'::uuid AS category_uuid, 'alimentation-automatique' AS slug, 'Alimentation Automatique' AS name, d9fa9da5-9fc1-45d2-b853-a0ea04b801ef::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'af741cd0-acb1-49ca-82c3-54337a74db65'::uuid AS category_uuid, 'mangeoires-auto' AS slug, 'mangeoires automatiques' AS name, 22ecbb14-605c-4999-b5f0-15b5ff4c7a29::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '5cc5cfa5-ec38-4309-8b3e-e3c601b4827f'::uuid AS category_uuid, 'systemes-abreuvement' AS slug, 'systèmes d' AS name, 22ecbb14-605c-4999-b5f0-15b5ff4c7a29::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '712a437e-1fe3-48e2-92f5-77a43450683a'::uuid AS category_uuid, 'equipements-elevage-exterieur' AS slug, 'Équipements Élevage Extérieur' AS name, d9fa9da5-9fc1-45d2-b853-a0ea04b801ef::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '2ebea49a-3e35-482e-aa5d-80844b5d0405'::uuid AS category_uuid, 'materiel-plein-air' AS slug, 'matériel pour élevage en plein air' AS name, 712a437e-1fe3-48e2-92f5-77a43450683a::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'b03f010c-67d9-49e0-ba1f-faf9da249ebd'::uuid AS category_uuid, 'confort-thermique' AS slug, 'Confort Thermique' AS name, d9fa9da5-9fc1-45d2-b853-a0ea04b801ef::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '78451cd2-2f94-4d10-af7e-855ad12a4210'::uuid AS category_uuid, 'lampes-chauffantes' AS slug, 'lampes chauffantes' AS name, b03f010c-67d9-49e0-ba1f-faf9da249ebd::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '5bf92622-44d4-469a-bf56-2540db34de6e'::uuid AS category_uuid, 'accessoires-volières' AS slug, 'Accessoires Volières & Basse-Cour' AS name, d9fa9da5-9fc1-45d2-b853-a0ea04b801ef::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'f6cedb7a-c632-484e-9255-0fe06a36f8a6'::uuid AS category_uuid, 'materiel-volières' AS slug, 'matériel pour volières & basses-cour' AS name, 5bf92622-44d4-469a-bf56-2540db34de6e::uuid AS parent_id, 4 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'b7e2f442-a34b-485a-8a70-f3f16868ea71'::uuid AS category_uuid, 'finance' AS slug, 'Finance & Monnaie Fiduciaire' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'd7ae1b7a-dcec-417e-b071-962d79a92645'::uuid AS category_uuid, 'monnaie-fiduciaire' AS slug, 'Monnaie Fiduciaire' AS name, b7e2f442-a34b-485a-8a70-f3f16868ea71::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '8e5921d8-9acf-4daa-959c-ee2ea4df7a06'::uuid AS category_uuid, 'services-financiers' AS slug, 'Services Financiers' AS name, b7e2f442-a34b-485a-8a70-f3f16868ea71::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '3c7db035-4b7f-4ec4-ba1c-94db36249659'::uuid AS category_uuid, 'monnaie-internationale' AS slug, 'Monnaie Internationale' AS name, b7e2f442-a34b-485a-8a70-f3f16868ea71::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'e5a5ff55-5f19-4051-946a-d766b8ea6683'::uuid AS category_uuid, 'or-metaux-precieux' AS slug, 'Or & Métaux Précieux' AS name, b7e2f442-a34b-485a-8a70-f3f16868ea71::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '32bd00dd-371d-4247-a797-e2477e31d1af'::uuid AS category_uuid, 'accessoires-numismatiques' AS slug, 'Accessoires Numismatiques' AS name, b7e2f442-a34b-485a-8a70-f3f16868ea71::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '8d195453-2960-40bc-9943-15fb23bf8b2c'::uuid AS category_uuid, 'aide-collection' AS slug, 'Aide à la Collection' AS name, b7e2f442-a34b-485a-8a70-f3f16868ea71::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'a4f0e17e-862c-4e39-9c65-d706321810cc'::uuid AS category_uuid, 'billets-algeriens' AS slug, 'Billets Algériens' AS name, d7ae1b7a-dcec-417e-b071-962d79a92645::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '3c85a351-3bb0-4f8b-b4a1-3ae6e1208acc'::uuid AS category_uuid, 'pieces-algeriennes' AS slug, 'Pièces Algériennes' AS name, d7ae1b7a-dcec-417e-b071-962d79a92645::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '4d3617fc-9623-4d4f-a440-23ef653d18f3'::uuid AS category_uuid, 'monnaies-anciennes' AS slug, 'Monnaies Anciennes' AS name, d7ae1b7a-dcec-417e-b071-962d79a92645::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'cb8b2ddf-63da-4360-82e0-7474ba39d974'::uuid AS category_uuid, 'billets-rares' AS slug, 'Billets Rares' AS name, d7ae1b7a-dcec-417e-b071-962d79a92645::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'cae2a572-262f-4895-892f-35995d892eee'::uuid AS category_uuid, 'pieces-commemoratives' AS slug, 'Pièces Commémoratives' AS name, d7ae1b7a-dcec-417e-b071-962d79a92645::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'b7637ec4-bef8-40d5-9175-52688f16570b'::uuid AS category_uuid, 'monnaies-etrangeres' AS slug, 'Monnaies Étrangères' AS name, d7ae1b7a-dcec-417e-b071-962d79a92645::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'fb9ad6c7-8796-46c7-aebe-7ea5131a6cd0'::uuid AS category_uuid, 'monnaies-or' AS slug, 'Monnaies d' AS name, d7ae1b7a-dcec-417e-b071-962d79a92645::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '92a94900-6d17-4621-9653-62ed7a508896'::uuid AS category_uuid, 'monnaies-argent' AS slug, 'Monnaies d' AS name, d7ae1b7a-dcec-417e-b071-962d79a92645::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'f2ca2ffd-b338-41c6-990d-3436314805f0'::uuid AS category_uuid, 'series-numismatiques' AS slug, 'Séries Numismatiques' AS name, d7ae1b7a-dcec-417e-b071-962d79a92645::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '1e061217-aef3-43b1-ad08-0b4d61105126'::uuid AS category_uuid, 'collections-completes' AS slug, 'Collections Complètes' AS name, d7ae1b7a-dcec-417e-b071-962d79a92645::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'a61e0248-6109-45ef-a824-9bb0f8a9c6da'::uuid AS category_uuid, 'change-devises' AS slug, 'Change Devises' AS name, 8e5921d8-9acf-4daa-959c-ee2ea4df7a06::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '9551f510-d00f-467f-b15c-e6c5dc2460a2'::uuid AS category_uuid, 'estimation-valeur' AS slug, 'Estimation Valeur' AS name, 8e5921d8-9acf-4daa-959c-ee2ea4df7a06::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '7c7387df-ab08-42ac-8b78-68e106ff7594'::uuid AS category_uuid, 'expertise-numismatique' AS slug, 'Expertise Numismatique' AS name, 8e5921d8-9acf-4daa-959c-ee2ea4df7a06::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '61b5d13a-3a86-441e-8367-2949157df4eb'::uuid AS category_uuid, 'transfert-argent' AS slug, 'Transfert Argent' AS name, 8e5921d8-9acf-4daa-959c-ee2ea4df7a06::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '42a97fe7-1aa8-44ed-acc5-9a358f48eab8'::uuid AS category_uuid, 'conseil-financier' AS slug, 'Conseil Financier' AS name, 8e5921d8-9acf-4daa-959c-ee2ea4df7a06::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '0e7940f8-7f3b-487b-b73e-72cb276741ea'::uuid AS category_uuid, 'conversion-monnaie' AS slug, 'Conversion Monnaie' AS name, 8e5921d8-9acf-4daa-959c-ee2ea4df7a06::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'eb7eaa15-6d5f-417a-b37b-c11f4499d235'::uuid AS category_uuid, 'authentification-billets' AS slug, 'Authentification Billets' AS name, 8e5921d8-9acf-4daa-959c-ee2ea4df7a06::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'afe99aea-50d4-45e5-ab3c-e852424b9f89'::uuid AS category_uuid, 'evaluation-pieces' AS slug, 'Évaluation Pièces' AS name, 8e5921d8-9acf-4daa-959c-ee2ea4df7a06::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'd276b4dc-2111-4b71-a27d-78ca915af141'::uuid AS category_uuid, 'dollars-usd' AS slug, 'Dollars USD' AS name, 3c7db035-4b7f-4ec4-ba1c-94db36249659::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'c67e3585-881c-4073-babb-02893d493f2a'::uuid AS category_uuid, 'euros' AS slug, 'Euros €' AS name, 3c7db035-4b7f-4ec4-ba1c-94db36249659::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '8f73ad2d-ec0f-4008-933c-d1782aac2368'::uuid AS category_uuid, 'livres-gbp' AS slug, 'Livres GBP' AS name, 3c7db035-4b7f-4ec4-ba1c-94db36249659::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '473f3abd-eee5-44d7-96a0-0381b8a2ece5'::uuid AS category_uuid, 'dirhams-aed' AS slug, 'Dirhams AED' AS name, 3c7db035-4b7f-4ec4-ba1c-94db36249659::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '5c695952-3545-4a17-b133-0926e95b7726'::uuid AS category_uuid, 'dinars-tnd' AS slug, 'Dinars TND' AS name, 3c7db035-4b7f-4ec4-ba1c-94db36249659::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '522fc502-f259-44f0-af26-ca612159e67f'::uuid AS category_uuid, 'francs-cfa' AS slug, 'Francs CFA' AS name, 3c7db035-4b7f-4ec4-ba1c-94db36249659::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '1fae2a6e-869a-45f0-bb07-a9f11291f2bc'::uuid AS category_uuid, 'yuan-cny' AS slug, 'Yuan CNY' AS name, 3c7db035-4b7f-4ec4-ba1c-94db36249659::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '575ae4f2-456b-43be-8000-bf1e7b55892f'::uuid AS category_uuid, 'riyals-sar' AS slug, 'Riyals SAR' AS name, 3c7db035-4b7f-4ec4-ba1c-94db36249659::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'ca8f8183-bf4a-46ca-acf4-7a0905ac84af'::uuid AS category_uuid, 'billets-etrangers' AS slug, 'Billets Étrangers' AS name, 3c7db035-4b7f-4ec4-ba1c-94db36249659::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'f4247b5f-a1b5-421f-bdc6-c7f4e5c9c70a'::uuid AS category_uuid, 'pieces-etrangeres' AS slug, 'Pièces Étrangères' AS name, 3c7db035-4b7f-4ec4-ba1c-94db36249659::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'a2e435cd-2cb1-4e4b-9c3d-1cb786fa8099'::uuid AS category_uuid, 'lingots-or' AS slug, 'Lingots Or' AS name, e5a5ff55-5f19-4051-946a-d766b8ea6683::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '8906f133-87f2-43c0-b883-9188127aef28'::uuid AS category_uuid, 'pieces-or' AS slug, 'Pièces Or' AS name, e5a5ff55-5f19-4051-946a-d766b8ea6683::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'bc466ea3-16c2-4042-a6a9-d821a88a6242'::uuid AS category_uuid, 'pieces-argent' AS slug, 'Pièces Argent' AS name, e5a5ff55-5f19-4051-946a-d766b8ea6683::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '7573012b-f3f1-4860-99c0-d2da72d518c5'::uuid AS category_uuid, 'metal-precieux' AS slug, 'Métal Précieux' AS name, e5a5ff55-5f19-4051-946a-d766b8ea6683::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '54cbd88a-e7b4-4427-9a00-40bdf69e3d66'::uuid AS category_uuid, 'or-investissement' AS slug, 'Or d' AS name, e5a5ff55-5f19-4051-946a-d766b8ea6683::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '79c4378e-1638-48a6-adde-3526ed5f5c39'::uuid AS category_uuid, 'argent-pur' AS slug, 'Argent Pur' AS name, e5a5ff55-5f19-4051-946a-d766b8ea6683::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'e37bf57a-9396-4e48-a6ba-7e55cc126874'::uuid AS category_uuid, 'valeurs-rares' AS slug, 'Valeurs Rares' AS name, e5a5ff55-5f19-4051-946a-d766b8ea6683::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'b97fb5db-df78-40ba-8d37-1cf448b00f6f'::uuid AS category_uuid, 'or-numismatique' AS slug, 'Or Numismatique' AS name, e5a5ff55-5f19-4051-946a-d766b8ea6683::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'adc31445-5a01-45a9-bd07-6aa06f67178b'::uuid AS category_uuid, 'metaux-rares' AS slug, 'Métaux Rares' AS name, e5a5ff55-5f19-4051-946a-d766b8ea6683::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '22c5cf5c-243a-44bd-b741-bbedd5839e66'::uuid AS category_uuid, 'albums-monnaies' AS slug, 'Albums Monnaies' AS name, 32bd00dd-371d-4247-a797-e2477e31d1af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '7528eee7-96d5-4aa1-a5ab-30f00c88994d'::uuid AS category_uuid, 'etuis-protection' AS slug, 'Étuis Protection' AS name, 32bd00dd-371d-4247-a797-e2477e31d1af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'b31f0603-3fd4-41fa-b102-2631f1ad7229'::uuid AS category_uuid, 'boites-numismatiques' AS slug, 'Boîtes Numismatiques' AS name, 32bd00dd-371d-4247-a797-e2477e31d1af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '91d3e068-859c-4398-9ad6-83f5b7fa77bf'::uuid AS category_uuid, 'classeurs-pieces' AS slug, 'Classeurs Pièces' AS name, 32bd00dd-371d-4247-a797-e2477e31d1af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '35c19731-9542-4cce-b119-63f71934f85d'::uuid AS category_uuid, 'vitrines-collection' AS slug, 'Vitrines Collection' AS name, 32bd00dd-371d-4247-a797-e2477e31d1af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'cffc2fb1-ab8b-44b3-8f7e-c9a95038f0cc'::uuid AS category_uuid, 'gants-numismatiques' AS slug, 'Gants Numismatiques' AS name, 32bd00dd-371d-4247-a797-e2477e31d1af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'b7cc9405-ed41-4af8-b29f-a095f491334c'::uuid AS category_uuid, 'loupes-inspection' AS slug, 'Loupes Inspection' AS name, 32bd00dd-371d-4247-a797-e2477e31d1af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '3c781397-dab6-4f2b-8189-83343e99324b'::uuid AS category_uuid, 'sachets-securises' AS slug, 'Sachets Sécurisés' AS name, 32bd00dd-371d-4247-a797-e2477e31d1af::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '83707f98-c8bd-47eb-9c8e-2e3cf7601491'::uuid AS category_uuid, 'tri-monnaies' AS slug, 'Tri Monnaies' AS name, 8d195453-2960-40bc-9943-15fb23bf8b2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '6b576584-6e66-432a-8ee2-b99ca230187e'::uuid AS category_uuid, 'nettoyage-billets' AS slug, 'Nettoyage Billets' AS name, 8d195453-2960-40bc-9943-15fb23bf8b2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'afa84711-8ef4-4ef0-a393-d2a1cbe332e8'::uuid AS category_uuid, 'restauration-pieces' AS slug, 'Restauration Pièces' AS name, 8d195453-2960-40bc-9943-15fb23bf8b2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'caaaf69a-6b45-418d-99c9-75fdc174ab35'::uuid AS category_uuid, 'grade-etat' AS slug, 'Grade État' AS name, 8d195453-2960-40bc-9943-15fb23bf8b2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '20292ba0-deb1-4516-a4c7-4db921cd7b10'::uuid AS category_uuid, 'conseils-achat' AS slug, 'Conseils Achat' AS name, 8d195453-2960-40bc-9943-15fb23bf8b2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '5749115b-48cb-4701-bf87-386a63e83160'::uuid AS category_uuid, 'conseils-vente' AS slug, 'Conseils Vente' AS name, 8d195453-2960-40bc-9943-15fb23bf8b2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'd233fde4-c384-422b-9a5d-26b46c90b696'::uuid AS category_uuid, 'organisation-collection' AS slug, 'Organisation Collection' AS name, 8d195453-2960-40bc-9943-15fb23bf8b2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'bbaf91f5-a781-447c-9f8c-9cfad3f31e8b'::uuid AS category_uuid, 'certification-experts' AS slug, 'Certification Experts' AS name, 8d195453-2960-40bc-9943-15fb23bf8b2c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'dfe52e31-e36a-4a07-8587-4b91722e19de'::uuid AS category_uuid, 'services-support' AS slug, 'Services & Support' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'e1940579-2fe1-474c-bb02-2723bb21e0e7'::uuid AS category_uuid, 'services-informatiques' AS slug, 'Services Informatiques' AS name, dfe52e31-e36a-4a07-8587-4b91722e19de::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '1885451d-b0bf-466f-8654-387ea981a0cb'::uuid AS category_uuid, 'services-telecom' AS slug, 'Services Télécom' AS name, dfe52e31-e36a-4a07-8587-4b91722e19de::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'f456e648-5876-4e50-beab-839e5debd845'::uuid AS category_uuid, 'services-electromenager' AS slug, 'Services Électroménager' AS name, dfe52e31-e36a-4a07-8587-4b91722e19de::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'b8dc3543-66c7-408b-b1bb-d8fed508784c'::uuid AS category_uuid, 'services-maison' AS slug, 'Services Maison' AS name, dfe52e31-e36a-4a07-8587-4b91722e19de::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '855cad9a-fdc1-4303-ad12-2279dac1afdf'::uuid AS category_uuid, 'services-artisanaux' AS slug, 'Services Artisanaux' AS name, dfe52e31-e36a-4a07-8587-4b91722e19de::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'e51920aa-4fc4-437d-bc2d-cb2138c06b72'::uuid AS category_uuid, 'transport-livraison' AS slug, 'Transport & Livraison' AS name, dfe52e31-e36a-4a07-8587-4b91722e19de::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '149b4ce2-8638-420f-a03f-2682fc51d823'::uuid AS category_uuid, 'services-administratifs' AS slug, 'Services Administratifs' AS name, dfe52e31-e36a-4a07-8587-4b91722e19de::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '0281c8f2-a821-4dc6-b286-52d26b19cb0f'::uuid AS category_uuid, 'support-business' AS slug, 'Support Business' AS name, dfe52e31-e36a-4a07-8587-4b91722e19de::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'e0067886-3be2-45a6-9235-70128808d23f'::uuid AS category_uuid, 'services-formation' AS slug, 'Services Formation' AS name, dfe52e31-e36a-4a07-8587-4b91722e19de::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '881f7a60-5025-4572-beb6-b76ce14478f7'::uuid AS category_uuid, 'services-support-services-evenementiels' AS slug, 'Services Événementiels' AS name, dfe52e31-e36a-4a07-8587-4b91722e19de::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '51cb5be0-bd1d-4b3b-b864-50d0d8f87853'::uuid AS category_uuid, 'services-sante-bienetre' AS slug, 'Services Santé & Bien-être' AS name, dfe52e31-e36a-4a07-8587-4b91722e19de::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '5f709d37-91b3-48f3-86f7-4abb91a41b9f'::uuid AS category_uuid, 'aide-personne' AS slug, 'Aide à la Personne' AS name, dfe52e31-e36a-4a07-8587-4b91722e19de::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '5ae482c5-decf-4a24-a8c9-f603dcb17f6f'::uuid AS category_uuid, 'services-automobiles' AS slug, 'Services Automobiles' AS name, dfe52e31-e36a-4a07-8587-4b91722e19de::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '90c4944d-1085-4635-b537-2befeb672339'::uuid AS category_uuid, 'services-creatifs' AS slug, 'Services Créatifs' AS name, dfe52e31-e36a-4a07-8587-4b91722e19de::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'b702b7a7-be0c-4a2b-b340-00d00eeeb065'::uuid AS category_uuid, 'depannage-pc' AS slug, 'Dépannage PC' AS name, e1940579-2fe1-474c-bb02-2723bb21e0e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '56268e5e-d066-4e20-b750-61065a3e2d1b'::uuid AS category_uuid, 'maintenance-reseau' AS slug, 'Maintenance Réseau' AS name, e1940579-2fe1-474c-bb02-2723bb21e0e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'ac39af3b-4244-4872-bb58-01cae6f825e4'::uuid AS category_uuid, 'installation-logiciels' AS slug, 'Installation Logiciels' AS name, e1940579-2fe1-474c-bb02-2723bb21e0e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '275c8cbf-3838-4dc9-8522-9b3b625f5045'::uuid AS category_uuid, 'recuperation-donnees' AS slug, 'Récupération Données' AS name, e1940579-2fe1-474c-bb02-2723bb21e0e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '6fb0ba20-27b5-4df9-93a1-2eb9110d8f2e'::uuid AS category_uuid, 'securite-informatique' AS slug, 'Sécurité Informatique' AS name, e1940579-2fe1-474c-bb02-2723bb21e0e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '657c0ebf-9c44-4367-9b24-58979efa0386'::uuid AS category_uuid, 'configuration-systeme' AS slug, 'Configuration Système' AS name, e1940579-2fe1-474c-bb02-2723bb21e0e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'a84c304a-45c2-4ff5-a79c-b80884001840'::uuid AS category_uuid, 'assistance-ligne' AS slug, 'Assistance en Ligne' AS name, e1940579-2fe1-474c-bb02-2723bb21e0e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '87be83a1-ce26-4bc3-8222-070d297ec173'::uuid AS category_uuid, 'optimisation-ordinateur' AS slug, 'Optimisation Ordinateur' AS name, e1940579-2fe1-474c-bb02-2723bb21e0e7::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 47 terminé: 100 entrées
