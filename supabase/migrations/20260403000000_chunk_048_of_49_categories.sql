-- ============================================================
-- CHUNK 48/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'fadaf661-094e-4072-bb85-9e73ea7a13a5'::uuid AS category_uuid, 'installation-modem' AS slug, 'Installation Modem' AS name, 1885451d-b0bf-466f-8654-387ea981a0cb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'd16996d3-933e-4995-92dc-40cde5c5324d'::uuid AS category_uuid, 'configuration-routeur' AS slug, 'Configuration Routeur' AS name, 1885451d-b0bf-466f-8654-387ea981a0cb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'c4dbc2be-c95d-47d5-98ed-2daabdd5ebf9'::uuid AS category_uuid, 'reparation-telephone' AS slug, 'Réparation Téléphone' AS name, 1885451d-b0bf-466f-8654-387ea981a0cb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'f70fc01c-690e-4221-ae4e-74c25655f3de'::uuid AS category_uuid, 'debloquage-mobile' AS slug, 'Déblocage Mobile' AS name, 1885451d-b0bf-466f-8654-387ea981a0cb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'e578e886-c757-4fa1-93d9-33a168fc6987'::uuid AS category_uuid, 'optimisation-internet' AS slug, 'Optimisation Internet' AS name, 1885451d-b0bf-466f-8654-387ea981a0cb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'c295d8f9-e542-44e3-a3e4-e0c8d762e0a4'::uuid AS category_uuid, 'parametrage-apn' AS slug, 'Paramétrage APN' AS name, 1885451d-b0bf-466f-8654-387ea981a0cb::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '3a76ab38-62d4-4459-a71e-d6791f84937c'::uuid AS category_uuid, 'reparation-machines' AS slug, 'Réparation Machines' AS name, f456e648-5876-4e50-beab-839e5debd845::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '30c0fea0-b186-4d88-b33f-9ecabd1d1148'::uuid AS category_uuid, 'installation-electromenager' AS slug, 'Installation Électroménager' AS name, f456e648-5876-4e50-beab-839e5debd845::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '9f8de14f-0218-4516-aa95-a8dab3305d69'::uuid AS category_uuid, 'maintenance-appareils' AS slug, 'Maintenance Appareils' AS name, f456e648-5876-4e50-beab-839e5debd845::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '4dd2a8fa-84f0-484b-8c87-51c81ae73d91'::uuid AS category_uuid, 'depannage-urgent-electromenager' AS slug, 'Dépannage Urgent' AS name, f456e648-5876-4e50-beab-839e5debd845::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'f479ddb9-5178-4cae-a33f-ecf2f23795fd'::uuid AS category_uuid, 'diagnostic-panne' AS slug, 'Diagnostic Panne' AS name, f456e648-5876-4e50-beab-839e5debd845::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'c4b7f6d0-a2f9-43c6-bb9b-8e1077fe5921'::uuid AS category_uuid, 'nettoyage-maison' AS slug, 'Nettoyage Maison' AS name, b8dc3543-66c7-408b-b1bb-d8fed508784c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '5efce33d-4277-412a-a43a-83531ba7e52e'::uuid AS category_uuid, 'menage-pro' AS slug, 'Ménage Pro' AS name, b8dc3543-66c7-408b-b1bb-d8fed508784c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '4b5c902a-4af6-444a-905a-506c2b374080'::uuid AS category_uuid, 'repassage-domicile' AS slug, 'Repassage Domicile' AS name, b8dc3543-66c7-408b-b1bb-d8fed508784c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '38eda7d7-17e0-432f-b31a-4109db844c35'::uuid AS category_uuid, 'services-maison-entretien-jardin' AS slug, 'Entretien Jardin' AS name, b8dc3543-66c7-408b-b1bb-d8fed508784c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '674d1acf-23d4-4d78-be6f-3bb8b9a6302f'::uuid AS category_uuid, 'desinfection-locaux' AS slug, 'Désinfection Locaux' AS name, b8dc3543-66c7-408b-b1bb-d8fed508784c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'df4f0c28-c1fd-43fe-b58d-bba0b965fd2e'::uuid AS category_uuid, 'gestion-dechets' AS slug, 'Gestion Déchets' AS name, b8dc3543-66c7-408b-b1bb-d8fed508784c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '9021bf9f-e3bb-4e27-8e5b-1dfc782c2f49'::uuid AS category_uuid, 'maintenance-maison' AS slug, 'Maintenance Maison' AS name, b8dc3543-66c7-408b-b1bb-d8fed508784c::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'e5e4dbfb-6903-4cf6-a3b3-ad4fad5dc027'::uuid AS category_uuid, 'plomberie-rapide' AS slug, 'Plomberie Rapide' AS name, 855cad9a-fdc1-4303-ad12-2279dac1afdf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'f4c006be-b719-4c24-ad78-fb303236e626'::uuid AS category_uuid, 'electricite-maison' AS slug, 'Électricité Maison' AS name, 855cad9a-fdc1-4303-ad12-2279dac1afdf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '11601b8b-44a7-43c1-99df-0ef916a68663'::uuid AS category_uuid, 'reparation-meubles' AS slug, 'Réparation Meubles' AS name, 855cad9a-fdc1-4303-ad12-2279dac1afdf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'bf2882fa-33ac-4c28-ba4c-452409ab0efc'::uuid AS category_uuid, 'peinture-batiment' AS slug, 'Peinture Bâtiment' AS name, 855cad9a-fdc1-4303-ad12-2279dac1afdf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'f9f5c542-0cfd-40b7-b1e2-62bd639a7401'::uuid AS category_uuid, 'menuiserie-bois' AS slug, 'Menuiserie Bois' AS name, 855cad9a-fdc1-4303-ad12-2279dac1afdf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '6f259a1a-bba8-41bb-af10-2101fa563346'::uuid AS category_uuid, 'travaux-divers' AS slug, 'Travaux Divers' AS name, 855cad9a-fdc1-4303-ad12-2279dac1afdf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '3c260e4b-6081-4a5e-87d7-d1db8c5e1a83'::uuid AS category_uuid, 'bricolage-domicile' AS slug, 'Bricolage Domicile' AS name, 855cad9a-fdc1-4303-ad12-2279dac1afdf::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '9d0819a4-073d-45ca-9518-6dd3affb4edc'::uuid AS category_uuid, 'livraison-colis' AS slug, 'Livraison Colis' AS name, e51920aa-4fc4-437d-bc2d-cb2138c06b72::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'e2983eb0-875e-4ddc-baa6-bfc8910772dc'::uuid AS category_uuid, 'taxi-prive' AS slug, 'Taxi Privé' AS name, e51920aa-4fc4-437d-bc2d-cb2138c06b72::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'b87904a6-29e5-4ff7-8676-66825fec21fd'::uuid AS category_uuid, 'transport-marchandises' AS slug, 'Transport Marchandises' AS name, e51920aa-4fc4-437d-bc2d-cb2138c06b72::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '9a432a29-c086-4104-9d8b-298f42d0b7cf'::uuid AS category_uuid, 'demenagement-rapide' AS slug, 'Déménagement Rapide' AS name, e51920aa-4fc4-437d-bc2d-cb2138c06b72::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '29573b97-e587-49ad-adb8-c2d3a41d06e4'::uuid AS category_uuid, 'courses-express' AS slug, 'Courses Express' AS name, e51920aa-4fc4-437d-bc2d-cb2138c06b72::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'ddf3a445-45d9-4053-9329-0914e9729a17'::uuid AS category_uuid, 'location-utilitaire' AS slug, 'Location Utilitaire' AS name, e51920aa-4fc4-437d-bc2d-cb2138c06b72::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'a39b1d3f-2b97-44f4-9e30-95e9e09bd73a'::uuid AS category_uuid, 'redaction-documents' AS slug, 'Rédaction Documents' AS name, 149b4ce2-8638-420f-a03f-2682fc51d823::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '8235fc9a-8445-4662-afb8-8b46d5f7c7f6'::uuid AS category_uuid, 'traduction-pro' AS slug, 'Traduction Pro' AS name, 149b4ce2-8638-420f-a03f-2682fc51d823::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '34090379-1fd8-408e-9f25-173bb360af25'::uuid AS category_uuid, 'impression-pro' AS slug, 'Impression Pro' AS name, 149b4ce2-8638-420f-a03f-2682fc51d823::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '7d7e0e5a-1836-4d10-b92e-58ac0a007634'::uuid AS category_uuid, 'numerisation-documents' AS slug, 'Numérisation Documents' AS name, 149b4ce2-8638-420f-a03f-2682fc51d823::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'f983dc98-4d0a-4866-a084-7ddd265fd6c7'::uuid AS category_uuid, 'assistance-dossiers' AS slug, 'Assistance Dossiers' AS name, 149b4ce2-8638-420f-a03f-2682fc51d823::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '3b652999-51b7-497e-a5ab-d5109d365150'::uuid AS category_uuid, 'creation-cv' AS slug, 'Création CV' AS name, 149b4ce2-8638-420f-a03f-2682fc51d823::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '445ef2dd-01c7-41ec-9e7e-a0583fa68097'::uuid AS category_uuid, 'gestion-clients' AS slug, 'Gestion Clients' AS name, 0281c8f2-a821-4dc6-b286-52d26b19cb0f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'e2364a50-23a8-4c99-9e36-2f5f95de8f76'::uuid AS category_uuid, 'assistance-commerciale' AS slug, 'Assistance Commerciale' AS name, 0281c8f2-a821-4dc6-b286-52d26b19cb0f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '0d1e15e1-d358-49da-a5ef-1bdefd274e4c'::uuid AS category_uuid, 'creation-devis' AS slug, 'Création Devis' AS name, 0281c8f2-a821-4dc6-b286-52d26b19cb0f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'cc559c7b-4c51-4e43-bdfd-730fba951649'::uuid AS category_uuid, 'service-comptable' AS slug, 'Service Comptable' AS name, 0281c8f2-a821-4dc6-b286-52d26b19cb0f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '1dc12336-63b7-4516-a03a-82d295cd6ea8'::uuid AS category_uuid, 'conseils-gestion' AS slug, 'Conseils Gestion' AS name, 0281c8f2-a821-4dc6-b286-52d26b19cb0f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '6e20d1ef-a2fa-4db6-b4c0-7ff2669e3697'::uuid AS category_uuid, 'audits-internes' AS slug, 'Audits Internes' AS name, 0281c8f2-a821-4dc6-b286-52d26b19cb0f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '8397ecdb-e679-4078-befd-537e8128c093'::uuid AS category_uuid, 'support-marketing' AS slug, 'Support Marketing' AS name, 0281c8f2-a821-4dc6-b286-52d26b19cb0f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '9b45562e-be8d-4a1f-97a9-dba95b1da6c4'::uuid AS category_uuid, 'services-formation-cours-particuliers' AS slug, 'Cours Particuliers' AS name, e0067886-3be2-45a6-9235-70128808d23f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'a9063f29-636b-4f8d-9c28-c7531e3e000f'::uuid AS category_uuid, 'formation-pro' AS slug, 'Formation Pro' AS name, e0067886-3be2-45a6-9235-70128808d23f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '4a60ad4f-fc8f-4984-9e66-483e349e9201'::uuid AS category_uuid, 'services-formation-soutien-scolaire' AS slug, 'Soutien Scolaire' AS name, e0067886-3be2-45a6-9235-70128808d23f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '0c9322d8-5264-4794-b5b1-e0854f88eb7b'::uuid AS category_uuid, 'services-formation-ateliers-pratiques' AS slug, 'Ateliers Pratiques' AS name, e0067886-3be2-45a6-9235-70128808d23f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'cffb0d9a-049d-4513-a24f-0d629278d90b'::uuid AS category_uuid, 'coaching-personnel' AS slug, 'Coaching Personnel' AS name, e0067886-3be2-45a6-9235-70128808d23f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '692dcec7-57ae-462e-ab62-34e5afe7b07a'::uuid AS category_uuid, 'developpement-personnel' AS slug, 'Développement Personnel' AS name, e0067886-3be2-45a6-9235-70128808d23f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'a9842892-7031-4c17-8643-aedfb1804fc3'::uuid AS category_uuid, 'organisation-fetes' AS slug, 'Organisation Fêtes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '4a2c491d-ba34-4068-8abb-43727305d1a4'::uuid AS category_uuid, 'decoration-evenement' AS slug, 'Décoration Événement' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'b0b7ea7d-ac23-4f9a-afe6-f22a34eff995'::uuid AS category_uuid, 'location-materiel' AS slug, 'Location Matériel' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '30897974-e6d4-415a-bcd6-29188c95aac7'::uuid AS category_uuid, 'animation-soiree' AS slug, 'Animation Soirée' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '78307a8f-05a4-4901-a576-e3738a3a9a36'::uuid AS category_uuid, 'gestion-invitations' AS slug, 'Gestion Invitations' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'ca0ff1f7-5440-4134-bc50-6819b7c732e2'::uuid AS category_uuid, 'massage-bienetre' AS slug, 'Massage Bien-être' AS name, 51cb5be0-bd1d-4b3b-b864-50d0d8f87853::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '6be0a91c-6b12-4381-9bfd-6b5fd824a896'::uuid AS category_uuid, 'soins-esthetiques' AS slug, 'Soins Esthétiques' AS name, 51cb5be0-bd1d-4b3b-b864-50d0d8f87853::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '2304f6fc-c983-43d1-aa94-5a815ea7c49b'::uuid AS category_uuid, 'coaching-sportif' AS slug, 'Coaching Sportif' AS name, 51cb5be0-bd1d-4b3b-b864-50d0d8f87853::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'a3c9adf5-68fb-45bd-a2b9-9a1d5b4ac8eb'::uuid AS category_uuid, 'dietetique-personnalisee' AS slug, 'Diététique Personnalisée' AS name, 51cb5be0-bd1d-4b3b-b864-50d0d8f87853::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'f4e82dc6-126d-4ae8-b3d4-f3f650ecb2b8'::uuid AS category_uuid, 'suivi-bienetre' AS slug, 'Suivi Bien-être' AS name, 51cb5be0-bd1d-4b3b-b864-50d0d8f87853::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '3cffcba7-7b08-441f-b24f-8f72d3b56065'::uuid AS category_uuid, 'garde-enfants' AS slug, 'Garde Enfants' AS name, 5f709d37-91b3-48f3-86f7-4abb91a41b9f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'ba36cebe-8ea0-40e1-8ad2-f66b1302133c'::uuid AS category_uuid, 'assistance-personnes' AS slug, 'Assistance Personnes' AS name, 5f709d37-91b3-48f3-86f7-4abb91a41b9f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '3023c92a-9403-4549-a117-37af0bcb22fe'::uuid AS category_uuid, 'aide-domicile' AS slug, 'Aide Domicile' AS name, 5f709d37-91b3-48f3-86f7-4abb91a41b9f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT 'f93b4b29-ec60-404c-9bc9-e9b8979ec4e6'::uuid AS category_uuid, 'accompagnement-senior' AS slug, 'Accompagnement Senior' AS name, 5f709d37-91b3-48f3-86f7-4abb91a41b9f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '64105c31-2d54-42a1-bd8b-41597f3c1f24'::uuid AS category_uuid, 'soutien-mobilite' AS slug, 'Soutien Mobilité' AS name, 5f709d37-91b3-48f3-86f7-4abb91a41b9f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '0073d57e-bad7-4f72-99aa-c674ddd8ec6e'::uuid AS category_uuid, 'lavage-auto' AS slug, 'Lavage Auto' AS name, 5ae482c5-decf-4a24-a8c9-f603dcb17f6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.896Z' AS created_at, '2026-04-03T10:15:31.896Z' AS updated_at
  UNION ALL
  SELECT '2316e4b2-7634-4f42-8646-a482bda0d804'::uuid AS category_uuid, 'vidange-rapide' AS slug, 'Vidange Rapide' AS name, 5ae482c5-decf-4a24-a8c9-f603dcb17f6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '53132124-e9d7-40de-b625-d2093e63cdd3'::uuid AS category_uuid, 'diagnostic-auto' AS slug, 'Diagnostic Auto' AS name, 5ae482c5-decf-4a24-a8c9-f603dcb17f6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'cf08e3b2-67f0-4e15-9da3-1fcff06f66b0'::uuid AS category_uuid, 'assistance-route' AS slug, 'Assistance Route' AS name, 5ae482c5-decf-4a24-a8c9-f603dcb17f6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'f5cb243d-68f0-4f81-8516-8954b3e9d857'::uuid AS category_uuid, 'entretien-moteur' AS slug, 'Entretien Moteur' AS name, 5ae482c5-decf-4a24-a8c9-f603dcb17f6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '77639ea2-6d8d-40c2-ba09-c4d9d2b2cac9'::uuid AS category_uuid, 'reparation-pneus' AS slug, 'Réparation Pneus' AS name, 5ae482c5-decf-4a24-a8c9-f603dcb17f6f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '335cad27-47cd-4b20-bb7a-addadb7fb6aa'::uuid AS category_uuid, 'design-graphique' AS slug, 'Design Graphique' AS name, 90c4944d-1085-4635-b537-2befeb672339::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '85d7ad4b-95ea-4002-9ff2-9379c11cbece'::uuid AS category_uuid, 'creation-logo' AS slug, 'Création Logo' AS name, 90c4944d-1085-4635-b537-2befeb672339::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'f6550cf6-7552-498d-a5f3-024e43bfe777'::uuid AS category_uuid, 'montage-video' AS slug, 'Montage Vidéo' AS name, 90c4944d-1085-4635-b537-2befeb672339::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'ed5ed7ae-d850-45f9-9252-f6108e5aad96'::uuid AS category_uuid, 'retouche-photo' AS slug, 'Retouche Photo' AS name, 90c4944d-1085-4635-b537-2befeb672339::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'b519e43c-042c-4d75-a2d0-a19112081a2f'::uuid AS category_uuid, 'services-creatifs-creation-contenu' AS slug, 'Création Contenu' AS name, 90c4944d-1085-4635-b537-2befeb672339::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '533cb786-a74b-49a9-8053-0f4e3a66434b'::uuid AS category_uuid, 'impression-3d' AS slug, 'Impression 3D' AS name, 90c4944d-1085-4635-b537-2befeb672339::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'bc3a3e81-a167-480f-b6af-05c9f7eee669'::uuid AS category_uuid, 'echanges-partage' AS slug, 'Échanges & Partage' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'a3981814-0c55-423c-9478-0f6a7d258c06'::uuid AS category_uuid, 'troc-objets' AS slug, 'Troc d’Objets' AS name, bc3a3e81-a167-480f-b6af-05c9f7eee669::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '5aef51ee-7ec7-48de-a9a3-30506618a967'::uuid AS category_uuid, 'don-gratuit' AS slug, 'Don & Gratuit' AS name, bc3a3e81-a167-480f-b6af-05c9f7eee669::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'e722b50d-2146-4da9-ac18-be9fd157767c'::uuid AS category_uuid, 'pret-objets' AS slug, 'Prêt d’Objets' AS name, bc3a3e81-a167-480f-b6af-05c9f7eee669::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'dd570656-a4d7-4bca-a878-e05c12f88ec3'::uuid AS category_uuid, 'partage-competences' AS slug, 'Partage de Compétences' AS name, bc3a3e81-a167-480f-b6af-05c9f7eee669::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '6473cd65-3cf6-488b-a0d3-2bccaa5a98a7'::uuid AS category_uuid, 'carpooling-deplacements' AS slug, 'Carpooling & Déplacements' AS name, bc3a3e81-a167-480f-b6af-05c9f7eee669::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '1ae8a2dd-7585-46c7-a0f7-0dc3f91c943a'::uuid AS category_uuid, 'partage-habitat' AS slug, 'Partage Habitat' AS name, bc3a3e81-a167-480f-b6af-05c9f7eee669::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'ae8d64c2-3ac1-4807-a665-4428202ba180'::uuid AS category_uuid, 'echange-services' AS slug, 'Échange de Services' AS name, bc3a3e81-a167-480f-b6af-05c9f7eee669::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '8d62bc62-f795-42c4-b651-ca13415deb3a'::uuid AS category_uuid, 'communaute-entraide' AS slug, 'Communauté & Entraide' AS name, bc3a3e81-a167-480f-b6af-05c9f7eee669::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '087faae5-2c9e-4a6f-b708-9aafd3ab9d07'::uuid AS category_uuid, 'echange-culturel' AS slug, 'Échange Culturel' AS name, bc3a3e81-a167-480f-b6af-05c9f7eee669::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '5cc62cba-bd02-4e22-8459-cab88432ebba'::uuid AS category_uuid, 'recuperation-reemploi' AS slug, 'Récupération & Réemploi' AS name, bc3a3e81-a167-480f-b6af-05c9f7eee669::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '616ff4e1-8a76-49de-8385-37552916ec14'::uuid AS category_uuid, 'echange-vetements' AS slug, 'échange vêtements' AS name, a3981814-0c55-423c-9478-0f6a7d258c06::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '548b3255-758d-40de-9be2-287788fbeb61'::uuid AS category_uuid, 'troc-electromenager' AS slug, 'troc électroménager' AS name, a3981814-0c55-423c-9478-0f6a7d258c06::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '371b8bf6-5f34-42f0-abaa-cafe72b440d1'::uuid AS category_uuid, 'echange-telephones' AS slug, 'échange téléphones' AS name, a3981814-0c55-423c-9478-0f6a7d258c06::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'baa4d3f4-2d51-4cca-b990-bfc7cc76adf8'::uuid AS category_uuid, 'troc-meubles' AS slug, 'troc meubles' AS name, a3981814-0c55-423c-9478-0f6a7d258c06::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '8d552937-ea7e-42d8-9add-b6ca56e2a7a3'::uuid AS category_uuid, 'troc-objets-echange-livres' AS slug, 'échange livres' AS name, a3981814-0c55-423c-9478-0f6a7d258c06::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '0c09459d-fdb5-45c8-8039-21afded5b706'::uuid AS category_uuid, 'troc-jouets' AS slug, 'troc jouets' AS name, a3981814-0c55-423c-9478-0f6a7d258c06::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '4c7f4597-0124-40ea-8f9a-0802ea16704a'::uuid AS category_uuid, 'echange-outils' AS slug, 'échange outils' AS name, a3981814-0c55-423c-9478-0f6a7d258c06::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '761aa996-bf1e-4e6c-8072-48784b6af6a2'::uuid AS category_uuid, 'objets-gratuits' AS slug, 'objets gratuits' AS name, 5aef51ee-7ec7-48de-a9a3-30506618a967::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT 'acf7962c-9d16-440a-9911-0a94aa585f17'::uuid AS category_uuid, 'vetements-gratuits' AS slug, 'vêtements gratuits' AS name, 5aef51ee-7ec7-48de-a9a3-30506618a967::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '9e137f0c-39d2-4fd1-b1d7-64d0ff31f605'::uuid AS category_uuid, 'dons-meubles' AS slug, 'dons meubles' AS name, 5aef51ee-7ec7-48de-a9a3-30506618a967::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '2e6d9fa1-faf7-4fd9-8ac3-bcf77341f588'::uuid AS category_uuid, 'dons-electro' AS slug, 'dons électro' AS name, 5aef51ee-7ec7-48de-a9a3-30506618a967::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
  UNION ALL
  SELECT '7cc74932-7cac-43ef-b573-c112f9a4acd8'::uuid AS category_uuid, 'dons-jouets' AS slug, 'dons jouets' AS name, 5aef51ee-7ec7-48de-a9a3-30506618a967::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.897Z' AS created_at, '2026-04-03T10:15:31.897Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 48 terminé: 100 entrées
