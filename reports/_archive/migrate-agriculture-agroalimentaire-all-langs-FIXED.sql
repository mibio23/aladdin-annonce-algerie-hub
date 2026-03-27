-- Migration: Agriculture & Agroalimentaire (Fixed - 100% Complete)
-- Includes Level 0, Level 1, and Level 2 categories with translations for 6 languages (fr, ar, en, es, de, it)
-- Verified against mega menu structures

DO $$
DECLARE
    root_id BIGINT;
BEGIN
    -- 1. Catégorie Racine: Agriculture & Agroalimentaire
    INSERT INTO public.categories (slug, name, icon, parent_id, level, sort_order, is_active, description)
    VALUES ('agriculture-agroalimentaire', 'Agriculture & Agroalimentaire', 'Wheat', NULL, 0, 0, true, 'Catégorie dédiée à l’agriculture et à l’agroalimentaire: matériel, intrants, élevage, transformation et logistique.')
    ON CONFLICT (slug) DO UPDATE SET 
        name = EXCLUDED.name,
        icon = EXCLUDED.icon, 
        description = EXCLUDED.description, 
        level = EXCLUDED.level
    RETURNING id INTO root_id;

    -- Si l'insert n'a rien retourné (cas où l'update ne renvoie rien parfois ou si conflict sans update), on récupère l'ID
    IF root_id IS NULL THEN
        SELECT id INTO root_id FROM public.categories WHERE slug = 'agriculture-agroalimentaire';
    END IF;

    -- Traductions Racine
    INSERT INTO public.category_translations (category_id, language_code, name, description)
    VALUES
        (root_id, 'fr', 'Agriculture & Agroalimentaire', 'Catégorie dédiée à l’agriculture et à l’agroalimentaire: matériel, intrants, élevage, transformation et logistique.'),
        (root_id, 'ar', 'الزراعة والأغذية الزراعية', 'فئة الزراعة والصناعات الغذائية: المعدات والمدخلات والتربية والمعالجة واللوجستيات.'),
        (root_id, 'en', 'Agriculture & Agri‑food', 'Agriculture and agri‑food: equipment, inputs, livestock, processing and logistics.'),
        (root_id, 'es', 'Agricultura y Agroalimentario', 'Categoría dedicada a la agricultura y el agroalimentario: maquinaria, insumos, ganadería, transformación y logística.'),
        (root_id, 'de', 'Landwirtschaft & Lebensmittelindustrie', 'Kategorie für Landwirtschaft und Lebensmittel: Geräte, Betriebsmittel, Viehzucht, Verarbeitung und Logistik.'),
        (root_id, 'it', 'Agricoltura & Agroalimentare', 'Categoria dedicata all’agricoltura e all’agroalimentare: attrezzature, input, allevamento, trasformazione e logistica.')
    ON CONFLICT (category_id, language_code) DO UPDATE SET 
        name = EXCLUDED.name, 
        description = EXCLUDED.description;

    -- 2. Sous-catégories (Niveau 1)
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active, description)
    SELECT v.slug, v.name, root_id, 1, v.sort_order, true, v.description
    FROM (VALUES
        ('materiel-agricole', 'Matériel agricole', 10, 'Machines et équipements pour travailler le sol, semer, récolter et manutentionner.'),
        ('outils-equipements-de-culture', 'Outils & équipements de culture', 20, 'Outils manuels et accessoires pour l’entretien des cultures et du jardin.'),
        ('systemes-irrigation', 'Systèmes d’irrigation', 30, 'Solutions d’arrosage et d’irrigation pour optimiser l’apport en eau.'),
        ('semences-plants', 'Semences & plants', 40, 'Semences, plants et bulbes pour cultures potagères, céréalières et arboricoles.'),
        ('engrais-fertilisants', 'Engrais & fertilisants', 50, 'Amendements et nutriments pour améliorer la fertilité des sols et la croissance.'),
        ('produits-phytosanitaires', 'Produits phytosanitaires', 60, 'Produits de protection des cultures et traitements biologiques.'),
        ('elevage-soins-animaux', 'Élevage & soins des animaux', 70, 'Alimentation, soins et équipements pour animaux d’élevage.'),
        ('materiel-elevage', 'Matériel d’élevage', 80, 'Matériel spécialisé pour l’élevage, la traite et la conservation.'),
        ('produits-agricoles-bruts', 'Produits agricoles bruts', 90, 'Produits agricoles non transformés issus des récoltes.'),
        ('produits-agroalimentaires-transformes', 'Produits agroalimentaires transformés', 100, 'Produits alimentaires transformés issus de l’agriculture.'),
        ('equipements-agroalimentaires', 'Équipements agroalimentaires', 110, 'Machines et équipements pour la transformation et l’emballage.'),
        ('serres-solutions-de-culture', 'Serres & solutions de culture', 120, 'Serres et systèmes techniques pour la culture contrôlée.'),
        ('amenagement-agricole', 'Aménagement agricole', 130, 'Équipements et fournitures pour l’infrastructure des exploitations.'),
        ('transport-logistique-agricole', 'Transport & logistique agricole', 140, 'Matériels de manutention, stockage et transport agricoles.'),
        ('equipement-ruchers-apiculture', 'Équipement ruchers & apiculture', 150, 'Matériel et consommables pour la conduite des ruchers.'),
        ('controle-sanitaire-outils-produits', 'Contrôle sanitaire, outils & produits', 160, 'Outils et produits pour l’hygiène et la biosécurité des cultures.'),
        ('accessoires-consommables', 'Accessoires & consommables', 170, 'Accessoires et consommables courants pour l’activité agricole.')
    ) AS v(slug, name, sort_order, description)
    ON CONFLICT (slug) DO UPDATE SET 
        name = EXCLUDED.name,
        parent_id = EXCLUDED.parent_id, 
        level = EXCLUDED.level, 
        description = EXCLUDED.description, 
        sort_order = EXCLUDED.sort_order;

    -- Traductions Sous-catégories (Niveau 1)
    INSERT INTO public.category_translations (category_id, language_code, name, description)
    SELECT c.id, v.language_code, v.name, v.description
    FROM public.categories c
    JOIN (VALUES
        -- materiel-agricole
        ('materiel-agricole','fr','Matériel agricole','Machines et équipements pour travailler le sol, semer, récolter et manutentionner.'),
        ('materiel-agricole','ar','معدات زراعية','آلات ومعدات لتهيئة التربة والبذر والحصاد والمناولة.'),
        ('materiel-agricole','en','Agricultural Equipment','Machinery and equipment for tillage, seeding, harvesting and handling.'),
        ('materiel-agricole','es','Maquinaria agrícola','Maquinaria y equipos para laboreo, siembra, cosecha y manipulación.'),
        ('materiel-agricole','de','Landwirtschaftliche Ausrüstung','Maschinen und Geräte für Bodenbearbeitung, Aussaat, Ernte und Handhabung.'),
        ('materiel-agricole','it','Attrezzature agricole','Macchinari e attrezzature per lavorazione del suolo, semina, raccolta e movimentazione.'),
        -- outils-equipements-de-culture
        ('outils-equipements-de-culture','fr','Outils & équipements de culture','Outils manuels et accessoires pour l’entretien des cultures et du jardin.'),
        ('outils-equipements-de-culture','ar','أدوات ومعدات الزراعة','أدوات يدوية ولوازم للعناية بالمحاصيل والبستنة.'),
        ('outils-equipements-de-culture','en','Cultivation tools & equipment','Hand tools and accessories for crop care and gardening.'),
        ('outils-equipements-de-culture','es','Herramientas & equipos de cultivo','Herramientas manuales y accesorios para el cuidado de cultivos y jardinería.'),
        ('outils-equipements-de-culture','de','Werkzeuge & Anbaugeräte','Handwerkzeuge und Zubehör für Pflege von Kulturen und Garten.'),
        ('outils-equipements-de-culture','it','Strumenti & attrezzature di coltivazione','Strumenti manuali e accessori per la cura delle colture e il giardinaggio.'),
        -- systemes-irrigation
        ('systemes-irrigation','fr','Systèmes d’irrigation','Solutions d’arrosage et d’irrigation pour optimiser l’apport en eau.'),
        ('systemes-irrigation','ar','أنظمة الري','حلول ري وسقي لتحسين إمداد المياه.'),
        ('systemes-irrigation','en','Irrigation systems','Irrigation and watering solutions to optimize water supply.'),
        ('systemes-irrigation','es','Sistemas de riego','Soluciones de riego y aspersión para optimizar el aporte de agua.'),
        ('systemes-irrigation','de','Bewässerungssysteme','Bewässerungs‑ und Gießlösungen zur Optimierung der Wasserversorgung.'),
        ('systemes-irrigation','it','Sistemi di irrigazione','Soluzioni di irrigazione e aspersione per ottimizzare l’apporto idrico.'),
        -- semences-plants
        ('semences-plants','fr','Semences & plants','Semences, plants et bulbes pour cultures potagères, céréalières et arboricoles.'),
        ('semences-plants','ar','بذور ونباتات','بذور وشتلات وبصيلات للمحاصيل الخضرية والحبوب والأشجار.'),
        ('semences-plants','en','Seeds & seedlings','Seeds, seedlings and bulbs for vegetable, cereal and tree crops.'),
        ('semences-plants','es','Semillas & plantones','Semillas, plantones y bulbos para cultivos hortícolas, cereales y arborícolas.'),
        ('semences-plants','de','Samen & Setzlinge','Samen, Setzlinge und Zwiebeln für Gemüse‑, Getreide‑ und Baumkulturen.'),
        ('semences-plants','it','Semi & piantine','Semi, piantine e bulbi per colture orticole, cerealicole e arboree.'),
        -- engrais-fertilisants
        ('engrais-fertilisants','fr','Engrais & fertilisants','Amendements et nutriments pour améliorer la fertilité des sols et la croissance.'),
        ('engrais-fertilisants','ar','أسمدة ومحسنات التربة','محسنات التربة ومغذيات لتحسين الخصوبة والنمو.'),
        ('engrais-fertilisants','en','Fertilizers & soil amendments','Soil amendments and nutrients to improve fertility and growth.'),
        ('engrais-fertilisants','es','Fertilizantes & enmiendas','Enmiendas del suelo y nutrientes para mejorar fertilidad y crecimiento.'),
        ('engrais-fertilisants','de','Dünger & Bodenverbesserer','Bodenverbesserer und Nährstoffe zur Erhöhung der Fruchtbarkeit und des Wachstums.'),
        ('engrais-fertilisants','it','Fertilizzanti & ammendanti','Ammendanti del suolo e nutrienti per migliorare fertilità e crescita.'),
        -- produits-phytosanitaires
        ('produits-phytosanitaires','fr','Produits phytosanitaires','Produits de protection des cultures et traitements biologiques.'),
        ('produits-phytosanitaires','ar','منتجات وقاية النبات','منتجات وقاية النباتات ومعالجات بيولوجية.'),
        ('produits-phytosanitaires','en','Crop protection products','Crop protection products and biological treatments.'),
        ('produits-phytosanitaires','es','Productos fitosanitarios','Productos de protección de cultivos y tratamientos biológicos.'),
        ('produits-phytosanitaires','de','Pflanzenschutzmittel','Pflanzenschutzmittel und biologische Behandlungen.'),
        ('produits-phytosanitaires','it','Prodotti fitosanitari','Prodotti per la protezione delle colture e trattamenti biologici.'),
        -- elevage-soins-animaux
        ('elevage-soins-animaux','fr','Élevage & soins des animaux','Alimentation, soins et équipements pour animaux d’élevage.'),
        ('elevage-soins-animaux','ar','تربية الحيوانات والعناية بها','أعلاف وعناية ومعدات لتربية الحيوانات.'),
        ('elevage-soins-animaux','en','Livestock & animal care','Feed, care and equipment for livestock.'),
        ('elevage-soins-animaux','es','Ganadería & cuidado animal','Alimentación, cuidados y equipos para ganado.'),
        ('elevage-soins-animaux','de','Viehzucht & Tierpflege','Futter, Pflege und Ausrüstung für Nutztiere.'),
        ('elevage-soins-animaux','it','Allevamento & cura degli animali','Alimentazione, cura e attrezzature per animali da allevamento.'),
        -- materiel-elevage
        ('materiel-elevage','fr','Matériel d’élevage','Matériel spécialisé pour l’élevage, la traite et la conservation.'),
        ('materiel-elevage','ar','معدات التربية','معدات متخصصة للتربية والحلب والتخزين.'),
        ('materiel-elevage','en','Livestock equipment','Specialized equipment for livestock, milking and storage.'),
        ('materiel-elevage','es','Equipos de ganadería','Equipamiento especializado para ganadería, ordeño y conservación.'),
        ('materiel-elevage','de','Ausrüstung für Viehzucht','Spezialisierte Ausrüstung für Viehzucht, Melken und Lagerung.'),
        ('materiel-elevage','it','Attrezzature per allevamento','Attrezzature specializzate per allevamento, mungitura e stoccaggio.'),
        -- produits-agricoles-bruts
        ('produits-agricoles-bruts','fr','Produits agricoles bruts','Produits agricoles non transformés issus des récoltes.'),
        ('produits-agricoles-bruts','ar','منتجات زراعية خام','منتجات زراعية خام من الحصاد.'),
        ('produits-agricoles-bruts','en','Raw agricultural products','Unprocessed agricultural products from harvests.'),
        ('produits-agricoles-bruts','es','Productos agrícolas brutos','Productos agrícolas sin transformar provenientes de las cosechas.'),
        ('produits-agricoles-bruts','de','Rohlandwirtschaftliche Produkte','Unverarbeitete landwirtschaftliche Erzeugnisse aus Ernten.'),
        ('produits-agricoles-bruts','it','Prodotti agricoli grezzi','Prodotti agricoli non trasformati provenienti dai raccolti.'),
        -- produits-agroalimentaires-transformes
        ('produits-agroalimentaires-transformes','fr','Produits agroalimentaires transformés','Produits alimentaires transformés issus de l’agriculture.'),
        ('produits-agroalimentaires-transformes','ar','منتجات غذائية مصنّعة','منتجات غذائية مصنّعة من أصل زراعي.'),
        ('produits-agroalimentaires-transformes','en','Processed agri‑food products','Processed agri‑food products derived from agriculture.'),
        ('produits-agroalimentaires-transformes','es','Productos agroalimentarios procesados','Productos alimentarios procesados de origen agrícola.'),
        ('produits-agroalimentaires-transformes','de','Verarbeitete Lebensmittelprodukte','Verarbeitete Lebensmittelprodukte landwirtschaftlichen Ursprungs.'),
        ('produits-agroalimentaires-transformes','it','Prodotti agroalimentari trasformati','Prodotti alimentari trasformati di origine agricola.'),
        -- equipements-agroalimentaires
        ('equipements-agroalimentaires','fr','Équipements agroalimentaires','Machines et équipements pour la transformation et l’emballage.'),
        ('equipements-agroalimentaires','ar','معدات الصناعات الغذائية','آلات ومعدات لمعالجة وتعبئة الأغذية.'),
        ('equipements-agroalimentaires','en','Agri‑food equipment','Machines and equipment for food processing and packaging.'),
        ('equipements-agroalimentaires','es','Equipamiento agroalimentario','Máquinas y equipos para procesamiento y envasado de alimentos.'),
        ('equipements-agroalimentaires','de','Lebensmitteltechnik','Maschinen und Geräte für Lebensmittelverarbeitung und Verpackung.'),
        ('equipements-agroalimentaires','it','Attrezzature agroalimentari','Macchinari e attrezzature per la trasformazione e il confezionamento.'),
        -- serres-solutions-de-culture
        ('serres-solutions-de-culture','fr','Serres & solutions de culture','Serres et systèmes techniques pour la culture contrôlée.'),
        ('serres-solutions-de-culture','ar','بيوت بلاستيكية وحلول زراعية','بيوت بلاستيكية وأنظمة تقنية للزراعة المحمية.'),
        ('serres-solutions-de-culture','en','Greenhouses & cultivation solutions','Greenhouses and technical systems for controlled cultivation.'),
        ('serres-solutions-de-culture','es','Invernaderos & soluciones de cultivo','Invernaderos y sistemas técnicos para el cultivo controlado.'),
        ('serres-solutions-de-culture','de','Gewächshäuser & Anbaulösungen','Gewächshäuser und technische Systeme für den kontrollierten Anbau.'),
        ('serres-solutions-de-culture','it','Serre & soluzioni di coltivazione','Serre e sistemi tecnici per la coltivazione controllata.'),
        -- amenagement-agricole
        ('amenagement-agricole','fr','Aménagement agricole','Équipements et fournitures pour l’infrastructure des exploitations.'),
        ('amenagement-agricole','ar','تهيئة زراعية','معدات ولوازم للبنية التحتية للمزارع.'),
        ('amenagement-agricole','en','Agricultural infrastructure','Equipment and supplies for farm infrastructure.'),
        ('amenagement-agricole','es','Infraestructura agrícola','Equipos y suministros para la infraestructura de las explotaciones.'),
        ('amenagement-agricole','de','Landwirtschaftliche Infrastruktur','Ausrüstung und Versorgung für die Infrastruktur von Betrieben.'),
        ('amenagement-agricole','it','Infrastrutture agricole','Attrezzature e forniture per l’infrastruttura delle aziende agricole.'),
        -- transport-logistique-agricole
        ('transport-logistique-agricole','fr','Transport & logistique agricole','Matériels de manutention, stockage et transport agricoles.'),
        ('transport-logistique-agricole','ar','نقل ولوجستيات زراعية','معدات مناولة وتخزين ونقل زراعي.'),
        ('transport-logistique-agricole','en','Agricultural transport & logistics','Handling, storage and agricultural transport equipment.'),
        ('transport-logistique-agricole','es','Transporte & logística agrícola','Equipos de manipulación, almacenamiento y transporte agrícola.'),
        ('transport-logistique-agricole','de','Landwirtschaftlicher Transport & Logistik','Material für Handhabung, Lagerung und landwirtschaftlichen Transport.'),
        ('transport-logistique-agricole','it','Trasporto & logistica agricola','Attrezzature per movimentazione, stoccaggio e trasporto agricolo.'),
        -- equipement-ruchers-apiculture
        ('equipement-ruchers-apiculture','fr','Équipement ruchers & apiculture','Matériel et consommables pour la conduite des ruchers.'),
        ('equipement-ruchers-apiculture','ar','معدات المناحل وتربية النحل','معدات ومستلزمات لإدارة المناحل.'),
        ('equipement-ruchers-apiculture','en','Beekeeping equipment','Equipment and consumables for apiary management.'),
        ('equipement-ruchers-apiculture','es','Apicultura & equipos','Material y consumibles para el manejo de colmenares.'),
        ('equipement-ruchers-apiculture','de','Imkereibedarf','Ausrüstung und Verbrauchsmaterialien für die Imkerei.'),
        ('equipement-ruchers-apiculture','it','Attrezzature per apicoltura','Materiali e materiali di consumo per la gestione degli apiari.'),
        -- controle-sanitaire-outils-produits
        ('controle-sanitaire-outils-produits','fr','Contrôle sanitaire, outils & produits','Outils et produits pour l’hygiène et la biosécurité des cultures.'),
        ('controle-sanitaire-outils-produits','ar','مراقبة صحية وأدوات','أدوات ومنتجات للنظافة والأمن الحيوي للمحاصيل.'),
        ('controle-sanitaire-outils-produits','en','Sanitary control tools & products','Tools and products for hygiene and biosecurity of crops.'),
        ('controle-sanitaire-outils-produits','es','Control sanitario & herramientas','Herramientas y productos para la higiene y bioseguridad de los cultivos.'),
        ('controle-sanitaire-outils-produits','de','Hygienekontrolle & Werkzeuge','Werkzeuge und Produkte für Hygiene und Biosicherheit von Kulturen.'),
        ('controle-sanitaire-outils-produits','it','Controllo sanitario & strumenti','Strumenti e prodotti per l’igiene e la biosicurezza delle colture.'),
        -- accessoires-consommables
        ('accessoires-consommables','fr','Accessoires & consommables','Accessoires et consommables courants pour l’activité agricole.'),
        ('accessoires-consommables','ar','إكسسوارات ومستهلكات','إكسسوارات ومواد مستهلكة شائعة للعمل الزراعي.'),
        ('accessoires-consommables','en','Accessories & consumables','Common accessories and consumables for farm operations.'),
        ('accessoires-consommables','es','Accesorios & consumibles','Accesorios y consumibles comunes para la actividad agrícola.'),
        ('accessoires-consommables','de','Zubehör & Verbrauchsmaterial','Häufige Zubehörteile und Verbrauchsmaterialien für landwirtschaftliche Tätigkeiten.'),
        ('accessoires-consommables','it','Accessori & consumabili','Accessori e materiali di consumo comuni per l’attività agricola.')
    ) AS v(slug, language_code, name, description) ON c.slug = v.slug
    ON CONFLICT (category_id, language_code) DO UPDATE SET 
        name = EXCLUDED.name,
        description = EXCLUDED.description;

    -- 3. Sous-catégories (Niveau 2)
    INSERT INTO public.categories (slug, name, parent_id, level, sort_order, is_active)
    SELECT 
        v.slug, 
        v.name, 
        p.id as parent_id, 
        2 as level, 
        v.sort_order, 
        true as is_active
    FROM (VALUES
        -- Parent: materiel-agricole
        ('tracteurs-agricoles', 'Tracteurs agricoles', 'materiel-agricole', 10),
        ('micro-tracteurs', 'Micro-tracteurs', 'materiel-agricole', 20),
        ('motoculteurs', 'Motoculteurs', 'materiel-agricole', 30),
        ('moissonneuses-batteuses', 'Moissonneuses-batteuses', 'materiel-agricole', 40),
        ('charrues', 'Charrues', 'materiel-agricole', 50),
        ('herses', 'Herses', 'materiel-agricole', 60),
        ('semoirs', 'Semoirs', 'materiel-agricole', 70),
        ('pulverisateurs-agricoles', 'Pulvérisateurs agricoles', 'materiel-agricole', 80),
        ('remorques-agricoles', 'Remorques agricoles', 'materiel-agricole', 90),
        ('broyeurs-agricoles', 'Broyeurs agricoles', 'materiel-agricole', 100),
        ('epandeurs-agricoles', 'Épandeurs agricoles', 'materiel-agricole', 110),
        ('tarieres-mecaniques', 'Tarières mécaniques', 'materiel-agricole', 120),
        ('presses-a-balles', 'Presses à balles', 'materiel-agricole', 130),
        ('elevateurs-agricoles', 'Élévateurs agricoles', 'materiel-agricole', 140),
        -- Parent: outils-equipements-de-culture
        ('beches', 'Bêches', 'outils-equipements-de-culture', 10),
        ('pelles', 'Pelles', 'outils-equipements-de-culture', 20),
        ('rateaux', 'Râteaux', 'outils-equipements-de-culture', 30),
        ('houes', 'Houes', 'outils-equipements-de-culture', 40),
        ('sarcleuses', 'Sarcleuses', 'outils-equipements-de-culture', 50),
        ('binettes', 'Binettes', 'outils-equipements-de-culture', 60),
        ('secateurs', 'Sécateurs', 'outils-equipements-de-culture', 70),
        ('cisailles', 'Cisailles', 'outils-equipements-de-culture', 80),
        ('arrosoirs', 'Arrosoirs', 'outils-equipements-de-culture', 90),
        ('pulverisateurs-manuels', 'Pulvérisateurs manuels', 'outils-equipements-de-culture', 100),
        ('brouettes', 'Brouettes', 'outils-equipements-de-culture', 110),
        ('gants-de-jardin', 'Gants de jardin', 'outils-equipements-de-culture', 120),
        ('lames-agricoles', 'Lames agricoles', 'outils-equipements-de-culture', 130),
        ('filets-de-recolte', 'Filets de récolte', 'outils-equipements-de-culture', 140),
        -- Parent: systemes-irrigation
        ('tuyaux-d-arrosage', 'Tuyaux d’arrosage', 'systemes-irrigation', 10),
        ('goutte-a-goutte', 'Goutte-à-goutte', 'systemes-irrigation', 20),
        ('programmateurs-irrigation', 'Programmateurs d’irrigation', 'systemes-irrigation', 30),
        ('aspersions', 'Aspersions', 'systemes-irrigation', 40),
        ('pompes-a-eau', 'Pompes à eau', 'systemes-irrigation', 50),
        ('motopompes', 'Motopompes', 'systemes-irrigation', 60),
        ('raccords-irrigation', 'Raccords d’irrigation', 'systemes-irrigation', 70),
        ('filtres-d-eau', 'Filtres d’eau', 'systemes-irrigation', 80),
        ('arroseurs', 'Arroseurs', 'systemes-irrigation', 90),
        ('reservoirs-d-eau', 'Réservoirs d’eau', 'systemes-irrigation', 100),
        -- Parent: semences-plants
        ('semences-potageres', 'Semences potagères', 'semences-plants', 10),
        ('semences-cerealieres', 'Semences céréalières', 'semences-plants', 20),
        ('semences-fourrageres', 'Semences fourragères', 'semences-plants', 30),
        ('plants-de-legumes', 'Plants de légumes', 'semences-plants', 40),
        ('plants-fruitiers', 'Plants fruitiers', 'semences-plants', 50),
        ('plants-d-arbres', 'Plants d’arbres', 'semences-plants', 60),
        ('graines-biologiques', 'Graines biologiques', 'semences-plants', 70),
        ('graines-hybrides', 'Graines hybrides', 'semences-plants', 80),
        ('bulbes', 'Bulbes', 'semences-plants', 90),
        ('jeunes-pousses', 'Jeunes pousses', 'semences-plants', 100),
        -- Parent: engrais-fertilisants
        ('engrais-chimiques', 'Engrais chimiques', 'engrais-fertilisants', 10),
        ('engrais-organiques', 'Engrais organiques', 'engrais-fertilisants', 20),
        ('compost', 'Compost', 'engrais-fertilisants', 30),
        ('fumiers', 'Fumiers', 'engrais-fertilisants', 40),
        ('amendements-calcaires', 'Amendements calcaires', 'engrais-fertilisants', 50),
        ('stimulateurs-de-croissance', 'Stimulateurs de croissance', 'engrais-fertilisants', 60),
        ('terreaux', 'Terreaux', 'engrais-fertilisants', 70),
        ('substrats-agricoles', 'Substrats agricoles', 'engrais-fertilisants', 80),
        ('additifs-nutritifs', 'Additifs nutritifs', 'engrais-fertilisants', 90),
        -- Parent: produits-phytosanitaires
        ('insecticides-agricoles', 'Insecticides agricoles', 'produits-phytosanitaires', 10),
        ('fongicides', 'Fongicides', 'produits-phytosanitaires', 20),
        ('herbicides', 'Herbicides', 'produits-phytosanitaires', 30),
        ('traitements-biologiques', 'Traitements biologiques', 'produits-phytosanitaires', 40),
        ('repulsifs-naturels', 'Répulsifs naturels', 'produits-phytosanitaires', 50),
        ('pieges-anti-nuisibles', 'Pièges anti-nuisibles', 'produits-phytosanitaires', 60),
        ('protections-pour-cultures', 'Protections pour cultures', 'produits-phytosanitaires', 70),
        -- Parent: elevage-soins-animaux
        ('aliments-pour-betail', 'Aliments pour bétail', 'elevage-soins-animaux', 10),
        ('aliments-pour-volailles', 'Aliments pour volailles', 'elevage-soins-animaux', 20),
        ('aliments-pour-ovins-caprins', 'Aliments pour ovins et caprins', 'elevage-soins-animaux', 30),
        ('complements-nutritionnels', 'Compléments nutritionnels', 'elevage-soins-animaux', 40),
        ('produits-veterinaires', 'Produits vétérinaires', 'elevage-soins-animaux', 50),
        ('mangeoires', 'Mangeoires', 'elevage-soins-animaux', 60),
        ('abreuvoirs', 'Abreuvoirs', 'elevage-soins-animaux', 70),
        ('clotures-electriques', 'Clôtures électriques', 'elevage-soins-animaux', 80),
        ('parcs-cages', 'Parcs et cages', 'elevage-soins-animaux', 90),
        ('couveuses', 'Couveuses', 'elevage-soins-animaux', 100),
        ('nichoirs', 'Nichoirs', 'elevage-soins-animaux', 110),
        ('equipements-de-traite', 'Équipements de traite', 'elevage-soins-animaux', 120),
        ('tondeuses-animales', 'Tondeuses animales', 'elevage-soins-animaux', 130),
        -- Parent: materiel-elevage
        ('machines-a-traire', 'Machines à traire', 'materiel-elevage', 10),
        ('tanks-a-lait', 'Tanks à lait', 'materiel-elevage', 20),
        ('broyeurs-a-grains', 'Broyeurs à grains', 'materiel-elevage', 30),
        ('distributeurs-automatiques-d-aliments', 'Distributeurs automatiques', 'materiel-elevage', 40),
        ('enrubanneuses', 'Enrubanneuses', 'materiel-elevage', 50),
        ('systemes-de-ventilation-elevage', 'Systèmes de ventilation', 'materiel-elevage', 60),
        ('tapis-d-elevage', 'Tapis d’élevage', 'materiel-elevage', 70),
        ('abris-metalliques', 'Abris métalliques', 'materiel-elevage', 80),
        -- Parent: produits-agricoles-bruts
        ('cereales-ble-orge-mais', 'Céréales (blé, orge, maïs)', 'produits-agricoles-bruts', 10),
        ('legumes-frais', 'Légumes frais', 'produits-agricoles-bruts', 20),
        ('fruits-de-saison', 'Fruits de saison', 'produits-agricoles-bruts', 30),
        ('herbes-aromatiques', 'Herbes aromatiques', 'produits-agricoles-bruts', 40),
        ('plantes-medicinales', 'Plantes médicinales', 'produits-agricoles-bruts', 50),
        ('fourrage', 'Fourrage', 'produits-agricoles-bruts', 60),
        ('foin', 'Foin', 'produits-agricoles-bruts', 70),
        ('luzerne', 'Luzerne', 'produits-agricoles-bruts', 80),
        ('paille', 'Paille', 'produits-agricoles-bruts', 90),
        -- Parent: produits-agroalimentaires-transformes
        ('farine', 'Farine', 'produits-agroalimentaires-transformes', 10),
        ('couscous', 'Couscous', 'produits-agroalimentaires-transformes', 20),
        ('semoule', 'Semoule', 'produits-agroalimentaires-transformes', 30),
        ('huile-d-olive', 'Huile d’olive', 'produits-agroalimentaires-transformes', 40),
        ('huiles-vegetales', 'Huiles végétales', 'produits-agroalimentaires-transformes', 50),
        ('conserves', 'Conserves', 'produits-agroalimentaires-transformes', 60),
        ('confitures', 'Confitures', 'produits-agroalimentaires-transformes', 70),
        ('produits-laitiers', 'Produits laitiers', 'produits-agroalimentaires-transformes', 80),
        ('fromages', 'Fromages', 'produits-agroalimentaires-transformes', 90),
        ('miel', 'Miel', 'produits-agroalimentaires-transformes', 100),
        ('dattes', 'Dattes', 'produits-agroalimentaires-transformes', 110),
        ('produits-secs', 'Produits secs', 'produits-agroalimentaires-transformes', 120),
        ('legumineuses', 'Légumineuses', 'produits-agroalimentaires-transformes', 130),
        -- Parent: equipements-agroalimentaires
        ('moulins-agro', 'Moulins', 'equipements-agroalimentaires', 10),
        ('concasseurs', 'Concasseurs', 'equipements-agroalimentaires', 20),
        ('presses-a-huile', 'Presses à huile', 'equipements-agroalimentaires', 30),
        ('petrins', 'Pétrins', 'equipements-agroalimentaires', 40),
        ('machines-d-emballage', 'Machines d’emballage', 'equipements-agroalimentaires', 50),
        ('pasteurisateurs', 'Pasteurisateurs', 'equipements-agroalimentaires', 60),
        ('machines-de-transformation', 'Machines de transformation', 'equipements-agroalimentaires', 70),
        ('sterilisateurs', 'Stérilisateurs', 'equipements-agroalimentaires', 80),
        ('broyeurs-alimentaires', 'Broyeurs alimentaires', 'equipements-agroalimentaires', 90),
        -- Parent: serres-solutions-de-culture
        ('serres-tunnel', 'Serres tunnel', 'serres-solutions-de-culture', 10),
        ('serres-metalliques', 'Serres métalliques', 'serres-solutions-de-culture', 20),
        ('baches-de-serre', 'Bâches de serre', 'serres-solutions-de-culture', 30),
        ('systemes-hydroponiques', 'Systèmes hydroponiques', 'serres-solutions-de-culture', 40),
        ('systemes-aquaponiques', 'Systèmes aquaponiques', 'serres-solutions-de-culture', 50),
        ('lampes-horticoles', 'Lampes horticoles', 'serres-solutions-de-culture', 60),
        ('tables-de-culture', 'Tables de culture', 'serres-solutions-de-culture', 70),
        ('capteurs-d-humidite', 'Capteurs d’humidité', 'serres-solutions-de-culture', 80),
        -- Parent: amenagement-agricole
        ('clotures-metalliques', 'Clôtures métalliques', 'amenagement-agricole', 10),
        ('grillages', 'Grillages', 'amenagement-agricole', 20),
        ('baches-agricoles', 'Bâches agricoles', 'amenagement-agricole', 30),
        ('filets-d-ombrage', 'Filets d’ombrage', 'amenagement-agricole', 40),
        ('paillages', 'Paillages', 'amenagement-agricole', 50),
        ('tuteurs', 'Tuteurs', 'amenagement-agricole', 60),
        ('piquets', 'Piquets', 'amenagement-agricole', 70),
        ('abris-agricoles', 'Abris agricoles', 'amenagement-agricole', 80),
        ('hangars-demontables', 'Hangars démontables', 'amenagement-agricole', 90),
        -- Parent: transport-logistique-agricole
        ('sacs-de-stockage', 'Sacs de stockage', 'transport-logistique-agricole', 10),
        ('big-bags', 'Big-bags', 'transport-logistique-agricole', 20),
        ('caisses-de-recolte', 'Caisses de récolte', 'transport-logistique-agricole', 30),
        ('palettes', 'Palettes', 'transport-logistique-agricole', 40),
        ('conteneurs', 'Conteneurs', 'transport-logistique-agricole', 50),
        ('charrettes-agricoles', 'Charrettes agricoles', 'transport-logistique-agricole', 60),
        ('bennes-basculantes', 'Bennes basculantes', 'transport-logistique-agricole', 70),
        -- Parent: equipement-ruchers-apiculture
        ('ruches', 'Ruches', 'equipement-ruchers-apiculture', 10),
        ('cadres-de-ruche', 'Cadres de ruche', 'equipement-ruchers-apiculture', 20),
        ('cire-gaufree', 'Cire gaufrée', 'equipement-ruchers-apiculture', 30),
        ('enfumoirs', 'Enfumoirs', 'equipement-ruchers-apiculture', 40),
        ('extracteurs-de-miel', 'Extracteurs de miel', 'equipement-ruchers-apiculture', 50),
        ('equipements-apiculteurs', 'Équipements apiculteurs', 'equipement-ruchers-apiculture', 60),
        ('pieges-a-essaims', 'Pièges à essaims', 'equipement-ruchers-apiculture', 70),
        -- Parent: controle-sanitaire-outils-produits
        ('desinfectants-agricoles', 'Désinfectants agricoles', 'controle-sanitaire-outils-produits', 10),
        ('pulverisateurs-sanitaires', 'Pulvérisateurs sanitaires', 'controle-sanitaire-outils-produits', 20),
        ('pieges-a-insectes', 'Pièges à insectes', 'controle-sanitaire-outils-produits', 30),
        ('filets-anti-oiseaux', 'Filets anti-oiseaux', 'controle-sanitaire-outils-produits', 40),
        ('systemes-protection-cultures', 'Systèmes de protection', 'controle-sanitaire-outils-produits', 50),
        ('stations-meteo-agricoles', 'Stations météo agricoles', 'controle-sanitaire-outils-produits', 60),
        -- Parent: accessoires-consommables
        ('ficelles-agricoles', 'Ficelles agricoles', 'accessoires-consommables', 10),
        ('cordages', 'Cordages', 'accessoires-consommables', 20),
        ('sangles', 'Sangles', 'accessoires-consommables', 30),
        ('attaches-pour-plants', 'Attaches pour plants', 'accessoires-consommables', 40),
        ('boites-d-emballage', 'Boîtes d’emballage', 'accessoires-consommables', 50),
        ('sacs-alimentaires', 'Sacs alimentaires', 'accessoires-consommables', 60),
        ('etiquettes-agricoles', 'Étiquettes agricoles', 'accessoires-consommables', 70)
    ) AS v(slug, name, parent_slug, sort_order)
    JOIN public.categories p ON p.slug = v.parent_slug
    ON CONFLICT (slug) DO UPDATE SET 
        name = EXCLUDED.name,
        parent_id = EXCLUDED.parent_id, 
        level = EXCLUDED.level, 
        sort_order = EXCLUDED.sort_order;

    -- Traductions Sous-catégories (Niveau 2)
    INSERT INTO public.category_translations (category_id, language_code, name)
    SELECT c.id, v.language_code, v.name
    FROM public.categories c
    JOIN (VALUES
        -- materiel-agricole (Level 2)
        ('tracteurs-agricoles','fr','Tracteurs agricoles'), ('tracteurs-agricoles','ar','جرارات زراعية'), ('tracteurs-agricoles','en','Agricultural tractors'), ('tracteurs-agricoles','es','Tractores agrícolas'), ('tracteurs-agricoles','de','Landwirtschaftliche Traktoren'), ('tracteurs-agricoles','it','Trattori agricoli'),
        ('micro-tracteurs','fr','Micro-tracteurs'), ('micro-tracteurs','ar','جرارات صغيرة'), ('micro-tracteurs','en','Micro‑tractors'), ('micro-tracteurs','es','Microtractores'), ('micro-tracteurs','de','Kleintraktoren'), ('micro-tracteurs','it','Microtrattori'),
        ('motoculteurs','fr','Motoculteurs'), ('motoculteurs','ar','محاريث آلية'), ('motoculteurs','en','Tillers'), ('motoculteurs','es','Motoazadas'), ('motoculteurs','de','Motorhacken'), ('motoculteurs','it','Motocoltivatori'),
        ('moissonneuses-batteuses','fr','Moissonneuses-batteuses'), ('moissonneuses-batteuses','ar','حصادات'), ('moissonneuses-batteuses','en','Combine harvesters'), ('moissonneuses-batteuses','es','Cosechadoras'), ('moissonneuses-batteuses','de','Mähdrescher'), ('moissonneuses-batteuses','it','Mietitrebbie'),
        ('charrues','fr','Charrues'), ('charrues','ar','محاريث'), ('charrues','en','Ploughs'), ('charrues','es','Arados'), ('charrues','de','Pflüge'), ('charrues','it','Aratri'),
        ('herses','fr','Herses'), ('herses','ar','أمشاط زراعية'), ('herses','en','Harrows'), ('herses','es','Gradas'), ('herses','de','Eggen'), ('herses','it','Erpici'),
        ('semoirs','fr','Semoirs'), ('semoirs','ar','بذارات'), ('semoirs','en','Seeders'), ('semoirs','es','Sembradoras'), ('semoirs','de','Sämaschinen'), ('semoirs','it','Seminatrici'),
        ('pulverisateurs-agricoles','fr','Pulvérisateurs agricoles'), ('pulverisateurs-agricoles','ar','مرشات زراعية'), ('pulverisateurs-agricoles','en','Agricultural sprayers'), ('pulverisateurs-agricoles','es','Pulverizadores agrícolas'), ('pulverisateurs-agricoles','de','Landwirtschaftliche Sprühgeräte'), ('pulverisateurs-agricoles','it','Irroratrici agricole'),
        ('remorques-agricoles','fr','Remorques agricoles'), ('remorques-agricoles','ar','مقطورات زراعية'), ('remorques-agricoles','en','Agricultural trailers'), ('remorques-agricoles','es','Remolques agrícolas'), ('remorques-agricoles','de','Landwirtschaftliche Anhänger'), ('remorques-agricoles','it','Rimorchi agricoli'),
        ('broyeurs-agricoles','fr','Broyeurs agricoles'), ('broyeurs-agricoles','ar','فرّامات'), ('broyeurs-agricoles','en','Shredders'), ('broyeurs-agricoles','es','Trituradoras'), ('broyeurs-agricoles','de','Häcksler'), ('broyeurs-agricoles','it','Trituratori'),
        ('epandeurs-agricoles','fr','Épandeurs agricoles'), ('epandeurs-agricoles','ar','موزعات'), ('epandeurs-agricoles','en','Spreaders'), ('epandeurs-agricoles','es','Esparcidores'), ('epandeurs-agricoles','de','Streuer'), ('epandeurs-agricoles','it','Spandiconcime'),
        ('tarieres-mecaniques','fr','Tarières mécaniques'), ('tarieres-mecaniques','ar','مثاقب ميكانيكية'), ('tarieres-mecaniques','en','Mechanical augers'), ('tarieres-mecaniques','es','Barrenas mecánicas'), ('tarieres-mecaniques','de','Mechanische Erdbohrer'), ('tarieres-mecaniques','it','Trivelle meccaniche'),
        ('presses-a-balles','fr','Presses à balles'), ('presses-a-balles','ar','مكابس بالات'), ('presses-a-balles','en','Bale presses'), ('presses-a-balles','es','Prensas de pacas'), ('presses-a-balles','de','Ballenpressen'), ('presses-a-balles','it','Presse per balle'),
        ('elevateurs-agricoles','fr','Élévateurs agricoles'), ('elevateurs-agricoles','ar','رافعات زراعية'), ('elevateurs-agricoles','en','Agricultural elevators'), ('elevateurs-agricoles','es','Elevadores agrícolas'), ('elevateurs-agricoles','de','Landwirtschaftliche Aufzüge'), ('elevateurs-agricoles','it','Sollevatori agricoli'),
        
        -- outils-equipements-de-culture (Level 2)
        ('beches','fr','Bêches'), ('beches','ar','معاول'), ('beches','en','Spades'), ('beches','es','Palas de punta'), ('beches','de','Spaten'), ('beches','it','Zappe a punta'),
        ('pelles','fr','Pelles'), ('pelles','ar','مجارف'), ('pelles','en','Shovels'), ('pelles','es','Palas'), ('pelles','de','Schaufeln'), ('pelles','it','Pale'),
        ('rateaux','fr','Râteaux'), ('rateaux','ar','أمشاط'), ('rateaux','en','Rakes'), ('rateaux','es','Rastrillos'), ('rateaux','de','Rechen'), ('rateaux','it','Rastrelli'),
        ('houes','fr','Houes'), ('houes','ar','معازق'), ('houes','en','Hoes'), ('houes','es','Azadas'), ('houes','de','Hacken'), ('houes','it','Zappe'),
        ('sarcleuses','fr','Sarcleuses'), ('sarcleuses','ar','أدوات إزالة الأعشاب'), ('sarcleuses','en','Weeders'), ('sarcleuses','es','Escardadoras'), ('sarcleuses','de','Jätemaschinen'), ('sarcleuses','it','Sarchiatrici'),
        ('binettes','fr','Binettes'), ('binettes','ar','معاول يدوية'), ('binettes','en','Hand hoes'), ('binettes','es','Azadas manuales'), ('binettes','de','Handhacken'), ('binettes','it','Zappe manuali'),
        ('secateurs','fr','Sécateurs'), ('secateurs','ar','مقصات تقليم'), ('secateurs','en','Pruning shears'), ('secateurs','es','Tijeras de poda'), ('secateurs','de','Gartenscheren'), ('secateurs','it','Cesoie da potatura'),
        ('cisailles','fr','Cisailles'), ('cisailles','ar','مقصات حدائق'), ('cisailles','en','Loppers'), ('cisailles','es','Podadoras de brazo'), ('cisailles','de','Astscheren'), ('cisailles','it','Cesoie lunghe'),
        ('arrosoirs','fr','Arrosoirs'), ('arrosoirs','ar','أوعية سقي'), ('arrosoirs','en','Watering cans'), ('arrosoirs','es','Regaderas'), ('arrosoirs','de','Gießkannen'), ('arrosoirs','it','Annaffiatoi'),
        ('pulverisateurs-manuels','fr','Pulvérisateurs manuels'), ('pulverisateurs-manuels','ar','مرشات يدوية'), ('pulverisateurs-manuels','en','Hand sprayers'), ('pulverisateurs-manuels','es','Pulverizadores manuales'), ('pulverisateurs-manuels','de','Handsprühgeräte'), ('pulverisateurs-manuels','it','Irroratrici manuali'),
        ('brouettes','fr','Brouettes'), ('brouettes','ar','عربات يد'), ('brouettes','en','Wheelbarrows'), ('brouettes','es','Carretillas'), ('brouettes','de','Schubkarren'), ('brouettes','it','Carriole'),
        ('gants-de-jardin','fr','Gants de jardin'), ('gants-de-jardin','ar','قفازات حدائق'), ('gants-de-jardin','en','Garden gloves'), ('gants-de-jardin','es','Guantes de jardín'), ('gants-de-jardin','de','Gartenhandschuhe'), ('gants-de-jardin','it','Guanti da giardinaggio'),
        ('lames-agricoles','fr','Lames agricoles'), ('lames-agricoles','ar','شفرات زراعية'), ('lames-agricoles','en','Agricultural blades'), ('lames-agricoles','es','Cuchillas agrícolas'), ('lames-agricoles','de','Landwirtschaftliche Klingen'), ('lames-agricoles','it','Lame agricole'),
        ('filets-de-recolte','fr','Filets de récolte'), ('filets-de-recolte','ar','شبكات حصاد'), ('filets-de-recolte','en','Harvest nets'), ('filets-de-recolte','es','Redes de cosecha'), ('filets-de-recolte','de','Erntenetze'), ('filets-de-recolte','it','Reti da raccolta'),
        
        -- systemes-irrigation (Level 2)
        ('tuyaux-d-arrosage','fr','Tuyaux d’arrosage'), ('tuyaux-d-arrosage','ar','خراطيم سقي'), ('tuyaux-d-arrosage','en','Watering hoses'), ('tuyaux-d-arrosage','es','Mangueras de riego'), ('tuyaux-d-arrosage','de','Gartenschläuche'), ('tuyaux-d-arrosage','it','Tubi per irrigazione'),
        ('goutte-a-goutte','fr','Goutte-à-goutte'), ('goutte-a-goutte','ar','الري بالتنقيط'), ('goutte-a-goutte','en','Drip systems'), ('goutte-a-goutte','es','Sistemas de goteo'), ('goutte-a-goutte','de','Tropfbewässerung'), ('goutte-a-goutte','it','Sistemi a goccia'),
        ('programmateurs-irrigation','fr','Programmateurs d’irrigation'), ('programmateurs-irrigation','ar','مبرمجات الري'), ('programmateurs-irrigation','en','Irrigation timers'), ('programmateurs-irrigation','es','Programadores de riego'), ('programmateurs-irrigation','de','Bewässerungscomputer'), ('programmateurs-irrigation','it','Programmatori di irrigazione'),
        ('aspersions','fr','Aspersions'), ('aspersions','ar','رشاشات'), ('aspersions','en','Sprinklers'), ('aspersions','es','Aspersores'), ('aspersions','de','Sprinkler'), ('aspersions','it','Aspersori'),
        ('pompes-a-eau','fr','Pompes à eau'), ('pompes-a-eau','ar','مضخات مياه'), ('pompes-a-eau','en','Water pumps'), ('pompes-a-eau','es','Bombas de agua'), ('pompes-a-eau','de','Wasserpumpen'), ('pompes-a-eau','it','Pompe idrauliche'),
        ('motopompes','fr','Motopompes'), ('motopompes','ar','مضخات محركة'), ('motopompes','en','Motor pumps'), ('motopompes','es','Motobombas'), ('motopompes','de','Motorpumpen'), ('motopompes','it','Motopompe'),
        ('raccords-irrigation','fr','Raccords d’irrigation'), ('raccords-irrigation','ar','وصلات الري'), ('raccords-irrigation','en','Irrigation fittings'), ('raccords-irrigation','es','Conexiones de riego'), ('raccords-irrigation','de','Bewässerungsanschlüsse'), ('raccords-irrigation','it','Raccordi per irrigazione'),
        ('filtres-d-eau','fr','Filtres d’eau'), ('filtres-d-eau','ar','مرشحات مياه'), ('filtres-d-eau','en','Water filters'), ('filtres-d-eau','es','Filtros de agua'), ('filtres-d-eau','de','Wasserfilter'), ('filtres-d-eau','it','Filtri per acqua'),
        ('arroseurs','fr','Arroseurs'), ('arroseurs','ar','مرشات'), ('arroseurs','en','Sprayers'), ('arroseurs','es','Rociadores'), ('arroseurs','de','Sprüher'), ('arroseurs','it','Irrigatori'),
        ('reservoirs-d-eau','fr','Réservoirs d’eau'), ('reservoirs-d-eau','ar','خزانات مياه'), ('reservoirs-d-eau','en','Water tanks'), ('reservoirs-d-eau','es','Depósitos de agua'), ('reservoirs-d-eau','de','Wassertanks'), ('reservoirs-d-eau','it','Serbatoi d’acqua'),

        -- semences-plants (Level 2)
        ('semences-potageres','fr','Semences potagères'), ('semences-potageres','ar','بذور خضر'), ('semences-potageres','en','Vegetable seeds'), ('semences-potageres','es','Semillas de huerto'), ('semences-potageres','de','Gemüsesamen'), ('semences-potageres','it','Semi di ortaggi'),
        ('semences-cerealieres','fr','Semences céréalières'), ('semences-cerealieres','ar','بذور حبوب'), ('semences-cerealieres','en','Cereal seeds'), ('semences-cerealieres','es','Semillas de cereales'), ('semences-cerealieres','de','Getreidesamen'), ('semences-cerealieres','it','Semi di cereali'),
        ('semences-fourrageres','fr','Semences fourragères'), ('semences-fourrageres','ar','بذور أعلاف'), ('semences-fourrageres','en','Forage seeds'), ('semences-fourrageres','es','Semillas forrajeras'), ('semences-fourrageres','de','Futtersamen'), ('semences-fourrageres','it','Semi da foraggio'),
        ('plants-de-legumes','fr','Plants de légumes'), ('plants-de-legumes','ar','شتلات خضر'), ('plants-de-legumes','en','Vegetable seedlings'), ('plants-de-legumes','es','Plantones de verduras'), ('plants-de-legumes','de','Gemüsepflanzen'), ('plants-de-legumes','it','Piantine di ortaggi'),
        ('plants-fruitiers','fr','Plants fruitiers'), ('plants-fruitiers','ar','شتلات فواكه'), ('plants-fruitiers','en','Fruit tree seedlings'), ('plants-fruitiers','es','Plantones de frutales'), ('plants-fruitiers','de','Obstpflanzen'), ('plants-fruitiers','it','Piantine da frutto'),
        ('plants-d-arbres','fr','Plants d’arbres'), ('plants-d-arbres','ar','شتلات أشجار'), ('plants-d-arbres','en','Tree seedlings'), ('plants-d-arbres','es','Plantones de árboles'), ('plants-d-arbres','de','Baumsetzlinge'), ('plants-d-arbres','it','Piantine di alberi'),
        ('graines-biologiques','fr','Graines biologiques'), ('graines-biologiques','ar','بذور عضوية'), ('graines-biologiques','en','Organic seeds'), ('graines-biologiques','es','Semillas orgánicas'), ('graines-biologiques','de','Bio-Samen'), ('graines-biologiques','it','Semi biologici'),
        ('graines-hybrides','fr','Graines hybrides'), ('graines-hybrides','ar','بذور هجينة'), ('graines-hybrides','en','Hybrid seeds'), ('graines-hybrides','es','Semillas híbridas'), ('graines-hybrides','de','Hybridsamen'), ('graines-hybrides','it','Semi ibridi'),
        ('bulbes','fr','Bulbes'), ('bulbes','ar','بصيلات'), ('bulbes','en','Bulbs'), ('bulbes','es','Bulbos'), ('bulbes','de','Blumenzwiebeln'), ('bulbes','it','Bulbi'),
        ('jeunes-pousses','fr','Jeunes pousses'), ('jeunes-pousses','ar','براعم صغيرة'), ('jeunes-pousses','en','Seedlings'), ('jeunes-pousses','es','Brotes jóvenes'), ('jeunes-pousses','de','Setzlinge'), ('jeunes-pousses','it','Germogli'),

        -- engrais-fertilisants (Level 2)
        ('engrais-chimiques','fr','Engrais chimiques'), ('engrais-chimiques','ar','أسمدة كيميائية'), ('engrais-chimiques','en','Chemical fertilizers'), ('engrais-chimiques','es','Fertilizantes químicos'), ('engrais-chimiques','de','Chemische Düngemittel'), ('engrais-chimiques','it','Fertilizzanti chimici'),
        ('engrais-organiques','fr','Engrais organiques'), ('engrais-organiques','ar','أسمدة عضوية'), ('engrais-organiques','en','Organic fertilizers'), ('engrais-organiques','es','Fertilizantes orgánicos'), ('engrais-organiques','de','Organische Düngemittel'), ('engrais-organiques','it','Fertilizzanti organici'),
        ('compost','fr','Compost'), ('compost','ar','كمبوست'), ('compost','en','Compost'), ('compost','es','Compost'), ('compost','de','Kompost'), ('compost','it','Compost'),
        ('fumiers','fr','Fumiers'), ('fumiers','ar','سماد حيواني'), ('fumiers','en','Manure'), ('fumiers','es','Estiércol'), ('fumiers','de','Mist'), ('fumiers','it','Letame'),
        ('amendements-calcaires','fr','Amendements calcaires'), ('amendements-calcaires','ar','محسنات كلسية'), ('amendements-calcaires','en','Lime amendments'), ('amendements-calcaires','es','Enmiendas calcáreas'), ('amendements-calcaires','de','Kalkdüngung'), ('amendements-calcaires','it','Ammendanti calcarei'),
        ('stimulateurs-de-croissance','fr','Stimulateurs de croissance'), ('stimulateurs-de-croissance','ar','محفزات نمو'), ('stimulateurs-de-croissance','en','Growth stimulators'), ('stimulateurs-de-croissance','es','Estimuladores de crecimiento'), ('stimulateurs-de-croissance','de','Wachstumsstimulatoren'), ('stimulateurs-de-croissance','it','Stimolatori di crescita'),
        ('terreaux','fr','Terreaux'), ('terreaux','ar','تربة زراعية'), ('terreaux','en','Potting soil'), ('terreaux','es','Sustrato para macetas'), ('terreaux','de','Blumenerde'), ('terreaux','it','Terriccio'),
        ('substrats-agricoles','fr','Substrats agricoles'), ('substrats-agricoles','ar','ركائز زراعية'), ('substrats-agricoles','en','Agricultural substrates'), ('substrats-agricoles','es','Sustratos agrícolas'), ('substrats-agricoles','de','Landwirtschaftliche Substrate'), ('substrats-agricoles','it','Substrati agricoli'),
        ('additifs-nutritifs','fr','Additifs nutritifs'), ('additifs-nutritifs','ar','مضافات غذائية'), ('additifs-nutritifs','en','Nutrient additives'), ('additifs-nutritifs','es','Aditivos nutritivos'), ('additifs-nutritifs','de','Nährstoffzusätze'), ('additifs-nutritifs','it','Additivi nutritivi'),

        -- produits-phytosanitaires (Level 2)
        ('insecticides-agricoles','fr','Insecticides agricoles'), ('insecticides-agricoles','ar','مبيدات حشرية زراعية'), ('insecticides-agricoles','en','Agricultural insecticides'), ('insecticides-agricoles','es','Insecticidas agrícolas'), ('insecticides-agricoles','de','Landwirtschaftliche Insektizide'), ('insecticides-agricoles','it','Insetticidi agricoli'),
        ('fongicides','fr','Fongicides'), ('fongicides','ar','مبيدات فطرية'), ('fongicides','en','Fungicides'), ('fongicides','es','Fungicidas'), ('fongicides','de','Fungizide'), ('fongicides','it','Fungicidi'),
        ('herbicides','fr','Herbicides'), ('herbicides','ar','مبيدات أعشاب'), ('herbicides','en','Herbicides'), ('herbicides','es','Herbicidas'), ('herbicides','de','Herbizide'), ('herbicides','it','Erbicidi'),
        ('traitements-biologiques','fr','Traitements biologiques'), ('traitements-biologiques','ar','معالجات بيولوجية'), ('traitements-biologiques','en','Biological treatments'), ('traitements-biologiques','es','Tratamientos biológicos'), ('traitements-biologiques','de','Biologische Behandlungen'), ('traitements-biologiques','it','Trattamenti biologici'),
        ('repulsifs-naturels','fr','Répulsifs naturels'), ('repulsifs-naturels','ar','مواد طاردة طبيعية'), ('repulsifs-naturels','en','Natural repellents'), ('repulsifs-naturels','es','Repelentes naturales'), ('repulsifs-naturels','de','Natürliche Abwehrmittel'), ('repulsifs-naturels','it','Repellenti naturali'),
        ('pieges-anti-nuisibles','fr','Pièges anti-nuisibles'), ('pieges-anti-nuisibles','ar','مصائد للآفات'), ('pieges-anti-nuisibles','en','Pest traps'), ('pieges-anti-nuisibles','es','Trampas para plagas'), ('pieges-anti-nuisibles','de','Schädlingsfallen'), ('pieges-anti-nuisibles','it','Trappole per parassiti'),
        ('protections-pour-cultures','fr','Protections pour cultures'), ('protections-pour-cultures','ar','وسائل حماية المحاصيل'), ('protections-pour-cultures','en','Crop protection systems'), ('protections-pour-cultures','es','Sistemas de protección de cultivos'), ('protections-pour-cultures','de','Kulturschutzsysteme'), ('protections-pour-cultures','it','Sistemi di protezione delle colture'),

        -- elevage-soins-animaux (Level 2)
        ('aliments-pour-betail','fr','Aliments pour bétail'), ('aliments-pour-betail','ar','أعلاف الماشية'), ('aliments-pour-betail','en','Cattle feed'), ('aliments-pour-betail','es','Alimentos para ganado'), ('aliments-pour-betail','de','Viehfutter'), ('aliments-pour-betail','it','Mangimi per bestiame'),
        ('aliments-pour-volailles','fr','Aliments pour volailles'), ('aliments-pour-volailles','ar','أعلاف الدواجن'), ('aliments-pour-volailles','en','Poultry feed'), ('aliments-pour-volailles','es','Alimentos para aves'), ('aliments-pour-volailles','de','Geflügelfutter'), ('aliments-pour-volailles','it','Mangimi per pollame'),
        ('aliments-pour-ovins-caprins','fr','Aliments pour ovins et caprins'), ('aliments-pour-ovins-caprins','ar','أعلاف الأغنام والماعز'), ('aliments-pour-ovins-caprins','en','Sheep & goats feed'), ('aliments-pour-ovins-caprins','es','Alimentos para ovinos y caprinos'), ('aliments-pour-ovins-caprins','de','Schaf- und Ziegenfutter'), ('aliments-pour-ovins-caprins','it','Mangimi per ovini e caprini'),
        ('complements-nutritionnels','fr','Compléments nutritionnels'), ('complements-nutritionnels','ar','مكملات غذائية'), ('complements-nutritionnels','en','Nutritional supplements'), ('complements-nutritionnels','es','Complementos nutricionales'), ('complements-nutritionnels','de','Nahrungsergänzungsmittel'), ('complements-nutritionnels','it','Integratori alimentari'),
        ('produits-veterinaires','fr','Produits vétérinaires'), ('produits-veterinaires','ar','منتجات بيطرية'), ('produits-veterinaires','en','Veterinary products'), ('produits-veterinaires','es','Productos veterinarios'), ('produits-veterinaires','de','Veterinärprodukte'), ('produits-veterinaires','it','Prodotti veterinari'),
        ('mangeoires','fr','Mangeoires'), ('mangeoires','ar','مغذات'), ('mangeoires','en','Feeders'), ('mangeoires','es','Comederos'), ('mangeoires','de','Futtertröge'), ('mangeoires','it','Mangiatoie'),
        ('abreuvoirs','fr','Abreuvoirs'), ('abreuvoirs','ar','مساقي'), ('abreuvoirs','en','Waterers'), ('abreuvoirs','es','Bebederos'), ('abreuvoirs','de','Tränken'), ('abreuvoirs','it','Abbeveratoi'),
        ('clotures-electriques','fr','Clôtures électriques'), ('clotures-electriques','ar','أسوار كهربائية'), ('clotures-electriques','en','Electric fences'), ('clotures-electriques','es','Vallas eléctricas'), ('clotures-electriques','de','Elektrozäune'), ('clotures-electriques','it','Recinti elettrici'),
        ('parcs-cages','fr','Parcs et cages'), ('parcs-cages','ar','حظائر وأقفاص'), ('parcs-cages','en','Pens & cages'), ('parcs-cages','es','Parques y jaulas'), ('parcs-cages','de','Ställe und Käfige'), ('parcs-cages','it','Recinti e gabbie'),
        ('couveuses','fr','Couveuses'), ('couveuses','ar','حاضنات'), ('couveuses','en','Incubators'), ('couveuses','es','Incubadoras'), ('couveuses','de','Brutkästen'), ('couveuses','it','Incubatrici'),
        ('nichoirs','fr','Nichoirs'), ('nichoirs','ar','بيوت طيور'), ('nichoirs','en','Nest boxes'), ('nichoirs','es','Cajas nido'), ('nichoirs','de','Nistkästen'), ('nichoirs','it','Nidi artificiali'),
        ('equipements-de-traite','fr','Équipements de traite'), ('equipements-de-traite','ar','معدات الحلب'), ('equipements-de-traite','en','Milking equipment'), ('equipements-de-traite','es','Equipos de ordeño'), ('equipements-de-traite','de','Melkausrüstung'), ('equipements-de-traite','it','Attrezzature per mungitura'),
        ('tondeuses-animales','fr','Tondeuses animales'), ('tondeuses-animales','ar','ماكينات جز'), ('tondeuses-animales','en','Animal clippers'), ('tondeuses-animales','es','Máquinas de esquilar'), ('tondeuses-animales','de','Tierschermaschinen'), ('tondeuses-animales','it','Tosatori per animali'),

        -- materiel-elevage (Level 2)
        ('machines-a-traire','fr','Machines à traire'), ('machines-a-traire','ar','آلات حلب'), ('machines-a-traire','en','Milking machines'), ('machines-a-traire','es','Máquinas de ordeño'), ('machines-a-traire','de','Melkmaschinen'), ('machines-a-traire','it','Mungitrici'),
        ('tanks-a-lait','fr','Tanks à lait'), ('tanks-a-lait','ar','خزانات حليب'), ('tanks-a-lait','en','Milk tanks'), ('tanks-a-lait','es','Depósitos de leche'), ('tanks-a-lait','de','Milchtanks'), ('tanks-a-lait','it','Serbatoi latte'),
        ('broyeurs-a-grains','fr','Broyeurs à grains'), ('broyeurs-a-grains','ar','طواحين حبوب'), ('broyeurs-a-grains','en','Grain grinders'), ('broyeurs-a-grains','es','Molinos de grano'), ('broyeurs-a-grains','de','Getreidemühlen'), ('broyeurs-a-grains','it','Mulini per cereali'),
        ('distributeurs-automatiques-d-aliments','fr','Distributeurs automatiques'), ('distributeurs-automatiques-d-aliments','ar','موزعات علف آلية'), ('distributeurs-automatiques-d-aliments','en','Automatic feeders'), ('distributeurs-automatiques-d-aliments','es','Dispensadores automáticos de alimento'), ('distributeurs-automatiques-d-aliments','de','Futterautomaten'), ('distributeurs-automatiques-d-aliments','it','Distributori automatici di mangime'),
        ('enrubanneuses','fr','Enrubanneuses'), ('enrubanneuses','ar','مغلفات الأعلاف'), ('enrubanneuses','en','Balers/wrappers'), ('enrubanneuses','es','Enfardadoras'), ('enrubanneuses','de','Ballenwickler'), ('enrubanneuses','it','Fasciatori'),
        ('systemes-de-ventilation-elevage','fr','Systèmes de ventilation'), ('systemes-de-ventilation-elevage','ar','أنظمة تهوية التربية'), ('systemes-de-ventilation-elevage','en','Ventilation systems'), ('systemes-de-ventilation-elevage','es','Sistemas de ventilación'), ('systemes-de-ventilation-elevage','de','Lüftungssysteme'), ('systemes-de-ventilation-elevage','it','Sistemi di ventilazione'),
        ('tapis-d-elevage','fr','Tapis d’élevage'), ('tapis-d-elevage','ar','أرضيات تربية'), ('tapis-d-elevage','en','Livestock mats'), ('tapis-d-elevage','es','Suelos para establos'), ('tapis-d-elevage','de','Stallmatten'), ('tapis-d-elevage','it','Tappeti per allevamento'),
        ('abris-metalliques','fr','Abris métalliques'), ('abris-metalliques','ar','ملاجئ معدنية'), ('abris-metalliques','en','Metal shelters'), ('abris-metalliques','es','Refugios metálicos'), ('abris-metalliques','de','Metallunterstände'), ('abris-metalliques','it','Ripari metallici'),

        -- produits-agricoles-bruts (Level 2)
        ('cereales-ble-orge-mais','fr','Céréales (blé, orge, maïs)'), ('cereales-ble-orge-mais','ar','حبوب (قمح، شعير، ذرة)'), ('cereales-ble-orge-mais','en','Cereals (wheat, barley, corn)'), ('cereales-ble-orge-mais','es','Cereales (trigo, cebada, maíz)'), ('cereales-ble-orge-mais','de','Getreide (Weizen, Gerste, Mais)'), ('cereales-ble-orge-mais','it','Cereali (grano, orzo, mais)'),
        ('legumes-frais','fr','Légumes frais'), ('legumes-frais','ar','خضروات طازجة'), ('legumes-frais','en','Fresh vegetables'), ('legumes-frais','es','Verduras frescas'), ('legumes-frais','de','Frisches Gemüse'), ('legumes-frais','it','Verdure fresche'),
        ('fruits-de-saison','fr','Fruits de saison'), ('fruits-de-saison','ar','فواكه موسمية'), ('fruits-de-saison','en','Seasonal fruits'), ('fruits-de-saison','es','Frutas de temporada'), ('fruits-de-saison','de','Saisonale Früchte'), ('fruits-de-saison','it','Frutta di stagione'),
        ('herbes-aromatiques','fr','Herbes aromatiques'), ('herbes-aromatiques','ar','أعشاب عطرية'), ('herbes-aromatiques','en','Aromatic herbs'), ('herbes-aromatiques','es','Hierbas aromáticas'), ('herbes-aromatiques','de','Kräuter'), ('herbes-aromatiques','it','Erbe aromatiche'),
        ('plantes-medicinales','fr','Plantes médicinales'), ('plantes-medicinales','ar','نباتات طبية'), ('plantes-medicinales','en','Medicinal plants'), ('plantes-medicinales','es','Plantas medicinales'), ('plantes-medicinales','de','Heilpflanzen'), ('plantes-medicinales','it','Piante medicinali'),
        ('fourrage','fr','Fourrage'), ('fourrage','ar','علف'), ('fourrage','en','Forage'), ('fourrage','es','Forraje'), ('fourrage','de','Futter'), ('fourrage','it','Foraggio'),
        ('foin','fr','Foin'), ('foin','ar','تبن'), ('foin','en','Hay'), ('foin','es','Heno'), ('foin','de','Heu'), ('foin','it','Fieno'),
        ('luzerne','fr','Luzerne'), ('luzerne','ar','الفصفصة'), ('luzerne','en','Alfalfa'), ('luzerne','es','Alfalfa'), ('luzerne','de','Luzerne'), ('luzerne','it','Erba medica'),
        ('paille','fr','Paille'), ('paille','ar','قش'), ('paille','en','Straw'), ('paille','es','Paja'), ('paille','de','Stroh'), ('paille','it','Paglia'),

        -- produits-agroalimentaires-transformes (Level 2)
        ('farine','fr','Farine'), ('farine','ar','دقيق'), ('farine','en','Flour'), ('farine','es','Harina'), ('farine','de','Mehl'), ('farine','it','Farina'),
        ('couscous','fr','Couscous'), ('couscous','ar','كسكس'), ('couscous','en','Couscous'), ('couscous','es','Cuscús'), ('couscous','de','Couscous'), ('couscous','it','Couscous'),
        ('semoule','fr','Semoule'), ('semoule','ar','سميد'), ('semoule','en','Semolina'), ('semoule','es','Sémola'), ('semoule','de','Grieß'), ('semoule','it','Semolino'),
        ('huile-d-olive','fr','Huile d’olive'), ('huile-d-olive','ar','زيت زيتون'), ('huile-d-olive','en','Olive oil'), ('huile-d-olive','es','Aceite de oliva'), ('huile-d-olive','de','Olivenöl'), ('huile-d-olive','it','Olio d’oliva'),
        ('huiles-vegetales','fr','Huiles végétales'), ('huiles-vegetales','ar','زيوت نباتية'), ('huiles-vegetales','en','Vegetable oils'), ('huiles-vegetales','es','Aceites vegetales'), ('huiles-vegetales','de','Pflanzenöle'), ('huiles-vegetales','it','Oli vegetali'),
        ('conserves','fr','Conserves'), ('conserves','ar','معلبات'), ('conserves','en','Canned goods'), ('conserves','es','Conservas'), ('conserves','de','Konserven'), ('conserves','it','Conserve'),
        ('confitures','fr','Confitures'), ('confitures','ar','مربى'), ('confitures','en','Jams'), ('confitures','es','Mermeladas'), ('confitures','de','Marmeladen'), ('confitures','it','Marmellate'),
        ('produits-laitiers','fr','Produits laitiers'), ('produits-laitiers','ar','منتجات ألبان'), ('produits-laitiers','en','Dairy products'), ('produits-laitiers','es','Productos lácteos'), ('produits-laitiers','de','Milchprodukte'), ('produits-laitiers','it','Prodotti lattiero-caseari'),
        ('fromages','fr','Fromages'), ('fromages','ar','أجبان'), ('fromages','en','Cheeses'), ('fromages','es','Quesos'), ('fromages','de','Käse'), ('fromages','it','Formaggi'),
        ('miel','fr','Miel'), ('miel','ar','عسل'), ('miel','en','Honey'), ('miel','es','Miel'), ('miel','de','Honig'), ('miel','it','Miele'),
        ('dattes','fr','Dattes'), ('dattes','ar','تمر'), ('dattes','en','Dates'), ('dattes','es','Dátiles'), ('dattes','de','Datteln'), ('dattes','it','Datteri'),
        ('produits-secs','fr','Produits secs'), ('produits-secs','ar','منتجات جافة'), ('produits-secs','en','Dry products'), ('produits-secs','es','Productos secos'), ('produits-secs','de','Trockenprodukte'), ('produits-secs','it','Prodotti secchi'),
        ('legumineuses','fr','Légumineuses'), ('legumineuses','ar','بقوليات'), ('legumineuses','en','Legumes/pulses'), ('legumineuses','es','Legumbres'), ('legumineuses','de','Hülsenfrüchte'), ('legumineuses','it','Legumi'),

        -- equipements-agroalimentaires (Level 2)
        ('moulins-agro','fr','Moulins'), ('moulins-agro','ar','مطاحن'), ('moulins-agro','en','Mills'), ('moulins-agro','es','Molinos'), ('moulins-agro','de','Mühlen'), ('moulins-agro','it','Mulini'),
        ('concasseurs','fr','Concasseurs'), ('concasseurs','ar','كسارات'), ('concasseurs','en','Crushers'), ('concasseurs','es','Trituradoras'), ('concasseurs','de','Brecher'), ('concasseurs','it','Frantoi'),
        ('presses-a-huile','fr','Presses à huile'), ('presses-a-huile','ar','معاصر زيت'), ('presses-a-huile','en','Oil presses'), ('presses-a-huile','es','Prensas de aceite'), ('presses-a-huile','de','Ölpressen'), ('presses-a-huile','it','Presse per olio'),
        ('petrins','fr','Pétrins'), ('petrins','ar','عجانات'), ('petrins','en','Mixers/kneaders'), ('petrins','es','Amasadoras'), ('petrins','de','Knetmaschinen'), ('petrins','it','Impastatrici'),
        ('machines-d-emballage','fr','Machines d’emballage'), ('machines-d-emballage','ar','آلات تعبئة وتغليف'), ('machines-d-emballage','en','Packaging machines'), ('machines-d-emballage','es','Máquinas de envasado'), ('machines-d-emballage','de','Verpackungsmaschinen'), ('machines-d-emballage','it','Macchine per imballaggio'),
        ('pasteurisateurs','fr','Pasteurisateurs'), ('pasteurisateurs','ar','مبسترات'), ('pasteurisateurs','en','Pasteurizers'), ('pasteurisateurs','es','Pasteurizadores'), ('pasteurisateurs','de','Pasteurisierer'), ('pasteurisateurs','it','Pastorizzatori'),
        ('machines-de-transformation','fr','Machines de transformation'), ('machines-de-transformation','ar','آلات معالجة غذائية'), ('machines-de-transformation','en','Food processing machines'), ('machines-de-transformation','es','Máquinas de procesamiento de alimentos'), ('machines-de-transformation','de','Lebensmittelverarbeitungsmaschinen'), ('machines-de-transformation','it','Macchine per la trasformazione alimentare'),
        ('sterilisateurs','fr','Stérilisateurs'), ('sterilisateurs','ar','معقمات'), ('sterilisateurs','en','Sterilizers'), ('sterilisateurs','es','Esterilizadores'), ('sterilisateurs','de','Sterilisatoren'), ('sterilisateurs','it','Sterilizzatori'),
        ('broyeurs-alimentaires','fr','Broyeurs alimentaires'), ('broyeurs-alimentaires','ar','مطاحن غذائية'), ('broyeurs-alimentaires','en','Food grinders'), ('broyeurs-alimentaires','es','Molinos alimentarios'), ('broyeurs-alimentaires','de','Lebensmittelzerkleinerer'), ('broyeurs-alimentaires','it','Trituratori alimentari'),

        -- serres-solutions-de-culture (Level 2)
        ('serres-tunnel','fr','Serres tunnel'), ('serres-tunnel','ar','بيوت أنفاق'), ('serres-tunnel','en','Tunnel greenhouses'), ('serres-tunnel','es','Invernaderos túnel'), ('serres-tunnel','de','Tunnelgewächshäuser'), ('serres-tunnel','it','Serre a tunnel'),
        ('serres-metalliques','fr','Serres métalliques'), ('serres-metalliques','ar','بيوت معدنية'), ('serres-metalliques','en','Metal greenhouses'), ('serres-metalliques','es','Invernaderos metálicos'), ('serres-metalliques','de','Metallgewächshäuser'), ('serres-metalliques','it','Serre metalliche'),
        ('baches-de-serre','fr','Bâches de serre'), ('baches-de-serre','ar','أغطية بيوت بلاستيكية'), ('baches-de-serre','en','Greenhouse covers'), ('baches-de-serre','es','Cubiertas para invernadero'), ('baches-de-serre','de','Gewächshausfolien'), ('baches-de-serre','it','Teli per serre'),
        ('systemes-hydroponiques','fr','Systèmes hydroponiques'), ('systemes-hydroponiques','ar','أنظمة الزراعة المائية'), ('systemes-hydroponiques','en','Hydroponic systems'), ('systemes-hydroponiques','es','Sistemas hidropónicos'), ('systemes-hydroponiques','de','Hydroponische Systeme'), ('systemes-hydroponiques','it','Sistemi idroponici'),
        ('systemes-aquaponiques','fr','Systèmes aquaponiques'), ('systemes-aquaponiques','ar','أنظمة الأكوابونيك'), ('systemes-aquaponiques','en','Aquaponic systems'), ('systemes-aquaponiques','es','Sistemas de acuaponía'), ('systemes-aquaponiques','de','Aquaponische Systeme'), ('systemes-aquaponiques','it','Sistemi acquaponici'),
        ('lampes-horticoles','fr','Lampes horticoles'), ('lampes-horticoles','ar','مصابيح زراعية'), ('lampes-horticoles','en','Grow lights'), ('lampes-horticoles','es','Lámparas de cultivo'), ('lampes-horticoles','de','Pflanzenlampen'), ('lampes-horticoles','it','Lampade orticole'),
        ('tables-de-culture','fr','Tables de culture'), ('tables-de-culture','ar','طاولات زراعة'), ('tables-de-culture','en','Planting tables'), ('tables-de-culture','es','Mesas de cultivo'), ('tables-de-culture','de','Pflanztische'), ('tables-de-culture','it','Tavoli da coltivazione'),
        ('capteurs-d-humidite','fr','Capteurs d’humidité'), ('capteurs-d-humidite','ar','حساسات رطوبة'), ('capteurs-d-humidite','en','Humidity sensors'), ('capteurs-d-humidite','es','Sensores de humedad'), ('capteurs-d-humidite','de','Feuchtigkeitssensoren'), ('capteurs-d-humidite','it','Sensori di umidità'),

        -- amenagement-agricole (Level 2)
        ('clotures-metalliques','fr','Clôtures métalliques'), ('clotures-metalliques','ar','أسوار معدنية'), ('clotures-metalliques','en','Metal fences'), ('clotures-metalliques','es','Vallas metálicas'), ('clotures-metalliques','de','Metallzäune'), ('clotures-metalliques','it','Recinzioni metalliche'),
        ('grillages','fr','Grillages'), ('grillages','ar','شبك معدني'), ('grillages','en','Wire meshes'), ('grillages','es','Mallas metálicas'), ('grillages','de','Drahtgeflechte'), ('grillages','it','Reti metalliche'),
        ('baches-agricoles','fr','Bâches agricoles'), ('baches-agricoles','ar','أغطية زراعية'), ('baches-agricoles','en','Agricultural tarpaulins'), ('baches-agricoles','es','Lonas agrícolas'), ('baches-agricoles','de','Landwirtschaftliche Planen'), ('baches-agricoles','it','Teloni agricoli'),
        ('filets-d-ombrage','fr','Filets d’ombrage'), ('filets-d-ombrage','ar','شبكات ظل'), ('filets-d-ombrage','en','Shade nets'), ('filets-d-ombrage','es','Redes de sombreo'), ('filets-d-ombrage','de','Schattiernetze'), ('filets-d-ombrage','it','Reti ombreggianti'),
        ('paillages','fr','Paillages'), ('paillages','ar','مفارش عضوية'), ('paillages','en','Mulches'), ('paillages','es','Acolchados'), ('paillages','de','Mulch'), ('paillages','it','Pacciamatura'),
        ('tuteurs','fr','Tuteurs'), ('tuteurs','ar','دعامات النباتات'), ('tuteurs','en','Plant stakes'), ('tuteurs','es','Soportes para plantas'), ('tuteurs','de','Pflanzenstützen'), ('tuteurs','it','Tutori'),
        ('piquets','fr','Piquets'), ('piquets','ar','أوتاد'), ('piquets','en','Posts'), ('piquets','es','Estacas'), ('piquets','de','Pfähle'), ('piquets','it','Picchetti'),
        ('abris-agricoles','fr','Abris agricoles'), ('abris-agricoles','ar','ملاجئ زراعية'), ('abris-agricoles','en','Farm shelters'), ('abris-agricoles','es','Refugios agrícolas'), ('abris-agricoles','de','Landwirtschaftliche Unterstände'), ('abris-agricoles','it','Ripari agricoli'),
        ('hangars-demontables','fr','Hangars démontables'), ('hangars-demontables','ar','مخازن قابلة للتفكيك'), ('hangars-demontables','en','Detachable hangars'), ('hangars-demontables','es','Naves desmontables'), ('hangars-demontables','de','Zerlegbare Hallen'), ('hangars-demontables','it','Capannoni smontabili'),

        -- transport-logistique-agricole (Level 2)
        ('sacs-de-stockage','fr','Sacs de stockage'), ('sacs-de-stockage','ar','أكياس تخزين'), ('sacs-de-stockage','en','Storage bags'), ('sacs-de-stockage','es','Sacos de almacenamiento'), ('sacs-de-stockage','de','Lagersäcke'), ('sacs-de-stockage','it','Sacchi di stoccaggio'),
        ('big-bags','fr','Big-bags'), ('big-bags','ar','أكياس كبيرة'), ('big-bags','en','Big‑bags'), ('big-bags','es','Big bags'), ('big-bags','de','Big Bags'), ('big-bags','it','Big bags'),
        ('caisses-de-recolte','fr','Caisses de récolte'), ('caisses-de-recolte','ar','صناديق حصاد'), ('caisses-de-recolte','en','Harvest crates'), ('caisses-de-recolte','es','Cajas de cosecha'), ('caisses-de-recolte','de','Erntekisten'), ('caisses-de-recolte','it','Cassette per raccolta'),
        ('palettes','fr','Palettes'), ('palettes','ar','طبالي'), ('palettes','en','Pallets'), ('palettes','es','Palets'), ('palettes','de','Paletten'), ('palettes','it','Pallet'),
        ('conteneurs','fr','Conteneurs'), ('conteneurs','ar','حاويات'), ('conteneurs','en','Containers'), ('conteneurs','es','Contenedores'), ('conteneurs','de','Container'), ('conteneurs','it','Conteneurs'),
        ('charrettes-agricoles','fr','Charrettes agricoles'), ('charrettes-agricoles','ar','عربات زراعية'), ('charrettes-agricoles','en','Farm carts'), ('charrettes-agricoles','es','Carros agrícolas'), ('charrettes-agricoles','de','Landwirtschaftliche Karren'), ('charrettes-agricoles','it','Carri agricoli'),
        ('bennes-basculantes','fr','Bennes basculantes'), ('bennes-basculantes','ar','حاويات قابلة للإمالة'), ('bennes-basculantes','en','Tipper bins'), ('bennes-basculantes','es','Cajas basculantes'), ('bennes-basculantes','de','Kippbehälter'), ('bennes-basculantes','it','Cassoni ribaltabili'),

        -- equipement-ruchers-apiculture (Level 2)
        ('ruches','fr','Ruches'), ('ruches','ar','خلايا نحل'), ('ruches','en','Beehives'), ('ruches','es','Colmenas'), ('ruches','de','Bienenstöcke'), ('ruches','it','Arnie'),
        ('cadres-de-ruche','fr','Cadres de ruche'), ('cadres-de-ruche','ar','إطارات الخلية'), ('cadres-de-ruche','en','Hive frames'), ('cadres-de-ruche','es','Cuadros de colmena'), ('cadres-de-ruche','de','Rähmchen'), ('cadres-de-ruche','it','Telaini'),
        ('cire-gaufree','fr','Cire gaufrée'), ('cire-gaufree','ar','شمع مضغوط'), ('cire-gaufree','en','Embossed wax'), ('cire-gaufree','es','Cera estampada'), ('cire-gaufree','de','Mittelwände'), ('cire-gaufree','it','Fogli cerei'),
        ('enfumoirs','fr','Enfumoirs'), ('enfumoirs','ar','مدخنات'), ('enfumoirs','en','Smokers'), ('enfumoirs','es','Ahumadores'), ('enfumoirs','de','Smoker'), ('enfumoirs','it','Affumicatori'),
        ('extracteurs-de-miel','fr','Extracteurs de miel'), ('extracteurs-de-miel','ar','عصارات عسل'), ('extracteurs-de-miel','en','Honey extractors'), ('extracteurs-de-miel','es','Extractores de miel'), ('extracteurs-de-miel','de','Honigschleudern'), ('extracteurs-de-miel','it','Smielatori'),
        ('equipements-apiculteurs','fr','Équipements pour apiculteurs'), ('equipements-apiculteurs','ar','معدات النحالين'), ('equipements-apiculteurs','en','Beekeeper equipment'), ('equipements-apiculteurs','es','Equipos para apicultores'), ('equipements-apiculteurs','de','Imkerausrüstung'), ('equipements-apiculteurs','it','Attrezzatura apistica'),
        ('pieges-a-essaims','fr','Pièges à essaims'), ('pieges-a-essaims','ar','مصائد أسراب'), ('pieges-a-essaims','en','Swarm traps'), ('pieges-a-essaims','es','Trampas para enjambres'), ('pieges-a-essaims','de','Schwarmfallen'), ('pieges-a-essaims','it','Trappole per sciami'),

        -- controle-sanitaire-outils-produits (Level 2)
        ('desinfectants-agricoles','fr','Désinfectants agricoles'), ('desinfectants-agricoles','ar','مطهرات زراعية'), ('desinfectants-agricoles','en','Agricultural disinfectants'), ('desinfectants-agricoles','es','Desinfectantes agrícolas'), ('desinfectants-agricoles','de','Landwirtschaftliche Desinfektionsmittel'), ('desinfectants-agricoles','it','Disinfettanti agricoli'),
        ('pulverisateurs-sanitaires','fr','Pulvérisateurs sanitaires'), ('pulverisateurs-sanitaires','ar','مرشات صحية'), ('pulverisateurs-sanitaires','en','Sanitary sprayers'), ('pulverisateurs-sanitaires','es','Pulverizadores sanitarios'), ('pulverisateurs-sanitaires','de','Sanitäre Sprühgeräte'), ('pulverisateurs-sanitaires','it','Irroratrici sanitarie'),
        ('pieges-a-insectes','fr','Pièges à insectes'), ('pieges-a-insectes','ar','مصائد حشرات'), ('pieges-a-insectes','en','Insect traps'), ('pieges-a-insectes','es','Trampas para insectos'), ('pieges-a-insectes','de','Insektenfallen'), ('pieges-a-insectes','it','Trappole per insetti'),
        ('filets-anti-oiseaux','fr','Filets anti-oiseaux'), ('filets-anti-oiseaux','ar','شبكات ضد الطيور'), ('filets-anti-oiseaux','en','Bird nets'), ('filets-anti-oiseaux','es','Redes anti‑pájaros'), ('filets-anti-oiseaux','de','Vogelschutznetze'), ('filets-anti-oiseaux','it','Reti anti‑uccelli'),
        ('systemes-protection-cultures','fr','Systèmes de protection des cultures'), ('systemes-protection-cultures','ar','أنظمة حماية المحاصيل'), ('systemes-protection-cultures','en','Crop protection systems'), ('systemes-protection-cultures','es','Sistemas de protección de cultivos'), ('systemes-protection-cultures','de','Kulturschutzsysteme'), ('systemes-protection-cultures','it','Sistemi di protezione delle colture'),
        ('stations-meteo-agricoles','fr','Stations météo agricoles'), ('stations-meteo-agricoles','ar','محطات طقس زراعية'), ('stations-meteo-agricoles','en','Agricultural weather stations'), ('stations-meteo-agricoles','es','Estaciones meteorológicas agrícolas'), ('stations-meteo-agricoles','de','Landwirtschaftliche Wetterstationen'), ('stations-meteo-agricoles','it','Stazioni meteo agricole'),

        -- accessoires-consommables (Level 2)
        ('ficelles-agricoles','fr','Ficelles agricoles'), ('ficelles-agricoles','ar','خيوط زراعية'), ('ficelles-agricoles','en','Agricultural twines'), ('ficelles-agricoles','es','Cuerdas agrícolas'), ('ficelles-agricoles','de','Landwirtschaftliche Schnüre'), ('ficelles-agricoles','it','Spaghi agricoli'),
        ('cordages','fr','Cordages'), ('cordages','ar','حبال'), ('cordages','en','Ropes'), ('cordages','es','Cuerdas'), ('cordages','de','Seile'), ('cordages','it','Corde'),
        ('sangles','fr','Sangles'), ('sangles','ar','أحزمة'), ('sangles','en','Straps'), ('sangles','es','Correas'), ('sangles','de','Gurte'), ('sangles','it','Cinghie'),
        ('attaches-pour-plants','fr','Attaches pour plants'), ('attaches-pour-plants','ar','روابط للنباتات'), ('attaches-pour-plants','en','Plant ties'), ('attaches-pour-plants','es','Bridas para plantas'), ('attaches-pour-plants','de','Pflanzenbinder'), ('attaches-pour-plants','it','Fissaggi per piante'),
        ('boites-d-emballage','fr','Boîtes d’emballage'), ('boites-d-emballage','ar','علب تغليف'), ('boites-d-emballage','en','Packaging boxes'), ('boites-d-emballage','es','Cajas de embalaje'), ('boites-d-emballage','de','Verpackungskartons'), ('boites-d-emballage','it','Scatole per imballaggio'),
        ('sacs-alimentaires','fr','Sacs alimentaires'), ('sacs-alimentaires','ar','أكياس غذائية'), ('sacs-alimentaires','en','Food‑grade bags'), ('sacs-alimentaires','es','Bolsas alimentarias'), ('sacs-alimentaires','de','Lebensmittelbeutel'), ('sacs-alimentaires','it','Sacchetti alimentari'),
        ('etiquettes-agricoles','fr','Étiquettes agricoles'), ('etiquettes-agricoles','ar','ملصقات زراعية'), ('etiquettes-agricoles','en','Agricultural labels'), ('etiquettes-agricoles','es','Etiquetas agrícolas'), ('etiquettes-agricoles','de','Landwirtschaftliche Etiketten'), ('etiquettes-agricoles','it','Etichette agricole')
    ) AS v(slug, language_code, name) ON c.slug = v.slug
    ON CONFLICT (category_id, language_code) DO UPDATE SET 
        name = EXCLUDED.name;

END $$;
