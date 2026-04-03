-- ============================================================
-- CHUNK 32/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'af466e6d-b01f-427a-8f49-7a6a792538c2'::uuid AS category_uuid, 'pieges-a-insectes' AS slug, 'Pièges à insectes' AS name, eabdb085-5c88-4887-a77b-748b754818c0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'f86775ee-083a-423e-97da-9bf2b371a241'::uuid AS category_uuid, 'filets-anti-oiseaux' AS slug, 'Filets anti-oiseaux' AS name, eabdb085-5c88-4887-a77b-748b754818c0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '425beaa1-b9c0-4dd1-91ed-b21f2363e0f7'::uuid AS category_uuid, 'systemes-protection-cultures' AS slug, 'Systèmes de protection des cultures' AS name, eabdb085-5c88-4887-a77b-748b754818c0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '8c4ea9ec-a673-4b4c-a7ea-1a80c072e987'::uuid AS category_uuid, 'stations-meteo-agricoles' AS slug, 'Stations météo agricoles' AS name, eabdb085-5c88-4887-a77b-748b754818c0::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'd7b710a5-7ae7-4ac8-afeb-ff7adc077dff'::uuid AS category_uuid, 'ficelles-agricoles' AS slug, 'Ficelles agricoles' AS name, 9569ec90-a69e-4f52-8225-3a62d546b21d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '00ec2ccf-f708-4324-ac24-8110ab66bdce'::uuid AS category_uuid, 'accessoires-consommables-cordages' AS slug, 'Cordages' AS name, 9569ec90-a69e-4f52-8225-3a62d546b21d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '0bdc7d5f-da12-4faf-9328-8e6f53ab9caf'::uuid AS category_uuid, 'accessoires-consommables-sangles' AS slug, 'Sangles' AS name, 9569ec90-a69e-4f52-8225-3a62d546b21d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '7e867dd2-19b3-4c6b-8c88-b3c4e1c932d8'::uuid AS category_uuid, 'attaches-pour-plants' AS slug, 'Attaches pour plants' AS name, 9569ec90-a69e-4f52-8225-3a62d546b21d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '20cac1dc-35a9-4257-98b6-8871458fc202'::uuid AS category_uuid, 'boites-d-emballage' AS slug, 'Boîtes d’emballage' AS name, 9569ec90-a69e-4f52-8225-3a62d546b21d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT '8d3ee0b1-42c4-409d-9d27-5e02a78f2070'::uuid AS category_uuid, 'sacs-alimentaires' AS slug, 'Sacs alimentaires' AS name, 9569ec90-a69e-4f52-8225-3a62d546b21d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'a730a4c9-6dfb-4631-aa70-98ff72ccd88e'::uuid AS category_uuid, 'etiquettes-agricoles' AS slug, 'Étiquettes agricoles' AS name, 9569ec90-a69e-4f52-8225-3a62d546b21d::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'aea7a6c0-a514-4df5-94fb-73ecea9caadf'::uuid AS category_uuid, 'parapharmacie-produit-chimique' AS slug, 'Parapharmacie & Produit Chimique' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'ab1c299f-c44c-4e0d-bb6a-21f562b72116'::uuid AS category_uuid, 'parapharmacie-generale' AS slug, 'Parapharmacie Générale' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.887Z' AS created_at, '2026-04-03T10:15:31.887Z' AS updated_at
  UNION ALL
  SELECT 'd2f54cb1-5343-4cc0-8c19-8cd9b526e12c'::uuid AS category_uuid, 'parapharmacie-produit-chimique-soins-visage' AS slug, 'Soins du Visage' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'ffd36a23-4c30-43d4-a829-15adb200c9a4'::uuid AS category_uuid, 'parapharmacie-produit-chimique-soins-corps' AS slug, 'Soins du Corps' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '8a518d64-3758-47a8-9fdb-91724442035b'::uuid AS category_uuid, 'parapharmacie-produit-chimique-soins-capillaires' AS slug, 'Soins Capillaires' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '14432660-e856-4181-b328-7f74b0c7067c'::uuid AS category_uuid, 'parapharmacie-produit-chimique-hygiene-corporelle' AS slug, 'Hygiène Corporelle' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '34278cba-b4ca-4ec9-b458-449e2f61397f'::uuid AS category_uuid, 'parapharmacie-produit-chimique-hygiene-feminine' AS slug, 'Hygiène Féminine' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '086a2539-45fc-44a4-bb30-6faeef7811e4'::uuid AS category_uuid, 'parapharmacie-produit-chimique-hygiene-masculine' AS slug, 'Hygiène Masculine' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'a290b142-a5f5-4de1-b86e-fe517ed744b6'::uuid AS category_uuid, 'parapharmacie-produit-chimique-produits-bebe' AS slug, 'Produits pour Bébé' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'fb7766b7-62f4-4c63-9978-5f3bc3e9e52c'::uuid AS category_uuid, 'parapharmacie-produit-chimique-premiers-secours' AS slug, 'Premiers Secours' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'd4a74103-7f3e-4b2a-8658-337def3559a6'::uuid AS category_uuid, 'parapharmacie-produit-chimique-materiel-medical-leger' AS slug, 'Matériel Médical Léger' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '76054a9a-cf85-4963-85b4-a21249afe789'::uuid AS category_uuid, 'parapharmacie-produit-chimique-produits-solaires' AS slug, 'Produits Solaires' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '35d28cc8-5186-4ab5-aab2-80b91b3d2fd5'::uuid AS category_uuid, 'parapharmacie-produit-chimique-phytotherapie' AS slug, 'Phytothérapie' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '982d69f9-41a5-4eab-8c57-1c1e98906428'::uuid AS category_uuid, 'parapharmacie-produit-chimique-aromatherapie' AS slug, 'Aromathérapie' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'bb633ae9-4f16-47c6-ab79-fdb1e35a7f9b'::uuid AS category_uuid, 'produits-dietetiques' AS slug, 'Produits Diététiques' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'cc1b97d2-951e-4c20-8ec9-2254a3306056'::uuid AS category_uuid, 'desinfection-antiseptiques' AS slug, 'Désinfection & Antiseptiques' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '6cb2b40c-ea92-4d1e-93aa-506107bc06d1'::uuid AS category_uuid, 'produits-menagers-chimiques' AS slug, 'Produits Ménagers Chimiques' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'fd4c0464-d91d-44b7-aa80-0dabe418e1d6'::uuid AS category_uuid, 'produits-entretien-industriels' AS slug, 'Produits d' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'ae6d704b-4d06-4472-86f3-6abf0b74d00b'::uuid AS category_uuid, 'peintures-solvants' AS slug, 'Peintures & Solvants' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '929612c0-64b7-4ba7-b95e-0872a6871553'::uuid AS category_uuid, 'produits-piscine' AS slug, 'Produits pour Piscine' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '0a8f5fe4-76e1-4a26-89e5-a5b3df21335f'::uuid AS category_uuid, 'produits-agricoles-chimiques' AS slug, 'Produits Agricoles Chimiques' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '73891b4a-2c50-4a73-b44c-f62e30e4399c'::uuid AS category_uuid, 'produits-laboratoires' AS slug, 'Produits pour Laboratoires' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '594c627e-cfc8-4892-b41d-f8c70fafb706'::uuid AS category_uuid, 'equipements-securite-chimique' AS slug, 'Équipements de Sécurité Chimique' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'f17a918e-2afb-4b09-9fde-81a4507bfa9a'::uuid AS category_uuid, 'emballages-chimiques' AS slug, 'Emballages Chimiques' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'd629abdc-9f72-4711-9904-3296f5e44171'::uuid AS category_uuid, 'hygiene-professionnelle' AS slug, 'Hygiène Professionnelle' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '1d12d4a9-0a9f-423f-8af4-13424042f6e1'::uuid AS category_uuid, 'cosmetiques-specialises' AS slug, 'Cosmétiques Spécialisés' AS name, aea7a6c0-a514-4df5-94fb-73ecea9caadf::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'cbdeef83-f2d6-4df9-940c-a87a5c74a470'::uuid AS category_uuid, 'parapharmacie-generale-vitamines' AS slug, 'Vitamines' AS name, ab1c299f-c44c-4e0d-bb6a-21f562b72116::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '1f2284f5-2d5a-44e0-a4df-e94d25287feb'::uuid AS category_uuid, 'parapharmacie-generale-complements-alimentaires' AS slug, 'Compléments Alimentaires' AS name, ab1c299f-c44c-4e0d-bb6a-21f562b72116::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'ebd10bec-defa-47f2-a593-bf4f6b582d5e'::uuid AS category_uuid, 'parapharmacie-generale-produits-immunite' AS slug, 'Produits Immunité' AS name, ab1c299f-c44c-4e0d-bb6a-21f562b72116::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'b827a3a1-5a0d-47c3-8bb5-f80ca2136731'::uuid AS category_uuid, 'parapharmacie-generale-supplements-sportifs' AS slug, 'Suppléments Sportifs' AS name, ab1c299f-c44c-4e0d-bb6a-21f562b72116::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '76598820-49dd-4feb-aef2-b1f5766bdf28'::uuid AS category_uuid, 'soins-essentiels' AS slug, 'Soins Essentiels' AS name, ab1c299f-c44c-4e0d-bb6a-21f562b72116::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '9796a057-a795-488f-8b85-ca44f090713e'::uuid AS category_uuid, 'boosters-energie' AS slug, 'Boosters d' AS name, ab1c299f-c44c-4e0d-bb6a-21f562b72116::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'ebc8958f-3bb6-4e19-8f07-9b1a2f55a15e'::uuid AS category_uuid, 'parapharmacie-generale-probiotiques' AS slug, 'Probiotiques' AS name, ab1c299f-c44c-4e0d-bb6a-21f562b72116::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '7b2cfe8d-3d4e-41df-af2c-16ea44c012b6'::uuid AS category_uuid, 'parapharmacie-generale-mineraux' AS slug, 'Minéraux' AS name, ab1c299f-c44c-4e0d-bb6a-21f562b72116::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'ab9c9036-4273-4f57-9f9e-e1e2cc4c9cd8'::uuid AS category_uuid, 'parapharmacie-generale-omega-3' AS slug, 'Oméga-3' AS name, ab1c299f-c44c-4e0d-bb6a-21f562b72116::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '970d4350-f6c8-416b-995f-54daade4c19c'::uuid AS category_uuid, 'multivitamines' AS slug, 'Multivitamines' AS name, ab1c299f-c44c-4e0d-bb6a-21f562b72116::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '37631040-ee88-464f-9d91-3ea5363195e1'::uuid AS category_uuid, 'soins-visage-cremes-hydratantes' AS slug, 'Crèmes Hydratantes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '7a52275c-ff29-489d-8b53-6a5ec8bc26c0'::uuid AS category_uuid, 'soins-visage-cremes-anti-age' AS slug, 'Crèmes Anti-Âge' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'ac2a5fdc-cec4-4e62-8ad2-29742e2d5a3a'::uuid AS category_uuid, 'soins-visage-serums' AS slug, 'Sérums' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'd83fa271-7455-4d93-9427-67c9a592bbc0'::uuid AS category_uuid, 'soins-visage-soins-anti-acne' AS slug, 'Soins Anti-Acné' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '059babec-9214-4622-a928-40aa61c96751'::uuid AS category_uuid, 'soins-visage-exfoliants' AS slug, 'Exfoliants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'df4c9860-06b9-48b5-8c28-258b05f3b7fd'::uuid AS category_uuid, 'masques-visage' AS slug, 'Masques Visage' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '74f709dc-4f1b-4b91-ad97-1a0f4787b56a'::uuid AS category_uuid, 'nettoyants-dermatologiques' AS slug, 'Nettoyants Dermatologiques' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'b0d43dc5-0008-4ad8-8573-bf8cd2f9785a'::uuid AS category_uuid, 'cremes-depigmentantes' AS slug, 'Crèmes Dépigmentantes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'bcb28f2b-bb63-4a1d-8b3c-3420ed15fc25'::uuid AS category_uuid, 'soins-visage-soins-anti-taches' AS slug, 'Soins Anti-Taches' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '8c2a1dab-1ca9-478c-aec8-87aaa01cb0b1'::uuid AS category_uuid, 'soins-contour-yeux' AS slug, 'Soins Contour des Yeux' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '3ea853cf-82c5-4d5d-83c1-bb939087c12a'::uuid AS category_uuid, 'soins-corps-laits-corporels' AS slug, 'Laits Corporels' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'f7596994-cf60-4148-a790-a7154036e3ae'::uuid AS category_uuid, 'soins-corps-huiles-essentielles' AS slug, 'Huiles Essentielles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '1511422f-abbe-4b28-b8f8-35cd42a67c52'::uuid AS category_uuid, 'soins-corps-huiles-massage' AS slug, 'Huiles de Massage' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '6e213a87-d468-434f-a0f7-4731edd92f4b'::uuid AS category_uuid, 'gommages-corporels' AS slug, 'Gommages Corporels' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '730f55ff-8c23-4b45-9f01-8d197e0d3f89'::uuid AS category_uuid, 'soins-corps-soins-raffermissants' AS slug, 'Soins Raffermissants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '83301867-cfca-4792-905b-0ead207926ff'::uuid AS category_uuid, 'soins-corps-soins-anti-vergetures' AS slug, 'Soins Anti-Vergetures' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '600e8286-3cdb-402d-a5e9-6ddd3be32eac'::uuid AS category_uuid, 'soins-corps-cremes-nourrissantes' AS slug, 'Crèmes Nourrissantes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '6ede0f47-18dc-470e-8dd0-099224a44ec4'::uuid AS category_uuid, 'gels-raffermissants' AS slug, 'Gels Raffermissants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'd38d8706-7e54-4c42-8d05-13203efe31c5'::uuid AS category_uuid, 'soins-anticellulite' AS slug, 'Soins Anticellulite' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '3a9739ed-ae4e-4b68-a6db-9ffd51a5f4b8'::uuid AS category_uuid, 'soins-capillaires-shampoings' AS slug, 'Shampoings' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'cb0c02d6-8032-41f8-b682-dde852e493db'::uuid AS category_uuid, 'soins-capillaires-apres-shampoings' AS slug, 'Après-Shampoings' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '1c491c23-36a2-43fe-942a-eccf70e45630'::uuid AS category_uuid, 'soins-capillaires-masques-capillaires' AS slug, 'Masques Capillaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'aff73af9-3b2b-467e-877a-a26a847aaf25'::uuid AS category_uuid, 'soins-capillaires-huiles-capillaires' AS slug, 'Huiles Capillaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'e3b4c623-ed8e-4160-bc14-acbbe25d63cf'::uuid AS category_uuid, 'soins-capillaires-serums-capillaires' AS slug, 'Sérums Capillaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'f0733ba7-a533-47db-abcf-48f2c9a055e7'::uuid AS category_uuid, 'lotions-antichute' AS slug, 'Lotions Antichute' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'eac98f0e-c78e-4804-aaeb-e5289e94b4b0'::uuid AS category_uuid, 'soins-capillaires-soins-keratine' AS slug, 'Soins Kératine' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '04ca52b2-5a4d-4eb0-94a1-79199a265e2e'::uuid AS category_uuid, 'traitements-cuir-chevelu' AS slug, 'Traitements Cuir Chevelu' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'd121c1a9-12e0-41b0-a220-48b0235acaf1'::uuid AS category_uuid, 'soins-capillaires-shampoings-medicaux' AS slug, 'Shampoings Médicaux' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '02288b10-98b4-48cf-9c44-cb457cab7761'::uuid AS category_uuid, 'soins-antipelliculaires' AS slug, 'Soins Antipelliculaires' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'c6631e35-6459-4bea-9514-7e3171b5f363'::uuid AS category_uuid, 'savons' AS slug, 'Savons' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '6fbc0ddc-057c-4176-9ad4-a82edc639cbf'::uuid AS category_uuid, 'hygiene-corporelle-gels-douche' AS slug, 'Gels Douche' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '9cd03bcc-0ca1-41ae-83cc-bf9b6d936701'::uuid AS category_uuid, 'hygiene-corporelle-deodorants' AS slug, 'Déodorants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '62d82bcf-4207-4c4b-bae6-bad8d2a8ab10'::uuid AS category_uuid, 'hygiene-corporelle-lingettes' AS slug, 'Lingettes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'dbc0f80e-82a8-4a37-bb40-41ec6721ecc7'::uuid AS category_uuid, 'hygiene-corporelle-soins-intimes' AS slug, 'Soins Intimes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'f85093c6-65b8-4291-84f0-d83eb29c11be'::uuid AS category_uuid, 'produits-antibacteriens' AS slug, 'Produits Antibactériens' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '3264be5e-bc29-4f17-bac8-2c5da5727c2d'::uuid AS category_uuid, 'bains-bouche' AS slug, 'Bains de Bouche' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'c35411c2-1059-41d4-8b7c-c0ee0370f724'::uuid AS category_uuid, 'hygiene-corporelle-dentifrices' AS slug, 'Dentifrices' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'c2d8adb1-03e3-4daa-bc23-de5b9c7bbd4a'::uuid AS category_uuid, 'brosses-dents' AS slug, 'Brosses à Dents' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'ecc908d5-b345-468b-980d-a7c60d2a8051'::uuid AS category_uuid, 'gels-mains' AS slug, 'Gels pour les Mains' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '4c3f8cee-9d91-44d6-8d2f-c397d7c74894'::uuid AS category_uuid, 'hygiene-feminine-serviettes' AS slug, 'Serviettes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '684729d8-7281-4fbe-aae4-c44d881a1765'::uuid AS category_uuid, 'hygiene-feminine-tampons' AS slug, 'Tampons' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'd0053ca6-143d-4361-a395-6ba21161f058'::uuid AS category_uuid, 'hygiene-feminine-coupes-menstruelles' AS slug, 'Coupes Menstruelles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '8c29a94d-9a4b-4d22-b0e6-163d86cacebe'::uuid AS category_uuid, 'hygiene-feminine-gels-intimes' AS slug, 'Gels Intimes' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '54b33036-d4a4-48ea-beea-9f33e9c49d0a'::uuid AS category_uuid, 'traitements-gynecologiques' AS slug, 'Traitements Gynécologiques sans Ordonnance' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '234ae6e6-dc53-4ef6-985a-4f516235c0e0'::uuid AS category_uuid, 'protege-slips' AS slug, 'Protège-slips' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '6c2cf4f8-b0af-4267-8fb8-c64efc77c47c'::uuid AS category_uuid, 'produits-post-partum' AS slug, 'Produits Post-partum' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'b84831fe-dd17-48fb-b601-89bb12c86562'::uuid AS category_uuid, 'hygiene-masculine-soins-barbe' AS slug, 'Soins Barbe' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'cd926d4e-5f3a-491c-98e5-6295a386b6f7'::uuid AS category_uuid, 'mousses-raser' AS slug, 'Mousses à Raser' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'ae941984-182e-459b-b445-9fff212bcd39'::uuid AS category_uuid, 'gels-rasage' AS slug, 'Gels de Rasage' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '44e37468-a571-4830-ac06-56363ad0b3ed'::uuid AS category_uuid, 'hygiene-masculine-lotions-apres-rasage' AS slug, 'Lotions Après-rasage' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT 'c3755fc9-c0fe-4781-b050-86150d41fce0'::uuid AS category_uuid, 'hygiene-masculine-soins-visage-homme' AS slug, 'Soins Visage Homme' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '20201e64-4300-4020-8a0a-dc76a3f2209f'::uuid AS category_uuid, 'baumes-barbe' AS slug, 'Baumes pour Barbe' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
  UNION ALL
  SELECT '61f8a16c-1723-4265-9287-b3cc57b82675'::uuid AS category_uuid, 'hygiene-masculine-huiles-barbe' AS slug, 'Huiles pour Barbe' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.888Z' AS created_at, '2026-04-03T10:15:31.888Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 32 terminé: 100 entrées
