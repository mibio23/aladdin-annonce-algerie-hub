-- Script pour vérifier l'existence des tables de détails dans Supabase
-- Exécutez ce script dans l'éditeur SQL de Supabase pour voir quelles tables manquent.

SELECT table_name 
FROM information_schema.tables 
WHERE table_schema = 'public' 
AND table_name IN (
  'vehicle_details',
  'real_estate_details',
  'phone_details',
  'computer_details',
  'home_furniture_details',
  'bike_details',
  'boat_details',
  'construction_details',
  'clothing_details',
  'travel_details',
  'event_details',
  'job_details',
  'appliance_details',        -- Electroménager (potentiellement manquant)
  'videogame_details',        -- Jeux Vidéo (potentiellement manquant)
  'multimedia_details',       -- Image & Son (potentiellement manquant)
  'agriculture_details',      -- Agriculture (potentiellement manquant)
  'service_details'           -- Services (potentiellement manquant)
);
