-- Migration Voyages & Tourisme - Toutes les langues
-- NIVEAU 0 : Voyages & Tourisme (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voyages-tourisme', 'Voyages & Tourisme', 'voyages-tourisme', NULL, 0, 'fr');

-- NIVEAU 1 : Voyages organisés (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voyages-organises', 'Voyages organisés', 'voyages-organises', 'voyages-tourisme', 1, 'fr');

-- NIVEAU 1 : Services touristiques (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-touristiques', 'Services touristiques', 'services-touristiques', 'voyages-tourisme', 1, 'fr');

-- NIVEAU 2 : Niveau 2 pour Voyages organisés (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('circuits-touristiques', 'Circuits touristiques', 'circuits-touristiques', 'voyages-organises', 2, 'fr'),
('voyages-culturels', 'Voyages culturels', 'voyages-culturels', 'voyages-organises', 2, 'fr'),
('voyages-religieux', 'Voyages religieux', 'voyages-religieux', 'voyages-organises', 2, 'fr'),
('voyages-omra', 'Voyages Omra', 'voyages-omra', 'voyages-organises', 2, 'fr'),
('voyages-hadj', 'Voyages Hadj', 'voyages-hadj', 'voyages-organises', 2, 'fr'),
('sejours-balneaires', 'Séjours balnéaires', 'sejours-balneaires', 'voyages-organises', 2, 'fr'),
('sejours-montagne', 'Séjours montagne', 'sejours-montagne', 'voyages-organises', 2, 'fr'),
('sejours-desert', 'Séjours désert', 'sejours-desert', 'voyages-organises', 2, 'fr'),
('circuits-sahariens', 'Circuits sahariens', 'circuits-sahariens', 'voyages-organises', 2, 'fr'),
('voyages-aventure', 'Voyages aventure', 'voyages-aventure', 'voyages-organises', 2, 'fr');

-- NIVEAU 2 : Niveau 2 pour Services touristiques (FR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('reservations-hotels', 'Réservations hôtels', 'reservations-hotels', 'services-touristiques', 2, 'fr'),
('locations-voitures-tourisme', 'Locations voitures', 'locations-voitures-tourisme', 'services-touristiques', 2, 'fr'),
('transferts-aeroport', 'Transferts aéroport', 'transferts-aeroport', 'services-touristiques', 2, 'fr'),
('guides-touristiques', 'Guides touristiques', 'guides-touristiques', 'services-touristiques', 2, 'fr'),
('excursions', 'Excursions', 'excursions', 'services-touristiques', 2, 'fr'),
('activites-loisirs', 'Activités loisirs', 'activites-loisirs', 'services-touristiques', 2, 'fr'),
('restaurants-tourisme', 'Restaurants', 'restaurants-tourisme', 'services-touristiques', 2, 'fr'),
('billets-avion', 'Billets d\'avion', 'billets-avion', 'services-touristiques', 2, 'fr'),
('assurances-voyage', 'Assurances voyage', 'assurances-voyage', 'services-touristiques', 2, 'fr');

-- NIVEAU 0 : Voyages & Tourisme (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voyages-tourisme', 'السفر والسياحة', 'voyages-tourisme', NULL, 0, 'ar');

-- NIVEAU 1 : Voyages organisés (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voyages-organises', 'رحلات منظمة', 'voyages-organises', 'voyages-tourisme', 1, 'ar');

-- NIVEAU 1 : Services touristiques (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-touristiques', 'الخدمات السياحية', 'services-touristiques', 'voyages-tourisme', 1, 'ar');

-- NIVEAU 2 : Niveau 2 pour Voyages organisés (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('circuits-touristiques', 'الدائرات السياحية', 'circuits-touristiques', 'voyages-organises', 2, 'ar'),
('voyages-culturels', 'رحلات ثقافية', 'voyages-culturels', 'voyages-organises', 2, 'ar'),
('voyages-religieux', 'رحلات دينية', 'voyages-religieux', 'voyages-organises', 2, 'ar'),
('voyages-omra', 'رحلات العمرة', 'voyages-omra', 'voyages-organises', 2, 'ar'),
('voyages-hadj', 'رحلات الحج', 'voyages-hadj', 'voyages-organises', 2, 'ar'),
('sejours-balneaires', 'إقامات شاطئية', 'sejours-balneaires', 'voyages-organises', 2, 'ar'),
('sejours-montagne', 'إقامات جبلية', 'sejours-montagne', 'voyages-organises', 2, 'ar'),
('sejours-desert', 'إقامات صحراوية', 'sejours-desert', 'voyages-organises', 2, 'ar'),
('circuits-sahariens', 'الدائرات الصحراوية', 'circuits-sahariens', 'voyages-organises', 2, 'ar'),
('voyages-aventure', 'رحلات المغامرة', 'voyages-aventure', 'voyages-organises', 2, 'ar');

-- NIVEAU 2 : Niveau 2 pour Services touristiques (AR)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('reservations-hotels', 'حجوزات الفنادق', 'reservations-hotels', 'services-touristiques', 2, 'ar'),
('locations-voitures-tourisme', 'تأجير السيارات', 'locations-voitures-tourisme', 'services-touristiques', 2, 'ar'),
('transferts-aeroport', 'نقل المطار', 'transferts-aeroport', 'services-touristiques', 2, 'ar'),
('guides-touristiques', 'المرشدين السياحيين', 'guides-touristiques', 'services-touristiques', 2, 'ar'),
('excursions', 'الرحلات', 'excursions', 'services-touristiques', 2, 'ar'),
('activites-loisirs', 'أنشطة الترفيه', 'activites-loisirs', 'services-touristiques', 2, 'ar'),
('restaurants-tourisme', 'المطاعم', 'restaurants-tourisme', 'services-touristiques', 2, 'ar'),
('billets-avion', 'تذاكر الطيران', 'billets-avion', 'services-touristiques', 2, 'ar'),
('assurances-voyage', 'تأمين السفر', 'assurances-voyage', 'services-touristiques', 2, 'ar');

-- NIVEAU 0 : Voyages & Tourisme (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voyages-tourisme', 'Viajes y Turismo', 'voyages-tourisme', NULL, 0, 'es');

-- NIVEAU 1 : Voyages organisés (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voyages-organises', 'Viajes organizados', 'voyages-organises', 'voyages-tourisme', 1, 'es');

-- NIVEAU 1 : Services touristiques (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-touristiques', 'Servicios turísticos', 'services-touristiques', 'voyages-tourisme', 1, 'es');

-- NIVEAU 2 : Niveau 2 pour Voyages organisés (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('circuits-touristiques', 'Circuitos turísticos', 'circuits-touristiques', 'voyages-organises', 2, 'es'),
('voyages-culturels', 'Viajes culturales', 'voyages-culturels', 'voyages-organises', 2, 'es'),
('voyages-religieux', 'Viajes religiosos', 'voyages-religieux', 'voyages-organises', 2, 'es'),
('voyages-omra', 'Viajes Omra', 'voyages-omra', 'voyages-organises', 2, 'es'),
('voyages-hadj', 'Viajes Hadj', 'voyages-hadj', 'voyages-organises', 2, 'es'),
('sejours-balneaires', 'Estancias balnearios', 'sejours-balneaires', 'voyages-organises', 2, 'es'),
('sejours-montagne', 'Estancias montaña', 'sejours-montagne', 'voyages-organises', 2, 'es'),
('sejours-desert', 'Estancias desierto', 'sejours-desert', 'voyages-organises', 2, 'es'),
('circuits-sahariens', 'Circuitos del Sáhara', 'circuits-sahariens', 'voyages-organises', 2, 'es'),
('voyages-aventure', 'Viajes aventura', 'voyages-aventure', 'voyages-organises', 2, 'es');

-- NIVEAU 2 : Niveau 2 pour Services touristiques (ES)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('reservations-hotels', 'Reservas de hoteles', 'reservations-hotels', 'services-touristiques', 2, 'es'),
('locations-voitures-tourisme', 'Alquiler de coches', 'locations-voitures-tourisme', 'services-touristiques', 2, 'es'),
('transferts-aeroport', 'Traslados aeropuerto', 'transferts-aeroport', 'services-touristiques', 2, 'es'),
('guides-touristiques', 'Guías turísticos', 'guides-touristiques', 'services-touristiques', 2, 'es'),
('excursions', 'Excursiones', 'excursions', 'services-touristiques', 2, 'es'),
('activites-loisirs', 'Actividades de ocio', 'activites-loisirs', 'services-touristiques', 2, 'es'),
('restaurants-tourisme', 'Restaurantes', 'restaurants-tourisme', 'services-touristiques', 2, 'es'),
('billets-avion', 'Billetes de avión', 'billets-avion', 'services-touristiques', 2, 'es'),
('assurances-voyage', 'Seguros de viaje', 'assurances-voyage', 'services-touristiques', 2, 'es');

-- NIVEAU 0 : Voyages & Tourisme (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voyages-tourisme', 'Reisen & Tourismus', 'voyages-tourisme', NULL, 0, 'de');

-- NIVEAU 1 : Voyages organisés (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voyages-organises', 'Organisierte Reisen', 'voyages-organises', 'voyages-tourisme', 1, 'de');

-- NIVEAU 1 : Services touristiques (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-touristiques', 'Touristische Dienstleistungen', 'services-touristiques', 'voyages-tourisme', 1, 'de');

-- NIVEAU 2 : Niveau 2 pour Voyages organisés (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('circuits-touristiques', 'Touristische Rundfahrten', 'circuits-touristiques', 'voyages-organises', 2, 'de'),
('voyages-culturels', 'Kulturreisen', 'voyages-culturels', 'voyages-organises', 2, 'de'),
('voyages-religieux', 'Religiöse Reisen', 'voyages-religieux', 'voyages-organises', 2, 'de'),
('voyages-omra', 'Omra-Reisen', 'voyages-omra', 'voyages-organises', 2, 'de'),
('voyages-hadj', 'Hadj-Reisen', 'voyages-hadj', 'voyages-organises', 2, 'de'),
('sejours-balneaires', 'Badeaufenthalte', 'sejours-balneaires', 'voyages-organises', 2, 'de'),
('sejours-montagne', 'Bergaufenthalte', 'sejours-montagne', 'voyages-organises', 2, 'de'),
('sejours-desert', 'Wüstenaufenthalte', 'sejours-desert', 'voyages-organises', 2, 'de'),
('circuits-sahariens', 'Sahara-Rundfahrten', 'circuits-sahariens', 'voyages-organises', 2, 'de'),
('voyages-aventure', 'Abenteuerreisen', 'voyages-aventure', 'voyages-organises', 2, 'de');

-- NIVEAU 2 : Niveau 2 pour Services touristiques (DE)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('reservations-hotels', 'Hotelreservierungen', 'reservations-hotels', 'services-touristiques', 2, 'de'),
('locations-voitures-tourisme', 'Autovermietung', 'locations-voitures-tourisme', 'services-touristiques', 2, 'de'),
('transferts-aeroport', 'Flughafentransfers', 'transferts-aeroport', 'services-touristiques', 2, 'de'),
('guides-touristiques', 'Reiseführer', 'guides-touristiques', 'services-touristiques', 2, 'de'),
('excursions', 'Ausflüge', 'excursions', 'services-touristiques', 2, 'de'),
('activites-loisirs', 'Freizeitaktivitäten', 'activites-loisirs', 'services-touristiques', 2, 'de'),
('restaurants-tourisme', 'Restaurants', 'restaurants-tourisme', 'services-touristiques', 2, 'de'),
('billets-avion', 'Flugtickets', 'billets-avion', 'services-touristiques', 2, 'de'),
('assurances-voyage', 'Reiseversicherungen', 'assurances-voyage', 'services-touristiques', 2, 'de');

-- NIVEAU 0 : Voyages & Tourisme (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voyages-tourisme', 'Travel & Tourism', 'voyages-tourisme', NULL, 0, 'en');

-- NIVEAU 1 : Voyages organisés (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voyages-organises', 'Organized Trips', 'voyages-organises', 'voyages-tourisme', 1, 'en');

-- NIVEAU 1 : Services touristiques (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-touristiques', 'Tourist Services', 'services-touristiques', 'voyages-tourisme', 1, 'en');

-- NIVEAU 2 : Niveau 2 pour Voyages organisés (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('circuits-touristiques', 'Tourist Circuits', 'circuits-touristiques', 'voyages-organises', 2, 'en'),
('voyages-culturels', 'Cultural Trips', 'voyages-culturels', 'voyages-organises', 2, 'en'),
('voyages-religieux', 'Religious Trips', 'voyages-religieux', 'voyages-organises', 2, 'en'),
('voyages-omra', 'Omra Trips', 'voyages-omra', 'voyages-organises', 2, 'en'),
('voyages-hadj', 'Hadj Trips', 'voyages-hadj', 'voyages-organises', 2, 'en'),
('sejours-balneaires', 'Beach Stays', 'sejours-balneaires', 'voyages-organises', 2, 'en'),
('sejours-montagne', 'Mountain Stays', 'sejours-montagne', 'voyages-organises', 2, 'en'),
('sejours-desert', 'Desert Stays', 'sejours-desert', 'voyages-organises', 2, 'en'),
('circuits-sahariens', 'Saharan Circuits', 'circuits-sahariens', 'voyages-organises', 2, 'en'),
('voyages-aventure', 'Adventure Trips', 'voyages-aventure', 'voyages-organises', 2, 'en');

-- NIVEAU 2 : Niveau 2 pour Services touristiques (EN)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('reservations-hotels', 'Hotel Reservations', 'reservations-hotels', 'services-touristiques', 2, 'en'),
('locations-voitures-tourisme', 'Car Rentals', 'locations-voitures-tourisme', 'services-touristiques', 2, 'en'),
('transferts-aeroport', 'Airport Transfers', 'transferts-aeroport', 'services-touristiques', 2, 'en'),
('guides-touristiques', 'Tourist Guides', 'guides-touristiques', 'services-touristiques', 2, 'en'),
('excursions', 'Excursions', 'excursions', 'services-touristiques', 2, 'en'),
('activites-loisirs', 'Leisure Activities', 'activites-loisirs', 'services-touristiques', 2, 'en'),
('restaurants-tourisme', 'Restaurants', 'restaurants-tourisme', 'services-touristiques', 2, 'en'),
('billets-avion', 'Airplane Tickets', 'billets-avion', 'services-touristiques', 2, 'en'),
('assurances-voyage', 'Travel Insurance', 'assurances-voyage', 'services-touristiques', 2, 'en');

-- NIVEAU 0 : Voyages & Tourisme (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voyages-tourisme', 'Viaggi e Turismo', 'voyages-tourisme', NULL, 0, 'it');

-- NIVEAU 1 : Voyages organisés (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('voyages-organises', 'Viaggi organizzati', 'voyages-organises', 'voyages-tourisme', 1, 'it');

-- NIVEAU 1 : Services touristiques (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('services-touristiques', 'Servizi turistici', 'services-touristiques', 'voyages-tourisme', 1, 'it');

-- NIVEAU 2 : Niveau 2 pour Voyages organisés (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('circuits-touristiques', 'Circuiti turistici', 'circuits-touristiques', 'voyages-organises', 2, 'it'),
('voyages-culturels', 'Viaggi culturali', 'voyages-culturels', 'voyages-organises', 2, 'it'),
('voyages-religieux', 'Viaggi religiosi', 'voyages-religieux', 'voyages-organises', 2, 'it'),
('voyages-omra', 'Viaggi Omra', 'voyages-omra', 'voyages-organises', 2, 'it'),
('voyages-hadj', 'Viaggi Hadj', 'voyages-hadj', 'voyages-organises', 2, 'it'),
('sejours-balneaires', 'Soggiorni balneari', 'sejours-balneaires', 'voyages-organises', 2, 'it'),
('sejours-montagne', 'Soggiorni montagna', 'sejours-montagne', 'voyages-organises', 2, 'it'),
('sejours-desert', 'Soggiorni deserto', 'sejours-desert', 'voyages-organises', 2, 'it'),
('circuits-sahariens', 'Circuiti del Sahara', 'circuits-sahariens', 'voyages-organises', 2, 'it'),
('voyages-aventure', 'Viaggi avventura', 'voyages-aventure', 'voyages-organises', 2, 'it');

-- NIVEAU 2 : Niveau 2 pour Services touristiques (IT)
INSERT INTO categories (id, name, slug, parent_id, level, language) VALUES 
('reservations-hotels', 'Prenotazioni alberghi', 'reservations-hotels', 'services-touristiques', 2, 'it'),
('locations-voitures-tourisme', 'Noleggio auto', 'locations-voitures-tourisme', 'services-touristiques', 2, 'it'),
('transferts-aeroport', 'Trasferimenti aeroporto', 'transferts-aeroport', 'services-touristiques', 2, 'it'),
('guides-touristiques', 'Guide turistiche', 'guides-touristiques', 'services-touristiques', 2, 'it'),
('excursions', 'Escursioni', 'excursions', 'services-touristiques', 2, 'it'),
('activites-loisirs', 'Attività di svago', 'activites-loisirs', 'services-touristiques', 2, 'it'),
('restaurants-tourisme', 'Ristoranti', 'restaurants-tourisme', 'services-touristiques', 2, 'it'),
('billets-avion', 'Biglietti aerei', 'billets-avion', 'services-touristiques', 2, 'it'),
('assurances-voyage', 'Assicurazioni di viaggio', 'assurances-voyage', 'services-touristiques', 2, 'it');