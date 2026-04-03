-- ============================================================
-- CHUNK 10/49 — 100 catégories
-- Total: 4836 catégories
-- Exécuter dans l'ordre dans Supabase SQL Editor
-- ============================================================

INSERT INTO public.categories
  (category_uuid, slug, name, parent_id, level, is_active, created_at, updated_at)
VALUES
  SELECT 'd7a49322-0c38-4f29-b94d-9a7a52d03f81'::uuid AS category_uuid, 'echelles-de-bain' AS slug, 'Échelles de bain' AS name, 4cd434c8-0bcd-4f9c-9630-351d831eea7f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'bfcee701-483e-4912-ac4a-5bf20b907ab3'::uuid AS category_uuid, 'pare-battages' AS slug, 'Pare-battages' AS name, 4cd434c8-0bcd-4f9c-9630-351d831eea7f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '30e18bcc-6552-4862-a413-4928b17682b8'::uuid AS category_uuid, 'hublots-ecoutilles' AS slug, 'Hublots & écoutilles' AS name, 4cd434c8-0bcd-4f9c-9630-351d831eea7f::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '96c8b9fa-7e45-4daf-bbe2-58de4eba6b93'::uuid AS category_uuid, 'sieges-banquettes' AS slug, 'Sièges & banquettes' AS name, a050345f-bd0d-419c-b723-5307a9bff5c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '860f4ce2-6bb2-41a2-a8b8-ca85f362634b'::uuid AS category_uuid, 'cabines-couchettes' AS slug, 'Cabines & couchettes' AS name, a050345f-bd0d-419c-b723-5307a9bff5c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'b4787af1-a233-4fc9-813e-7236fd4a946e'::uuid AS category_uuid, 'eclairage-interieur' AS slug, 'Éclairage intérieur' AS name, a050345f-bd0d-419c-b723-5307a9bff5c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'cee6136d-b3ad-4a41-8a5d-7d5f92e89385'::uuid AS category_uuid, 'cuisine-marine' AS slug, 'Équipements de cuisine marine' AS name, a050345f-bd0d-419c-b723-5307a9bff5c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'ee022153-86e1-417d-aacb-1be0dbc966fa'::uuid AS category_uuid, 'refrigerateurs-glacieres-nautiques' AS slug, 'Réfrigérateurs & glacières nautiques' AS name, a050345f-bd0d-419c-b723-5307a9bff5c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'f1e4d35a-ddea-4abb-bb50-02a1ee741429'::uuid AS category_uuid, 'wc-nautiques' AS slug, 'WC nautiques' AS name, a050345f-bd0d-419c-b723-5307a9bff5c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT 'a6bdd356-7915-485b-b49d-c4137d52a770'::uuid AS category_uuid, 'douches-sanitaires' AS slug, 'Douches & sanitaires' AS name, a050345f-bd0d-419c-b723-5307a9bff5c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.876Z' AS created_at, '2026-04-03T10:15:31.876Z' AS updated_at
  UNION ALL
  SELECT '7fecc337-55ca-4cc5-b0e6-39fe60541660'::uuid AS category_uuid, 'rangements-coffres' AS slug, 'Rangements & coffres' AS name, a050345f-bd0d-419c-b723-5307a9bff5c5::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'e09d1fe5-b1b3-4d85-8a74-b8a93476015d'::uuid AS category_uuid, 'housses-protection' AS slug, 'Housses de protection' AS name, 98a33a74-8aab-4e31-a074-567679f01546::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '6a476ca0-6d04-4339-9f55-d23743154435'::uuid AS category_uuid, 'nettoyants-entretien' AS slug, 'Nettoyants & produits d’entretien' AS name, 98a33a74-8aab-4e31-a074-567679f01546::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'dcf3e858-5ebe-44d2-b454-73861dfbba23'::uuid AS category_uuid, 'peintures-antifouling' AS slug, 'Peintures & antifouling' AS name, 98a33a74-8aab-4e31-a074-567679f01546::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '1747de17-1a8b-41f0-977e-d744c8181d54'::uuid AS category_uuid, 'kits-reparation-coque' AS slug, 'Kits de réparation coque' AS name, 98a33a74-8aab-4e31-a074-567679f01546::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '14eb4b4c-0f2f-437e-ad7b-376f7c0a2b3f'::uuid AS category_uuid, 'accessoires-entretien-batteries-chargeurs' AS slug, 'Batteries & chargeurs' AS name, 98a33a74-8aab-4e31-a074-567679f01546::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '53e0672d-d381-4e9d-ab2b-c25f525bb453'::uuid AS category_uuid, 'outils-nautiques' AS slug, 'Outils nautiques' AS name, 98a33a74-8aab-4e31-a074-567679f01546::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '850fd66d-34e0-45a3-923c-34987a943e10'::uuid AS category_uuid, 'pompes-manuelles' AS slug, 'Pompes manuelles' AS name, 98a33a74-8aab-4e31-a074-567679f01546::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '43683a70-ade5-47c5-900a-ade548ac367e'::uuid AS category_uuid, 'rames-pagaies' AS slug, 'Rames & pagaies' AS name, 98a33a74-8aab-4e31-a074-567679f01546::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '68f0f086-5e98-476f-8a3d-c5541acb8df5'::uuid AS category_uuid, 'remorques-bateau' AS slug, 'Remorques bateau' AS name, 2b09a805-6443-49c8-963c-31d96ea84258::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'fa189ead-78ee-4895-9e2e-40bdf4b5c34a'::uuid AS category_uuid, 'treuils-sangles' AS slug, 'Treuils & sangles' AS name, 2b09a805-6443-49c8-963c-31d96ea84258::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '71ab8681-1856-40c9-b6c6-9192c86110ac'::uuid AS category_uuid, 'chariots-mise-a-leau' AS slug, 'Chariots de mise à l’eau' AS name, 2b09a805-6443-49c8-963c-31d96ea84258::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '82094003-540b-4f43-ace3-fdb96a2100d0'::uuid AS category_uuid, 'supports-stockage' AS slug, 'Supports de stockage' AS name, 2b09a805-6443-49c8-963c-31d96ea84258::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '3b9f9854-a576-499d-a5c0-77ec450f2f18'::uuid AS category_uuid, 'garages-nautiques' AS slug, 'Garages nautiques' AS name, 2b09a805-6443-49c8-963c-31d96ea84258::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '7da2de1d-7dcf-4a42-b3a6-b8bf8be60b01'::uuid AS category_uuid, 'portiques-palans' AS slug, 'Portiques & palans' AS name, 2b09a805-6443-49c8-963c-31d96ea84258::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '595bb379-50ee-41fb-ac42-e707e015b790'::uuid AS category_uuid, 'wakeboard' AS slug, 'Wakeboard' AS name, ecea090f-f0aa-49d6-91fd-6dc8ca396d90::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '6e1161d1-7cc6-4bec-8184-0c6e29118178'::uuid AS category_uuid, 'ski-nautique' AS slug, 'Ski nautique' AS name, ecea090f-f0aa-49d6-91fd-6dc8ca396d90::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '383f9ac4-7b32-4de6-bcc5-d84d13d54b97'::uuid AS category_uuid, 'kneeboard' AS slug, 'Kneeboard' AS name, ecea090f-f0aa-49d6-91fd-6dc8ca396d90::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '283df041-6f01-44b2-8f81-ba99d02576f1'::uuid AS category_uuid, 'bouees-tractees' AS slug, 'Bouées tractées' AS name, ecea090f-f0aa-49d6-91fd-6dc8ca396d90::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '9f323f2b-3fff-4db4-b4f8-1aa6c24ed574'::uuid AS category_uuid, 'paddle-sup' AS slug, 'Paddle (SUP)' AS name, ecea090f-f0aa-49d6-91fd-6dc8ca396d90::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'cf5f56e6-fdcf-4de7-9c18-5267af506138'::uuid AS category_uuid, 'kitesurf' AS slug, 'Kitesurf' AS name, ecea090f-f0aa-49d6-91fd-6dc8ca396d90::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '0ca80fec-8a64-42e9-abfe-12cee28a46c3'::uuid AS category_uuid, 'plongee-snorkeling' AS slug, 'Plongée & snorkeling' AS name, ecea090f-f0aa-49d6-91fd-6dc8ca396d90::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '09733d56-2c25-45ff-a909-b5c05a23dfc8'::uuid AS category_uuid, 'peche-en-mer-equipements' AS slug, 'Équipements de pêche en mer' AS name, ecea090f-f0aa-49d6-91fd-6dc8ca396d90::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'b774d3cd-6610-42f9-acec-aa428c63f5b3'::uuid AS category_uuid, 'btp-engins-construction' AS slug, 'BTP, Engins & Construction' AS name, NULL::uuid AS parent_id, 1 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '9aeada94-e9f1-4f86-9dbd-64dbcd251dd3'::uuid AS category_uuid, 'engins-de-chantier' AS slug, 'Engins de chantier' AS name, b774d3cd-6610-42f9-acec-aa428c63f5b3::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '02a3e2d8-c9db-49a8-806b-baf8a2cad162'::uuid AS category_uuid, 'vehicules-transport-materiaux' AS slug, 'Véhicules & transport de matériaux' AS name, b774d3cd-6610-42f9-acec-aa428c63f5b3::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '70c720d2-d547-4cbf-a430-479fca930028'::uuid AS category_uuid, 'materiel-de-construction' AS slug, 'Matériel de construction' AS name, b774d3cd-6610-42f9-acec-aa428c63f5b3::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'c381beab-547e-47d3-a909-30cdca21ebf6'::uuid AS category_uuid, 'btp-engins-construction-materiaux-de-construction' AS slug, 'Matériaux de construction' AS name, b774d3cd-6610-42f9-acec-aa428c63f5b3::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '0df01a91-c70d-4576-b8cf-e0da397fc16e'::uuid AS category_uuid, 'quincaillerie-fixations' AS slug, 'Quincaillerie & fixations' AS name, b774d3cd-6610-42f9-acec-aa428c63f5b3::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '6a56cb71-7d23-4935-9c60-d595831afdff'::uuid AS category_uuid, 'equipements-electriques-plomberie' AS slug, 'Équipements électriques & plomberie' AS name, b774d3cd-6610-42f9-acec-aa428c63f5b3::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '8babc4e0-fd73-4f46-8839-3fcf7ae9f0f4'::uuid AS category_uuid, 'outils-equipements-professionnels' AS slug, 'Outils & équipements professionnels' AS name, b774d3cd-6610-42f9-acec-aa428c63f5b3::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '2577d521-62d1-40b7-a526-094b4d0f502a'::uuid AS category_uuid, 'btp-engins-construction-securite-protection' AS slug, 'Équipements de sécurité & protection' AS name, b774d3cd-6610-42f9-acec-aa428c63f5b3::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '773a5975-3a85-4a79-b5bc-5c8393d3ca32'::uuid AS category_uuid, 'construction-modulaire-structures' AS slug, 'Construction modulaire & structures' AS name, b774d3cd-6610-42f9-acec-aa428c63f5b3::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '3bb1874f-2b71-4a81-930f-d4611eab9d02'::uuid AS category_uuid, 'location-materiel-btp' AS slug, 'Location de matériel BTP' AS name, b774d3cd-6610-42f9-acec-aa428c63f5b3::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '8e6a4920-f990-4966-92f9-cced9f4eeedf'::uuid AS category_uuid, 'services-lies-au-btp' AS slug, 'Services liés au BTP' AS name, b774d3cd-6610-42f9-acec-aa428c63f5b3::uuid AS parent_id, 2 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'e7499d1f-addf-407d-b71a-0f51f110f77d'::uuid AS category_uuid, 'pelles-hydrauliques' AS slug, 'Pelles hydrauliques' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '6966c7b0-dcad-461d-b918-e409e9c538a3'::uuid AS category_uuid, 'mini-pelles' AS slug, 'Mini-pelles' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '4237792c-e61b-4e30-8d7b-a9b7b933005d'::uuid AS category_uuid, 'chargeuses' AS slug, 'Chargeuses' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '338bda2c-79db-48c3-8d36-1390a614677d'::uuid AS category_uuid, 'bulldozers' AS slug, 'Bulldozers' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'f0058364-d7de-4335-ac1b-1710a8dd107c'::uuid AS category_uuid, 'niveleuses' AS slug, 'Niveleuses' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '32c11ab1-d493-4c7b-9731-f6b9092f6e26'::uuid AS category_uuid, 'tractopelles' AS slug, 'Tractopelles' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '482dce47-a9a2-4324-b402-1ebc3a8f30db'::uuid AS category_uuid, 'compacteurs' AS slug, 'Compacteurs' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '0840cd5f-2a1b-4588-8028-396446246e55'::uuid AS category_uuid, 'rouleaux-compresseurs' AS slug, 'Rouleaux compresseurs' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '0558598e-187c-440e-a870-3d07f0a324b6'::uuid AS category_uuid, 'dumpers' AS slug, 'Dumpers' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '542ae7f5-c4e0-436a-8577-cf038aaade52'::uuid AS category_uuid, 'engins-de-chantier-camions-bennes' AS slug, 'Camions-bennes' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'ece1dfbb-99b5-4c0b-8d25-7bfacb16d48c'::uuid AS category_uuid, 'grues-mobiles' AS slug, 'Grues mobiles' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '21045395-20a0-452a-8478-541d59eadb4a'::uuid AS category_uuid, 'grues-a-tour' AS slug, 'Grues à tour' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'cd2571f8-13a0-4b4e-8556-0a887ad0ec26'::uuid AS category_uuid, 'chariots-telescopiques' AS slug, 'Chariots télescopiques' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '8ba65d61-9d3c-47a9-a4cc-001215b467c4'::uuid AS category_uuid, 'nacelles-elevatrices' AS slug, 'Nacelles élévatrices' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '77c36725-2750-40c2-92d1-6dd9189864cd'::uuid AS category_uuid, 'foreuses' AS slug, 'Foreuses' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '9300aee5-8f22-4192-906b-f1f32f9d0628'::uuid AS category_uuid, 'retrochargeuses' AS slug, 'Rétrochargeuses' AS name, 9aeada94-e9f1-4f86-9dbd-64dbcd251dd3::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'ce2b5279-a5b4-40aa-8b69-fe7cb79c15fc'::uuid AS category_uuid, 'camions-de-chantier' AS slug, 'Camions de chantier' AS name, 02a3e2d8-c9db-49a8-806b-baf8a2cad162::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'bc9acfb1-78be-4032-814f-2bb779086168'::uuid AS category_uuid, 'camions-malaxeurs-toupies-beton' AS slug, 'Camions malaxeurs (toupies béton)' AS name, 02a3e2d8-c9db-49a8-806b-baf8a2cad162::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'eb6343e2-79ee-4cc0-ac8d-289c497b3bcc'::uuid AS category_uuid, 'camions-porte-engins' AS slug, 'Camions porte-engins' AS name, 02a3e2d8-c9db-49a8-806b-baf8a2cad162::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'bb319d2d-7470-4fa6-a1b1-88b8e0cca2ca'::uuid AS category_uuid, 'remorques-de-chantier' AS slug, 'Remorques de chantier' AS name, 02a3e2d8-c9db-49a8-806b-baf8a2cad162::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'b202c7a5-5324-4b9e-85c7-1bde19d18bf7'::uuid AS category_uuid, 'vehicules-utilitaires' AS slug, 'Véhicules utilitaires' AS name, 02a3e2d8-c9db-49a8-806b-baf8a2cad162::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'ac9514fb-ee44-4a32-9133-ab54ebcb0e3f'::uuid AS category_uuid, 'pick-ups' AS slug, 'Pick-ups' AS name, 02a3e2d8-c9db-49a8-806b-baf8a2cad162::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'b7fb2128-5516-4025-a1ce-28f48c66980e'::uuid AS category_uuid, 'fourgons' AS slug, 'Fourgons' AS name, 02a3e2d8-c9db-49a8-806b-baf8a2cad162::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '1cb14388-7092-49b6-83b0-2f4befc80f32'::uuid AS category_uuid, 'betonnieres' AS slug, 'Bétonnières' AS name, 70c720d2-d547-4cbf-a430-479fca930028::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '032d9385-f2c6-40c2-a307-11c0554cf99e'::uuid AS category_uuid, 'vibrateurs-beton' AS slug, 'Vibrateurs béton' AS name, 70c720d2-d547-4cbf-a430-479fca930028::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '224a71fd-391d-4835-beed-113d9823da30'::uuid AS category_uuid, 'pompes-a-beton' AS slug, 'Pompes à béton' AS name, 70c720d2-d547-4cbf-a430-479fca930028::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '2b29fe4f-ae6c-4470-b488-59c6a46864bb'::uuid AS category_uuid, 'coffrages' AS slug, 'Coffrages' AS name, 70c720d2-d547-4cbf-a430-479fca930028::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'b2425a22-a8cb-43e4-a051-e479a5c9bda5'::uuid AS category_uuid, 'etais' AS slug, 'Étais' AS name, 70c720d2-d547-4cbf-a430-479fca930028::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'cdb6a8f4-138f-4b7f-9271-097b81a76549'::uuid AS category_uuid, 'echafaudages' AS slug, 'Échafaudages' AS name, 70c720d2-d547-4cbf-a430-479fca930028::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '9c8a40b3-6c6e-4f11-b089-3361993fe473'::uuid AS category_uuid, 'echelles' AS slug, 'Échelles' AS name, 70c720d2-d547-4cbf-a430-479fca930028::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'a7af02c0-1d8f-4357-b613-26d4f4b8d006'::uuid AS category_uuid, 'outils-pneumatiques' AS slug, 'Outils pneumatiques' AS name, 70c720d2-d547-4cbf-a430-479fca930028::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'f559d844-c1d7-4561-a503-81c9b20575d6'::uuid AS category_uuid, 'marteaux-piqueurs' AS slug, 'Marteaux-piqueurs' AS name, 70c720d2-d547-4cbf-a430-479fca930028::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '22fb443b-4086-4e96-92aa-01fd1684a1b1'::uuid AS category_uuid, 'scies-de-chantier' AS slug, 'Scies de chantier' AS name, 70c720d2-d547-4cbf-a430-479fca930028::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '1a195a0d-ea35-4c65-8888-64314141ba7a'::uuid AS category_uuid, 'groupes-electrogenes' AS slug, 'Groupes électrogènes' AS name, 70c720d2-d547-4cbf-a430-479fca930028::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'b7eaad35-c181-4c14-a1b7-9b0a2022b936'::uuid AS category_uuid, 'materiel-de-construction-compresseurs' AS slug, 'Compresseurs' AS name, 70c720d2-d547-4cbf-a430-479fca930028::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '39387e97-38e5-4bf4-b97b-ef38be0b5cb3'::uuid AS category_uuid, 'lasers-niveaux' AS slug, 'Lasers & niveaux' AS name, 70c720d2-d547-4cbf-a430-479fca930028::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '50f0192f-3859-4394-9fc9-a6b69687f648'::uuid AS category_uuid, 'ciment' AS slug, 'Ciment' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'ed86fb18-d3fc-412b-b234-36cbae545fc8'::uuid AS category_uuid, 'beton-pret-a-lemploi' AS slug, 'Béton prêt à l’emploi' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '12414c3b-54eb-4a6f-a9f5-a98922c81074'::uuid AS category_uuid, 'sable-gravier' AS slug, 'Sable & gravier' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '4157f91d-7dca-4eec-a9af-a390555ab205'::uuid AS category_uuid, 'briques-blocs' AS slug, 'Briques & blocs' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '60dd805e-acb0-40f4-9021-6e3a732a9239'::uuid AS category_uuid, 'parpaings' AS slug, 'Parpaings' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'ba59dedf-abc6-41fa-959e-6961d97f3c9c'::uuid AS category_uuid, 'pierres-naturelles' AS slug, 'Pierres naturelles' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '632dabba-aadf-477e-9662-17083055a071'::uuid AS category_uuid, 'bois-de-construction' AS slug, 'Bois de construction' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '83405822-40fd-466a-b858-288a906eef2c'::uuid AS category_uuid, 'tuiles-toitures' AS slug, 'Tuiles & toitures' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '0740aeee-eaec-4a93-ae10-dd021de9ddc1'::uuid AS category_uuid, 'plaques-de-platre' AS slug, 'Plaques de plâtre' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'c1fa6435-ff2e-4f2e-9bbe-9db5f48cd681'::uuid AS category_uuid, 'isolants' AS slug, 'Isolants' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'a8b3982a-edd3-4b26-99f3-c3089df77812'::uuid AS category_uuid, 'peintures-enduits' AS slug, 'Peintures & enduits' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'c125689a-c3bb-4a3b-ae4b-67614b509c67'::uuid AS category_uuid, 'revetements-sols-murs' AS slug, 'Revêtements sols & murs' AS name, NULL::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '339edd74-df64-4965-8412-d7a5384b1b81'::uuid AS category_uuid, 'vis-boulons' AS slug, 'Vis & boulons' AS name, 0df01a91-c70d-4576-b8cf-e0da397fc16e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '2bda4828-b89b-4323-b080-c22078c6df4e'::uuid AS category_uuid, 'chevilles' AS slug, 'Chevilles' AS name, 0df01a91-c70d-4576-b8cf-e0da397fc16e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '45306f8d-a8ea-4781-9bb3-ef5647577f65'::uuid AS category_uuid, 'quincaillerie-fixations-clous' AS slug, 'Clous' AS name, 0df01a91-c70d-4576-b8cf-e0da397fc16e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '93c71a70-a6c2-4e6d-9b4e-d5db5762fe5d'::uuid AS category_uuid, 'equerres' AS slug, 'Équerres' AS name, 0df01a91-c70d-4576-b8cf-e0da397fc16e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '7f619de2-b7e4-43c5-9caa-b86b8896db3d'::uuid AS category_uuid, 'charniere' AS slug, 'Charnières' AS name, 0df01a91-c70d-4576-b8cf-e0da397fc16e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT 'baa4b164-a7cb-4ef7-8e89-137ac1fbad28'::uuid AS category_uuid, 'serrures' AS slug, 'Serrures' AS name, 0df01a91-c70d-4576-b8cf-e0da397fc16e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
  UNION ALL
  SELECT '97374310-1384-4d5f-98ef-8c29ffbaf2b1'::uuid AS category_uuid, 'cadenas' AS slug, 'Cadenas' AS name, 0df01a91-c70d-4576-b8cf-e0da397fc16e::uuid AS parent_id, 3 AS level, true AS is_active, '2026-04-03T10:15:31.877Z' AS created_at, '2026-04-03T10:15:31.877Z' AS updated_at
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  parent_id = COALESCE(EXCLUDED.parent_id, categories.parent_id),
  level = EXCLUDED.level,
  category_uuid = COALESCE(EXCLUDED.category_uuid, categories.category_uuid),
  updated_at = NOW();

-- Lot 10 terminé: 100 entrées
