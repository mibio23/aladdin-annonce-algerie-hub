-- Insertion d'annonces de test pour tester la recherche avancée

-- D'abord, vérifier et insérer des catégories si nécessaire
DO $$
DECLARE
  has_translations boolean;
  has_name boolean;
  has_description boolean;
  has_is_active boolean;
  has_position_order boolean;
  has_sort_order boolean;
  order_column text;
  columns text;
  select_list text;
  sql text;
BEGIN
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'categories' AND column_name = 'translations'
  ) INTO has_translations;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'categories' AND column_name = 'name'
  ) INTO has_name;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'categories' AND column_name = 'description'
  ) INTO has_description;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'categories' AND column_name = 'is_active'
  ) INTO has_is_active;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'categories' AND column_name = 'position_order'
  ) INTO has_position_order;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'categories' AND column_name = 'sort_order'
  ) INTO has_sort_order;

  IF has_position_order THEN
    order_column := 'position_order';
  ELSIF has_sort_order THEN
    order_column := 'sort_order';
  ELSE
    order_column := NULL;
  END IF;

  columns := 'slug';
  select_list := 'd.slug';

  IF has_translations THEN
    columns := columns || ', translations';
    select_list := select_list || ', d.translations';
  ELSE
    IF has_name THEN
      columns := columns || ', name';
      select_list := select_list || ', d.name_fr';
    END IF;
    IF has_description THEN
      columns := columns || ', description';
      select_list := select_list || ', d.desc_fr';
    END IF;
  END IF;
  IF has_is_active THEN
    columns := columns || ', is_active';
    select_list := select_list || ', true';
  END IF;
  IF order_column IS NOT NULL THEN
    columns := columns || ', ' || order_column;
    select_list := select_list || ', d.position';
  END IF;

  sql := format(
    'WITH data(slug, name_fr, desc_fr, translations, position) AS (VALUES (''automobiles'', ''Automobiles'', ''Voitures et véhicules'', ''{"fr": {"name": "Automobiles", "description": "Voitures et véhicules"}, "ar": {"name": "سيارات", "description": "سيارات ومركبات"}}'', 1), (''immobilier'', ''Immobilier'', ''Biens immobiliers'', ''{"fr": {"name": "Immobilier", "description": "Biens immobiliers"}, "ar": {"name": "عقارات", "description": "عقارات ومنازل"}}'', 2), (''electromenager'', ''Électroménager'', ''Appareils électroménagers'', ''{"fr": {"name": "Électroménager", "description": "Appareils électroménagers"}, "ar": {"name": "أجهزة منزلية", "description": "أجهزة كهربائية منزلية"}}'', 3)) INSERT INTO public.categories (%s) SELECT %s FROM data d ON CONFLICT (slug) DO NOTHING',
    columns, select_list
  );
  BEGIN
    EXECUTE sql;
  EXCEPTION
    WHEN others THEN
      RAISE NOTICE 'Skipping category seed: %', SQLERRM;
  END;
END $$;

-- Insérer des annonces de test
DO $$
DECLARE
  has_location boolean;
  has_wilaya boolean;
  has_commune boolean;
  has_address boolean;
  has_phone_number boolean;
  has_type boolean;
  has_condition boolean;
  has_status boolean;
  has_shop_name boolean;
  has_created_at boolean;
  columns text;
  select_list text;
  sql text;
BEGIN
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'location'
  ) INTO has_location;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'wilaya'
  ) INTO has_wilaya;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'commune'
  ) INTO has_commune;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'address'
  ) INTO has_address;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'phone_number'
  ) INTO has_phone_number;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'type'
  ) INTO has_type;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'condition'
  ) INTO has_condition;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'status'
  ) INTO has_status;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'shop_name'
  ) INTO has_shop_name;
  SELECT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'created_at'
  ) INTO has_created_at;

  columns := 'id, user_id, category_id, title, description, price';
  select_list := 'gen_random_uuid(), gen_random_uuid(), cat.id, data.title, data.description, data.price';

  IF has_location THEN
    columns := columns || ', location';
    select_list := select_list || ', data.location_name';
  END IF;
  IF has_wilaya THEN
    columns := columns || ', wilaya';
    select_list := select_list || ', data.location_name';
  END IF;
  IF has_commune THEN
    columns := columns || ', commune';
    select_list := select_list || ', NULL';
  END IF;
  IF has_address THEN
    columns := columns || ', address';
    select_list := select_list || ', NULL';
  END IF;
  IF has_phone_number THEN
    columns := columns || ', phone_number';
    select_list := select_list || ', data.phone';
  END IF;
  IF has_type THEN
    columns := columns || ', type';
    select_list := select_list || ', data.type_value';
  END IF;
  IF has_condition THEN
    columns := columns || ', condition';
    select_list := select_list || ', data.condition_value';
  END IF;
  IF has_status THEN
    columns := columns || ', status';
    select_list := select_list || ', ''active''';
  END IF;
  IF has_shop_name THEN
    columns := columns || ', shop_name';
    select_list := select_list || ', data.shop_name';
  END IF;
  IF has_created_at THEN
    columns := columns || ', created_at';
    select_list := select_list || ', now() - (data.days_ago || '' days'')::interval';
  END IF;

  sql := format(
    $sql$
      WITH category_ids AS (
        SELECT id, slug FROM categories WHERE slug IN ('automobiles', 'immobilier', 'electromenager')
      )
      INSERT INTO public.announcements (%s)
      SELECT %s
      FROM category_ids cat
      CROSS JOIN (
        VALUES 
          ('automobiles', 'Renault Clio 2018', 'Voiture en excellent état, entretenue régulièrement. Climatisation, GPS intégré.', 85000, 'Casablanca', '0612345678', 'sell', 'excellent', 'Auto Plus', 1),
          ('automobiles', 'Peugeot 208 2020', 'Citadine économique, parfaite pour la ville. Très peu de kilométrage.', 120000, 'Rabat', '0623456789', 'sell', 'comme_neuf', 'Motors City', 2),
          ('automobiles', 'Toyota Yaris 2017', 'Véhicule fiable, idéal premier achat. Révisée récemment.', 75000, 'Marrakech', '0634567890', 'sell', 'bon', 'Garage Central', 3),
          ('immobilier', 'Appartement 3 chambres Agdal', 'Bel appartement moderne avec terrasse, proche commodités. Vue dégagée.', 1200000, 'Rabat', '0645678901', 'sell', 'excellent', 'Immobilier Premium', 1),
          ('immobilier', 'Villa avec jardin Californie', 'Magnifique villa familiale avec piscine et grand jardin arboré.', 3500000, 'Casablanca', '0656789012', 'sell', 'excellent', 'Luxe Properties', 4),
          ('immobilier', 'Studio meublé Gueliz', 'Studio tout équipé en centre-ville, idéal étudiant ou jeune actif.', 350000, 'Marrakech', '0667890123', 'rent', 'bon', 'Location Express', 2),
          ('electromenager', 'Réfrigérateur Samsung 400L', 'Réfrigérateur double porte, très économique. Garantie encore valable.', 4500, 'Casablanca', '0678901234', 'sell', 'comme_neuf', 'Électro Shop', 1),
          ('electromenager', 'Machine à laver LG 7kg', 'Lave-linge automatique, programmes multiples. Fonctionne parfaitement.', 2800, 'Fès', '0689012345', 'sell', 'bon', 'Ménager Plus', 3),
          ('electromenager', 'Micro-ondes Moulinex', 'Four micro-ondes avec grill, très pratique. État impeccable.', 800, 'Agadir', '0690123456', 'sell', 'excellent', 'Cuisine Pro', 2)
      ) AS data(cat_slug, title, description, price, location_name, phone, type_value, condition_value, shop_name, days_ago)
      WHERE cat.slug = data.cat_slug
    $sql$,
    columns,
    select_list
  );

  BEGIN
    EXECUTE sql;
  EXCEPTION
    WHEN others THEN
      RAISE NOTICE 'Skipping announcement seed: %', SQLERRM;
  END;
END $$;
