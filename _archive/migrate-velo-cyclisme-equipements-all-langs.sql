INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('velo-cyclisme-equipements', 'Vélo, Cyclisme & Équipements', 'velo-cyclisme-equipements', NULL, 0, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('types-de-velos', 'Types de vélos', 'types-de-velos', 'velo-cyclisme-equipements', 1, 'fr'),
('equipements-cyclistes', 'Équipements cyclistes', 'equipements-cyclistes', 'velo-cyclisme-equipements', 1, 'fr'),
('composants-pieces-detachees', 'Composants & pièces détachées', 'composants-pieces-detachees', 'velo-cyclisme-equipements', 1, 'fr'),
('accessoires-velos', 'Accessoires vélos', 'accessoires-velos', 'velo-cyclisme-equipements', 1, 'fr'),
('outils-entretien', 'Outils & entretien', 'outils-entretien', 'velo-cyclisme-equipements', 1, 'fr'),
('rangement-transport', 'Rangement & transport', 'rangement-transport', 'velo-cyclisme-equipements', 1, 'fr'),
('equipements-sportifs-cyclisme', 'Équipements sportifs liés au cyclisme', 'equipements-sportifs-cyclisme', 'velo-cyclisme-equipements', 1, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('velos-de-route', 'Vélos de route', 'velos-de-route', 'types-de-velos', 2, 'fr'),
('velos-de-montagne-vtt', 'Vélos de montagne (VTT)', 'velos-de-montagne-vtt', 'types-de-velos', 2, 'fr'),
('velos-hybrides', 'Vélos hybrides', 'velos-hybrides', 'types-de-velos', 2, 'fr'),
('velos-gravel', 'Vélos gravel', 'velos-gravel', 'types-de-velos', 2, 'fr'),
('velos-de-ville', 'Vélos de ville', 'velos-de-ville', 'types-de-velos', 2, 'fr'),
('velos-pliants', 'Vélos pliants', 'velos-pliants', 'types-de-velos', 2, 'fr'),
('velos-bmx', 'Vélos BMX', 'velos-bmx', 'types-de-velos', 2, 'fr'),
('velos-electriques-vae', 'Vélos électriques (VAE)', 'velos-electriques-vae', 'types-de-velos', 2, 'fr'),
('velos-cargo', 'Vélos cargo', 'velos-cargo', 'types-de-velos', 2, 'fr'),
('tandems', 'Tandems', 'tandems', 'types-de-velos', 2, 'fr'),
('velos-enfants', 'Vélos enfants', 'velos-enfants', 'types-de-velos', 2, 'fr'),
('draisiennes', 'Draisiennes', 'draisiennes', 'types-de-velos', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques', 'Casques', 'casques', 'equipements-cyclistes', 2, 'fr'),
('gants', 'Gants', 'gants', 'equipements-cyclistes', 2, 'fr'),
('lunettes-de-cyclisme', 'Lunettes de cyclisme', 'lunettes-de-cyclisme', 'equipements-cyclistes', 2, 'fr'),
('maillots', 'Maillots', 'maillots', 'equipements-cyclistes', 2, 'fr'),
('cuissards', 'Cuissards', 'cuissards', 'equipements-cyclistes', 2, 'fr'),
('chaussures-de-cyclisme', 'Chaussures de cyclisme', 'chaussures-de-cyclisme', 'equipements-cyclistes', 2, 'fr'),
('protections-genouilleres-coudieres', 'Protections (genouillères, coudières)', 'protections-genouilleres-coudieres', 'equipements-cyclistes', 2, 'fr'),
('gilets-reflechissants', 'Gilets réfléchissants', 'gilets-reflechissants', 'equipements-cyclistes', 2, 'fr'),
('sacs-a-dos-velo', 'Sacs à dos vélo', 'sacs-a-dos-velo', 'equipements-cyclistes', 2, 'fr'),
('gourdes-porte-gourdes', 'Gourdes & porte-gourdes', 'gourdes-porte-gourdes', 'equipements-cyclistes', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('roues-pneus', 'Roues & pneus', 'roues-pneus', 'composants-pieces-detachees', 2, 'fr'),
('chambres-a-air', 'Chambres à air', 'chambres-a-air', 'composants-pieces-detachees', 2, 'fr'),
('freins-patins-disques', 'Freins (patins, disques)', 'freins-patins-disques', 'composants-pieces-detachees', 2, 'fr'),
('derailleurs', 'Dérailleurs', 'derailleurs', 'composants-pieces-detachees', 2, 'fr'),
('chaines-cassettes', 'Chaînes & cassettes', 'chaines-cassettes', 'composants-pieces-detachees', 2, 'fr'),
('pedales', 'Pédales', 'pedales', 'composants-pieces-detachees', 2, 'fr'),
('selles-tiges-de-selle', 'Selles & tiges de selle', 'selles-tiges-de-selle', 'composants-pieces-detachees', 2, 'fr'),
('guidons-poignees', 'Guidons & poignées', 'guidons-poignees', 'composants-pieces-detachees', 2, 'fr'),
('pedaliers', 'Pédaliers', 'pedaliers', 'composants-pieces-detachees', 2, 'fr'),
('suspensions-fourches', 'Suspensions & fourches', 'suspensions-fourches', 'composants-pieces-detachees', 2, 'fr'),
('cadres-kits-cadres', 'Cadres & kits-cadres', 'cadres-kits-cadres', 'composants-pieces-detachees', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('eclairages-avant-arriere', 'Éclairages (avant/arrière)', 'eclairages-avant-arriere', 'accessoires-velos', 2, 'fr'),
('sonnettes-klaxons', 'Sonnettes & klaxons', 'sonnettes-klaxons', 'accessoires-velos', 2, 'fr'),
('retroviseurs', 'Rétroviseurs', 'retroviseurs', 'accessoires-velos', 2, 'fr'),
('bequilles', 'Béquilles', 'bequilles', 'accessoires-velos', 2, 'fr'),
('porte-bagages', 'Porte-bagages', 'porte-bagages', 'accessoires-velos', 2, 'fr'),
('paniers-sacs', 'Paniers & sacs', 'paniers-sacs', 'accessoires-velos', 2, 'fr'),
('garde-boue', 'Garde-boue', 'garde-boue', 'accessoires-velos', 2, 'fr'),
('antivols', 'Antivols', 'antivols', 'accessoires-velos', 2, 'fr'),
('compteurs-gps-velo', 'Compteurs & GPS vélo', 'compteurs-gps-velo', 'accessoires-velos', 2, 'fr'),
('supports-smartphone', 'Supports smartphone', 'supports-smartphone', 'accessoires-velos', 2, 'fr'),
('pompes-a-main', 'Pompes à main', 'pompes-a-main', 'accessoires-velos', 2, 'fr'),
('porte-enfants', 'Porte-enfants', 'porte-enfants', 'accessoires-velos', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('kits-de-reparation', 'Kits de réparation', 'kits-de-reparation', 'outils-entretien', 2, 'fr'),
('pompes-a-pied', 'Pompes à pied', 'pompes-a-pied', 'outils-entretien', 2, 'fr'),
('demonte-pneus', 'Démonte-pneus', 'demonte-pneus', 'outils-entretien', 2, 'fr'),
('lubrifiants-nettoyants', 'Lubrifiants & nettoyants', 'lubrifiants-nettoyants', 'outils-entretien', 2, 'fr'),
('cles-multi-outils-velo', 'Clés & multi-outils vélo', 'cles-multi-outils-velo', 'outils-entretien', 2, 'fr'),
('supports-de-reparation', 'Supports de réparation', 'supports-de-reparation', 'outils-entretien', 2, 'fr'),
('brosses-dentretien', 'Brosses d’entretien', 'brosses-dentretien', 'outils-entretien', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('supports-muraux-velo', 'Supports muraux vélo', 'supports-muraux-velo', 'rangement-transport', 2, 'fr'),
('crochets-racks', 'Crochets & racks', 'crochets-racks', 'rangement-transport', 2, 'fr'),
('housses-de-transport-velo', 'Housses de transport vélo', 'housses-de-transport-velo', 'rangement-transport', 2, 'fr'),
('porte-velos-voiture', 'Porte-vélos voiture (coffre, toit, attelage)', 'porte-velos-voiture', 'rangement-transport', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cardiofrequencemetres', 'Cardiofréquencemètres', 'cardiofrequencemetres', 'equipements-sportifs-cyclisme', 2, 'fr'),
('capteurs-de-puissance', 'Capteurs de puissance', 'capteurs-de-puissance', 'equipements-sportifs-cyclisme', 2, 'fr'),
('montres-sport', 'Montres sport', 'montres-sport', 'equipements-sportifs-cyclisme', 2, 'fr'),
('vetements-de-pluie-coupe-vent', 'Vêtements de pluie & coupe-vent', 'vetements-de-pluie-coupe-vent', 'equipements-sportifs-cyclisme', 2, 'fr'),
('accessoires-de-performance', 'Accessoires de performance (aérodynamique, optimisation poids)', 'accessoires-de-performance', 'equipements-sportifs-cyclisme', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('velo-cyclisme-equipements', 'Bikes, Cycling & Equipment', 'velo-cyclisme-equipements', NULL, 0, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('types-de-velos', 'Bike Types', 'types-de-velos', 'velo-cyclisme-equipements', 1, 'en'),
('equipements-cyclistes', 'Cycling Gear', 'equipements-cyclistes', 'velo-cyclisme-equipements', 1, 'en'),
('composants-pieces-detachees', 'Components & Spare Parts', 'composants-pieces-detachees', 'velo-cyclisme-equipements', 1, 'en'),
('accessoires-velos', 'Bike Accessories', 'accessoires-velos', 'velo-cyclisme-equipements', 1, 'en'),
('outils-entretien', 'Tools & Maintenance', 'outils-entretien', 'velo-cyclisme-equipements', 1, 'en'),
('rangement-transport', 'Storage & Transport', 'rangement-transport', 'velo-cyclisme-equipements', 1, 'en'),
('equipements-sportifs-cyclisme', 'Cycling Sports Equipment', 'equipements-sportifs-cyclisme', 'velo-cyclisme-equipements', 1, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('velos-de-route', 'Road bikes', 'velos-de-route', 'types-de-velos', 2, 'en'),
('velos-de-montagne-vtt', 'Mountain bikes (MTB)', 'velos-de-montagne-vtt', 'types-de-velos', 2, 'en'),
('velos-hybrides', 'Hybrid bikes', 'velos-hybrides', 'types-de-velos', 2, 'en'),
('velos-gravel', 'Gravel bikes', 'velos-gravel', 'types-de-velos', 2, 'en'),
('velos-de-ville', 'City bikes', 'velos-de-ville', 'types-de-velos', 2, 'en'),
('velos-pliants', 'Folding bikes', 'velos-pliants', 'types-de-velos', 2, 'en'),
('velos-bmx', 'BMX bikes', 'velos-bmx', 'types-de-velos', 2, 'en'),
('velos-electriques-vae', 'Electric bikes (E-bike)', 'velos-electriques-vae', 'types-de-velos', 2, 'en'),
('velos-cargo', 'Cargo bikes', 'velos-cargo', 'types-de-velos', 2, 'en'),
('tandems', 'Tandems', 'tandems', 'types-de-velos', 2, 'en'),
('velos-enfants', 'Kids’ bikes', 'velos-enfants', 'types-de-velos', 2, 'en'),
('draisiennes', 'Balance bikes', 'draisiennes', 'types-de-velos', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques', 'Helmets', 'casques', 'equipements-cyclistes', 2, 'en'),
('gants', 'Gloves', 'gants', 'equipements-cyclistes', 2, 'en'),
('lunettes-de-cyclisme', 'Cycling glasses', 'lunettes-de-cyclisme', 'equipements-cyclistes', 2, 'en'),
('maillots', 'Jerseys', 'maillots', 'equipements-cyclistes', 2, 'en'),
('cuissards', 'Bib shorts', 'cuissards', 'equipements-cyclistes', 2, 'en'),
('chaussures-de-cyclisme', 'Cycling shoes', 'chaussures-de-cyclisme', 'equipements-cyclistes', 2, 'en'),
('protections-genouilleres-coudieres', 'Protective gear (knee, elbow)', 'protections-genouilleres-coudieres', 'equipements-cyclistes', 2, 'en'),
('gilets-reflechissants', 'Reflective vests', 'gilets-reflechissants', 'equipements-cyclistes', 2, 'en'),
('sacs-a-dos-velo', 'Cycling backpacks', 'sacs-a-dos-velo', 'equipements-cyclistes', 2, 'en'),
('gourdes-porte-gourdes', 'Bottles & bottle cages', 'gourdes-porte-gourdes', 'equipements-cyclistes', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('roues-pneus', 'Wheels & tires', 'roues-pneus', 'composants-pieces-detachees', 2, 'en'),
('chambres-a-air', 'Inner tubes', 'chambres-a-air', 'composants-pieces-detachees', 2, 'en'),
('freins-patins-disques', 'Brakes (pads, discs)', 'freins-patins-disques', 'composants-pieces-detachees', 2, 'en'),
('derailleurs', 'Derailleurs', 'derailleurs', 'composants-pieces-detachees', 2, 'en'),
('chaines-cassettes', 'Chains & cassettes', 'chaines-cassettes', 'composants-pieces-detachees', 2, 'en'),
('pedales', 'Pedals', 'pedales', 'composants-pieces-detachees', 2, 'en'),
('selles-tiges-de-selle', 'Saddles & seatposts', 'selles-tiges-de-selle', 'composants-pieces-detachees', 2, 'en'),
('guidons-poignees', 'Handlebars & grips', 'guidons-poignees', 'composants-pieces-detachees', 2, 'en'),
('pedaliers', 'Cranksets', 'pedaliers', 'composants-pieces-detachees', 2, 'en'),
('suspensions-fourches', 'Suspensions & forks', 'suspensions-fourches', 'composants-pieces-detachees', 2, 'en'),
('cadres-kits-cadres', 'Frames & framesets', 'cadres-kits-cadres', 'composants-pieces-detachees', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('eclairages-avant-arriere', 'Lights (front/rear)', 'eclairages-avant-arriere', 'accessoires-velos', 2, 'en'),
('sonnettes-klaxons', 'Bells & horns', 'sonnettes-klaxons', 'accessoires-velos', 2, 'en'),
('retroviseurs', 'Mirrors', 'retroviseurs', 'accessoires-velos', 2, 'en'),
('bequilles', 'Kickstands', 'bequilles', 'accessoires-velos', 2, 'en'),
('porte-bagages', 'Racks', 'porte-bagages', 'accessoires-velos', 2, 'en'),
('paniers-sacs', 'Baskets & bags', 'paniers-sacs', 'accessoires-velos', 2, 'en'),
('garde-boue', 'Fenders', 'garde-boue', 'accessoires-velos', 2, 'en'),
('antivols', 'Locks', 'antivols', 'accessoires-velos', 2, 'en'),
('compteurs-gps-velo', 'Bike computers & GPS', 'compteurs-gps-velo', 'accessoires-velos', 2, 'en'),
('supports-smartphone', 'Phone mounts', 'supports-smartphone', 'accessoires-velos', 2, 'en'),
('pompes-a-main', 'Mini pumps', 'pompes-a-main', 'accessoires-velos', 2, 'en'),
('porte-enfants', 'Child seats', 'porte-enfants', 'accessoires-velos', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('kits-de-reparation', 'Repair kits', 'kits-de-reparation', 'outils-entretien', 2, 'en'),
('pompes-a-pied', 'Floor pumps', 'pompes-a-pied', 'outils-entretien', 2, 'en'),
('demonte-pneus', 'Tire levers', 'demonte-pneus', 'outils-entretien', 2, 'en'),
('lubrifiants-nettoyants', 'Lubricants & cleaners', 'lubrifiants-nettoyants', 'outils-entretien', 2, 'en'),
('cles-multi-outils-velo', 'Wrenches & multitools', 'cles-multi-outils-velo', 'outils-entretien', 2, 'en'),
('supports-de-reparation', 'Repair stands', 'supports-de-reparation', 'outils-entretien', 2, 'en'),
('brosses-dentretien', 'Cleaning brushes', 'brosses-dentretien', 'outils-entretien', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('supports-muraux-velo', 'Wall mounts', 'supports-muraux-velo', 'rangement-transport', 2, 'en'),
('crochets-racks', 'Hooks & racks', 'crochets-racks', 'rangement-transport', 2, 'en'),
('housses-de-transport-velo', 'Bike travel bags', 'housses-de-transport-velo', 'rangement-transport', 2, 'en'),
('porte-velos-voiture', 'Car racks (trunk, roof, hitch)', 'porte-velos-voiture', 'rangement-transport', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cardiofrequencemetres', 'Heart rate monitors', 'cardiofrequencemetres', 'equipements-sportifs-cyclisme', 2, 'en'),
('capteurs-de-puissance', 'Power meters', 'capteurs-de-puissance', 'equipements-sportifs-cyclisme', 2, 'en'),
('montres-sport', 'Sports watches', 'montres-sport', 'equipements-sportifs-cyclisme', 2, 'en'),
('vetements-de-pluie-coupe-vent', 'Rainwear & windbreakers', 'vetements-de-pluie-coupe-vent', 'equipements-sportifs-cyclisme', 2, 'en'),
('accessoires-de-performance', 'Performance accessories (aero, weight optimization)', 'accessoires-de-performance', 'equipements-sportifs-cyclisme', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('velo-cyclisme-equipements', 'Bicicletas, Ciclismo y Equipamiento', 'velo-cyclisme-equipements', NULL, 0, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('types-de-velos', 'Tipos de bicicletas', 'types-de-velos', 'velo-cyclisme-equipements', 1, 'es'),
('equipements-cyclistes', 'Equipamiento ciclista', 'equipements-cyclistes', 'velo-cyclisme-equipements', 1, 'es'),
('composants-pieces-detachees', 'Componentes y repuestos', 'composants-pieces-detachees', 'velo-cyclisme-equipements', 1, 'es'),
('accessoires-velos', 'Accesorios para bicicletas', 'accessoires-velos', 'velo-cyclisme-equipements', 1, 'es'),
('outils-entretien', 'Herramientas y mantenimiento', 'outils-entretien', 'velo-cyclisme-equipements', 1, 'es'),
('rangement-transport', 'Almacenamiento y transporte', 'rangement-transport', 'velo-cyclisme-equipements', 1, 'es'),
('equipements-sportifs-cyclisme', 'Equipos deportivos de ciclismo', 'equipements-sportifs-cyclisme', 'velo-cyclisme-equipements', 1, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('velos-de-route', 'Bicicletas de carretera', 'velos-de-route', 'types-de-velos', 2, 'es'),
('velos-de-montagne-vtt', 'Bicicletas de montaña (MTB)', 'velos-de-montagne-vtt', 'types-de-velos', 2, 'es'),
('velos-hybrides', 'Bicicletas híbridas', 'velos-hybrides', 'types-de-velos', 2, 'es'),
('velos-gravel', 'Bicicletas gravel', 'velos-gravel', 'types-de-velos', 2, 'es'),
('velos-de-ville', 'Bicicletas de ciudad', 'velos-de-ville', 'types-de-velos', 2, 'es'),
('velos-pliants', 'Bicicletas plegables', 'velos-pliants', 'types-de-velos', 2, 'es'),
('velos-bmx', 'Bicicletas BMX', 'velos-bmx', 'types-de-velos', 2, 'es'),
('velos-electriques-vae', 'Bicicletas eléctricas (e-bike)', 'velos-electriques-vae', 'types-de-velos', 2, 'es'),
('velos-cargo', 'Bicicletas de carga', 'velos-cargo', 'types-de-velos', 2, 'es'),
('tandems', 'Tándems', 'tandems', 'types-de-velos', 2, 'es'),
('velos-enfants', 'Bicicletas infantiles', 'velos-enfants', 'types-de-velos', 2, 'es'),
('draisiennes', 'Bicicletas de equilibrio', 'draisiennes', 'types-de-velos', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques', 'Cascos', 'casques', 'equipements-cyclistes', 2, 'es'),
('gants', 'Guantes', 'gants', 'equipements-cyclistes', 2, 'es'),
('lunettes-de-cyclisme', 'Gafas de ciclismo', 'lunettes-de-cyclisme', 'equipements-cyclistes', 2, 'es'),
('maillots', 'Maillots', 'maillots', 'equipements-cyclistes', 2, 'es'),
('cuissards', 'Culottes', 'cuissards', 'equipements-cyclistes', 2, 'es'),
('chaussures-de-cyclisme', 'Zapatillas de ciclismo', 'chaussures-de-cyclisme', 'equipements-cyclistes', 2, 'es'),
('protections-genouilleres-coudieres', 'Protecciones (rodilleras, coderas)', 'protections-genouilleres-coudieres', 'equipements-cyclistes', 2, 'es'),
('gilets-reflechissants', 'Chalecos reflectantes', 'gilets-reflechissants', 'equipements-cyclistes', 2, 'es'),
('sacs-a-dos-velo', 'Mochilas de ciclismo', 'sacs-a-dos-velo', 'equipements-cyclistes', 2, 'es'),
('gourdes-porte-gourdes', 'Bidones y portabidones', 'gourdes-porte-gourdes', 'equipements-cyclistes', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('roues-pneus', 'Ruedas y neumáticos', 'roues-pneus', 'composants-pieces-detachees', 2, 'es'),
('chambres-a-air', 'Cámaras de aire', 'chambres-a-air', 'composants-pieces-detachees', 2, 'es'),
('freins-patins-disques', 'Frenos (zapatas, discos)', 'freins-patins-disques', 'composants-pieces-detachees', 2, 'es'),
('derailleurs', 'Desviadores', 'derailleurs', 'composants-pieces-detachees', 2, 'es'),
('chaines-cassettes', 'Cadenas y cassettes', 'chaines-cassettes', 'composants-pieces-detachees', 2, 'es'),
('pedales', 'Pedales', 'pedales', 'composants-pieces-detachees', 2, 'es'),
('selles-tiges-de-selle', 'Sillines y tijas', 'selles-tiges-de-selle', 'composants-pieces-detachees', 2, 'es'),
('guidons-poignees', 'Manillares y puños', 'guidons-poignees', 'composants-pieces-detachees', 2, 'es'),
('pedaliers', 'Bielas', 'pedaliers', 'composants-pieces-detachees', 2, 'es'),
('suspensions-fourches', 'Suspensiones y horquillas', 'suspensions-fourches', 'composants-pieces-detachees', 2, 'es'),
('cadres-kits-cadres', 'Cuadros y kits de cuadro', 'cadres-kits-cadres', 'composants-pieces-detachees', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('eclairages-avant-arriere', 'Luces (delanteras/traseras)', 'eclairages-avant-arriere', 'accessoires-velos', 2, 'es'),
('sonnettes-klaxons', 'Timbres y bocinas', 'sonnettes-klaxons', 'accessoires-velos', 2, 'es'),
('retroviseurs', 'Espejos', 'retroviseurs', 'accessoires-velos', 2, 'es'),
('bequilles', 'Patas de apoyo', 'bequilles', 'accessoires-velos', 2, 'es'),
('porte-bagages', 'Portaequipajes', 'porte-bagages', 'accessoires-velos', 2, 'es'),
('paniers-sacs', 'Cestas y bolsas', 'paniers-sacs', 'accessoires-velos', 2, 'es'),
('garde-boue', 'Guardabarros', 'garde-boue', 'accessoires-velos', 2, 'es'),
('antivols', 'Antirrobos', 'antivols', 'accessoires-velos', 2, 'es'),
('compteurs-gps-velo', 'Ciclocomputadores y GPS', 'compteurs-gps-velo', 'accessoires-velos', 2, 'es'),
('supports-smartphone', 'Soportes para smartphone', 'supports-smartphone', 'accessoires-velos', 2, 'es'),
('pompes-a-main', 'Bombas de mano', 'pompes-a-main', 'accessoires-velos', 2, 'es'),
('porte-enfants', 'Sillas para niños', 'porte-enfants', 'accessoires-velos', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('kits-de-reparation', 'Kits de reparación', 'kits-de-reparation', 'outils-entretien', 2, 'es'),
('pompes-a-pied', 'Bombas de pie', 'pompes-a-pied', 'outils-entretien', 2, 'es'),
('demonte-pneus', 'Desmontables', 'demonte-pneus', 'outils-entretien', 2, 'es'),
('lubrifiants-nettoyants', 'Lubricantes y limpiadores', 'lubrifiants-nettoyants', 'outils-entretien', 2, 'es'),
('cles-multi-outils-velo', 'Llaves y multiherramientas', 'cles-multi-outils-velo', 'outils-entretien', 2, 'es'),
('supports-de-reparation', 'Soportes de reparación', 'supports-de-reparation', 'outils-entretien', 2, 'es'),
('brosses-dentretien', 'Cepillos de limpieza', 'brosses-dentretien', 'outils-entretien', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('supports-muraux-velo', 'Soportes de pared', 'supports-muraux-velo', 'rangement-transport', 2, 'es'),
('crochets-racks', 'Ganchos y racks', 'crochets-racks', 'rangement-transport', 2, 'es'),
('housses-de-transport-velo', 'Fundas de transporte', 'housses-de-transport-velo', 'rangement-transport', 2, 'es'),
('porte-velos-voiture', 'Portabicicletas para coche (maletero, techo, enganche)', 'porte-velos-voiture', 'rangement-transport', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cardiofrequencemetres', 'Pulsómetros', 'cardiofrequencemetres', 'equipements-sportifs-cyclisme', 2, 'es'),
('capteurs-de-puissance', 'Medidores de potencia', 'capteurs-de-puissance', 'equipements-sportifs-cyclisme', 2, 'es'),
('montres-sport', 'Relojes deportivos', 'montres-sport', 'equipements-sportifs-cyclisme', 2, 'es'),
('vetements-de-pluie-coupe-vent', 'Ropa de lluvia y cortavientos', 'vetements-de-pluie-coupe-vent', 'equipements-sportifs-cyclisme', 2, 'es'),
('accessoires-de-performance', 'Accesorios de rendimiento (aerodinámica, optimización de peso)', 'accessoires-de-performance', 'equipements-sportifs-cyclisme', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('velo-cyclisme-equipements', 'الدراجات، ركوب الدراجات والمعدات', 'velo-cyclisme-equipements', NULL, 0, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('types-de-velos', 'أنواع الدراجات', 'types-de-velos', 'velo-cyclisme-equipements', 1, 'ar'),
('equipements-cyclistes', 'معدات راكبي الدراجات', 'equipements-cyclistes', 'velo-cyclisme-equipements', 1, 'ar'),
('composants-pieces-detachees', 'المكوّنات وقطع الغيار', 'composants-pieces-detachees', 'velo-cyclisme-equipements', 1, 'ar'),
('accessoires-velos', 'ملحقات الدراجة', 'accessoires-velos', 'velo-cyclisme-equipements', 1, 'ar'),
('outils-entretien', 'أدوات وصيانة', 'outils-entretien', 'velo-cyclisme-equipements', 1, 'ar'),
('rangement-transport', 'تخزين ونقل', 'rangement-transport', 'velo-cyclisme-equipements', 1, 'ar'),
('equipements-sportifs-cyclisme', 'معدات رياضية مرتبطة بالدراجات', 'equipements-sportifs-cyclisme', 'velo-cyclisme-equipements', 1, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('velos-de-route', 'دراجات طريق', 'velos-de-route', 'types-de-velos', 2, 'ar'),
('velos-de-montagne-vtt', 'دراجات جبلية (MTB)', 'velos-de-montagne-vtt', 'types-de-velos', 2, 'ar'),
('velos-hybrides', 'دراجات هجينة', 'velos-hybrides', 'types-de-velos', 2, 'ar'),
('velos-gravel', 'دراجات Gravel', 'velos-gravel', 'types-de-velos', 2, 'ar'),
('velos-de-ville', 'دراجات مدينة', 'velos-de-ville', 'types-de-velos', 2, 'ar'),
('velos-pliants', 'دراجات قابلة للطي', 'velos-pliants', 'types-de-velos', 2, 'ar'),
('velos-bmx', 'دراجات BMX', 'velos-bmx', 'types-de-velos', 2, 'ar'),
('velos-electriques-vae', 'دراجات كهربائية (E‑Bike)', 'velos-electriques-vae', 'types-de-velos', 2, 'ar'),
('velos-cargo', 'دراجات شحن', 'velos-cargo', 'types-de-velos', 2, 'ar'),
('tandems', 'دراجات ترادفية', 'tandems', 'types-de-velos', 2, 'ar'),
('velos-enfants', 'دراجات أطفال', 'velos-enfants', 'types-de-velos', 2, 'ar'),
('draisiennes', 'دراجات توازن', 'draisiennes', 'types-de-velos', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques', 'خوذ', 'casques', 'equipements-cyclistes', 2, 'ar'),
('gants', 'قفازات', 'gants', 'equipements-cyclistes', 2, 'ar'),
('lunettes-de-cyclisme', 'نظارات ركوب الدراجات', 'lunettes-de-cyclisme', 'equipements-cyclistes', 2, 'ar'),
('maillots', 'قمصان', 'maillots', 'equipements-cyclistes', 2, 'ar'),
('cuissards', 'سراويل مبطنة', 'cuissards', 'equipements-cyclistes', 2, 'ar'),
('chaussures-de-cyclisme', 'أحذية ركوب الدراجات', 'chaussures-de-cyclisme', 'equipements-cyclistes', 2, 'ar'),
('protections-genouilleres-coudieres', 'واقيات (ركب، مرفقين)', 'protections-genouilleres-coudieres', 'equipements-cyclistes', 2, 'ar'),
('gilets-reflechissants', 'سترات عاكسة', 'gilets-reflechissants', 'equipements-cyclistes', 2, 'ar'),
('sacs-a-dos-velo', 'حقائب ظهر للدراجات', 'sacs-a-dos-velo', 'equipements-cyclistes', 2, 'ar'),
('gourdes-porte-gourdes', 'قوارير وحوامل القوارير', 'gourdes-porte-gourdes', 'equipements-cyclistes', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('roues-pneus', 'عجلات وإطارات', 'roues-pneus', 'composants-pieces-detachees', 2, 'ar'),
('chambres-a-air', 'أنابيب داخلية', 'chambres-a-air', 'composants-pieces-detachees', 2, 'ar'),
('freins-patins-disques', 'فرامل (سفايف، أقراص)', 'freins-patins-disques', 'composants-pieces-detachees', 2, 'ar'),
('derailleurs', 'مبدلات', 'derailleurs', 'composants-pieces-detachees', 2, 'ar'),
('chaines-cassettes', 'سلاسل وكاسات', 'chaines-cassettes', 'composants-pieces-detachees', 2, 'ar'),
('pedales', 'دواسات', 'pedales', 'composants-pieces-detachees', 2, 'ar'),
('selles-tiges-de-selle', 'مقاعد وأنابيب مقعد', 'selles-tiges-de-selle', 'composants-pieces-detachees', 2, 'ar'),
('guidons-poignees', 'مقود ومقابض', 'guidons-poignees', 'composants-pieces-detachees', 2, 'ar'),
('pedaliers', 'مجموعات كرنك', 'pedaliers', 'composants-pieces-detachees', 2, 'ar'),
('suspensions-fourches', 'ممتصات وصُمّانات/شوكات', 'suspensions-fourches', 'composants-pieces-detachees', 2, 'ar'),
('cadres-kits-cadres', 'إطارات وهياكل', 'cadres-kits-cadres', 'composants-pieces-detachees', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('eclairages-avant-arriere', 'أضواء (أمام/خلف)', 'eclairages-avant-arriere', 'accessoires-velos', 2, 'ar'),
('sonnettes-klaxons', 'جرس ومنبّهات', 'sonnettes-klaxons', 'accessoires-velos', 2, 'ar'),
('retroviseurs', 'مرايا', 'retroviseurs', 'accessoires-velos', 2, 'ar'),
('bequilles', 'حوامل وقوف', 'bequilles', 'accessoires-velos', 2, 'ar'),
('porte-bagages', 'رفوف تحميل', 'porte-bagages', 'accessoires-velos', 2, 'ar'),
('paniers-sacs', 'سلال وحقائب', 'paniers-sacs', 'accessoires-velos', 2, 'ar'),
('garde-boue', 'واقيات طين', 'garde-boue', 'accessoires-velos', 2, 'ar'),
('antivols', 'أقفال', 'antivols', 'accessoires-velos', 2, 'ar'),
('compteurs-gps-velo', 'عدّادات وجي بي إس للدراجات', 'compteurs-gps-velo', 'accessoires-velos', 2, 'ar'),
('supports-smartphone', 'حوامل الهاتف', 'supports-smartphone', 'accessoires-velos', 2, 'ar'),
('pompes-a-main', 'مضخات يد', 'pompes-a-main', 'accessoires-velos', 2, 'ar'),
('porte-enfants', 'مقاعد أطفال', 'porte-enfants', 'accessoires-velos', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('kits-de-reparation', 'مجموعات إصلاح', 'kits-de-reparation', 'outils-entretien', 2, 'ar'),
('pompes-a-pied', 'مضخات أرضية', 'pompes-a-pied', 'outils-entretien', 2, 'ar'),
('demonte-pneus', 'مفاتيح فك الإطارات', 'demonte-pneus', 'outils-entretien', 2, 'ar'),
('lubrifiants-nettoyants', 'زيوت ومنظفات', 'lubrifiants-nettoyants', 'outils-entretien', 2, 'ar'),
('cles-multi-outils-velo', 'مفاتيح وأدوات متعددة', 'cles-multi-outils-velo', 'outils-entretien', 2, 'ar'),
('supports-de-reparation', 'منصّات صيانة', 'supports-de-reparation', 'outils-entretien', 2, 'ar'),
('brosses-dentretien', 'فرش تنظيف', 'brosses-dentretien', 'outils-entretien', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('supports-muraux-velo', 'حوامل جدارية', 'supports-muraux-velo', 'rangement-transport', 2, 'ar'),
('crochets-racks', 'خطافات ورفوف', 'crochets-racks', 'rangement-transport', 2, 'ar'),
('housses-de-transport-velo', 'أغطية/حقائب نقل الدراجة', 'housses-de-transport-velo', 'rangement-transport', 2, 'ar'),
('porte-velos-voiture', 'حوامل سيارات (صندوق، سقف، خطاف سحب)', 'porte-velos-voiture', 'rangement-transport', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cardiofrequencemetres', 'أجهزة قياس نبض القلب', 'cardiofrequencemetres', 'equipements-sportifs-cyclisme', 2, 'ar'),
('capteurs-de-puissance', 'مقاييس القدرة', 'capteurs-de-puissance', 'equipements-sportifs-cyclisme', 2, 'ar'),
('montres-sport', 'ساعات رياضية', 'montres-sport', 'equipements-sportifs-cyclisme', 2, 'ar'),
('vetements-de-pluie-coupe-vent', 'ملابس مطر وصدّ للريح', 'vetements-de-pluie-coupe-vent', 'equipements-sportifs-cyclisme', 2, 'ar'),
('accessoires-de-performance', 'ملحقات الأداء (ديناميكا هوائية، تحسين الوزن)', 'accessoires-de-performance', 'equipements-sportifs-cyclisme', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('velo-cyclisme-equipements', 'Fahrräder, Radsport & Ausrüstung', 'velo-cyclisme-equipements', NULL, 0, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('types-de-velos', 'Fahrradtypen', 'types-de-velos', 'velo-cyclisme-equipements', 1, 'de'),
('equipements-cyclistes', 'Radsport-Ausrüstung', 'equipements-cyclistes', 'velo-cyclisme-equipements', 1, 'de'),
('composants-pieces-detachees', 'Komponenten & Ersatzteile', 'composants-pieces-detachees', 'velo-cyclisme-equipements', 1, 'de'),
('accessoires-velos', 'Fahrrad-Zubehör', 'accessoires-velos', 'velo-cyclisme-equipements', 1, 'de'),
('outils-entretien', 'Werkzeuge & Pflege', 'outils-entretien', 'velo-cyclisme-equipements', 1, 'de'),
('rangement-transport', 'Aufbewahrung & Transport', 'rangement-transport', 'velo-cyclisme-equipements', 1, 'de'),
('equipements-sportifs-cyclisme', 'Radsport-Zusatzausrüstung', 'equipements-sportifs-cyclisme', 'velo-cyclisme-equipements', 1, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('velos-de-route', 'Rennräder', 'velos-de-route', 'types-de-velos', 2, 'de'),
('velos-de-montagne-vtt', 'Mountainbikes (MTB)', 'velos-de-montagne-vtt', 'types-de-velos', 2, 'de'),
('velos-hybrides', 'Trekking-/Hybridräder', 'velos-hybrides', 'types-de-velos', 2, 'de'),
('velos-gravel', 'Gravelbikes', 'velos-gravel', 'types-de-velos', 2, 'de'),
('velos-de-ville', 'Cityräder', 'velos-de-ville', 'types-de-velos', 2, 'de'),
('velos-pliants', 'Falträder', 'velos-pliants', 'types-de-velos', 2, 'de'),
('velos-bmx', 'BMX-Räder', 'velos-bmx', 'types-de-velos', 2, 'de'),
('velos-electriques-vae', 'E-Bikes', 'velos-electriques-vae', 'types-de-velos', 2, 'de'),
('velos-cargo', 'Lastenräder', 'velos-cargo', 'types-de-velos', 2, 'de'),
('tandems', 'Tandems', 'tandems', 'types-de-velos', 2, 'de'),
('velos-enfants', 'Kinderfahrräder', 'velos-enfants', 'types-de-velos', 2, 'de'),
('draisiennes', 'Laufräder', 'draisiennes', 'types-de-velos', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques', 'Helme', 'casques', 'equipements-cyclistes', 2, 'de'),
('gants', 'Handschuhe', 'gants', 'equipements-cyclistes', 2, 'de'),
('lunettes-de-cyclisme', 'Radsportbrillen', 'lunettes-de-cyclisme', 'equipements-cyclistes', 2, 'de'),
('maillots', 'Trikots', 'maillots', 'equipements-cyclistes', 2, 'de'),
('cuissards', 'Radhosen', 'cuissards', 'equipements-cyclistes', 2, 'de'),
('chaussures-de-cyclisme', 'Radschuhe', 'chaussures-de-cyclisme', 'equipements-cyclistes', 2, 'de'),
('protections-genouilleres-coudieres', 'Schutzausrüstung (Knie, Ellenbogen)', 'protections-genouilleres-coudieres', 'equipements-cyclistes', 2, 'de'),
('gilets-reflechissants', 'Reflexwesten', 'gilets-reflechissants', 'equipements-cyclistes', 2, 'de'),
('sacs-a-dos-velo', 'Fahrradrucksäcke', 'sacs-a-dos-velo', 'equipements-cyclistes', 2, 'de'),
('gourdes-porte-gourdes', 'Flaschen & Flaschenhalter', 'gourdes-porte-gourdes', 'equipements-cyclistes', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('roues-pneus', 'Laufräder & Reifen', 'roues-pneus', 'composants-pieces-detachees', 2, 'de'),
('chambres-a-air', 'Schläuche', 'chambres-a-air', 'composants-pieces-detachees', 2, 'de'),
('freins-patins-disques', 'Bremsen (Beläge, Scheiben)', 'freins-patins-disques', 'composants-pieces-detachees', 2, 'de'),
('derailleurs', 'Schaltwerke', 'derailleurs', 'composants-pieces-detachees', 2, 'de'),
('chaines-cassettes', 'Ketten & Kassetten', 'chaines-cassettes', 'composants-pieces-detachees', 2, 'de'),
('pedales', 'Pedale', 'pedales', 'composants-pieces-detachees', 2, 'de'),
('selles-tiges-de-selle', 'Sättel & Sattelstützen', 'selles-tiges-de-selle', 'composants-pieces-detachees', 2, 'de'),
('guidons-poignees', 'Lenker & Griffe', 'guidons-poignees', 'composants-pieces-detachees', 2, 'de'),
('pedaliers', 'Kurbeln', 'pedaliers', 'composants-pieces-detachees', 2, 'de'),
('suspensions-fourches', 'Federungen & Gabeln', 'suspensions-fourches', 'composants-pieces-detachees', 2, 'de'),
('cadres-kits-cadres', 'Rahmen & Rahmensets', 'cadres-kits-cadres', 'composants-pieces-detachees', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('eclairages-avant-arriere', 'Beleuchtung (vorne/hinten)', 'eclairages-avant-arriere', 'accessoires-velos', 2, 'de'),
('sonnettes-klaxons', 'Klingeln & Hupen', 'sonnettes-klaxons', 'accessoires-velos', 2, 'de'),
('retroviseurs', 'Spiegel', 'retroviseurs', 'accessoires-velos', 2, 'de'),
('bequilles', 'Ständer', 'bequilles', 'accessoires-velos', 2, 'de'),
('porte-bagages', 'Gepäckträger', 'porte-bagages', 'accessoires-velos', 2, 'de'),
('paniers-sacs', 'Körbe & Taschen', 'paniers-sacs', 'accessoires-velos', 2, 'de'),
('garde-boue', 'Schutzbleche', 'garde-boue', 'accessoires-velos', 2, 'de'),
('antivols', 'Schlösser', 'antivols', 'accessoires-velos', 2, 'de'),
('compteurs-gps-velo', 'Fahrradcomputer & GPS', 'compteurs-gps-velo', 'accessoires-velos', 2, 'de'),
('supports-smartphone', 'Handyhalterungen', 'supports-smartphone', 'accessoires-velos', 2, 'de'),
('pompes-a-main', 'Minipumpen', 'pompes-a-main', 'accessoires-velos', 2, 'de'),
('porte-enfants', 'Kindersitze', 'porte-enfants', 'accessoires-velos', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('kits-de-reparation', 'Reparatursets', 'kits-de-reparation', 'outils-entretien', 2, 'de'),
('pompes-a-pied', 'Standpumpen', 'pompes-a-pied', 'outils-entretien', 2, 'de'),
('demonte-pneus', 'Reifenheber', 'demonte-pneus', 'outils-entretien', 2, 'de'),
('lubrifiants-nettoyants', 'Schmiermittel & Reiniger', 'lubrifiants-nettoyants', 'outils-entretien', 2, 'de'),
('cles-multi-outils-velo', 'Schlüssel & Multitools', 'cles-multi-outils-velo', 'outils-entretien', 2, 'de'),
('supports-de-reparation', 'Montageständer', 'supports-de-reparation', 'outils-entretien', 2, 'de'),
('brosses-dentretien', 'Reinigungsbürsten', 'brosses-dentretien', 'outils-entretien', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('supports-muraux-velo', 'Wandhalterungen', 'supports-muraux-velo', 'rangement-transport', 2, 'de'),
('crochets-racks', 'Haken & Racks', 'crochets-racks', 'rangement-transport', 2, 'de'),
('housses-de-transport-velo', 'Transporttaschen', 'housses-de-transport-velo', 'rangement-transport', 2, 'de'),
('porte-velos-voiture', 'Fahrradträger fürs Auto (Heck, Dach, Anhängerkupplung)', 'porte-velos-voiture', 'rangement-transport', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cardiofrequencemetres', 'Herzfrequenzmesser', 'cardiofrequencemetres', 'equipements-sportifs-cyclisme', 2, 'de'),
('capteurs-de-puissance', 'Leistungsmesser', 'capteurs-de-puissance', 'equipements-sportifs-cyclisme', 2, 'de'),
('montres-sport', 'Sportuhren', 'montres-sport', 'equipements-sportifs-cyclisme', 2, 'de'),
('vetements-de-pluie-coupe-vent', 'Regen- & Windjacken', 'vetements-de-pluie-coupe-vent', 'equipements-sportifs-cyclisme', 2, 'de'),
('accessoires-de-performance', 'Performance-Zubehör (Aerodynamik, Gewichtsoptimierung)', 'accessoires-de-performance', 'equipements-sportifs-cyclisme', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('velo-cyclisme-equipements', 'Bici, Ciclismo & Attrezzature', 'velo-cyclisme-equipements', NULL, 0, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('types-de-velos', 'Tipi di bici', 'types-de-velos', 'velo-cyclisme-equipements', 1, 'it'),
('equipements-cyclistes', 'Equipaggiamento ciclistico', 'equipements-cyclistes', 'velo-cyclisme-equipements', 1, 'it'),
('composants-pieces-detachees', 'Componenti & ricambi', 'composants-pieces-detachees', 'velo-cyclisme-equipements', 1, 'it'),
('accessoires-velos', 'Accessori bici', 'accessoires-velos', 'velo-cyclisme-equipements', 1, 'it'),
('outils-entretien', 'Attrezzi & manutenzione', 'outils-entretien', 'velo-cyclisme-equipements', 1, 'it'),
('rangement-transport', 'Stoccaggio & trasporto', 'rangement-transport', 'velo-cyclisme-equipements', 1, 'it'),
('equipements-sportifs-cyclisme', 'Attrezzatura sportiva per il ciclismo', 'equipements-sportifs-cyclisme', 'velo-cyclisme-equipements', 1, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('velos-de-route', 'Bici da strada', 'velos-de-route', 'types-de-velos', 2, 'it'),
('velos-de-montagne-vtt', 'Mountain bike (MTB)', 'velos-de-montagne-vtt', 'types-de-velos', 2, 'it'),
('velos-hybrides', 'Bici ibride', 'velos-hybrides', 'types-de-velos', 2, 'it'),
('velos-gravel', 'Gravel bike', 'velos-gravel', 'types-de-velos', 2, 'it'),
('velos-de-ville', 'Bici da città', 'velos-de-ville', 'types-de-velos', 2, 'it'),
('velos-pliants', 'Bici pieghevoli', 'velos-pliants', 'types-de-velos', 2, 'it'),
('velos-bmx', 'BMX', 'velos-bmx', 'types-de-velos', 2, 'it'),
('velos-electriques-vae', 'E-bike', 'velos-electriques-vae', 'types-de-velos', 2, 'it'),
('velos-cargo', 'Cargo bike', 'velos-cargo', 'types-de-velos', 2, 'it'),
('tandems', 'Tandem', 'tandems', 'types-de-velos', 2, 'it'),
('velos-enfants', 'Bici per bambini', 'velos-enfants', 'types-de-velos', 2, 'it'),
('draisiennes', 'Balance bike', 'draisiennes', 'types-de-velos', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques', 'Caschi', 'casques', 'equipements-cyclistes', 2, 'it'),
('gants', 'Guanti', 'gants', 'equipements-cyclistes', 2, 'it'),
('lunettes-de-cyclisme', 'Occhiali da ciclismo', 'lunettes-de-cyclisme', 2, 'it'),
('maillots', 'Maglie', 'maillots', 2, 'it'),
('cuissards', 'Salopette', 'cuissards', 2, 'it'),
('chaussures-de-cyclisme', 'Scarpe da ciclismo', 'chaussures-de-cyclisme', 2, 'it'),
('protections-genouilleres-coudieres', 'Protezioni (ginocchia, gomiti)', 'protections-genouilleres-coudieres', 2, 'it'),
('gilets-reflechissants', 'Gilet riflettenti', 'gilets-reflechissants', 2, 'it'),
('sacs-a-dos-velo', 'Zaini da ciclismo', 'sacs-a-dos-velo', 2, 'it'),
('gourdes-porte-gourdes', 'Borracce e portaborracce', 'gourdes-porte-gourdes', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('roues-pneus', 'Ruote & copertoni', 'roues-pneus', 'composants-pieces-detachees', 2, 'it'),
('chambres-a-air', 'Camere d’aria', 'chambres-a-air', 'composants-pieces-detachees', 2, 'it'),
('freins-patins-disques', 'Freni (pattini, dischi)', 'freins-patins-disques', 'composants-pieces-detachees', 2, 'it'),
('derailleurs', 'Deragliatori', 'derailleurs', 'composants-pieces-detachees', 2, 'it'),
('chaines-cassettes', 'Catene & cassette', 'chaines-cassettes', 'composants-pieces-detachees', 2, 'it'),
('pedales', 'Pedali', 'pedales', 'composants-pieces-detachees', 2, 'it'),
('selles-tiges-de-selle', 'Selle & reggisella', 'selles-tiges-de-selle', 'composants-pieces-detachees', 2, 'it'),
('guidons-poignees', 'Manubri & manopole', 'guidons-poignees', 'composants-pieces-detachees', 2, 'it'),
('pedaliers', 'Guarniture', 'pedaliers', 'composants-pieces-detachees', 2, 'it'),
('suspensions-fourches', 'Sospensioni & forcelle', 'suspensions-fourches', 'composants-pieces-detachees', 2, 'it'),
('cadres-kits-cadres', 'Telai & frameset', 'cadres-kits-cadres', 'composants-pieces-detachees', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('eclairages-avant-arriere', 'Luci (anteriore/posteriore)', 'eclairages-avant-arriere', 'accessoires-velos', 2, 'it'),
('sonnettes-klaxons', 'Campanelli & clacson', 'sonnettes-klaxons', 'accessoires-velos', 2, 'it'),
('retroviseurs', 'Specchietti', 'retroviseurs', 'accessoires-velos', 2, 'it'),
('bequilles', 'Cavalletti', 'bequilles', 'accessoires-velos', 2, 'it'),
('porte-bagages', 'Portapacchi', 'porte-bagages', 'accessoires-velos', 2, 'it'),
('paniers-sacs', 'Cestini & borse', 'paniers-sacs', 'accessoires-velos', 2, 'it'),
('garde-boue', 'Parafanghi', 'garde-boue', 'accessoires-velos', 2, 'it'),
('antivols', 'Antifurti', 'antivols', 'accessoires-velos', 2, 'it'),
('compteurs-gps-velo', 'Ciclocomputer & GPS', 'compteurs-gps-velo', 'accessoires-velos', 2, 'it'),
('supports-smartphone', 'Supporti smartphone', 'supports-smartphone', 'accessoires-velos', 2, 'it'),
('pompes-a-main', 'Mini-pompe', 'pompes-a-main', 'accessoires-velos', 2, 'it'),
('porte-enfants', 'Seggiolini bambini', 'porte-enfants', 'accessoires-velos', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('kits-de-reparation', 'Kit riparazione', 'kits-de-reparation', 'outils-entretien', 2, 'it'),
('pompes-a-pied', 'Pompe a pavimento', 'pompes-a-pied', 'outils-entretien', 2, 'it'),
('demonte-pneus', 'Leve smontagomme', 'demonte-pneus', 'outils-entretien', 2, 'it'),
('lubrifiants-nettoyants', 'Lubrificanti & detergenti', 'lubrifiants-nettoyants', 'outils-entretien', 2, 'it'),
('cles-multi-outils-velo', 'Chiavi & multitool', 'cles-multi-outils-velo', 'outils-entretien', 2, 'it'),
('supports-de-reparation', 'Cavalletti da lavoro', 'supports-de-reparation', 'outils-entretien', 2, 'it'),
('brosses-dentretien', 'Spazzole di pulizia', 'brosses-dentretien', 'outils-entretien', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('supports-muraux-velo', 'Supporti a parete', 'supports-muraux-velo', 'rangement-transport', 2, 'it'),
('crochets-racks', 'Ganci & rack', 'crochets-racks', 'rangement-transport', 2, 'it'),
('housses-de-transport-velo', 'Borse da trasporto bici', 'housses-de-transport-velo', 'rangement-transport', 2, 'it'),
('porte-velos-voiture', 'Portabici auto (bagagliaio, tetto, gancio traino)', 'porte-velos-voiture', 'rangement-transport', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('cardiofrequencemetres', 'Cardiofrequenzimetri', 'cardiofrequencemetres', 'equipements-sportifs-cyclisme', 2, 'it'),
('capteurs-de-puissance', 'Misuratori di potenza', 'capteurs-de-puissance', 'equipements-sportifs-cyclisme', 2, 'it'),
('montres-sport', 'Orologi sportivi', 'montres-sport', 'equipements-sportifs-cyclisme', 2, 'it'),
('vetements-de-pluie-coupe-vent', 'Impermeabili & antivento', 'vetements-de-pluie-coupe-vent', 'equipements-sportifs-cyclisme', 2, 'it'),
('accessoires-de-performance', 'Accessori prestazionali (aerodinamica, ottimizzazione peso)', 'accessoires-de-performance', 'equipements-sportifs-cyclisme', 2, 'it');