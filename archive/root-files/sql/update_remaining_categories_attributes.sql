-- Script pour ajouter les attributs détaillés pour les catégories restantes

-- 5. Vélo, Cyclisme & Équipements
UPDATE categories SET attributes = '{
  "type": ["vtt", "route", "bmx", "ville", "electrique", "enfant"],
  "taille": ["xs", "s", "m", "l", "xl", "enfant"],
  "etat": ["neuf", "tres_bon", "bon", "moyen"]
}'::jsonb WHERE slug = 'velos-cyclisme-equipements';

-- 6. Nautisme & Bateaux
UPDATE categories SET attributes = '{
  "type": ["bateau_moteur", "voilier", "jet_ski", "zodiac", "kayak", "accessoire"],
  "longueur": ["moins_5m", "5-7m", "7-10m", "10m_plus"],
  "moteur": ["essence", "diesel", "electrique", "sans_moteur"],
  "etat": ["neuf", "occasion"]
}'::jsonb WHERE slug = 'nautisme';

-- 7. BTP, Engins & Construction
UPDATE categories SET attributes = '{
  "type": ["engin_chantier", "materiel_construction", "outillage_pro", "echafaudage"],
  "marque": ["caterpillar", "jcb", "komatsu", "hitachi", "autre"],
  "annee": ["2020+", "2010-2019", "2000-2009", "avant_2000"],
  "etat": ["neuf", "bon_etat", "a_reparer"]
}'::jsonb WHERE slug = 'btp-engins-construction';

-- 8. Vêtement Homme, Femme & sous-vêtement
UPDATE categories SET attributes = '{
  "genre": ["homme", "femme", "unisexe"],
  "taille": ["xs", "s", "m", "l", "xl", "xxl", "3xl+"],
  "marque": ["zara", "h&m", "nike", "adidas", "puma", "autre"],
  "etat": ["neuf_etiquette", "neuf_sans_etiquette", "tres_bon_etat", "bon_etat"]
}'::jsonb WHERE slug = 'vetement-homme-femme-sous-vetement';

-- 9. Bébé & Puériculture
UPDATE categories SET attributes = '{
  "age": ["0-3_mois", "3-6_mois", "6-12_mois", "12-18_mois", "18-24_mois", "2ans+"],
  "genre": ["garcon", "fille", "unisexe"],
  "etat": ["neuf", "tres_bon", "bon", "satisfaisant"]
}'::jsonb WHERE slug = 'bebe-puericulture';

-- 10. Mode & Accessoires
UPDATE categories SET attributes = '{
  "type": ["montre", "bijoux", "lunettes", "chapeau", "ceinture", "autre"],
  "genre": ["homme", "femme", "enfant"],
  "etat": ["neuf", "occasion"]
}'::jsonb WHERE slug = 'mode-et-accessoires';

-- 11. Sacs & Bagages
UPDATE categories SET attributes = '{
  "type": ["sac_a_main", "sac_a_dos", "valise", "sac_sport", "portefeuille"],
  "matiere": ["cuir", "tissu", "synthetique", "autre"],
  "etat": ["neuf", "tres_bon", "bon"]
}'::jsonb WHERE slug = 'sacs-et-bagages';

-- 12. Électroménager
UPDATE categories SET attributes = '{
  "type": ["refrigerateur", "lave_linge", "lave_vaisselle", "cuisiniere", "four", "micro_ondes", "climatiseur", "chauffage", "petit_electromenager"],
  "marque": ["lg", "samsung", "condor", "beko", "whirlpool", "brandt", "autre"],
  "etat": ["neuf", "bon_etat", "occasion", "panne"]
}'::jsonb WHERE slug = 'electromenager';

-- 13. Mobilier & Décoration
UPDATE categories SET attributes = '{
  "type": ["canape", "lit", "table", "chaise", "armoire", "bureau", "decoration"],
  "matiere": ["bois", "metal", "verre", "plastique", "tissu"],
  "etat": ["neuf", "bon_etat", "occasion"]
}'::jsonb WHERE slug = 'mobilier-et-decoration';

-- 14. Image, Son & Équipement de Musique
UPDATE categories SET attributes = '{
  "type": ["tv", "appareil_photo", "camera", "enceinte", "casque", "instrument_musique"],
  "marque": ["sony", "samsung", "lg", "canon", "nikon", "jbl", "yamaha", "autre"],
  "etat": ["neuf", "bon_etat", "occasion"]
}'::jsonb WHERE slug = 'image-son-equipement-musique';

-- 15. Jeux Vidéo & Consoles
UPDATE categories SET attributes = '{
  "plateforme": ["ps5", "ps4", "xbox_series", "xbox_one", "nintendo_switch", "pc", "retro"],
  "type": ["console", "jeu", "accessoire"],
  "etat": ["neuf", "bon_etat", "occasion"]
}'::jsonb WHERE slug = 'jeux-video-consoles';

-- 16. Quincaillerie Générale
UPDATE categories SET attributes = '{
  "type": ["outillage_main", "outillage_electrique", "plomberie", "electricite", "peinture", "jardin"],
  "etat": ["neuf", "occasion"]
}'::jsonb WHERE slug = 'quincaillerie-generale';

-- 17. Agriculture & Agroalimentaire
UPDATE categories SET attributes = '{
  "type": ["materiel_agricole", "semences", "engrais", "produits_fermiers", "animaux_elevage"],
  "etat": ["neuf", "occasion"]
}'::jsonb WHERE slug = 'agriculture-agroalimentaire';

-- 18. Parapharmacie & Produit Chimique
UPDATE categories SET attributes = '{
  "type": ["soin_visage", "soin_corps", "cheveux", "complement_alimentaire", "materiel_medical"],
  "etat": ["neuf"]
}'::jsonb WHERE slug = 'parapharmacie-produit-chimique';

-- 19. Santé & Beauté
UPDATE categories SET attributes = '{
  "type": ["maquillage", "parfum", "soin", "massage", "coiffure"],
  "genre": ["femme", "homme"],
  "etat": ["neuf"]
}'::jsonb WHERE slug = 'sante-beaute';

-- 20. Gastronomie & Alimentation
UPDATE categories SET attributes = '{
  "type": ["epices", "miel", "dattes", "huile_olive", "gateaux", "plats_prepares"],
  "origine": ["local", "import"]
}'::jsonb WHERE slug = 'gastronomie-alimentation';

-- 21. Artisanat Traditionnel Algérien
UPDATE categories SET attributes = '{
  "type": ["tapis", "poterie", "bijoux", "tenue_traditionnelle", "decoration"],
  "region": ["kabylie", "alger", "sahara", "aure", "ouest", "est"],
  "etat": ["neuf", "ancien"]
}'::jsonb WHERE slug = 'artisanat-traditionnel-algerien';

-- 22. Voyages & Tourisme
UPDATE categories SET attributes = '{
  "type": ["voyage_organise", "hebergement", "billet_avion", "omra", "croisiere"],
  "destination": ["algerie", "tunisie", "turquie", "europe", "asie", "autre"],
  "duree": ["weekend", "semaine", "10_jours", "15_jours", "plus"]
}'::jsonb WHERE slug = 'voyages-tourisme';

-- 23. Événements & Billetterie
UPDATE categories SET attributes = '{
  "type": ["concert", "spectacle", "sport", "formation", "foire"],
  "date": ["cette_semaine", "ce_mois", "prochainement"]
}'::jsonb WHERE slug = 'evenements-billetterie';

-- 24. Emploi & Carrière
UPDATE categories SET attributes = '{
  "type_contrat": ["cdi", "cdd", "freelance", "stage", "apprentissage"],
  "secteur": ["informatique", "commercial", "admin", "medical", "education", "transport", "btp"],
  "experience": ["debutant", "1-3_ans", "3-5_ans", "5-10_ans", "senior"]
}'::jsonb WHERE slug = 'emploi-carriere';

-- 25. Animaux & Accessoires
UPDATE categories SET attributes = '{
  "espece": ["chien", "chat", "oiseau", "poisson", "rongeur", "reptile"],
  "type": ["animal", "accessoire", "alimentation"],
  "age": ["bebe", "jeune", "adulte"]
}'::jsonb WHERE slug = 'animaux-accessoires';

-- 26. Finance & Monnaie Fiduciaire
UPDATE categories SET attributes = '{
  "service": ["change", "crypto", "consulting", "comptabilite"],
  "devise": ["eur", "usd", "cad", "gbp", "usdt"]
}'::jsonb WHERE slug = 'finance';

-- 27. Services & Support
UPDATE categories SET attributes = '{
  "type": ["demenagement", "nettoyage", "reparation", "transport", "jardinage", "garde_enfants"],
  "disponibilite": ["semaine", "weekend", "24h/24"]
}'::jsonb WHERE slug = 'services-support';

-- 28. Échanges & Partage
UPDATE categories SET attributes = '{
  "type": ["echange_bien", "echange_service", "don"],
  "etat": ["neuf", "occasion"]
}'::jsonb WHERE slug = 'echanges-partage';
