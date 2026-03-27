INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('vehicules-equipements', 'Véhicules, Camions, Motos & Équipements', 'vehicules-equipements', NULL, 0, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voitures-vehicules-legers', 'Voitures & Véhicules Légers', 'voitures-vehicules-legers', 'vehicules-equipements', 1, 'fr'),
('camions-vehicules-professionnels', 'Camions & Véhicules Professionnels', 'camions-vehicules-professionnels', 'vehicules-equipements', 1, 'fr'),
('motos-cyclomoteurs', 'Motos & Cyclomoteurs', 'motos-cyclomoteurs', 'vehicules-equipements', 1, 'fr'),
('velos-motorises-mobilite', 'Vélos Motorisés & Mobilité', 'velos-motorises-mobilite', 'vehicules-equipements', 1, 'fr'),
('equipements-accessoires-auto', 'Équipement & Accessoires Auto', 'equipements-accessoires-auto', 'vehicules-equipements', 1, 'fr'),
('pieces-accessoires-moto', 'Pièces & Accessoires Moto', 'pieces-accessoires-moto', 'vehicules-equipements', 1, 'fr'),
('remorques-attelages', 'Remorques & Attelages', 'remorques-attelages', 'vehicules-equipements', 1, 'fr'),
('diagnostic-atelier', 'Équipement de Diagnostic & Atelier', 'diagnostic-atelier', 'vehicules-equipements', 1, 'fr'),
('carburants-energie', 'Carburants & Énergie', 'carburants-energie', 'vehicules-equipements', 1, 'fr'),
('services-assistance', 'Services & Assistance', 'services-assistance', 'vehicules-equipements', 1, 'fr'),
('marques-populaires-vehicules', 'Marques Populaires (SEO Boost)', 'marques-populaires-vehicules', 'vehicules-equipements', 1, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voitures-citadines', 'Voitures citadines', 'voitures-citadines', 'voitures-vehicules-legers', 2, 'fr'),
('berlines', 'Berlines', 'berlines', 'voitures-vehicules-legers', 2, 'fr'),
('compactes', 'Compactes', 'compactes', 'voitures-vehicules-legers', 2, 'fr'),
('suv', 'SUV', 'suv', 'voitures-vehicules-legers', 2, 'fr'),
('crossovers', 'Crossovers', 'crossovers', 'voitures-vehicules-legers', 2, 'fr'),
('4x4', '4x4', '4x4', 'voitures-vehicules-legers', 2, 'fr'),
('coupes', 'Coupés', 'coupes', 'voitures-vehicules-legers', 2, 'fr'),
('cabriolets', 'Cabriolets', 'cabriolets', 'voitures-vehicules-legers', 2, 'fr'),
('breaks', 'Breaks', 'breaks', 'voitures-vehicules-legers', 2, 'fr'),
('voitures-familiales', 'Voitures familiales', 'voitures-familiales', 'voitures-vehicules-legers', 2, 'fr'),
('vul', 'Véhicules utilitaires légers', 'vehicules-utilitaires-legers', 'voitures-vehicules-legers', 2, 'fr'),
('vans', 'Vans', 'vans', 'voitures-vehicules-legers', 2, 'fr'),
('voitures-hybrides', 'Voitures hybrides', 'voitures-hybrides', 'voitures-vehicules-legers', 2, 'fr'),
('voitures-electriques', 'Voitures électriques', 'voitures-electriques', 'voitures-vehicules-legers', 2, 'fr'),
('voitures-sportives', 'Voitures sportives', 'voitures-sportives', 'voitures-vehicules-legers', 2, 'fr'),
('voitures-anciennes-collection', 'Voitures anciennes & de collection', 'voitures-anciennes-collection', 'voitures-vehicules-legers', 2, 'fr'),
('voitures-reconditionnees', 'Voitures reconditionnées', 'voitures-reconditionnees', 'voitures-vehicules-legers', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('camions-legers', 'Camions légers', 'camions-legers', 'camions-vehicules-professionnels', 2, 'fr'),
('poids-lourds', 'Poids lourds', 'poids-lourds', 'camions-vehicules-professionnels', 2, 'fr'),
('semi-remorques', 'Semi-remorques', 'semi-remorques', 'camions-vehicules-professionnels', 2, 'fr'),
('tracteurs-routiers', 'Tracteurs routiers', 'tracteurs-routiers', 'camions-vehicules-professionnels', 2, 'fr'),
('camions-bennes', 'Camions-bennes', 'camions-bennes', 'camions-vehicules-professionnels', 2, 'fr'),
('camions-frigorifiques', 'Camions frigorifiques', 'camions-frigorifiques', 'camions-vehicules-professionnels', 2, 'fr'),
('camions-plateaux', 'Camions plateaux', 'camions-plateaux', 'camions-vehicules-professionnels', 2, 'fr'),
('fourgons-professionnels', 'Fourgons professionnels', 'fourgons-professionnels', 'camions-vehicules-professionnels', 2, 'fr'),
('fourgonnettes', 'Fourgonnettes', 'fourgonnettes', 'camions-vehicules-professionnels', 2, 'fr'),
('minibus', 'Minibus', 'minibus', 'camions-vehicules-professionnels', 2, 'fr'),
('bus', 'Bus', 'bus', 'camions-vehicules-professionnels', 2, 'fr'),
('vehicules-de-chantier', 'Véhicules de chantier', 'vehicules-de-chantier', 'camions-vehicules-professionnels', 2, 'fr'),
('depanneuses', 'Dépanneuses', 'depanneuses', 'camions-vehicules-professionnels', 2, 'fr'),
('vehicules-toles', 'Véhicules tôlés', 'vehicules-toles', 'camions-vehicules-professionnels', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('motos-sportives', 'Motos sportives', 'motos-sportives', 'motos-cyclomoteurs', 2, 'fr'),
('motos-roadster', 'Motos roadster', 'motos-roadster', 'motos-cyclomoteurs', 2, 'fr'),
('motos-touring', 'Motos touring', 'motos-touring', 'motos-cyclomoteurs', 2, 'fr'),
('motos-enduro', 'Motos enduro', 'motos-enduro', 'motos-cyclomoteurs', 2, 'fr'),
('motos-trail', 'Motos trail', 'motos-trail', 'motos-cyclomoteurs', 2, 'fr'),
('motos-cross', 'Motos cross', 'motos-cross', 'motos-cyclomoteurs', 2, 'fr'),
('motos-custom', 'Motos custom', 'motos-custom', 'motos-cyclomoteurs', 2, 'fr'),
('scooters-50cc', 'Scooters 50cc', 'scooters-50cc', 'motos-cyclomoteurs', 2, 'fr'),
('scooters-125cc', 'Scooters 125cc', 'scooters-125cc', 'motos-cyclomoteurs', 2, 'fr'),
('maxi-scooters', 'Maxi-scooters', 'maxi-scooters', 'motos-cyclomoteurs', 2, 'fr'),
('mobylettes', 'Mobylettes', 'mobylettes', 'motos-cyclomoteurs', 2, 'fr'),
('quads-atv', 'Quads & ATV', 'quads-atv', 'motos-cyclomoteurs', 2, 'fr'),
('tricycles-motorises', 'Tricycles motorisés', 'tricycles-motorises', 'motos-cyclomoteurs', 2, 'fr'),
('motos-electriques', 'Motos électriques', 'motos-electriques', 'motos-cyclomoteurs', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('velos-electriques-rapides', 'Vélos électriques rapides', 'velos-electriques-rapides', 'velos-motorises-mobilite', 2, 'fr'),
('trottinettes-electriques', 'Trottinettes électriques', 'trottinettes-electriques', 'velos-motorises-mobilite', 2, 'fr'),
('gyropodes', 'Gyropodes', 'gyropodes', 'velos-motorises-mobilite', 2, 'fr'),
('monoroues-electriques', 'Monoroues électriques', 'monoroues-electriques', 'velos-motorises-mobilite', 2, 'fr'),
('cyclomoteurs-legers-electriques', 'Cyclomoteurs légers électriques', 'cyclomoteurs-legers-electriques', 'velos-motorises-mobilite', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('pneus', 'Pneus', 'pneus', 'equipements-accessoires-auto', 2, 'fr'),
('jantes', 'Jantes', 'jantes', 'equipements-accessoires-auto', 2, 'fr'),
('batteries', 'Batteries', 'batteries', 'equipements-accessoires-auto', 2, 'fr'),
('filtres', 'Filtres', 'filtres', 'equipements-accessoires-auto', 2, 'fr'),
('huiles-lubrifiants', 'Huiles & lubrifiants', 'huiles-lubrifiants', 'equipements-accessoires-auto', 2, 'fr'),
('plaquettes-frein', 'Plaquettes de frein', 'plaquettes-frein', 'equipements-accessoires-auto', 2, 'fr'),
('disques-frein', 'Disques de frein', 'disques-frein', 'equipements-accessoires-auto', 2, 'fr'),
('amortisseurs', 'Amortisseurs', 'amortisseurs', 'equipements-accessoires-auto', 2, 'fr'),
('courroies', 'Courroies', 'courroies', 'equipements-accessoires-auto', 2, 'fr'),
('embrayages', 'Embrayages', 'embrayages', 'equipements-accessoires-auto', 2, 'fr'),
('bougies', 'Bougies', 'bougies', 'equipements-accessoires-auto', 2, 'fr'),
('echappements', 'Échappements', 'echappements', 'equipements-accessoires-auto', 2, 'fr'),
('pieces-moteur', 'Pièces moteur', 'pieces-moteur', 'equipements-accessoires-auto', 2, 'fr'),
('kits-distribution', 'Kits de distribution', 'kits-distribution', 'equipements-accessoires-auto', 2, 'fr'),
('accessoires-interieurs', 'Accessoires intérieurs', 'accessoires-interieurs', 'equipements-accessoires-auto', 2, 'fr'),
('housses-sieges', 'Housses de sièges', 'housses-sieges', 'equipements-accessoires-auto', 2, 'fr'),
('tapis', 'Tapis', 'tapis', 'equipements-accessoires-auto', 2, 'fr'),
('gps', 'GPS', 'gps', 'equipements-accessoires-auto', 2, 'fr'),
('cameras-embarquees', 'Caméras embarquées', 'cameras-embarquees', 'equipements-accessoires-auto', 2, 'fr'),
('alarmes-auto', 'Alarmes auto', 'alarmes-auto', 'equipements-accessoires-auto', 2, 'fr'),
('kits-mains-libres', 'Kits mains-libres', 'kits-mains-libres', 'equipements-accessoires-auto', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-moto', 'Casques moto', 'casques-moto', 'pieces-accessoires-moto', 2, 'fr'),
('blousons-moto', 'Blousons moto', 'blousons-moto', 'pieces-accessoires-moto', 2, 'fr'),
('gants-moto', 'Gants moto', 'gants-moto', 'pieces-accessoires-moto', 2, 'fr'),
('bottes-chaussures', 'Bottes & chaussures', 'bottes-chaussures', 'pieces-accessoires-moto', 2, 'fr'),
('protections-moto', 'Protections (dorsales, genouillères)', 'protections-moto', 'pieces-accessoires-moto', 2, 'fr'),
('valises-top-cases', 'Valises & top cases', 'valises-top-cases', 'pieces-accessoires-moto', 2, 'fr'),
('pots-echappement-moto', 'Pots d’échappement moto', 'pots-echappement-moto', 'pieces-accessoires-moto', 2, 'fr'),
('kits-chaine', 'Kits chaîne', 'kits-chaine', 'pieces-accessoires-moto', 2, 'fr'),
('batteries-moto', 'Batteries moto', 'batteries-moto', 'pieces-accessoires-moto', 2, 'fr'),
('pneus-moto', 'Pneus moto', 'pneus-moto', 'pieces-accessoires-moto', 2, 'fr'),
('guidons', 'Guidons', 'guidons', 'pieces-accessoires-moto', 2, 'fr'),
('leviers', 'Leviers', 'leviers', 'pieces-accessoires-moto', 2, 'fr'),
('retroviseurs', 'Rétroviseurs', 'retroviseurs', 'pieces-accessoires-moto', 2, 'fr'),
('pieces-moteur-moto', 'Pièces moteur moto', 'pieces-moteur-moto', 'pieces-accessoires-moto', 2, 'fr'),
('huile-moto', 'Huile moto', 'huile-moto', 'pieces-accessoires-moto', 2, 'fr'),
('kits-reparation', 'Kits de réparation', 'kits-reparation', 'pieces-accessoires-moto', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('remorques-utilitaires', 'Remorques utilitaires', 'remorques-utilitaires', 'remorques-attelages', 2, 'fr'),
('remorques-porte-voitures', 'Remorques porte-voitures', 'remorques-porte-voitures', 'remorques-attelages', 2, 'fr'),
('remorques-bagageres', 'Remorques bagagères', 'remorques-bagageres', 'remorques-attelages', 2, 'fr'),
('remorques-betail', 'Remorques bétail', 'remorques-betail', 'remorques-attelages', 2, 'fr'),
('remorques-frigorifiques', 'Remorques frigorifiques', 'remorques-frigorifiques', 'remorques-attelages', 2, 'fr'),
('remorques-agricoles', 'Remorques agricoles', 'remorques-agricoles', 'remorques-attelages', 2, 'fr'),
('attelages', 'Attelages', 'attelages', 'remorques-attelages', 2, 'fr'),
('barres-remorquage', 'Barres de remorquage', 'barres-remorquage', 'remorques-attelages', 2, 'fr'),
('porte-motos', 'Porte-motos', 'porte-motos', 'remorques-attelages', 2, 'fr'),
('porte-velos', 'Porte-vélos', 'porte-velos', 'remorques-attelages', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('valises-diagnostic-auto', 'Valises de diagnostic auto', 'valises-diagnostic-auto', 'diagnostic-atelier', 2, 'fr'),
('lecteurs-obd2', 'Lecteurs OBD2', 'lecteurs-obd2', 'diagnostic-atelier', 2, 'fr'),
('ponts-elevateurs', 'Ponts élévateurs', 'ponts-elevateurs', 'diagnostic-atelier', 2, 'fr'),
('compresseurs', 'Compresseurs', 'compresseurs', 'diagnostic-atelier', 2, 'fr'),
('crics-hydrauliques', 'Crics hydrauliques', 'crics-hydrauliques', 'diagnostic-atelier', 2, 'fr'),
('outils-mecaniques', 'Outils mécaniques', 'outils-mecaniques', 'diagnostic-atelier', 2, 'fr'),
('chargeurs-batterie', 'Chargeurs de batterie', 'chargeurs-batterie', 'diagnostic-atelier', 2, 'fr'),
('boosters', 'Boosters', 'boosters', 'diagnostic-atelier', 2, 'fr'),
('stations-climatisation', 'Stations de climatisation', 'stations-climatisation', 'diagnostic-atelier', 2, 'fr'),
('demonte-pneus', 'Démonte-pneus', 'demonte-pneus', 'diagnostic-atelier', 2, 'fr'),
('equilibreuses', 'Équilibreuses', 'equilibreuses', 'diagnostic-atelier', 2, 'fr'),
('outils-specialises-moto', 'Outils spécialisés moto', 'outils-specialises-moto', 'diagnostic-atelier', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bornes-recharge', 'Bornes de recharge', 'bornes-recharge', 'carburants-energie', 2, 'fr'),
('stations-recharge-domestiques', 'Stations de recharge domestiques', 'stations-recharge-domestiques', 'carburants-energie', 2, 'fr'),
('adaptateurs-voitures-electriques', 'Adaptateurs pour voitures électriques', 'adaptateurs-voitures-electriques', 'carburants-energie', 2, 'fr'),
('jerricans', 'Jerricans', 'jerricans', 'carburants-energie', 2, 'fr'),
('additifs-carburant', 'Additifs carburant', 'additifs-carburant', 'carburants-energie', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('reparation-auto', 'Réparation auto', 'reparation-auto', 'services-assistance', 2, 'fr'),
('reparation-moto', 'Réparation moto', 'reparation-moto', 'services-assistance', 2, 'fr'),
('entretien-vidange', 'Entretien & vidange', 'entretien-vidange', 'services-assistance', 2, 'fr'),
('lavage-automobile', 'Lavage automobile', 'lavage-automobile', 'services-assistance', 2, 'fr'),
('depannage', 'Dépannage', 'depannage', 'services-assistance', 2, 'fr'),
('remorquage', 'Remorquage', 'remorquage', 'services-assistance', 2, 'fr'),
('reprogrammation-moteur', 'Reprogrammation moteur', 'reprogrammation-moteur', 'services-assistance', 2, 'fr'),
('installation-accessoires', 'Installation accessoires', 'installation-accessoires', 'services-assistance', 2, 'fr'),
('renovation-phares', 'Rénovation phares', 'renovation-phares', 'services-assistance', 2, 'fr'),
('remplacement-pare-brise', 'Remplacement pare-brise', 'remplacement-pare-brise', 'services-assistance', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('renault', 'Renault', 'renault', 'marques-populaires-vehicules', 2, 'fr'),
('peugeot', 'Peugeot', 'peugeot', 'marques-populaires-vehicules', 2, 'fr'),
('citroen', 'Citroën', 'citroen', 'marques-populaires-vehicules', 2, 'fr'),
('dacia', 'Dacia', 'dacia', 'marques-populaires-vehicules', 2, 'fr'),
('volkswagen', 'Volkswagen', 'volkswagen', 'marques-populaires-vehicules', 2, 'fr'),
('audi', 'Audi', 'audi', 'marques-populaires-vehicules', 2, 'fr'),
('bmw', 'BMW', 'bmw', 'marques-populaires-vehicules', 2, 'fr'),
('mercedes', 'Mercedes', 'mercedes', 'marques-populaires-vehicules', 2, 'fr'),
('toyota', 'Toyota', 'toyota', 'marques-populaires-vehicules', 2, 'fr'),
('kia', 'Kia', 'kia', 'marques-populaires-vehicules', 2, 'fr'),
('hyundai', 'Hyundai', 'hyundai', 'marques-populaires-vehicules', 2, 'fr'),
('ford', 'Ford', 'ford', 'marques-populaires-vehicules', 2, 'fr'),
('nissan', 'Nissan', 'nissan', 'marques-populaires-vehicules', 2, 'fr'),
('fiat', 'Fiat', 'fiat', 'marques-populaires-vehicules', 2, 'fr'),
('honda', 'Honda', 'honda', 'marques-populaires-vehicules', 2, 'fr'),
('yamaha', 'Yamaha', 'yamaha', 'marques-populaires-vehicules', 2, 'fr'),
('suzuki', 'Suzuki', 'suzuki', 'marques-populaires-vehicules', 2, 'fr'),
('piaggio', 'Piaggio', 'piaggio', 'marques-populaires-vehicules', 2, 'fr'),
('ducati', 'Ducati', 'ducati', 'marques-populaires-vehicules', 2, 'fr'),
('ktm', 'KTM', 'ktm', 'marques-populaires-vehicules', 2, 'fr'),
('scania', 'Scania', 'scania', 'marques-populaires-vehicules', 2, 'fr'),
('volvo-trucks', 'Volvo Trucks', 'volvo-trucks', 'marques-populaires-vehicules', 2, 'fr'),
('man', 'MAN', 'man', 'marques-populaires-vehicules', 2, 'fr'),
('iveco', 'Iveco', 'iveco', 'marques-populaires-vehicules', 2, 'fr');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('vehicules-equipements', 'Vehicles, Trucks, Motorcycles & Equipment', 'vehicules-equipements', NULL, 0, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voitures-vehicules-legers', 'Cars & Light Vehicles', 'voitures-vehicules-legers', 'vehicules-equipements', 1, 'en'),
('camions-vehicules-professionnels', 'Trucks & Commercial Vehicles', 'camions-vehicules-professionnels', 'vehicules-equipements', 1, 'en'),
('motos-cyclomoteurs', 'Motorcycles & Mopeds', 'motos-cyclomoteurs', 'vehicules-equipements', 1, 'en'),
('velos-motorises-mobilite', 'Powered Bicycles & Mobility', 'velos-motorises-mobilite', 'vehicules-equipements', 1, 'en'),
('equipements-accessoires-auto', 'Car Equipment & Accessories', 'equipements-accessoires-auto', 'vehicules-equipements', 1, 'en'),
('pieces-accessoires-moto', 'Motorcycle Parts & Accessories', 'pieces-accessoires-moto', 'vehicules-equipements', 1, 'en'),
('remorques-attelages', 'Trailers & Towing', 'remorques-attelages', 'vehicules-equipements', 1, 'en'),
('diagnostic-atelier', 'Workshop & Diagnostic Equipment', 'diagnostic-atelier', 'vehicules-equipements', 1, 'en'),
('carburants-energie', 'Fuel & Energy', 'carburants-energie', 'vehicules-equipements', 1, 'en'),
('services-assistance', 'Services & Assistance', 'services-assistance', 'vehicules-equipements', 1, 'en'),
('marques-populaires-vehicules', 'Popular Brands (SEO Boost)', 'marques-populaires-vehicules', 'vehicules-equipements', 1, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voitures-citadines', 'City cars', 'voitures-citadines', 'voitures-vehicules-legers', 2, 'en'),
('berlines', 'Sedans', 'berlines', 'voitures-vehicules-legers', 2, 'en'),
('compactes', 'Compacts', 'compactes', 'voitures-vehicules-legers', 2, 'en'),
('suv', 'SUV', 'suv', 'voitures-vehicules-legers', 2, 'en'),
('crossovers', 'Crossovers', 'crossovers', 'voitures-vehicules-legers', 2, 'en'),
('4x4', '4x4', '4x4', 'voitures-vehicules-legers', 2, 'en'),
('coupes', 'Coupés', 'coupes', 'voitures-vehicules-legers', 2, 'en'),
('cabriolets', 'Convertibles', 'cabriolets', 'voitures-vehicules-legers', 2, 'en'),
('breaks', 'Station wagons', 'breaks', 'voitures-vehicules-legers', 2, 'en'),
('voitures-familiales', 'Family cars', 'voitures-familiales', 'voitures-vehicules-legers', 2, 'en'),
('vul', 'Light commercial vehicles', 'vehicules-utilitaires-legers', 'voitures-vehicules-legers', 2, 'en'),
('vans', 'Vans', 'vans', 'voitures-vehicules-legers', 2, 'en'),
('voitures-hybrides', 'Hybrid cars', 'voitures-hybrides', 'voitures-vehicules-legers', 2, 'en'),
('voitures-electriques', 'Electric cars', 'voitures-electriques', 'voitures-vehicules-legers', 2, 'en'),
('voitures-sportives', 'Sports cars', 'voitures-sportives', 'voitures-vehicules-legers', 2, 'en'),
('voitures-anciennes-collection', 'Classic & collector cars', 'voitures-anciennes-collection', 'voitures-vehicules-legers', 2, 'en'),
('voitures-reconditionnees', 'Refurbished cars', 'voitures-reconditionnees', 'voitures-vehicules-legers', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('camions-legers', 'Light trucks', 'camions-legers', 'camions-vehicules-professionnels', 2, 'en'),
('poids-lourds', 'Heavy trucks', 'poids-lourds', 'camions-vehicules-professionnels', 2, 'en'),
('semi-remorques', 'Semi-trailers', 'semi-remorques', 'camions-vehicules-professionnels', 2, 'en'),
('tracteurs-routiers', 'Road tractors', 'tracteurs-routiers', 'camions-vehicules-professionnels', 2, 'en'),
('camions-bennes', 'Dump trucks', 'camions-bennes', 'camions-vehicules-professionnels', 2, 'en'),
('camions-frigorifiques', 'Refrigerated trucks', 'camions-frigorifiques', 'camions-vehicules-professionnels', 2, 'en'),
('camions-plateaux', 'Flatbed trucks', 'camions-plateaux', 'camions-vehicules-professionnels', 2, 'en'),
('fourgons-professionnels', 'Professional vans', 'fourgons-professionnels', 'camions-vehicules-professionnels', 2, 'en'),
('fourgonnettes', 'Small vans', 'fourgonnettes', 'camions-vehicules-professionnels', 2, 'en'),
('minibus', 'Minibuses', 'minibus', 'camions-vehicules-professionnels', 2, 'en'),
('bus', 'Buses', 'bus', 'camions-vehicules-professionnels', 2, 'en'),
('vehicules-de-chantier', 'Construction vehicles', 'vehicules-de-chantier', 'camions-vehicules-professionnels', 2, 'en'),
('depanneuses', 'Tow trucks', 'depanneuses', 'camions-vehicules-professionnels', 2, 'en'),
('vehicules-toles', 'Panel vans', 'vehicules-toles', 'camions-vehicules-professionnels', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('motos-sportives', 'Sport bikes', 'motos-sportives', 'motos-cyclomoteurs', 2, 'en'),
('motos-roadster', 'Roadsters', 'motos-roadster', 'motos-cyclomoteurs', 2, 'en'),
('motos-touring', 'Touring bikes', 'motos-touring', 'motos-cyclomoteurs', 2, 'en'),
('motos-enduro', 'Enduro', 'motos-enduro', 'motos-cyclomoteurs', 2, 'en'),
('motos-trail', 'Adventure/Trail', 'motos-trail', 'motos-cyclomoteurs', 2, 'en'),
('motos-cross', 'Motocross', 'motos-cross', 'motos-cyclomoteurs', 2, 'en'),
('motos-custom', 'Custom', 'motos-custom', 'motos-cyclomoteurs', 2, 'en'),
('scooters-50cc', 'Scooters 50cc', 'scooters-50cc', 'motos-cyclomoteurs', 2, 'en'),
('scooters-125cc', 'Scooters 125cc', 'scooters-125cc', 'motos-cyclomoteurs', 2, 'en'),
('maxi-scooters', 'Maxi scooters', 'maxi-scooters', 'motos-cyclomoteurs', 2, 'en'),
('mobylettes', 'Mopeds', 'mobylettes', 'motos-cyclomoteurs', 2, 'en'),
('quads-atv', 'Quads & ATVs', 'quads-atv', 'motos-cyclomoteurs', 2, 'en'),
('tricycles-motorises', 'Motorized tricycles', 'tricycles-motorises', 'motos-cyclomoteurs', 2, 'en'),
('motos-electriques', 'Electric motorcycles', 'motos-electriques', 'motos-cyclomoteurs', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('velos-electriques-rapides', 'Speed e-bikes', 'velos-electriques-rapides', 'velos-motorises-mobilite', 2, 'en'),
('trottinettes-electriques', 'Electric scooters', 'trottinettes-electriques', 'velos-motorises-mobilite', 2, 'en'),
('gyropodes', 'Segways/gyropodes', 'gyropodes', 'velos-motorises-mobilite', 2, 'en'),
('monoroues-electriques', 'Electric unicycles', 'monoroues-electriques', 'velos-motorises-mobilite', 2, 'en'),
('cyclomoteurs-legers-electriques', 'Light electric mopeds', 'cyclomoteurs-legers-electriques', 'velos-motorises-mobilite', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('pneus', 'Tires', 'pneus', 'equipements-accessoires-auto', 2, 'en'),
('jantes', 'Rims', 'jantes', 'equipements-accessoires-auto', 2, 'en'),
('batteries', 'Batteries', 'batteries', 'equipements-accessoires-auto', 2, 'en'),
('filtres', 'Filters', 'filtres', 'equipements-accessoires-auto', 2, 'en'),
('huiles-lubrifiants', 'Oils & lubricants', 'huiles-lubrifiants', 'equipements-accessoires-auto', 2, 'en'),
('plaquettes-frein', 'Brake pads', 'plaquettes-frein', 'equipements-accessoires-auto', 2, 'en'),
('disques-frein', 'Brake discs', 'disques-frein', 'equipements-accessoires-auto', 2, 'en'),
('amortisseurs', 'Shock absorbers', 'amortisseurs', 'equipements-accessoires-auto', 2, 'en'),
('courroies', 'Belts', 'courroies', 'equipements-accessoires-auto', 2, 'en'),
('embrayages', 'Clutches', 'embrayages', 'equipements-accessoires-auto', 2, 'en'),
('bougies', 'Spark plugs', 'bougies', 'equipements-accessoires-auto', 2, 'en'),
('echappements', 'Exhausts', 'echappements', 'equipements-accessoires-auto', 2, 'en'),
('pieces-moteur', 'Engine parts', 'pieces-moteur', 'equipements-accessoires-auto', 2, 'en'),
('kits-distribution', 'Timing kits', 'kits-distribution', 'equipements-accessoires-auto', 2, 'en'),
('accessoires-interieurs', 'Interior accessories', 'accessoires-interieurs', 'equipements-accessoires-auto', 2, 'en'),
('housses-sieges', 'Seat covers', 'housses-sieges', 'equipements-accessoires-auto', 2, 'en'),
('tapis', 'Floor mats', 'tapis', 'equipements-accessoires-auto', 2, 'en'),
('gps', 'GPS', 'gps', 'equipements-accessoires-auto', 2, 'en'),
('cameras-embarquees', 'Dashcams', 'cameras-embarquees', 'equipements-accessoires-auto', 2, 'en'),
('alarmes-auto', 'Car alarms', 'alarmes-auto', 'equipements-accessoires-auto', 2, 'en'),
('kits-mains-libres', 'Hands-free kits', 'kits-mains-libres', 'equipements-accessoires-auto', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-moto', 'Motorcycle helmets', 'casques-moto', 'pieces-accessoires-moto', 2, 'en'),
('blousons-moto', 'Motorcycle jackets', 'blousons-moto', 'pieces-accessoires-moto', 2, 'en'),
('gants-moto', 'Gloves', 'gants-moto', 'pieces-accessoires-moto', 2, 'en'),
('bottes-chaussures', 'Boots & shoes', 'bottes-chaussures', 'pieces-accessoires-moto', 2, 'en'),
('protections-moto', 'Protection (back, knee)', 'protections-moto', 'pieces-accessoires-moto', 2, 'en'),
('valises-top-cases', 'Cases & top boxes', 'valises-top-cases', 'pieces-accessoires-moto', 2, 'en'),
('pots-echappement-moto', 'Motorcycle exhausts', 'pots-echappement-moto', 'pieces-accessoires-moto', 2, 'en'),
('kits-chaine', 'Chain kits', 'kits-chaine', 'pieces-accessoires-moto', 2, 'en'),
('batteries-moto', 'Motorcycle batteries', 'batteries-moto', 'pieces-accessoires-moto', 2, 'en'),
('pneus-moto', 'Motorcycle tires', 'pneus-moto', 'pieces-accessoires-moto', 2, 'en'),
('guidons', 'Handlebars', 'guidons', 'pieces-accessoires-moto', 2, 'en'),
('leviers', 'Levers', 'leviers', 'pieces-accessoires-moto', 2, 'en'),
('retroviseurs', 'Mirrors', 'retroviseurs', 'pieces-accessoires-moto', 2, 'en'),
('pieces-moteur-moto', 'Motorcycle engine parts', 'pieces-moteur-moto', 'pieces-accessoires-moto', 2, 'en'),
('huile-moto', 'Motor oil', 'huile-moto', 'pieces-accessoires-moto', 2, 'en'),
('kits-reparation', 'Repair kits', 'kits-reparation', 'pieces-accessoires-moto', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('remorques-utilitaires', 'Utility trailers', 'remorques-utilitaires', 'remorques-attelages', 2, 'en'),
('remorques-porte-voitures', 'Car hauler trailers', 'remorques-porte-voitures', 'remorques-attelages', 2, 'en'),
('remorques-bagageres', 'Cargo trailers', 'remorques-bagageres', 'remorques-attelages', 2, 'en'),
('remorques-betail', 'Livestock trailers', 'remorques-betail', 'remorques-attelages', 2, 'en'),
('remorques-frigorifiques', 'Refrigerated trailers', 'remorques-frigorifiques', 'remorques-attelages', 2, 'en'),
('remorques-agricoles', 'Agricultural trailers', 'remorques-agricoles', 'remorques-attelages', 2, 'en'),
('attelages', 'Tow bars & hitches', 'attelages', 'remorques-attelages', 2, 'en'),
('barres-remorquage', 'Towing bars', 'barres-remorquage', 'remorques-attelages', 2, 'en'),
('porte-motos', 'Motorcycle carriers', 'porte-motos', 'remorques-attelages', 2, 'en'),
('porte-velos', 'Bike racks', 'porte-velos', 'remorques-attelages', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('valises-diagnostic-auto', 'Automotive diagnostic scanners', 'valises-diagnostic-auto', 'diagnostic-atelier', 2, 'en'),
('lecteurs-obd2', 'OBD2 readers', 'lecteurs-obd2', 'diagnostic-atelier', 2, 'en'),
('ponts-elevateurs', 'Vehicle lifts', 'ponts-elevateurs', 'diagnostic-atelier', 2, 'en'),
('compresseurs', 'Compressors', 'compresseurs', 'diagnostic-atelier', 2, 'en'),
('crics-hydrauliques', 'Hydraulic jacks', 'crics-hydrauliques', 'diagnostic-atelier', 2, 'en'),
('outils-mecaniques', 'Mechanical tools', 'outils-mecaniques', 'diagnostic-atelier', 2, 'en'),
('chargeurs-batterie', 'Battery chargers', 'chargeurs-batterie', 'diagnostic-atelier', 2, 'en'),
('boosters', 'Boosters', 'boosters', 'diagnostic-atelier', 2, 'en'),
('stations-climatisation', 'AC service stations', 'stations-climatisation', 'diagnostic-atelier', 2, 'en'),
('demonte-pneus', 'Tire changers', 'demonte-pneus', 'diagnostic-atelier', 2, 'en'),
('equilibreuses', 'Wheel balancers', 'equilibreuses', 'diagnostic-atelier', 2, 'en'),
('outils-specialises-moto', 'Specialized motorcycle tools', 'outils-specialises-moto', 'diagnostic-atelier', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bornes-recharge', 'Charging stations', 'bornes-recharge', 'carburants-energie', 2, 'en'),
('stations-recharge-domestiques', 'Home chargers', 'stations-recharge-domestiques', 'carburants-energie', 2, 'en'),
('adaptateurs-voitures-electriques', 'EV adapters', 'adaptateurs-voitures-electriques', 'carburants-energie', 2, 'en'),
('jerricans', 'Jerry cans', 'jerricans', 'carburants-energie', 2, 'en'),
('additifs-carburant', 'Fuel additives', 'additifs-carburant', 'carburants-energie', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('reparation-auto', 'Car repair', 'reparation-auto', 'services-assistance', 2, 'en'),
('reparation-moto', 'Motorcycle repair', 'reparation-moto', 'services-assistance', 2, 'en'),
('entretien-vidange', 'Maintenance & oil change', 'entretien-vidange', 'services-assistance', 2, 'en'),
('lavage-automobile', 'Car wash', 'lavage-automobile', 'services-assistance', 2, 'en'),
('depannage', 'Breakdown service', 'depannage', 'services-assistance', 2, 'en'),
('remorquage', 'Towing', 'remorquage', 'services-assistance', 2, 'en'),
('reprogrammation-moteur', 'Engine remapping', 'reprogrammation-moteur', 'services-assistance', 2, 'en'),
('installation-accessoires', 'Accessory installation', 'installation-accessoires', 'services-assistance', 2, 'en'),
('renovation-phares', 'Headlight restoration', 'renovation-phares', 'services-assistance', 2, 'en'),
('remplacement-pare-brise', 'Windshield replacement', 'remplacement-pare-brise', 'services-assistance', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('renault', 'Renault', 'renault', 'marques-populaires-vehicules', 2, 'en'),
('peugeot', 'Peugeot', 'peugeot', 'marques-populaires-vehicules', 2, 'en'),
('citroen', 'Citroën', 'citroen', 'marques-populaires-vehicules', 2, 'en'),
('dacia', 'Dacia', 'dacia', 'marques-populaires-vehicules', 2, 'en'),
('volkswagen', 'Volkswagen', 'volkswagen', 'marques-populaires-vehicules', 2, 'en'),
('audi', 'Audi', 'audi', 'marques-populaires-vehicules', 2, 'en'),
('bmw', 'BMW', 'bmw', 'marques-populaires-vehicules', 2, 'en'),
('mercedes', 'Mercedes', 'mercedes', 'marques-populaires-vehicules', 2, 'en'),
('toyota', 'Toyota', 'toyota', 'marques-populaires-vehicules', 2, 'en'),
('kia', 'Kia', 'kia', 'marques-populaires-vehicules', 2, 'en'),
('hyundai', 'Hyundai', 'hyundai', 'marques-populaires-vehicules', 2, 'en'),
('ford', 'Ford', 'ford', 'marques-populaires-vehicules', 2, 'en'),
('nissan', 'Nissan', 'nissan', 'marques-populaires-vehicules', 2, 'en'),
('fiat', 'Fiat', 'fiat', 'marques-populaires-vehicules', 2, 'en'),
('honda', 'Honda', 'honda', 'marques-populaires-vehicules', 2, 'en'),
('yamaha', 'Yamaha', 'yamaha', 'marques-populaires-vehicules', 2, 'en'),
('suzuki', 'Suzuki', 'suzuki', 'marques-populaires-vehicules', 2, 'en'),
('piaggio', 'Piaggio', 'piaggio', 'marques-populaires-vehicules', 2, 'en'),
('ducati', 'Ducati', 'ducati', 'marques-populaires-vehicules', 2, 'en'),
('ktm', 'KTM', 'ktm', 'marques-populaires-vehicules', 2, 'en'),
('scania', 'Scania', 'scania', 'marques-populaires-vehicules', 2, 'en'),
('volvo-trucks', 'Volvo Trucks', 'volvo-trucks', 'marques-populaires-vehicules', 2, 'en'),
('man', 'MAN', 'man', 'marques-populaires-vehicules', 2, 'en'),
('iveco', 'Iveco', 'iveco', 'marques-populaires-vehicules', 2, 'en');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('vehicules-equipements', 'Vehículos, Camiones, Motos y Equipos', 'vehicules-equipements', NULL, 0, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voitures-vehicules-legers', 'Coches y vehículos ligeros', 'voitures-vehicules-legers', 'vehicules-equipements', 1, 'es'),
('camions-vehicules-professionnels', 'Camiones y vehículos profesionales', 'camions-vehicules-professionnels', 'vehicules-equipements', 1, 'es'),
('motos-cyclomoteurs', 'Motos y ciclomotores', 'motos-cyclomoteurs', 'vehicules-equipements', 1, 'es'),
('velos-motorises-mobilite', 'Bicicletas motorizadas y movilidad', 'velos-motorises-mobilite', 'vehicules-equipements', 1, 'es'),
('equipements-accessoires-auto', 'Equipamiento y accesorios de coche', 'equipements-accessoires-auto', 'vehicules-equipements', 1, 'es'),
('pieces-accessoires-moto', 'Piezas y accesorios de moto', 'pieces-accessoires-moto', 'vehicules-equipements', 1, 'es'),
('remorques-attelages', 'Remolques y enganches', 'remorques-attelages', 'vehicules-equipements', 1, 'es'),
('diagnostic-atelier', 'Equipos de diagnóstico y taller', 'diagnostic-atelier', 'vehicules-equipements', 1, 'es'),
('carburants-energie', 'Combustible y energía', 'carburants-energie', 'vehicules-equipements', 1, 'es'),
('services-assistance', 'Servicios y asistencia', 'services-assistance', 'vehicules-equipements', 1, 'es'),
('marques-populaires-vehicules', 'Marcas populares (SEO)', 'marques-populaires-vehicules', 'vehicules-equipements', 1, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voitures-citadines', 'Coches urbanos', 'voitures-citadines', 'voitures-vehicules-legers', 2, 'es'),
('berlines', 'Berlina', 'berlines', 'voitures-vehicules-legers', 2, 'es'),
('compactes', 'Compactos', 'compactes', 'voitures-vehicules-legers', 2, 'es'),
('suv', 'SUV', 'suv', 'voitures-vehicules-legers', 2, 'es'),
('crossovers', 'Crossover', 'crossovers', 'voitures-vehicules-legers', 2, 'es'),
('4x4', '4x4', '4x4', 'voitures-vehicules-legers', 2, 'es'),
('coupes', 'Coupés', 'coupes', 'voitures-vehicules-legers', 2, 'es'),
('cabriolets', 'Descapotables', 'cabriolets', 'voitures-vehicules-legers', 2, 'es'),
('breaks', 'Familiares', 'breaks', 'voitures-vehicules-legers', 2, 'es'),
('voitures-familiales', 'Coches familiares', 'voitures-familiales', 'voitures-vehicules-legers', 2, 'es'),
('vul', 'Vehículos comerciales ligeros', 'vehicules-utilitaires-legers', 'voitures-vehicules-legers', 2, 'es'),
('vans', 'Furgonetas', 'vans', 'voitures-vehicules-legers', 2, 'es'),
('voitures-hybrides', 'Coches híbridos', 'voitures-hybrides', 'voitures-vehicules-legers', 2, 'es'),
('voitures-electriques', 'Coches eléctricos', 'voitures-electriques', 'voitures-vehicules-legers', 2, 'es'),
('voitures-sportives', 'Coches deportivos', 'voitures-sportives', 'voitures-vehicules-legers', 2, 'es'),
('voitures-anciennes-collection', 'Clásicos y de colección', 'voitures-anciennes-collection', 'voitures-vehicules-legers', 2, 'es'),
('voitures-reconditionnees', 'Coches reacondicionados', 'voitures-reconditionnees', 'voitures-vehicules-legers', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('camions-legers', 'Camiones ligeros', 'camions-legers', 'camions-vehicules-professionnels', 2, 'es'),
('poids-lourds', 'Camiones pesados', 'poids-lourds', 'camions-vehicules-professionnels', 2, 'es'),
('semi-remorques', 'Semirremolques', 'semi-remorques', 'camions-vehicules-professionnels', 2, 'es'),
('tracteurs-routiers', 'Tractores de carretera', 'tracteurs-routiers', 'camions-vehicules-professionnels', 2, 'es'),
('camions-bennes', 'Camiones volquete', 'camions-bennes', 'camions-vehicules-professionnels', 2, 'es'),
('camions-frigorifiques', 'Camiones frigoríficos', 'camions-frigorifiques', 'camions-vehicules-professionnels', 2, 'es'),
('camions-plateaux', 'Camiones plataforma', 'camions-plateaux', 'camions-vehicules-professionnels', 2, 'es'),
('fourgons-professionnels', 'Furgones profesionales', 'fourgons-professionnels', 'camions-vehicules-professionnels', 2, 'es'),
('fourgonnettes', 'Furgonetas pequeñas', 'fourgonnettes', 'camions-vehicules-professionnels', 2, 'es'),
('minibus', 'Microbuses', 'minibus', 'camions-vehicules-professionnels', 2, 'es'),
('bus', 'Autobuses', 'bus', 'camions-vehicules-professionnels', 2, 'es'),
('vehicules-de-chantier', 'Vehículos de obra', 'vehicules-de-chantier', 'camions-vehicules-professionnels', 2, 'es'),
('depanneuses', 'Grúas', 'depanneuses', 'camions-vehicules-professionnels', 2, 'es'),
('vehicules-toles', 'Vehículos panelados', 'vehicules-toles', 'camions-vehicules-professionnels', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('motos-sportives', 'Motos deportivas', 'motos-sportives', 'motos-cyclomoteurs', 2, 'es'),
('motos-roadster', 'Roadster', 'motos-roadster', 'motos-cyclomoteurs', 2, 'es'),
('motos-touring', 'Touring', 'motos-touring', 'motos-cyclomoteurs', 2, 'es'),
('motos-enduro', 'Enduro', 'motos-enduro', 'motos-cyclomoteurs', 2, 'es'),
('motos-trail', 'Trail/Adventure', 'motos-trail', 'motos-cyclomoteurs', 2, 'es'),
('motos-cross', 'Motocross', 'motos-cross', 'motos-cyclomoteurs', 2, 'es'),
('motos-custom', 'Custom', 'motos-custom', 'motos-cyclomoteurs', 2, 'es'),
('scooters-50cc', 'Scooters 50cc', 'scooters-50cc', 'motos-cyclomoteurs', 2, 'es'),
('scooters-125cc', 'Scooters 125cc', 'scooters-125cc', 'motos-cyclomoteurs', 2, 'es'),
('maxi-scooters', 'Maxi‑scooters', 'maxi-scooters', 'motos-cyclomoteurs', 2, 'es'),
('mobylettes', 'Ciclomotores', 'mobylettes', 'motos-cyclomoteurs', 2, 'es'),
('quads-atv', 'Quads & ATV', 'quads-atv', 'motos-cyclomoteurs', 2, 'es'),
('tricycles-motorises', 'Triciclos motorizados', 'tricycles-motorises', 'motos-cyclomoteurs', 2, 'es'),
('motos-electriques', 'Motos eléctricas', 'motos-electriques', 'motos-cyclomoteurs', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('velos-electriques-rapides', 'E‑bikes rápidas', 'velos-electriques-rapides', 'velos-motorises-mobilite', 2, 'es'),
('trottinettes-electriques', 'Patinetes eléctricos', 'trottinettes-electriques', 'velos-motorises-mobilite', 2, 'es'),
('gyropodes', 'Gyropodes', 'gyropodes', 'velos-motorises-mobilite', 2, 'es'),
('monoroues-electriques', 'Monociclos eléctricos', 'monoroues-electriques', 'velos-motorises-mobilite', 2, 'es'),
('cyclomoteurs-legers-electriques', 'Ciclomotores eléctricos ligeros', 'cyclomoteurs-legers-electriques', 'velos-motorises-mobilite', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('pneus', 'Neumáticos', 'pneus', 'equipements-accessoires-auto', 2, 'es'),
('jantes', 'Llantas', 'jantes', 'equipements-accessoires-auto', 2, 'es'),
('batteries', 'Baterías', 'batteries', 'equipements-accessoires-auto', 2, 'es'),
('filtres', 'Filtros', 'filtres', 'equipements-accessoires-auto', 2, 'es'),
('huiles-lubrifiants', 'Aceites y lubricantes', 'huiles-lubrifiants', 'equipements-accessoires-auto', 2, 'es'),
('plaquettes-frein', 'Pastillas de freno', 'plaquettes-frein', 'equipements-accessoires-auto', 2, 'es'),
('disques-frein', 'Discos de freno', 'disques-frein', 'equipements-accessoires-auto', 2, 'es'),
('amortisseurs', 'Amortiguadores', 'amortisseurs', 'equipements-accessoires-auto', 2, 'es'),
('courroies', 'Correas', 'courroies', 'equipements-accessoires-auto', 2, 'es'),
('embrayages', 'Embragues', 'embrayages', 'equipements-accessoires-auto', 2, 'es'),
('bougies', 'Bujías', 'bougies', 'equipements-accessoires-auto', 2, 'es'),
('echappements', 'Escapes', 'echappements', 'equipements-accessoires-auto', 2, 'es'),
('pieces-moteur', 'Piezas de motor', 'pieces-moteur', 'equipements-accessoires-auto', 2, 'es'),
('kits-distribution', 'Kits de distribución', 'kits-distribution', 'equipements-accessoires-auto', 2, 'es'),
('accessoires-interieurs', 'Accesorios interiores', 'accessoires-interieurs', 'equipements-accessoires-auto', 2, 'es'),
('housses-sieges', 'Fundas de asiento', 'housses-sieges', 'equipements-accessoires-auto', 2, 'es'),
('tapis', 'Alfombrillas', 'tapis', 'equipements-accessoires-auto', 2, 'es'),
('gps', 'GPS', 'gps', 'equipements-accessoires-auto', 2, 'es'),
('cameras-embarquees', 'Cámaras a bordo', 'cameras-embarquees', 'equipements-accessoires-auto', 2, 'es'),
('alarmes-auto', 'Alarmas de coche', 'alarmes-auto', 'equipements-accessoires-auto', 2, 'es'),
('kits-mains-libres', 'Kits manos libres', 'kits-mains-libres', 'equipements-accessoires-auto', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-moto', 'Cascos', 'casques-moto', 'pieces-accessoires-moto', 2, 'es'),
('blousons-moto', 'Chaquetas', 'blousons-moto', 'pieces-accessoires-moto', 2, 'es'),
('gants-moto', 'Guantes', 'gants-moto', 'pieces-accessoires-moto', 2, 'es'),
('bottes-chaussures', 'Botas y zapatos', 'bottes-chaussures', 'pieces-accessoires-moto', 2, 'es'),
('protections-moto', 'Protecciones (espaldera, rodilleras)', 'protections-moto', 'pieces-accessoires-moto', 2, 'es'),
('valises-top-cases', 'Maletas y top cases', 'valises-top-cases', 'pieces-accessoires-moto', 2, 'es'),
('pots-echappement-moto', 'Escapes para moto', 'pots-echappement-moto', 'pieces-accessoires-moto', 2, 'es'),
('kits-chaine', 'Kits de cadena', 'kits-chaine', 'pieces-accessoires-moto', 2, 'es'),
('batteries-moto', 'Baterías de moto', 'batteries-moto', 'pieces-accessoires-moto', 2, 'es'),
('pneus-moto', 'Neumáticos de moto', 'pneus-moto', 'pieces-accessoires-moto', 2, 'es'),
('guidons', 'Manillares', 'guidons', 'pieces-accessoires-moto', 2, 'es'),
('leviers', 'Manetas', 'leviers', 'pieces-accessoires-moto', 2, 'es'),
('retroviseurs', 'Espejos', 'retroviseurs', 'pieces-accessoires-moto', 2, 'es'),
('pieces-moteur-moto', 'Piezas de motor (moto)', 'pieces-moteur-moto', 'pieces-accessoires-moto', 2, 'es'),
('huile-moto', 'Aceite de moto', 'huile-moto', 'pieces-accessoires-moto', 2, 'es'),
('kits-reparation', 'Kits de reparación', 'kits-reparation', 'pieces-accessoires-moto', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('remorques-utilitaires', 'Remolques utilitarios', 'remorques-utilitaires', 'remorques-attelages', 2, 'es'),
('remorques-porte-voitures', 'Remolques porta‑coches', 'remorques-porte-voitures', 'remorques-attelages', 2, 'es'),
('remorques-bagageres', 'Remolques de carga', 'remorques-bagageres', 'remorques-attelages', 2, 'es'),
('remorques-betail', 'Remolques para ganado', 'remorques-betail', 'remorques-attelages', 2, 'es'),
('remorques-frigorifiques', 'Remolques frigoríficos', 'remorques-frigorifiques', 'remorques-attelages', 2, 'es'),
('remorques-agricoles', 'Remolques agrícolas', 'remorques-agricoles', 'remorques-attelages', 2, 'es'),
('attelages', 'Enganches', 'attelages', 'remorques-attelages', 2, 'es'),
('barres-remorquage', 'Barras de remolque', 'barres-remorquage', 'remorques-attelages', 2, 'es'),
('porte-motos', 'Porta‑motos', 'porte-motos', 'remorques-attelages', 2, 'es'),
('porte-velos', 'Porta‑bicicletas', 'porte-velos', 'remorques-attelages', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('valises-diagnostic-auto', 'Maletas de diagnóstico', 'valises-diagnostic-auto', 'diagnostic-atelier', 2, 'es'),
('lecteurs-obd2', 'Lectores OBD2', 'lecteurs-obd2', 'diagnostic-atelier', 2, 'es'),
('ponts-elevateurs', 'Elevadores', 'ponts-elevateurs', 'diagnostic-atelier', 2, 'es'),
('compresseurs', 'Compresores', 'compresseurs', 'diagnostic-atelier', 2, 'es'),
('crics-hydrauliques', 'Gatos hidráulicos', 'crics-hydrauliques', 'diagnostic-atelier', 2, 'es'),
('outils-mecaniques', 'Herramientas mecánicas', 'outils-mecaniques', 'diagnostic-atelier', 2, 'es'),
('chargeurs-batterie', 'Cargadores de batería', 'chargeurs-batterie', 'diagnostic-atelier', 2, 'es'),
('boosters', 'Boosters', 'boosters', 'diagnostic-atelier', 2, 'es'),
('stations-climatisation', 'Estaciones de climatización', 'stations-climatisation', 'diagnostic-atelier', 2, 'es'),
('demonte-pneus', 'Desmontadoras', 'demonte-pneus', 'diagnostic-atelier', 2, 'es'),
('equilibreuses', 'Equilibradoras', 'equilibreuses', 'diagnostic-atelier', 2, 'es'),
('outils-specialises-moto', 'Herramientas especializadas para motos', 'outils-specialises-moto', 'diagnostic-atelier', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bornes-recharge', 'Puntos de recarga', 'bornes-recharge', 'carburants-energie', 2, 'es'),
('stations-recharge-domestiques', 'Cargadores domésticos', 'stations-recharge-domestiques', 'carburants-energie', 2, 'es'),
('adaptateurs-voitures-electriques', 'Adaptadores para EV', 'adaptateurs-voitures-electriques', 'carburants-energie', 2, 'es'),
('jerricans', 'Bidones', 'jerricans', 'carburants-energie', 2, 'es'),
('additifs-carburant', 'Aditivos de combustible', 'additifs-carburant', 'carburants-energie', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('reparation-auto', 'Reparación de coche', 'reparation-auto', 'services-assistance', 2, 'es'),
('reparation-moto', 'Reparación de moto', 'reparation-moto', 'services-assistance', 2, 'es'),
('entretien-vidange', 'Mantenimiento y cambio de aceite', 'entretien-vidange', 'services-assistance', 2, 'es'),
('lavage-automobile', 'Lavado de coches', 'lavage-automobile', 'services-assistance', 2, 'es'),
('depannage', 'Asistencia en carretera', 'depannage', 'services-assistance', 2, 'es'),
('remorquage', 'Remolque', 'remorquage', 'services-assistance', 2, 'es'),
('reprogrammation-moteur', 'Reprogramación de motor', 'reprogrammation-moteur', 'services-assistance', 2, 'es'),
('installation-accessoires', 'Instalación de accesorios', 'installation-accessoires', 'services-assistance', 2, 'es'),
('renovation-phares', 'Restauración de faros', 'renovation-phares', 'services-assistance', 2, 'es'),
('remplacement-pare-brise', 'Cambio de parabrisas', 'remplacement-pare-brise', 'services-assistance', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('renault', 'Renault', 'renault', 'marques-populaires-vehicules', 2, 'es'),
('peugeot', 'Peugeot', 'peugeot', 'marques-populaires-vehicules', 2, 'es'),
('citroen', 'Citroën', 'citroen', 'marques-populaires-vehicules', 2, 'es'),
('dacia', 'Dacia', 'dacia', 'marques-populaires-vehicules', 2, 'es'),
('volkswagen', 'Volkswagen', 'volkswagen', 'marques-populaires-vehicules', 2, 'es'),
('audi', 'Audi', 'audi', 'marques-populaires-vehicules', 2, 'es'),
('bmw', 'BMW', 'bmw', 'marques-populaires-vehicules', 2, 'es'),
('mercedes', 'Mercedes', 'mercedes', 'marques-populaires-vehicules', 2, 'es'),
('toyota', 'Toyota', 'toyota', 'marques-populaires-vehicules', 2, 'es'),
('kia', 'Kia', 'kia', 'marques-populaires-vehicules', 2, 'es'),
('hyundai', 'Hyundai', 'hyundai', 'marques-populaires-vehicules', 2, 'es'),
('ford', 'Ford', 'ford', 'marques-populaires-vehicules', 2, 'es'),
('nissan', 'Nissan', 'nissan', 'marques-populaires-vehicules', 2, 'es'),
('fiat', 'Fiat', 'fiat', 'marques-populaires-vehicules', 2, 'es'),
('honda', 'Honda', 'honda', 'marques-populaires-vehicules', 2, 'es'),
('yamaha', 'Yamaha', 'yamaha', 'marques-populaires-vehicules', 2, 'es'),
('suzuki', 'Suzuki', 'suzuki', 'marques-populaires-vehicules', 2, 'es'),
('piaggio', 'Piaggio', 'piaggio', 'marques-populaires-vehicules', 2, 'es'),
('ducati', 'Ducati', 'ducati', 'marques-populaires-vehicules', 2, 'es'),
('ktm', 'KTM', 'ktm', 'marques-populaires-vehicules', 2, 'es'),
('scania', 'Scania', 'scania', 'marques-populaires-vehicules', 2, 'es'),
('volvo-trucks', 'Volvo Trucks', 'volvo-trucks', 'marques-populaires-vehicules', 2, 'es'),
('man', 'MAN', 'man', 'marques-populaires-vehicules', 2, 'es'),
('iveco', 'Iveco', 'iveco', 'marques-populaires-vehicules', 2, 'es');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('vehicules-equipements', 'المركبات، الشاحنات، الدراجات النارية والمعدات', 'vehicules-equipements', NULL, 0, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voitures-vehicules-legers', 'سيارات ومركبات خفيفة', 'voitures-vehicules-legers', 'vehicules-equipements', 1, 'ar'),
('camions-vehicules-professionnels', 'شاحنات ومركبات مهنية', 'camions-vehicules-professionnels', 'vehicules-equipements', 1, 'ar'),
('motos-cyclomoteurs', 'دراجات نارية ودراجات آلية', 'motos-cyclomoteurs', 'vehicules-equipements', 1, 'ar'),
('velos-motorises-mobilite', 'دراجات كهربائية والتنقل', 'velos-motorises-mobilite', 'vehicules-equipements', 1, 'ar'),
('equipements-accessoires-auto', 'معدات وإكسسوارات السيارات', 'equipements-accessoires-auto', 'vehicules-equipements', 1, 'ar'),
('pieces-accessoires-moto', 'قطع وإكسسوارات الدراجات النارية', 'pieces-accessoires-moto', 'vehicules-equipements', 1, 'ar'),
('remorques-attelages', 'مقطورات ووسائل السحب', 'remorques-attelages', 'vehicules-equipements', 1, 'ar'),
('diagnostic-atelier', 'معدات التشخيص والورشة', 'diagnostic-atelier', 'vehicules-equipements', 1, 'ar'),
('carburants-energie', 'الوقود والطاقة', 'carburants-energie', 'vehicules-equipements', 1, 'ar'),
('services-assistance', 'خدمات ومساعدة', 'services-assistance', 'vehicules-equipements', 1, 'ar'),
('marques-populaires-vehicules', 'علامات شهيرة (SEO)', 'marques-populaires-vehicules', 'vehicules-equipements', 1, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voitures-citadines', 'سيارات مدينة', 'voitures-citadines', 'voitures-vehicules-legers', 2, 'ar'),
('berlines', 'سيدان', 'berlines', 'voitures-vehicules-legers', 2, 'ar'),
('compactes', 'مضغوطة', 'compactes', 'voitures-vehicules-legers', 2, 'ar'),
('suv', 'SUV', 'suv', 'voitures-vehicules-legers', 2, 'ar'),
('crossovers', 'كروس أوفر', 'crossovers', 'voitures-vehicules-legers', 2, 'ar'),
('4x4', 'دفع رباعي 4x4', '4x4', 'voitures-vehicules-legers', 2, 'ar'),
('coupes', 'كوبيه', 'coupes', 'voitures-vehicules-legers', 2, 'ar'),
('cabriolets', 'مكشوفة', 'cabriolets', 'voitures-vehicules-legers', 2, 'ar'),
('breaks', 'ستيشن واغن', 'breaks', 'voitures-vehicules-legers', 2, 'ar'),
('voitures-familiales', 'سيارات عائلية', 'voitures-familiales', 'voitures-vehicules-legers', 2, 'ar'),
('vul', 'مركبات تجارية خفيفة', 'vehicules-utilitaires-legers', 'voitures-vehicules-legers', 2, 'ar'),
('vans', 'فانات', 'vans', 'voitures-vehicules-legers', 2, 'ar'),
('voitures-hybrides', 'سيارات هجينة', 'voitures-hybrides', 'voitures-vehicules-legers', 2, 'ar'),
('voitures-electriques', 'سيارات كهربائية', 'voitures-electriques', 'voitures-vehicules-legers', 2, 'ar'),
('voitures-sportives', 'سيارات رياضية', 'voitures-sportives', 'voitures-vehicules-legers', 2, 'ar'),
('voitures-anciennes-collection', 'سيارات كلاسيكية ومجمعة', 'voitures-anciennes-collection', 'voitures-vehicules-legers', 2, 'ar'),
('voitures-reconditionnees', 'سيارات مجددة', 'voitures-reconditionnees', 'voitures-vehicules-legers', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('camions-legers', 'شاحنات خفيفة', 'camions-legers', 'camions-vehicules-professionnels', 2, 'ar'),
('poids-lourds', 'شاحنات ثقيلة', 'poids-lourds', 'camions-vehicules-professionnels', 2, 'ar'),
('semi-remorques', 'شبه مقطورات', 'semi-remorques', 'camions-vehicules-professionnels', 2, 'ar'),
('tracteurs-routiers', 'شاحنات سحب', 'tracteurs-routiers', 'camions-vehicules-professionnels', 2, 'ar'),
('camions-bennes', 'شاحنات قلابة', 'camions-bennes', 'camions-vehicules-professionnels', 2, 'ar'),
('camions-frigorifiques', 'شاحنات مبردة', 'camions-frigorifiques', 'camions-vehicules-professionnels', 2, 'ar'),
('camions-plateaux', 'شاحنات منصة', 'camions-plateaux', 'camions-vehicules-professionnels', 2, 'ar'),
('fourgons-professionnels', 'شاحنات صغيرة مهنية', 'fourgons-professionnels', 'camions-vehicules-professionnels', 2, 'ar'),
('fourgonnettes', 'شاحنات صغيرة', 'fourgonnettes', 'camions-vehicules-professionnels', 2, 'ar'),
('minibus', 'حافلات صغيرة', 'minibus', 'camions-vehicules-professionnels', 2, 'ar'),
('bus', 'حافلات', 'bus', 'camions-vehicules-professionnels', 2, 'ar'),
('vehicules-de-chantier', 'مركبات موقع العمل', 'vehicules-de-chantier', 'camions-vehicules-professionnels', 2, 'ar'),
('depanneuses', 'سيارات إنقاذ', 'depanneuses', 'camions-vehicules-professionnels', 2, 'ar'),
('vehicules-toles', 'مركبات مغلقة', 'vehicules-toles', 'camions-vehicules-professionnels', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('motos-sportives', 'دراجات رياضية', 'motos-sportives', 'motos-cyclomoteurs', 2, 'ar'),
('motos-roadster', 'رودستر', 'motos-roadster', 'motos-cyclomoteurs', 2, 'ar'),
('motos-touring', 'تورينغ', 'motos-touring', 'motos-cyclomoteurs', 2, 'ar'),
('motos-enduro', 'إندورو', 'motos-enduro', 'motos-cyclomoteurs', 2, 'ar'),
('motos-trail', 'أدفنتشر/ترايل', 'motos-trail', 'motos-cyclomoteurs', 2, 'ar'),
('motos-cross', 'موتوكروس', 'motos-cross', 'motos-cyclomoteurs', 2, 'ar'),
('motos-custom', 'كوستم', 'motos-custom', 'motos-cyclomoteurs', 2, 'ar'),
('scooters-50cc', 'سكوترات 50cc', 'scooters-50cc', 'motos-cyclomoteurs', 2, 'ar'),
('scooters-125cc', 'سكوترات 125cc', 'scooters-125cc', 'motos-cyclomoteurs', 2, 'ar'),
('maxi-scooters', 'ماكسي سكوتر', 'maxi-scooters', 'motos-cyclomoteurs', 2, 'ar'),
('mobylettes', 'دراجات آلية', 'mobylettes', 'motos-cyclomoteurs', 2, 'ar'),
('quads-atv', 'كواد/ATV', 'quads-atv', 'motos-cyclomoteurs', 2, 'ar'),
('tricycles-motorises', 'دراجات ثلاثية بمحرك', 'tricycles-motorises', 'motos-cyclomoteurs', 2, 'ar'),
('motos-electriques', 'دراجات نارية كهربائية', 'motos-electriques', 'motos-cyclomoteurs', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('velos-electriques-rapides', 'دراجات كهربائية سريعة', 'velos-electriques-rapides', 'velos-motorises-mobilite', 2, 'ar'),
('trottinettes-electriques', 'سكوترات كهربائية', 'trottinettes-electriques', 'velos-motorises-mobilite', 2, 'ar'),
('gyropodes', 'جيروبود', 'gyropodes', 'velos-motorises-mobilite', 2, 'ar'),
('monoroues-electriques', 'عجلات كهربائية أحادية', 'monoroues-electriques', 'velos-motorises-mobilite', 2, 'ar'),
('cyclomoteurs-legers-electriques', 'دراجات آلية كهربائية خفيفة', 'cyclomoteurs-legers-electriques', 'velos-motorises-mobilite', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('pneus', 'إطارات', 'pneus', 'equipements-accessoires-auto', 2, 'ar'),
('jantes', 'جنطات', 'jantes', 'equipements-accessoires-auto', 2, 'ar'),
('batteries', 'بطاريات', 'batteries', 'equipements-accessoires-auto', 2, 'ar'),
('filtres', 'فلاتر', 'filtres', 'equipements-accessoires-auto', 2, 'ar'),
('huiles-lubrifiants', 'زيوت ومواد تشحيم', 'huiles-lubrifiants', 'equipements-accessoires-auto', 2, 'ar'),
('plaquettes-frein', 'بطانات فرامل', 'plaquettes-frein', 'equipements-accessoires-auto', 2, 'ar'),
('disques-frein', 'أقراص فرامل', 'disques-frein', 'equipements-accessoires-auto', 2, 'ar'),
('amortisseurs', 'ممتصات صدمات', 'amortisseurs', 'equipements-accessoires-auto', 2, 'ar'),
('courroies', 'سيور', 'courroies', 'equipements-accessoires-auto', 2, 'ar'),
('embrayages', 'قوابض', 'embrayages', 'equipements-accessoires-auto', 2, 'ar'),
('bougies', 'شمعات إشعال', 'bougies', 'equipements-accessoires-auto', 2, 'ar'),
('echappements', 'عوادم', 'echappements', 'equipements-accessoires-auto', 2, 'ar'),
('pieces-moteur', 'قطع المحرك', 'pieces-moteur', 'equipements-accessoires-auto', 2, 'ar'),
('kits-distribution', 'مجموعات التوزيع', 'kits-distribution', 'equipements-accessoires-auto', 2, 'ar'),
('accessoires-interieurs', 'إكسسوارات داخلية', 'accessoires-interieurs', 'equipements-accessoires-auto', 2, 'ar'),
('housses-sieges', 'أغطية المقاعد', 'housses-sieges', 'equipements-accessoires-auto', 2, 'ar'),
('tapis', 'فرش أرضية', 'tapis', 'equipements-accessoires-auto', 2, 'ar'),
('gps', 'GPS', 'gps', 'equipements-accessoires-auto', 2, 'ar'),
('cameras-embarquees', 'كاميرات سيارة', 'cameras-embarquees', 'equipements-accessoires-auto', 2, 'ar'),
('alarmes-auto', 'إنذارات سيارات', 'alarmes-auto', 'equipements-accessoires-auto', 2, 'ar'),
('kits-mains-libres', 'أطقم اتصال حرّ', 'kits-mains-libres', 'equipements-accessoires-auto', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-moto', 'خوذ دراجات', 'casques-moto', 'pieces-accessoires-moto', 2, 'ar'),
('blousons-moto', 'سترات', 'blousons-moto', 'pieces-accessoires-moto', 2, 'ar'),
('gants-moto', 'قفازات', 'gants-moto', 'pieces-accessoires-moto', 2, 'ar'),
('bottes-chaussures', 'أحذية وبوت', 'bottes-chaussures', 'pieces-accessoires-moto', 2, 'ar'),
('protections-moto', 'واقيات (ظهر، ركبتين)', 'protections-moto', 'pieces-accessoires-moto', 2, 'ar'),
('valises-top-cases', 'حقائب وصناديق علوية', 'valises-top-cases', 'pieces-accessoires-moto', 2, 'ar'),
('pots-echappement-moto', 'عوادم دراجات', 'pots-echappement-moto', 'pieces-accessoires-moto', 2, 'ar'),
('kits-chaine', 'مجموعات سلسلة', 'kits-chaine', 'pieces-accessoires-moto', 2, 'ar'),
('batteries-moto', 'بطاريات دراجات', 'batteries-moto', 'pieces-accessoires-moto', 2, 'ar'),
('pneus-moto', 'إطارات دراجات', 'pneus-moto', 'pieces-accessoires-moto', 2, 'ar'),
('guidons', 'مقود', 'guidons', 'pieces-accessoires-moto', 2, 'ar'),
('leviers', 'مقابض', 'leviers', 'pieces-accessoires-moto', 2, 'ar'),
('retroviseurs', 'مرايا', 'retroviseurs', 'pieces-accessoires-moto', 2, 'ar'),
('pieces-moteur-moto', 'قطع محرك (موتو)', 'pieces-moteur-moto', 'pieces-accessoires-moto', 2, 'ar'),
('huile-moto', 'زيت موتو', 'huile-moto', 'pieces-accessoires-moto', 2, 'ar'),
('kits-reparation', 'مجموعات إصلاح', 'kits-reparation', 'pieces-accessoires-moto', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('remorques-utilitaires', 'مقطورات خدمية', 'remorques-utilitaires', 'remorques-attelages', 2, 'ar'),
('remorques-porte-voitures', 'مقطورات نقل سيارات', 'remorques-porte-voitures', 'remorques-attelages', 2, 'ar'),
('remorques-bagageres', 'مقطورات حمولة', 'remorques-bagageres', 'remorques-attelages', 2, 'ar'),
('remorques-betail', 'مقطورات مواشي', 'remorques-betail', 'remorques-attelages', 2, 'ar'),
('remorques-frigorifiques', 'مقطورات مبردة', 'remorques-frigorifiques', 'remorques-attelages', 2, 'ar'),
('remorques-agricoles', 'مقطورات زراعية', 'remorques-agricoles', 'remorques-attelages', 2, 'ar'),
('attelages', 'مراكيب السحب', 'attelages', 'remorques-attelages', 2, 'ar'),
('barres-remorquage', 'قضبان سحب', 'barres-remorquage', 'remorques-attelages', 2, 'ar'),
('porte-motos', 'حوامل دراجات نارية', 'porte-motos', 'remorques-attelages', 2, 'ar'),
('porte-velos', 'حوامل دراجات', 'porte-velos', 'remorques-attelages', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('valises-diagnostic-auto', 'أجهزة تشخيص السيارات', 'valises-diagnostic-auto', 'diagnostic-atelier', 2, 'ar'),
('lecteurs-obd2', 'قارئات OBD2', 'lecteurs-obd2', 'diagnostic-atelier', 2, 'ar'),
('ponts-elevateurs', 'جسور رفع', 'ponts-elevateurs', 'diagnostic-atelier', 2, 'ar'),
('compresseurs', 'ضواغط', 'compresseurs', 'diagnostic-atelier', 2, 'ar'),
('crics-hydrauliques', 'رافعات هيدروليكية', 'crics-hydrauliques', 'diagnostic-atelier', 2, 'ar'),
('outils-mecaniques', 'أدوات ميكانيكية', 'outils-mecaniques', 'diagnostic-atelier', 2, 'ar'),
('chargeurs-batterie', 'شواحن بطارية', 'chargeurs-batterie', 'diagnostic-atelier', 2, 'ar'),
('boosters', 'مُعزِّزات', 'boosters', 'diagnostic-atelier', 2, 'ar'),
('stations-climatisation', 'محطات تكييف', 'stations-climatisation', 'diagnostic-atelier', 2, 'ar'),
('demonte-pneus', 'مفككات الإطارات', 'demonte-pneus', 'diagnostic-atelier', 2, 'ar'),
('equilibreuses', 'موازنات عجلات', 'equilibreuses', 'diagnostic-atelier', 2, 'ar'),
('outils-specialises-moto', 'أدوات متخصصة للدراجات', 'outils-specialises-moto', 'diagnostic-atelier', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bornes-recharge', 'محطات شحن', 'bornes-recharge', 'carburants-energie', 2, 'ar'),
('stations-recharge-domestiques', 'شواحن منزلية', 'stations-recharge-domestiques', 'carburants-energie', 2, 'ar'),
('adaptateurs-voitures-electriques', 'محولات للسيارات الكهربائية', 'adaptateurs-voitures-electriques', 'carburants-energie', 2, 'ar'),
('jerricans', 'جالونات', 'jerricans', 'carburants-energie', 2, 'ar'),
('additifs-carburant', 'مضافات الوقود', 'additifs-carburant', 'carburants-energie', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('reparation-auto', 'تصليح سيارات', 'reparation-auto', 'services-assistance', 2, 'ar'),
('reparation-moto', 'تصليح دراجات', 'reparation-moto', 'services-assistance', 2, 'ar'),
('entretien-vidange', 'صيانة وتغيير زيت', 'entretien-vidange', 'services-assistance', 2, 'ar'),
('lavage-automobile', 'غسيل سيارات', 'lavage-automobile', 'services-assistance', 2, 'ar'),
('depannage', 'خدمة أعطال', 'depannage', 'services-assistance', 2, 'ar'),
('remorquage', 'سحب', 'remorquage', 'services-assistance', 2, 'ar'),
('reprogrammation-moteur', 'برمجة محرك', 'reprogrammation-moteur', 'services-assistance', 2, 'ar'),
('installation-accessoires', 'تركيب الإكسسوارات', 'installation-accessoires', 'services-assistance', 2, 'ar'),
('renovation-phares', 'ترميم المصابيح', 'renovation-phares', 'services-assistance', 2, 'ar'),
('remplacement-pare-brise', 'تبديل الزجاج الأمامي', 'remplacement-pare-brise', 'services-assistance', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('renault', 'Renault', 'renault', 'marques-populaires-vehicules', 2, 'ar'),
('peugeot', 'Peugeot', 'peugeot', 'marques-populaires-vehicules', 2, 'ar'),
('citroen', 'Citroën', 'citroen', 'marques-populaires-vehicules', 2, 'ar'),
('dacia', 'Dacia', 'dacia', 'marques-populaires-vehicules', 2, 'ar'),
('volkswagen', 'Volkswagen', 'volkswagen', 'marques-populaires-vehicules', 2, 'ar'),
('audi', 'Audi', 'audi', 'marques-populaires-vehicules', 2, 'ar'),
('bmw', 'BMW', 'bmw', 'marques-populaires-vehicules', 2, 'ar'),
('mercedes', 'Mercedes', 'mercedes', 'marques-populaires-vehicules', 2, 'ar'),
('toyota', 'Toyota', 'toyota', 'marques-populaires-vehicules', 2, 'ar'),
('kia', 'Kia', 'kia', 'marques-populaires-vehicules', 2, 'ar'),
('hyundai', 'Hyundai', 'hyundai', 'marques-populaires-vehicules', 2, 'ar'),
('ford', 'Ford', 'ford', 'marques-populaires-vehicules', 2, 'ar'),
('nissan', 'Nissan', 'nissan', 'marques-populaires-vehicules', 2, 'ar'),
('fiat', 'Fiat', 'fiat', 'marques-populaires-vehicules', 2, 'ar'),
('honda', 'Honda', 'honda', 'marques-populaires-vehicules', 2, 'ar'),
('yamaha', 'Yamaha', 'yamaha', 'marques-populaires-vehicules', 2, 'ar'),
('suzuki', 'Suzuki', 'suzuki', 'marques-populaires-vehicules', 2, 'ar'),
('piaggio', 'Piaggio', 'piaggio', 'marques-populaires-vehicules', 2, 'ar'),
('ducati', 'Ducati', 'ducati', 'marques-populaires-vehicules', 2, 'ar'),
('ktm', 'KTM', 'ktm', 'marques-populaires-vehicules', 2, 'ar'),
('scania', 'Scania', 'scania', 'marques-populaires-vehicules', 2, 'ar'),
('volvo-trucks', 'Volvo Trucks', 'volvo-trucks', 'marques-populaires-vehicules', 2, 'ar'),
('man', 'MAN', 'man', 'marques-populaires-vehicules', 2, 'ar'),
('iveco', 'Iveco', 'iveco', 'marques-populaires-vehicules', 2, 'ar');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('vehicules-equipements', 'Fahrzeuge, Lkw, Motorräder & Ausrüstung', 'vehicules-equipements', NULL, 0, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voitures-vehicules-legers', 'Autos & Leichtfahrzeuge', 'voitures-vehicules-legers', 'vehicules-equipements', 1, 'de'),
('camions-vehicules-professionnels', 'Lkw & Nutzfahrzeuge', 'camions-vehicules-professionnels', 'vehicules-equipements', 1, 'de'),
('motos-cyclomoteurs', 'Motorräder & Mofas', 'motos-cyclomoteurs', 'vehicules-equipements', 1, 'de'),
('velos-motorises-mobilite', 'Motorisierte Fahrräder & Mobilität', 'velos-motorises-mobilite', 'vehicules-equipements', 1, 'de'),
('equipements-accessoires-auto', 'Autozubehör & Ausrüstung', 'equipements-accessoires-auto', 'vehicules-equipements', 1, 'de'),
('pieces-accessoires-moto', 'Motorradteile & Zubehör', 'pieces-accessoires-moto', 'vehicules-equipements', 1, 'de'),
('remorques-attelages', 'Anhänger & Anhängerkupplungen', 'remorques-attelages', 'vehicules-equipements', 1, 'de'),
('diagnostic-atelier', 'Werkstatt- & Diagnostikgeräte', 'diagnostic-atelier', 'vehicules-equipements', 1, 'de'),
('carburants-energie', 'Kraftstoffe & Energie', 'carburants-energie', 'vehicules-equipements', 1, 'de'),
('services-assistance', 'Services & Unterstützung', 'services-assistance', 'vehicules-equipements', 1, 'de'),
('marques-populaires-vehicules', 'Beliebte Marken (SEO)', 'marques-populaires-vehicules', 'vehicules-equipements', 1, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voitures-citadines', 'Stadtwagen', 'voitures-citadines', 'voitures-vehicules-legers', 2, 'de'),
('berlines', 'Limousinen', 'berlines', 'voitures-vehicules-legers', 2, 'de'),
('compactes', 'Kompaktwagen', 'compactes', 'voitures-vehicules-legers', 2, 'de'),
('suv', 'SUV', 'suv', 'voitures-vehicules-legers', 2, 'de'),
('crossovers', 'Crossover', 'crossovers', 'voitures-vehicules-legers', 2, 'de'),
('4x4', '4x4', '4x4', 'voitures-vehicules-legers', 2, 'de'),
('coupes', 'Coupés', 'coupes', 'voitures-vehicules-legers', 2, 'de'),
('cabriolets', 'Cabriolets', 'cabriolets', 'voitures-vehicules-legers', 2, 'de'),
('breaks', 'Kombis', 'breaks', 'voitures-vehicules-legers', 2, 'de'),
('voitures-familiales', 'Familienautos', 'voitures-familiales', 'voitures-vehicules-legers', 2, 'de'),
('vul', 'Leichte Nutzfahrzeuge', 'vehicules-utilitaires-legers', 'voitures-vehicules-legers', 2, 'de'),
('vans', 'Vans', 'vans', 'voitures-vehicules-legers', 2, 'de'),
('voitures-hybrides', 'Hybridautos', 'voitures-hybrides', 'voitures-vehicules-legers', 2, 'de'),
('voitures-electriques', 'Elektroautos', 'voitures-electriques', 'voitures-vehicules-legers', 2, 'de'),
('voitures-sportives', 'Sportwagen', 'voitures-sportives', 'voitures-vehicules-legers', 2, 'de'),
('voitures-anciennes-collection', 'Oldtimer & Sammlerfahrzeuge', 'voitures-anciennes-collection', 'voitures-vehicules-legers', 2, 'de'),
('voitures-reconditionnees', 'Generalüberholte Fahrzeuge', 'voitures-reconditionnees', 'voitures-vehicules-legers', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('camions-legers', 'Leichte Lkw', 'camions-legers', 'camions-vehicules-professionnels', 2, 'de'),
('poids-lourds', 'Schwerlaster', 'poids-lourds', 'camions-vehicules-professionnels', 2, 'de'),
('semi-remorques', 'Sattelauflieger', 'semi-remorques', 'camions-vehicules-professionnels', 2, 'de'),
('tracteurs-routiers', 'Zugmaschinen', 'tracteurs-routiers', 'camions-vehicules-professionnels', 2, 'de'),
('camions-bennes', 'Kipp-Lkw', 'camions-bennes', 'camions-vehicules-professionnels', 2, 'de'),
('camions-frigorifiques', 'Kühl-Lkw', 'camions-frigorifiques', 'camions-vehicules-professionnels', 2, 'de'),
('camions-plateaux', 'Plateau-Lkw', 'camions-plateaux', 'camions-vehicules-professionnels', 2, 'de'),
('fourgons-professionnels', 'Profi-Kastenwagen', 'fourgons-professionnels', 'camions-vehicules-professionnels', 2, 'de'),
('fourgonnettes', 'Kleintransporter', 'fourgonnettes', 'camions-vehicules-professionnels', 2, 'de'),
('minibus', 'Minibusse', 'minibus', 'camions-vehicules-professionnels', 2, 'de'),
('bus', 'Busse', 'bus', 'camions-vehicules-professionnels', 2, 'de'),
('vehicules-de-chantier', 'Baustellenfahrzeuge', 'vehicules-de-chantier', 'camions-vehicules-professionnels', 2, 'de'),
('depanneuses', 'Abschleppwagen', 'depanneuses', 'camions-vehicules-professionnels', 2, 'de'),
('vehicules-toles', 'Kastenwagen', 'vehicules-toles', 'camions-vehicules-professionnels', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('motos-sportives', 'Sportmotorräder', 'motos-sportives', 'motos-cyclomoteurs', 2, 'de'),
('motos-roadster', 'Roadster', 'motos-roadster', 'motos-cyclomoteurs', 2, 'de'),
('motos-touring', 'Tourer', 'motos-touring', 'motos-cyclomoteurs', 2, 'de'),
('motos-enduro', 'Enduro', 'motos-enduro', 'motos-cyclomoteurs', 2, 'de'),
('motos-trail', 'Adventure/Trail', 'motos-trail', 'motos-cyclomoteurs', 2, 'de'),
('motos-cross', 'Motocross', 'motos-cross', 'motos-cyclomoteurs', 2, 'de'),
('motos-custom', 'Custom', 'motos-custom', 'motos-cyclomoteurs', 2, 'de'),
('scooters-50cc', 'Roller 50cc', 'scooters-50cc', 'motos-cyclomoteurs', 2, 'de'),
('scooters-125cc', 'Roller 125cc', 'scooters-125cc', 'motos-cyclomoteurs', 2, 'de'),
('maxi-scooters', 'Maxi-Roller', 'maxi-scooters', 'motos-cyclomoteurs', 2, 'de'),
('mobylettes', 'Mofas', 'mobylettes', 'motos-cyclomoteurs', 2, 'de'),
('quads-atv', 'Quads & ATV', 'quads-atv', 'motos-cyclomoteurs', 2, 'de'),
('tricycles-motorises', 'Motor-Dreiräder', 'tricycles-motorises', 'motos-cyclomoteurs', 2, 'de'),
('motos-electriques', 'Elektromotorräder', 'motos-electriques', 'motos-cyclomoteurs', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('velos-electriques-rapides', 'Schnelle E‑Bikes', 'velos-electriques-rapides', 'velos-motorises-mobilite', 2, 'de'),
('trottinettes-electriques', 'E‑Scooter', 'trottinettes-electriques', 'velos-motorises-mobilite', 2, 'de'),
('gyropodes', 'Gyropoden', 'gyropodes', 'velos-motorises-mobilite', 2, 'de'),
('monoroues-electriques', 'Elektrische Einräder', 'monoroues-electriques', 'velos-motorises-mobilite', 2, 'de'),
('cyclomoteurs-legers-electriques', 'Leichte E‑Mofas', 'cyclomoteurs-legers-electriques', 'velos-motorises-mobilite', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('pneus', 'Reifen', 'pneus', 'equipements-accessoires-auto', 2, 'de'),
('jantes', 'Felgen', 'jantes', 'equipements-accessoires-auto', 2, 'de'),
('batteries', 'Batterien', 'batteries', 'equipements-accessoires-auto', 2, 'de'),
('filtres', 'Filter', 'filtres', 'equipements-accessoires-auto', 2, 'de'),
('huiles-lubrifiants', 'Öle & Schmierstoffe', 'huiles-lubrifiants', 'equipements-accessoires-auto', 2, 'de'),
('plaquettes-frein', 'Bremsbeläge', 'plaquettes-frein', 'equipements-accessoires-auto', 2, 'de'),
('disques-frein', 'Bremsscheiben', 'disques-frein', 'equipements-accessoires-auto', 2, 'de'),
('amortisseurs', 'Stoßdämpfer', 'amortisseurs', 'equipements-accessoires-auto', 2, 'de'),
('courroies', 'Riemen', 'courroies', 'equipements-accessoires-auto', 2, 'de'),
('embrayages', 'Kupplungen', 'embrayages', 'equipements-accessoires-auto', 2, 'de'),
('bougies', 'Zündkerzen', 'bougies', 'equipements-accessoires-auto', 2, 'de'),
('echappements', 'Auspuffanlagen', 'echappements', 'equipements-accessoires-auto', 2, 'de'),
('pieces-moteur', 'Motorteile', 'pieces-moteur', 'equipements-accessoires-auto', 2, 'de'),
('kits-distribution', 'Zahnriemen‑Kits', 'kits-distribution', 'equipements-accessoires-auto', 2, 'de'),
('accessoires-interieurs', 'Innenausstattung', 'accessoires-interieurs', 'equipements-accessoires-auto', 2, 'de'),
('housses-sieges', 'Sitzbezüge', 'housses-sieges', 'equipements-accessoires-auto', 2, 'de'),
('tapis', 'Fußmatten', 'tapis', 'equipements-accessoires-auto', 2, 'de'),
('gps', 'GPS', 'gps', 'equipements-accessoires-auto', 2, 'de'),
('cameras-embarquees', 'Dashcams', 'cameras-embarquees', 'equipements-accessoires-auto', 2, 'de'),
('alarmes-auto', 'Autoalarme', 'alarmes-auto', 'equipements-accessoires-auto', 2, 'de'),
('kits-mains-libres', 'Freisprech‑Kits', 'kits-mains-libres', 'equipements-accessoires-auto', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-moto', 'Motorradhelme', 'casques-moto', 'pieces-accessoires-moto', 2, 'de'),
('blousons-moto', 'Motorradjacken', 'blousons-moto', 'pieces-accessoires-moto', 2, 'de'),
('gants-moto', 'Handschuhe', 'gants-moto', 'pieces-accessoires-moto', 2, 'de'),
('bottes-chaussures', 'Stiefel & Schuhe', 'bottes-chaussures', 'pieces-accessoires-moto', 2, 'de'),
('protections-moto', 'Schutz (Rücken, Knie)', 'protections-moto', 'pieces-accessoires-moto', 2, 'de'),
('valises-top-cases', 'Koffer & Topcases', 'valises-top-cases', 'pieces-accessoires-moto', 2, 'de'),
('pots-echappement-moto', 'Auspuffe für Motorräder', 'pots-echappement-moto', 'pieces-accessoires-moto', 2, 'de'),
('kits-chaine', 'Ketten‑Kits', 'kits-chaine', 'pieces-accessoires-moto', 2, 'de'),
('batteries-moto', 'Motorradbatterien', 'batteries-moto', 'pieces-accessoires-moto', 2, 'de'),
('pneus-moto', 'Motorradreifen', 'pneus-moto', 'pieces-accessoires-moto', 2, 'de'),
('guidons', 'Lenker', 'guidons', 'pieces-accessoires-moto', 2, 'de'),
('leviers', 'Hebel', 'leviers', 'pieces-accessoires-moto', 2, 'de'),
('retroviseurs', 'Spiegel', 'retroviseurs', 'pieces-accessoires-moto', 2, 'de'),
('pieces-moteur-moto', 'Motorenteile (Moto)', 'pieces-moteur-moto', 'pieces-accessoires-moto', 2, 'de'),
('huile-moto', 'Motoröl (Moto)', 'huile-moto', 'pieces-accessoires-moto', 2, 'de'),
('kits-reparation', 'Reparatur‑Kits', 'kits-reparation', 'pieces-accessoires-moto', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('remorques-utilitaires', 'Nutzanhänger', 'remorques-utilitaires', 'remorques-attelages', 2, 'de'),
('remorques-porte-voitures', 'Autotransporter', 'remorques-porte-voitures', 'remorques-attelages', 2, 'de'),
('remorques-bagageres', 'Transportanhänger', 'remorques-bagageres', 'remorques-attelages', 2, 'de'),
('remorques-betail', 'Viehanhänger', 'remorques-betail', 'remorques-attelages', 2, 'de'),
('remorques-frigorifiques', 'Kühlanhänger', 'remorques-frigorifiques', 'remorques-attelages', 2, 'de'),
('remorques-agricoles', 'Landwirtschaftliche Anhänger', 'remorques-agricoles', 'remorques-attelages', 2, 'de'),
('attelages', 'Anhängerkupplungen', 'attelages', 'remorques-attelages', 2, 'de'),
('barres-remorquage', 'Abschleppstangen', 'barres-remorquage', 'remorques-attelages', 2, 'de'),
('porte-motos', 'Motorradträger', 'porte-motos', 'remorques-attelages', 2, 'de'),
('porte-velos', 'Fahrradträger', 'porte-velos', 'remorques-attelages', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('valises-diagnostic-auto', 'Diagnosegeräte (Auto)', 'valises-diagnostic-auto', 'diagnostic-atelier', 2, 'de'),
('lecteurs-obd2', 'OBD2‑Leser', 'lecteurs-obd2', 'diagnostic-atelier', 2, 'de'),
('ponts-elevateurs', 'Hebebühnen', 'ponts-elevateurs', 'diagnostic-atelier', 2, 'de'),
('compresseurs', 'Kompressoren', 'compresseurs', 'diagnostic-atelier', 2, 'de'),
('crics-hydrauliques', 'Hydraulikheber', 'crics-hydrauliques', 'diagnostic-atelier', 2, 'de'),
('outils-mecaniques', 'Mechanik‑Werkzeuge', 'outils-mecaniques', 'diagnostic-atelier', 2, 'de'),
('chargeurs-batterie', 'Batterieladegeräte', 'chargeurs-batterie', 'diagnostic-atelier', 2, 'de'),
('boosters', 'Booster', 'boosters', 'diagnostic-atelier', 2, 'de'),
('stations-climatisation', 'Klimaservice‑Stationen', 'stations-climatisation', 'diagnostic-atelier', 2, 'de'),
('demonte-pneus', 'Reifenmontiermaschinen', 'demonte-pneus', 'diagnostic-atelier', 2, 'de'),
('equilibreuses', 'Wuchtmaschinen', 'equilibreuses', 'diagnostic-atelier', 2, 'de'),
('outils-specialises-moto', 'Spezialisierte Motorrad‑Werkzeuge', 'outils-specialises-moto', 'diagnostic-atelier', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bornes-recharge', 'Ladestationen', 'bornes-recharge', 'carburants-energie', 2, 'de'),
('stations-recharge-domestiques', 'Heimladestationen', 'stations-recharge-domestiques', 'carburants-energie', 2, 'de'),
('adaptateurs-voitures-electriques', 'Adapter für E‑Autos', 'adaptateurs-voitures-electriques', 'carburants-energie', 2, 'de'),
('jerricans', 'Kanister', 'jerricans', 'carburants-energie', 2, 'de'),
('additifs-carburant', 'Kraftstoff‑Additive', 'additifs-carburant', 'carburants-energie', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('reparation-auto', 'Auto‑Reparatur', 'reparation-auto', 'services-assistance', 2, 'de'),
('reparation-moto', 'Moto‑Reparatur', 'reparation-moto', 'services-assistance', 2, 'de'),
('entretien-vidange', 'Wartung & Ölwechsel', 'entretien-vidange', 'services-assistance', 2, 'de'),
('lavage-automobile', 'Autowäsche', 'lavage-automobile', 'services-assistance', 2, 'de'),
('depannage', 'Pannenhilfe', 'depannage', 'services-assistance', 2, 'de'),
('remorquage', 'Abschleppen', 'remorquage', 'services-assistance', 2, 'de'),
('reprogrammation-moteur', 'Motor‑Optimierung', 'reprogrammation-moteur', 'services-assistance', 2, 'de'),
('installation-accessoires', 'Einbau von Zubehör', 'installation-accessoires', 'services-assistance', 2, 'de'),
('renovation-phares', 'Scheinwerfer‑Aufbereitung', 'renovation-phares', 'services-assistance', 2, 'de'),
('remplacement-pare-brise', 'Scheibenwechsel', 'remplacement-pare-brise', 'services-assistance', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('renault', 'Renault', 'renault', 'marques-populaires-vehicules', 2, 'de'),
('peugeot', 'Peugeot', 'peugeot', 'marques-populaires-vehicules', 2, 'de'),
('citroen', 'Citroën', 'citroen', 'marques-populaires-vehicules', 2, 'de'),
('dacia', 'Dacia', 'dacia', 'marques-populaires-vehicules', 2, 'de'),
('volkswagen', 'Volkswagen', 'volkswagen', 'marques-populaires-vehicules', 2, 'de'),
('audi', 'Audi', 'audi', 'marques-populaires-vehicules', 2, 'de'),
('bmw', 'BMW', 'bmw', 'marques-populaires-vehicules', 2, 'de'),
('mercedes', 'Mercedes', 'mercedes', 'marques-populaires-vehicules', 2, 'de'),
('toyota', 'Toyota', 'toyota', 'marques-populaires-vehicules', 2, 'de'),
('kia', 'Kia', 'kia', 'marques-populaires-vehicules', 2, 'de'),
('hyundai', 'Hyundai', 'hyundai', 'marques-populaires-vehicules', 2, 'de'),
('ford', 'Ford', 'ford', 'marques-populaires-vehicules', 2, 'de'),
('nissan', 'Nissan', 'nissan', 'marques-populaires-vehicules', 2, 'de'),
('fiat', 'Fiat', 'fiat', 'marques-populaires-vehicules', 2, 'de'),
('honda', 'Honda', 'honda', 'marques-populaires-vehicules', 2, 'de'),
('yamaha', 'Yamaha', 'yamaha', 'marques-populaires-vehicules', 2, 'de'),
('suzuki', 'Suzuki', 'suzuki', 'marques-populaires-vehicules', 2, 'de'),
('piaggio', 'Piaggio', 'piaggio', 'marques-populaires-vehicules', 2, 'de'),
('ducati', 'Ducati', 'ducati', 'marques-populaires-vehicules', 2, 'de'),
('ktm', 'KTM', 'ktm', 'marques-populaires-vehicules', 2, 'de'),
('scania', 'Scania', 'scania', 'marques-populaires-vehicules', 2, 'de'),
('volvo-trucks', 'Volvo Trucks', 'volvo-trucks', 'marques-populaires-vehicules', 2, 'de'),
('man', 'MAN', 'man', 'marques-populaires-vehicules', 2, 'de'),
('iveco', 'Iveco', 'iveco', 'marques-populaires-vehicules', 2, 'de');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES ('vehicules-equipements', 'Veicoli, Camion, Moto & Attrezzature', 'vehicules-equipements', NULL, 0, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voitures-vehicules-legers', 'Auto & veicoli leggeri', 'voitures-vehicules-legers', 'vehicules-equipements', 1, 'it'),
('camions-vehicules-professionnels', 'Camion & veicoli professionali', 'camions-vehicules-professionnels', 'vehicules-equipements', 1, 'it'),
('motos-cyclomoteurs', 'Moto & ciclomotori', 'motos-cyclomoteurs', 'vehicules-equipements', 1, 'it'),
('velos-motorises-mobilite', 'Biciclette motorizzate & mobilità', 'velos-motorises-mobilite', 'vehicules-equipements', 1, 'it'),
('equipements-accessoires-auto', 'Equipaggiamento & accessori auto', 'equipements-accessoires-auto', 'vehicules-equipements', 1, 'it'),
('pieces-accessoires-moto', 'Ricambi & accessori moto', 'pieces-accessoires-moto', 'vehicules-equipements', 1, 'it'),
('remorques-attelages', 'Rimorchi & traino', 'remorques-attelages', 'vehicules-equipements', 1, 'it'),
('diagnostic-atelier', 'Attrezzatura diagnostica & officina', 'diagnostic-atelier', 'vehicules-equipements', 1, 'it'),
('carburants-energie', 'Carburanti & energia', 'carburants-energie', 'vehicules-equipements', 1, 'it'),
('services-assistance', 'Servizi & assistenza', 'services-assistance', 'vehicules-equipements', 1, 'it'),
('marques-populaires-vehicules', 'Marche popolari (SEO)', 'marques-populaires-vehicules', 'vehicules-equipements', 1, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voitures-citadines', 'City car', 'voitures-citadines', 'voitures-vehicules-legers', 2, 'it'),
('berlines', 'Berlina', 'berlines', 'voitures-vehicules-legers', 2, 'it'),
('compactes', 'Compatte', 'compactes', 'voitures-vehicules-legers', 2, 'it'),
('suv', 'SUV', 'suv', 'voitures-vehicules-legers', 2, 'it'),
('crossovers', 'Crossover', 'crossovers', 'voitures-vehicules-legers', 2, 'it'),
('4x4', '4x4', '4x4', 'voitures-vehicules-legers', 2, 'it'),
('coupes', 'Coupé', 'coupes', 'voitures-vehicules-legers', 2, 'it'),
('cabriolets', 'Cabrio', 'cabriolets', 'voitures-vehicules-legers', 2, 'it'),
('breaks', 'Station wagon', 'breaks', 'voitures-vehicules-legers', 2, 'it'),
('voitures-familiales', 'Auto familiari', 'voitures-familiales', 'voitures-vehicules-legers', 2, 'it'),
('vul', 'Veicoli commerciali leggeri', 'vehicules-utilitaires-legers', 'voitures-vehicules-legers', 2, 'it'),
('vans', 'Van', 'vans', 'voitures-vehicules-legers', 2, 'it'),
('voitures-hybrides', 'Auto ibride', 'voitures-hybrides', 'voitures-vehicules-legers', 2, 'it'),
('voitures-electriques', 'Auto elettriche', 'voitures-electriques', 'voitures-vehicules-legers', 2, 'it'),
('voitures-sportives', 'Auto sportive', 'voitures-sportives', 'voitures-vehicules-legers', 2, 'it'),
('voitures-anciennes-collection', 'Auto d’epoca & da collezione', 'voitures-anciennes-collection', 'voitures-vehicules-legers', 2, 'it'),
('voitures-reconditionnees', 'Auto ricondizionate', 'voitures-reconditionnees', 'voitures-vehicules-legers', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('camions-legers', 'Camion leggeri', 'camions-legers', 'camions-vehicules-professionnels', 2, 'it'),
('poids-lourds', 'Mezzi pesanti', 'poids-lourds', 'camions-vehicules-professionnels', 2, 'it'),
('semi-remorques', 'Semirimorchi', 'semi-remorques', 'camions-vehicules-professionnels', 2, 'it'),
('tracteurs-routiers', 'Trattori stradali', 'tracteurs-routiers', 'camions-vehicules-professionnels', 2, 'it'),
('camions-bennes', 'Camion con cassone ribaltabile', 'camions-bennes', 'camions-vehicules-professionnels', 2, 'it'),
('camions-frigorifiques', 'Camion frigoriferi', 'camions-frigorifiques', 'camions-vehicules-professionnels', 2, 'it'),
('camions-plateaux', 'Camion con pianale', 'camions-plateaux', 'camions-vehicules-professionnels', 2, 'it'),
('fourgons-professionnels', 'Furgoni professionali', 'fourgons-professionnels', 'camions-vehicules-professionnels', 2, 'it'),
('fourgonnettes', 'Furgoncini', 'fourgonnettes', 'camions-vehicules-professionnels', 2, 'it'),
('minibus', 'Minibus', 'minibus', 'camions-vehicules-professionnels', 2, 'it'),
('bus', 'Autobus', 'bus', 'camions-vehicules-professionnels', 2, 'it'),
('vehicules-de-chantier', 'Veicoli da cantiere', 'vehicules-de-chantier', 'camions-vehicules-professionnels', 2, 'it'),
('depanneuses', 'Carri attrezzi', 'depanneuses', 'camions-vehicules-professionnels', 2, 'it'),
('vehicules-toles', 'Veicoli furgonati', 'vehicules-toles', 'camions-vehicules-professionnels', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('motos-sportives', 'Moto sportive', 'motos-sportives', 'motos-cyclomoteurs', 2, 'it'),
('motos-roadster', 'Roadster', 'motos-roadster', 'motos-cyclomoteurs', 2, 'it'),
('motos-touring', 'Touring', 'motos-touring', 'motos-cyclomoteurs', 2, 'it'),
('motos-enduro', 'Enduro', 'motos-enduro', 'motos-cyclomoteurs', 2, 'it'),
('motos-trail', 'Trail/Adventure', 'motos-trail', 'motos-cyclomoteurs', 2, 'it'),
('motos-cross', 'Motocross', 'motos-cross', 'motos-cyclomoteurs', 2, 'it'),
('motos-custom', 'Custom', 'motos-custom', 'motos-cyclomoteurs', 2, 'it'),
('scooters-50cc', 'Scooter 50cc', 'scooters-50cc', 'motos-cyclomoteurs', 2, 'it'),
('scooters-125cc', 'Scooter 125cc', 'scooters-125cc', 'motos-cyclomoteurs', 2, 'it'),
('maxi-scooters', 'Maxi‑scooter', 'maxi-scooters', 'motos-cyclomoteurs', 2, 'it'),
('mobylettes', 'Ciclomotori', 'mobylettes', 'motos-cyclomoteurs', 2, 'it'),
('quads-atv', 'Quad & ATV', 'quads-atv', 'motos-cyclomoteurs', 2, 'it'),
('tricycles-motorises', 'Tricicli motorizzati', 'tricycles-motorises', 'motos-cyclomoteurs', 2, 'it'),
('motos-electriques', 'Moto elettriche', 'motos-electriques', 'motos-cyclomoteurs', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('velos-electriques-rapides', 'E‑bike veloci', 'velos-electriques-rapides', 'velos-motorises-mobilite', 2, 'it'),
('trottinettes-electriques', 'Monopattini elettrici', 'trottinettes-electriques', 'velos-motorises-mobilite', 2, 'it'),
('gyropodes', 'Gyropode', 'gyropodes', 'velos-motorises-mobilite', 2, 'it'),
('monoroues-electriques', 'Monoruote elettriche', 'monoroues-electriques', 'velos-motorises-mobilite', 2, 'it'),
('cyclomoteurs-legers-electriques', 'Ciclomotori elettrici leggeri', 'cyclomoteurs-legers-electriques', 'velos-motorises-mobilite', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('pneus', 'Pneumatici', 'pneus', 'equipements-accessoires-auto', 2, 'it'),
('jantes', 'Cerchi', 'jantes', 'equipements-accessoires-auto', 2, 'it'),
('batteries', 'Batterie', 'batteries', 'equipements-accessoires-auto', 2, 'it'),
('filtres', 'Filtri', 'filtres', 'equipements-accessoires-auto', 2, 'it'),
('huiles-lubrifiants', 'Oli & lubrificanti', 'huiles-lubrifiants', 'equipements-accessoires-auto', 2, 'it'),
('plaquettes-frein', 'Pastiglie freno', 'plaquettes-frein', 'equipements-accessoires-auto', 2, 'it'),
('disques-frein', 'Dischi freno', 'disques-frein', 'equipements-accessoires-auto', 2, 'it'),
('amortisseurs', 'Ammortizzatori', 'amortisseurs', 'equipements-accessoires-auto', 2, 'it'),
('courroies', 'Cinghie', 'courroies', 'equipements-accessoires-auto', 2, 'it'),
('embrayages', 'Frizioni', 'embrayages', 'equipements-accessoires-auto', 2, 'it'),
('bougies', 'Candele', 'bougies', 'equipements-accessoires-auto', 2, 'it'),
('echappements', 'Scarichi', 'echappements', 'equipements-accessoires-auto', 2, 'it'),
('pieces-moteur', 'Parti motore', 'pieces-moteur', 'equipements-accessoires-auto', 2, 'it'),
('kits-distribution', 'Kit distribuzione', 'kits-distribution', 'equipements-accessoires-auto', 2, 'it'),
('accessoires-interieurs', 'Accessori interni', 'accessoires-interieurs', 'equipements-accessoires-auto', 2, 'it'),
('housses-sieges', 'Foderi sedili', 'housses-sieges', 'equipements-accessoires-auto', 2, 'it'),
('tapis', 'Tappetini', 'tapis', 'equipements-accessoires-auto', 2, 'it'),
('gps', 'GPS', 'gps', 'equipements-accessoires-auto', 2, 'it'),
('cameras-embarquees', 'Dashcam', 'cameras-embarquees', 'equipements-accessoires-auto', 2, 'it'),
('alarmes-auto', 'Allarmi auto', 'alarmes-auto', 'equipements-accessoires-auto', 2, 'it'),
('kits-mains-libres', 'Kit vivavoce', 'kits-mains-libres', 'equipements-accessoires-auto', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('casques-moto', 'Caschi', 'casques-moto', 'pieces-accessoires-moto', 2, 'it'),
('blousons-moto', 'Giacche', 'blousons-moto', 'pieces-accessoires-moto', 2, 'it'),
('gants-moto', 'Guanti', 'gants-moto', 'pieces-accessoires-moto', 2, 'it'),
('bottes-chaussures', 'Stivali & scarpe', 'bottes-chaussures', 'pieces-accessoires-moto', 2, 'it'),
('protections-moto', 'Protezioni (schiena, ginocchia)', 'protections-moto', 'pieces-accessoires-moto', 2, 'it'),
('valises-top-cases', 'Valigie & top case', 'valises-top-cases', 'pieces-accessoires-moto', 2, 'it'),
('pots-echappement-moto', 'Scarichi moto', 'pots-echappement-moto', 'pieces-accessoires-moto', 2, 'it'),
('kits-chaine', 'Kit catena', 'kits-chaine', 'pieces-accessoires-moto', 2, 'it'),
('batteries-moto', 'Batterie moto', 'batteries-moto', 'pieces-accessoires-moto', 2, 'it'),
('pneus-moto', 'Pneumatici moto', 'pneus-moto', 'pieces-accessoires-moto', 2, 'it'),
('guidons', 'Manubri', 'guidons', 'pieces-accessoires-moto', 2, 'it'),
('leviers', 'Leve', 'leviers', 'pieces-accessoires-moto', 2, 'it'),
('retroviseurs', 'Specchietti', 'retroviseurs', 'pieces-accessoires-moto', 2, 'it'),
('pieces-moteur-moto', 'Parti motore (moto)', 'pieces-moteur-moto', 'pieces-accessoires-moto', 2, 'it'),
('huile-moto', 'Olio moto', 'huile-moto', 'pieces-accessoires-moto', 2, 'it'),
('kits-reparation', 'Kit riparazione', 'kits-reparation', 'pieces-accessoires-moto', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('remorques-utilitaires', 'Rimorchi utilitari', 'remorques-utilitaires', 'remorques-attelages', 2, 'it'),
('remorques-porte-voitures', 'Rimorchi porta‑auto', 'remorques-porte-voitures', 'remorques-attelages', 2, 'it'),
('remorques-bagageres', 'Rimorchi bagagli', 'remorques-bagageres', 'remorques-attelages', 2, 'it'),
('remorques-betail', 'Rimorchi bestiame', 'remorques-betail', 'remorques-attelages', 2, 'it'),
('remorques-frigorifiques', 'Rimorchi frigoriferi', 'remorques-frigorifiques', 'remorques-attelages', 2, 'it'),
('remorques-agricoles', 'Rimorchi agricoli', 'remorques-agricoles', 'remorques-attelages', 2, 'it'),
('attelages', 'Ganci traino', 'attelages', 'remorques-attelages', 2, 'it'),
('barres-remorquage', 'Barre di traino', 'barres-remorquage', 'remorques-attelages', 2, 'it'),
('porte-motos', 'Porta‑moto', 'porte-motos', 'remorques-attelages', 2, 'it'),
('porte-velos', 'Porta‑bici', 'porte-velos', 'remorques-attelages', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('valises-diagnostic-auto', 'Scanner diagnostici auto', 'valises-diagnostic-auto', 'diagnostic-atelier', 2, 'it'),
('lecteurs-obd2', 'Lettori OBD2', 'lecteurs-obd2', 'diagnostic-atelier', 2, 'it'),
('ponts-elevateurs', 'Ponti sollevatori', 'ponts-elevateurs', 'diagnostic-atelier', 2, 'it'),
('compresseurs', 'Compressori', 'compresseurs', 'diagnostic-atelier', 2, 'it'),
('crics-hydrauliques', 'Cric idraulici', 'crics-hydrauliques', 'diagnostic-atelier', 2, 'it'),
('outils-mecaniques', 'Utensili meccanici', 'outils-mecaniques', 'diagnostic-atelier', 2, 'it'),
('chargeurs-batterie', 'Caricabatterie', 'chargeurs-batterie', 'diagnostic-atelier', 2, 'it'),
('boosters', 'Booster', 'boosters', 'diagnostic-atelier', 2, 'it'),
('stations-climatisation', 'Stazioni clima', 'stations-climatisation', 'diagnostic-atelier', 2, 'it'),
('demonte-pneus', 'Smontagomme', 'demonte-pneus', 'diagnostic-atelier', 2, 'it'),
('equilibreuses', 'Equilibratrici', 'equilibreuses', 'diagnostic-atelier', 2, 'it'),
('outils-specialises-moto', 'Utensili specializzati moto', 'outils-specialises-moto', 'diagnostic-atelier', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('bornes-recharge', 'Colonnine di ricarica', 'bornes-recharge', 'carburants-energie', 2, 'it'),
('stations-recharge-domestiques', 'Caricatori domestici', 'stations-recharge-domestiques', 'carburants-energie', 2, 'it'),
('adaptateurs-voitures-electriques', 'Adattatori per EV', 'adaptateurs-voitures-electriques', 'carburants-energie', 2, 'it'),
('jerricans', 'Taniche', 'jerricans', 'carburants-energie', 2, 'it'),
('additifs-carburant', 'Additivi carburante', 'additifs-carburant', 'carburants-energie', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('reparation-auto', 'Riparazione auto', 'reparation-auto', 'services-assistance', 2, 'it'),
('reparation-moto', 'Riparazione moto', 'reparation-moto', 'services-assistance', 2, 'it'),
('entretien-vidange', 'Manutenzione & cambio olio', 'entretien-vidange', 'services-assistance', 2, 'it'),
('lavage-automobile', 'Lavaggio auto', 'lavage-automobile', 'services-assistance', 2, 'it'),
('depannage', 'Soccorso stradale', 'depannage', 'services-assistance', 2, 'it'),
('remorquage', 'Traino', 'remorquage', 'services-assistance', 2, 'it'),
('reprogrammation-moteur', 'Rimappatura motore', 'reprogrammation-moteur', 'services-assistance', 2, 'it'),
('installation-accessoires', 'Installazione accessori', 'installation-accessoires', 'services-assistance', 2, 'it'),
('renovation-phares', 'Rigenerazione fari', 'renovation-phares', 'services-assistance', 2, 'it'),
('remplacement-pare-brise', 'Sostituzione parabrezza', 'remplacement-pare-brise', 'services-assistance', 2, 'it');

INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('renault', 'Renault', 'renault', 'marques-populaires-vehicules', 2, 'it'),
('peugeot', 'Peugeot', 'peugeot', 'marques-populaires-vehicules', 2, 'it'),
('citroen', 'Citroën', 'citroen', 'marques-populaires-vehicules', 2, 'it'),
('dacia', 'Dacia', 'dacia', 'marques-populaires-vehicules', 2, 'it'),
('volkswagen', 'Volkswagen', 'volkswagen', 'marques-populaires-vehicules', 2, 'it'),
('audi', 'Audi', 'audi', 'marques-populaires-vehicules', 2, 'it'),
('bmw', 'BMW', 'bmw', 'marques-populaires-vehicules', 2, 'it'),
('mercedes', 'Mercedes', 'mercedes', 'marques-populaires-vehicules', 2, 'it'),
('toyota', 'Toyota', 'toyota', 'marques-populaires-vehicules', 2, 'it'),
('kia', 'Kia', 'kia', 'marques-populaires-vehicules', 2, 'it'),
('hyundai', 'Hyundai', 'hyundai', 'marques-populaires-vehicules', 2, 'it'),
('ford', 'Ford', 'ford', 'marques-populaires-vehicules', 2, 'it'),
('nissan', 'Nissan', 'nissan', 'marques-populaires-vehicules', 2, 'it'),
('fiat', 'Fiat', 'fiat', 'marques-populaires-vehicules', 2, 'it'),
('honda', 'Honda', 'honda', 'marques-populaires-vehicules', 2, 'it'),
('yamaha', 'Yamaha', 'yamaha', 'marques-populaires-vehicules', 2, 'it'),
('suzuki', 'Suzuki', 'suzuki', 'marques-populaires-vehicules', 2, 'it'),
('piaggio', 'Piaggio', 'piaggio', 'marques-populaires-vehicules', 2, 'it'),
('ducati', 'Ducati', 'ducati', 'marques-populaires-vehicules', 2, 'it'),
('ktm', 'KTM', 'ktm', 'marques-populaires-vehicules', 2, 'it'),
('scania', 'Scania', 'scania', 'marques-populaires-vehicules', 2, 'it'),
('volvo-trucks', 'Volvo Trucks', 'volvo-trucks', 'marques-populaires-vehicules', 2, 'it'),
('man', 'MAN', 'man', 'marques-populaires-vehicules', 2, 'it'),
('iveco', 'Iveco', 'iveco', 'marques-populaires-vehicules', 2, 'it');