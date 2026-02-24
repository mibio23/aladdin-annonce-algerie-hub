-- Script pour ajouter les attributs détaillés pour les catégories principales
-- Immobilier, Véhicules, Téléphonie, Informatique

-- 1. Immobilier & Maison (immobilier-maison)
-- Ventes
UPDATE categories SET attributes = '{
  "type_bien": ["appartement", "villa", "studio", "terrain", "local_commercial", "carcasse"],
  "surface": ["0-50", "50-80", "80-120", "120-150", "150-200", "200+"],
  "pieces": ["1", "2", "3", "4", "5", "6+"],
  "etage": ["rdc", "1", "2", "3", "4", "5+", "dernier"],
  "papier": ["acte_notarie", "livret_foncier", "decision", "papier_timbre"],
  "quartier": ["residentiel", "commercial", "calme"]
}'::jsonb WHERE slug = 'ventes-immobilieres';

UPDATE categories SET attributes = '{
  "surface": ["0-50", "50-80", "80-120", "120-150", "150+"],
  "pieces": ["1", "2", "3", "4", "5+"],
  "etage": ["rdc", "1", "2", "3", "4", "5+"],
  "papier": ["acte_notarie", "livret_foncier", "promesse_vente"]
}'::jsonb WHERE slug = 'appartements-a-vendre';

-- Locations
UPDATE categories SET attributes = '{
  "type_bien": ["appartement", "villa", "studio", "niveau_villa", "local"],
  "surface": ["0-50", "50-80", "80-120", "120-150", "150+"],
  "pieces": ["1", "2", "3", "4", "5+"],
  "meuble": ["oui", "non", "semi_meuble"],
  "duree": ["courte_duree", "longue_duree", "vacances"]
}'::jsonb WHERE slug = 'locations-immobilieres';

UPDATE categories SET attributes = '{
  "surface": ["0-50", "50-80", "80-120", "120+"],
  "pieces": ["1", "2", "3", "4+"],
  "meuble": ["oui", "non"],
  "etage": ["rdc", "1", "2", "3", "4+"]
}'::jsonb WHERE slug = 'appartements-en-location';

-- 2. Véhicules (vehicules-equipements)
UPDATE categories SET attributes = '{
  "annee": ["2025", "2024", "2023", "2022", "2021", "2020", "2019", "2018", "2017", "2016", "2015", "2010-2014", "2000-2009", "avant_2000"],
  "carburant": ["essence", "diesel", "gpl", "hybride", "electrique"],
  "boite": ["manuelle", "automatique"],
  "kilometrage": ["0-10000", "10000-50000", "50000-100000", "100000-150000", "150000-200000", "200000+"],
  "couleur": ["blanc", "noir", "gris", "argent", "bleu", "rouge", "autre"],
  "etat": ["neuf", "tres_bon", "bon", "moyen", "pour_pieces"]
}'::jsonb WHERE slug = 'voitures-vehicules-legers';

-- 3. Téléphonie (telephonie)
UPDATE categories SET attributes = '{
  "marque": ["samsung", "apple", "xiaomi", "oppo", "huawei", "realme", "condor", "autre"],
  "stockage": ["16go", "32go", "64go", "128go", "256go", "512go", "1to"],
  "ram": ["2go", "3go", "4go", "6go", "8go", "12go", "16go"],
  "etat": ["neuf_jamais_utilise", "neuf_sous_emballage", "tres_bon_etat", "bon_etat", "etat_moyen"]
}'::jsonb WHERE slug = 'telephones-portables';

-- 4. Informatique (informatique-electronique)
UPDATE categories SET attributes = '{
  "marque": ["hp", "dell", "lenovo", "asus", "acer", "msi", "apple", "autre"],
  "processeur": ["intel_i3", "intel_i5", "intel_i7", "intel_i9", "amd_ryzen_3", "amd_ryzen_5", "amd_ryzen_7", "autre"],
  "ram": ["4go", "8go", "16go", "32go", "64go"],
  "disque_dur": ["hdd_500go", "hdd_1to", "ssd_128go", "ssd_256go", "ssd_512go", "ssd_1to"],
  "carte_graphique": ["integree", "nvidia_gtx", "nvidia_rtx", "amd_radeon"],
  "etat": ["neuf", "bon_etat", "reconditionne"]
}'::jsonb WHERE slug = 'pc-portables';
