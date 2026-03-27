BEGIN;

ALTER TABLE public.category_translations DROP CONSTRAINT IF EXISTS category_translations_lang_check;
ALTER TABLE public.category_translations ADD CONSTRAINT category_translations_lang_check CHECK (language_code IN ('fr','ar','en','es','de','it'));

-- 1. Root Category
WITH root AS (
  INSERT INTO public.categories (slug, icon_name, parent_id, level, sort_order, is_active, description)
  VALUES ('agriculture-agroalimentaire', 'Wheat', NULL, 0, 0, true, 'Catégorie dédiée à l’agriculture et à l’agroalimentaire: matériel, intrants, élevage, transformation et logistique.')
  ON CONFLICT (slug) DO UPDATE SET icon_name = EXCLUDED.icon_name, description = EXCLUDED.description, level = EXCLUDED.level
  RETURNING id
)
INSERT INTO public.category_translations (category_id, language_code, name, description)
SELECT r.id, v.language_code, v.name, v.description
FROM root r
CROSS JOIN (VALUES
  ('fr','Agriculture & Agroalimentaire','Catégorie dédiée à l’agriculture et à l’agroalimentaire: matériel, intrants, élevage, transformation et logistique.'),
  ('ar','الزراعة والأغذية الزراعية','فئة الزراعة والصناعات الغذائية: المعدات والمدخلات والتربية والمعالجة واللوجستيات.'),
  ('en','Agriculture & Agri‑food','Agriculture and agri‑food: equipment, inputs, livestock, processing and logistics.'),
  ('es','Agricultura y Agroalimentario','Categoría dedicada a la agricultura y el agroalimentario: maquinaria, insumos, ganadería, transformación y logística.'),
  ('de','Landwirtschaft & Lebensmittelindustrie','Kategorie für Landwirtschaft und Lebensmittel: Geräte, Betriebsmittel, Viehzucht, Verarbeitung und Logistik.'),
  ('it','Agricoltura & Agroalimentare','Categoria dedicata all’agricoltura e all’agroalimentare: attrezzature, input, allevamento, trasformazione e logistica.')
) AS v(language_code, name, description)
ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name, description = EXCLUDED.description;

-- 2. Subcategories Structure
WITH r AS (SELECT id FROM public.categories WHERE slug='agriculture-agroalimentaire')
INSERT INTO public.categories (slug, parent_id, level, sort_order, is_active, description)
SELECT v.slug, r.id, 1, v.sort_order, true, v.description
FROM r
CROSS JOIN (VALUES
  ('materiel-agricole', 1, 'Machines et équipements pour travailler le sol, semer, récolter et manutentionner.'),
  ('outils-equipements-de-culture', 2, 'Outils manuels et accessoires pour l’entretien des cultures et du jardin.'),
  ('systemes-irrigation', 3, 'Solutions d’arrosage et d’irrigation pour optimiser l’apport en eau.'),
  ('semences-plants', 4, 'Semences, plants et bulbes pour cultures potagères, céréalières et arboricoles.'),
  ('engrais-fertilisants', 5, 'Amendements et nutriments pour améliorer la fertilité des sols et la croissance.'),
  ('produits-phytosanitaires', 6, 'Produits de protection des cultures et traitements biologiques.'),
  ('elevage-soins-animaux', 7, 'Alimentation, soins et équipements pour animaux d’élevage.'),
  ('materiel-elevage', 8, 'Matériel spécialisé pour l’élevage, la traite et la conservation.'),
  ('produits-agricoles-bruts', 9, 'Produits agricoles non transformés issus des récoltes.'),
  ('produits-agroalimentaires-transformes', 10, 'Produits alimentaires transformés issus de l’agriculture.'),
  ('equipements-agroalimentaires', 11, 'Machines et équipements pour la transformation et l’emballage.'),
  ('serres-solutions-de-culture', 12, 'Serres et systèmes techniques pour la culture contrôlée.'),
  ('amenagement-agricole', 13, 'Équipements et fournitures pour l’infrastructure des exploitations.'),
  ('transport-logistique-agricole', 14, 'Matériels de manutention, stockage et transport agricoles.'),
  ('equipement-ruchers-apiculture', 15, 'Matériel et consommables pour la conduite des ruchers.'),
  ('controle-sanitaire-outils-produits', 16, 'Outils et produits pour l’hygiène et la biosécurité des cultures.'),
  ('accessoires-consommables', 17, 'Accessoires et consommables courants pour l’activité agricole.')
) AS v(slug, sort_order, description)
ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, description = EXCLUDED.description, sort_order = EXCLUDED.sort_order;

-- 3. Subcategories Translations
INSERT INTO public.category_translations (category_id, language_code, name, description)
SELECT c.id, v.language_code, v.name, v.description
FROM public.categories c
JOIN (
  VALUES
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
  ('serres-solutions-de-culture','ar','بيوت بلاستيكية وحلول الزراعة','بيوت زجاجية وأنظمة تقنية للزراعة المُتحكم بها.'),
  ('serres-solutions-de-culture','en','Greenhouses & growing solutions','Greenhouses and technical systems for controlled cultivation.'),
  ('serres-solutions-de-culture','es','Invernaderos & soluciones de cultivo','Invernaderos y sistemas técnicos para cultivo controlado.'),
  ('serres-solutions-de-culture','de','Gewächshäuser & Anbaulösungen','Gewächshäuser und technische Systeme für kontrollierten Anbau.'),
  ('serres-solutions-de-culture','it','Serre & soluzioni di coltivazione','Serre e sistemi tecnici per la coltivazione controllata.'),
  -- amenagement-agricole
  ('amenagement-agricole','fr','Aménagement agricole','Équipements et fournitures pour l’infrastructure des exploitations.'),
  ('amenagement-agricole','ar','تهيئة زراعية','معدات ولوازم للبنية التحتية للمزارع.'),
  ('amenagement-agricole','en','Agricultural amenities','Equipment and supplies for farm infrastructure.'),
  ('amenagement-agricole','es','Acondicionamiento agrícola','Equipos y suministros para la infraestructura de explotaciones.'),
  ('amenagement-agricole','de','Landwirtschaftliche Ausstattung','Ausrüstung und Materialien für die Infrastruktur von Betrieben.'),
  ('amenagement-agricole','it','Allestimenti agricoli','Dotazioni e forniture per l’infrastruttura delle aziende agricole.'),
  -- transport-logistique-agricole
  ('transport-logistique-agricole','fr','Transport & logistique agricole','Matériels de manutention, stockage et transport agricoles.'),
  ('transport-logistique-agricole','ar','النقل واللوجستيك الزراعي','مواد للتخزين والمناولة والنقل الزراعي.'),
  ('transport-logistique-agricole','en','Agricultural transport & logistics','Materials for agricultural storage, handling and transport.'),
  ('transport-logistique-agricole','es','Transporte & logística agrícola','Materiales para almacenamiento, manipulación y transporte agrícola.'),
  ('transport-logistique-agricole','de','Transport & Logistik','Materialien für landwirtschaftliche Lagerung, Handhabung und Transport.'),
  ('transport-logistique-agricole','it','Trasporto & logistica agricola','Materiali per stoccaggio, movimentazione e trasporto agricolo.'),
  -- equipement-ruchers-apiculture
  ('equipement-ruchers-apiculture','fr','Équipement pour ruchers & apiculture','Matériel et consommables pour la conduite des ruchers.'),
  ('equipement-ruchers-apiculture','ar','معدات المناحل وتربية النحل','معدات ولوازم لتربية النحل.'),
  ('equipement-ruchers-apiculture','en','Beekeeping equipment','Equipment and consumables for beekeeping.'),
  ('equipement-ruchers-apiculture','es','Equipos para apicultura','Equipos y consumibles para la práctica apícola.'),
  ('equipement-ruchers-apiculture','de','Imkerei‑Ausrüstung','Ausrüstung und Verbrauchsmaterialien für die Imkerei.'),
  ('equipement-ruchers-apiculture','it','Attrezzature per apicoltura','Attrezzature e materiali di consumo per la pratica apistica.'),
  -- controle-sanitaire-outils-produits
  ('controle-sanitaire-outils-produits','fr','Outils et produits de contrôle sanitaire','Outils et produits pour l’hygiène et la biosécurité des cultures.'),
  ('controle-sanitaire-outils-produits','ar','أدوات ومنتجات الرقابة الصحية','أدوات ومنتجات للنظافة وأمن المحاصيل الحيوي.'),
  ('controle-sanitaire-outils-produits','en','Sanitary control tools & products','Tools and products for hygiene and crop biosecurity.'),
  ('controle-sanitaire-outils-produits','es','Herramientas & productos sanitarios','Herramientas y productos para higiene y bioseguridad de cultivos.'),
  ('controle-sanitaire-outils-produits','de','Sanitätskontrolle Werkzeuge & Produkte','Werkzeuge und Produkte für Hygiene und Pflanzengesundheit.'),
  ('controle-sanitaire-outils-produits','it','Strumenti & prodotti sanitari','Strumenti e prodotti per igiene e biosicurezza delle colture.'),
  -- accessoires-consommables
  ('accessoires-consommables','fr','Accessoires & consommables','Accessoires et consommables courants pour l’activité agricole.'),
  ('accessoires-consommables','ar','إكسسوارات ومستهلكات','إكسسوارات ومواد مستهلكة شائعة للعمل الزراعي.'),
  ('accessoires-consommables','en','Accessories & consumables','Common accessories and consumables for farm operations.'),
  ('accessoires-consommables','es','Accesorios & consumibles','Accesorios y consumibles comunes para la actividad agrícola.'),
  ('accessoires-consommables','de','Zubehör & Verbrauchsmaterial','Häufige Zubehörteile und Verbrauchsmaterialien für landwirtschaftliche Tätigkeiten.'),
  ('accessoires-consommables','it','Accessori & consumabili','Accessori e materiali di consumo comuni per l’attività agricola.')
) AS v(slug, language_code, name, description)
ON c.slug = v.slug
ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name, description = EXCLUDED.description;

-- 4. Sub-Subcategories (Level 2) Structure
WITH parent AS (SELECT id FROM public.categories WHERE slug='materiel-agricole')
INSERT INTO public.categories (slug, parent_id, level, sort_order, is_active)
SELECT v.slug, parent.id, 2, v.sort_order, true
FROM parent
CROSS JOIN (VALUES
  ('tracteurs-agricoles',1),('micro-tracteurs',2),('motoculteurs',3),('moissonneuses-batteuses',4),('charrues',5),('herses',6),('semoirs',7),('pulverisateurs-agricoles',8),('remorques-agricoles',9),('broyeurs-agricoles',10),('epandeurs-agricoles',11),('tarieres-mecaniques',12),('presses-a-balles',13),('elevateurs-agricoles',14)
) AS v(slug, sort_order)
ON CONFLICT (slug) DO UPDATE SET parent_id = EXCLUDED.parent_id, level = EXCLUDED.level, sort_order = EXCLUDED.sort_order;

-- 5. Sub-Subcategories (Level 2) Translations
INSERT INTO public.category_translations (category_id, language_code, name)
SELECT c.id, v.language_code, v.name
FROM public.categories c
JOIN (
  VALUES
  ('tracteurs-agricoles','fr','Tracteurs agricoles'),('tracteurs-agricoles','ar','جرارات زراعية'),('tracteurs-agricoles','en','Agricultural tractors'),('tracteurs-agricoles','es','Tractores agrícolas'),('tracteurs-agricoles','de','Landwirtschaftliche Traktoren'),('tracteurs-agricoles','it','Trattori agricoli'),
  ('micro-tracteurs','fr','Micro-tracteurs'),('micro-tracteurs','ar','جرارات صغيرة'),('micro-tracteurs','en','Micro‑tractors'),('micro-tracteurs','es','Microtractores'),('micro-tracteurs','de','Kleintraktoren'),('micro-tracteurs','it','Micro‑trattori'),
  ('motoculteurs','fr','Motoculteurs'),('motoculteurs','ar','محاريث آلية'),('motoculteurs','en','Tillers'),('motoculteurs','es','Motoazadas'),('motoculteurs','de','Motorhacken'),('motoculteurs','it','Motozappe'),
  ('moissonneuses-batteuses','fr','Moissonneuses-batteuses'),('moissonneuses-batteuses','ar','حصادات'),('moissonneuses-batteuses','en','Combine harvesters'),('moissonneuses-batteuses','es','Cosechadoras'),('moissonneuses-batteuses','de','Mähdrescher'),('moissonneuses-batteuses','it','Mietitrebbie'),
  ('charrues','fr','Charrues'),('charrues','ar','محاريث'),('charrues','en','Ploughs'),('charrues','es','Arados'),('charrues','de','Pflüge'),('charrues','it','Aratri'),
  ('herses','fr','Herses'),('herses','ar','أمشاط زراعية'),('herses','en','Harrows'),('herses','es','Gradas'),('herses','de','Eggen'),('herses','it','Erpici'),
  ('semoirs','fr','Semoirs'),('semoirs','ar','بذارات'),('semoirs','en','Seeders'),('semoirs','es','Sembradoras'),('semoirs','de','Sämaschinen'),('semoirs','it','Seminatrici'),
  ('pulverisateurs-agricoles','fr','Pulvérisateurs agricoles'),('pulverisateurs-agricoles','ar','مرشات زراعية'),('pulverisateurs-agricoles','en','Agricultural sprayers'),('pulverisateurs-agricoles','es','Pulverizadores agrícolas'),('pulverisateurs-agricoles','de','Landwirtschaftliche Sprühgeräte'),('pulverisateurs-agricoles','it','Irroratrici agricole'),
  ('remorques-agricoles','fr','Remorques agricoles'),('remorques-agricoles','ar','مقطورات زراعية'),('remorques-agricoles','en','Agricultural trailers'),('remorques-agricoles','es','Remolques agrícolas'),('remorques-agricoles','de','Landwirtschaftliche Anhänger'),('remorques-agricoles','it','Rimorchi agricoli'),
  ('broyeurs-agricoles','fr','Broyeurs'),('broyeurs-agricoles','ar','فرّامات'),('broyeurs-agricoles','en','Shredders'),('broyeurs-agricoles','es','Trituradoras'),('broyeurs-agricoles','de','Schredder'),('broyeurs-agricoles','it','Trituratori'),
  ('epandeurs-agricoles','fr','Épandeurs'),('epandeurs-agricoles','ar','موزعات'),('epandeurs-agricoles','en','Spreaders'),('epandeurs-agricoles','es','Esparcidores'),('epandeurs-agricoles','de','Streuer'),('epandeurs-agricoles','it','Spandiconcime'),
  ('tarieres-mecaniques','fr','Tarières mécaniques'),('tarieres-mecaniques','ar','مثاقب ميكانيكية'),('tarieres-mecaniques','en','Mechanical augers'),('tarieres-mecaniques','es','Barrenas mecánicas'),('tarieres-mecaniques','de','Mechanische Erdbohrer'),('tarieres-mecaniques','it','Trivelle meccaniche'),
  ('presses-a-balles','fr','Presses à balles'),('presses-a-balles','ar','مكابس بالات'),('presses-a-balles','en','Bale presses'),('presses-a-balles','es','Prensas de pacas'),('presses-a-balles','de','Ballenpressen'),('presses-a-balles','it','Presse per balle'),
  ('elevateurs-agricoles','fr','Élévateurs agricoles'),('elevateurs-agricoles','ar','رافعات زراعية'),('elevateurs-agricoles','en','Agricultural elevators'),('elevateurs-agricoles','es','Elevadores agrícolas'),('elevateurs-agricoles','de','Landwirtschaftliche Hebegeräte'),('elevateurs-agricoles','it','Sollevatori agricoli')
) AS v(slug, language_code, name)
ON c.slug = v.slug
ON CONFLICT (category_id, language_code) DO UPDATE SET name = EXCLUDED.name;

COMMIT;
