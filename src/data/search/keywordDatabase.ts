// Base de données sophistiquée de mots-clés pour la recherche
export const keywordDatabase: Record<string, string[]> = {
  "jeux-video-consoles": [
    "jeux", "gaming", "console", "playstation", "xbox", "nintendo",
    "pc", "vr", "ar", "accessoires", "manettes", "casques",
    "claviers", "souris", "retro", "cartes", "abonnements",
    "streaming", "capture", "figurines", "cosplay", "collector"
  ],

  "consoles-de-salon": [
    "console", "playstation", "xbox", "nintendo switch", "atari",
    "sega", "retro", "hdmi", "alimentation", "station de charge",
    "telecommande"
  ],
  "accessoires-consoles-de-salon": [
    "manettes", "cables hdmi", "alimentation", "charge", "dock",
    "telecommande multimedia"
  ],

  "consoles-portables": [
    "portable", "switch lite", "3ds", "2ds", "psp", "ps vita",
    "retro", "android", "console", "gaming mobile"
  ],
  "accessoires-consoles-portables": [
    "housses", "batteries", "protections ecran", "etui", "chargeur"
  ],

  "jeux-playstation": [
    "ps5", "ps4", "ps3", "ps2", "ps1", "edition limitee",
    "jeux neufs", "jeux occasion"
  ],
  "jeux-xbox": [
    "xbox series x", "xbox series s", "xbox one", "xbox 360",
    "collector", "jeux neufs", "jeux occasion"
  ],
  "jeux-nintendo": [
    "switch", "wii u", "wii", "gamecube", "3ds", "2ds",
    "retro nintendo"
  ],
  "jeux-pc-mac": [
    "jeux physiques", "steam", "epic games", "blizzard",
    "battle.net", "compte", "cle", "digital"
  ],
  "jeux-retro-collections": [
    "nes", "snes", "sega", "gameboy", "atari", "neo-geo",
    "editions rares", "retro", "collector"
  ],
  "objets-collectors": [
    "figurines", "ost", "artbooks", "edition", "collector",
    "merchandising"
  ],

  "accessoires-gaming": [
    "manettes", "casques", "tapis", "rgb", "claviers", "souris",
    "volants", "pedaliers", "joysticks", "flight sticks"
  ],

  "equipements-vr-ar": [
    "ps vr", "oculus", "quest", "htc vive", "vr", "ar",
    "realite", "sangles", "capteurs", "adaptateurs"
  ],
  "accessoires-vr": [
    "capteurs", "sangles", "adaptateurs", "face cushion", "link cable"
  ],

  "composants-e-sport": [
    "ecrans gaming", "chaises gaming", "bureaux gamer", "cartes graphiques",
    "gpu", "ram", "ssd", "refroidissement", "watercooling", "ventirad"
  ],

  "cartes-abonnements": [
    "ps plus", "xbox game pass", "nintendo online", "abonnement",
    "carte", "prepayee"
  ],
  "cartes-prepayees": [
    "playstation store", "xbox live", "steam", "gift card", "wallet",
    "code"
  ],

  "streaming-capture-video": [
    "carte acquisition", "elgato", "avermedia", "cameras streaming",
    "micros professionnels", "eclairage", "fonds verts", "streaming",
    "twitch"
  ],
  "cartes-acquisition": [
    "elgato", "avermedia", "capture", "hdmi", "usb", "4k", "60fps"
  ],
  "merchandising-gaming": [
    "figurines", "posters", "vetements gaming", "accessoires cosplay",
    "collections officielles", "goodies"
  ],
  // Meubles
  "meubles": [
    "meuble", "mobilier", "ameublement", "furniture", "décoration",
    "intérieur", "design", "moderne", "classique", "vintage",
    "bois", "métal", "verre", "cuir", "tissu", "rotin"
  ],

  // Électroménager
  "electromenager": [
    "électroménager", "appareil", "machine", "équipement", "électrique",
    "cuisine", "gros électroménager", "blanc", "noir", "inox", "encastrable",
    "énergie", "économique", "A++", "A+++", "eco", "silencieux",
    "programmable", "digital", "technologie", "smart", "connecté"
  ],

  // Petit Électroménager
  "petit-electromenager": [
    "petit électroménager", "portable", "compact", "cuisine", "préparation",
    "robot", "mixeur", "blender", "hachoir", "râpe", "presse-agrumes",
    "grille-pain", "toaster", "cafetière", "expresso", "thé", "bouilloire",
    "fer", "repassage", "vapeur", "aspirateur", "nettoyage"
  ],

  // Décoration
  "decoration": [
    "décoration", "déco", "ornement", "embellissement", "style",
    "ambiance", "atmosphère", "cosy", "élégant", "moderne", "bohème",
    "scandinave", "industriel", "rustique", "contemporain", "minimaliste",
    "couleur", "texture", "motif", "lumineux", "chaleureux"
  ],

  // Cuisine & Ustensiles
  "cuisine-ustensiles": [
    "cuisine", "ustensile", "culinaire", "gastronomie", "chef",
    "casserole", "poêle", "marmite", "wok", "tajine", "cocotte",
    "couteau", "planche", "spatule", "fouet", "louche", "écumoire",
    "vaisselle", "assiette", "bol", "tasse", "verre", "couverts",
    "inox", "antiadhésif", "céramique", "fonte", "aluminium"
  ],

  // Linge de Maison
  "linge-maison": [
    "linge", "textile", "tissu", "coton", "lin", "soie", "satin",
    "percale", "flanelle", "jersey", "microfibre", "bambou",
    "lit", "literie", "drap", "housse", "taie", "oreiller", "coussin",
    "couverture", "plaid", "édredon", "couette", "duvet",
    "salle de bain", "serviette", "peignoir", "tapis de bain",
    "blanc", "coloré", "uni", "imprimé", "brodé", "dentelle"
  ],

  // Nettoyage & Entretien
  "nettoyage-entretien": [
    "nettoyage", "entretien", "ménage", "propre", "hygiène",
    "dégraissant", "détartrant", "désinfectant", "antibactérien",
    "bio", "écologique", "naturel", "sans chimie", "parfumé",
    "aspirateur", "balai", "serpillière", "chiffon", "éponge",
    "brosse", "récurant", "liquide", "poudre", "spray", "lingette",
    "sol", "vitre", "cuisine", "salle de bain", "WC", "multi-usage"
  ],

  // Mobilier & Décoration (catégorie principale)
  "mobilier-et-decoration": [
    "mobilier", "meuble", "décoration", "intérieur", "design",
    "moderne", "classique", "vintage", "bois", "métal", "verre",
    "cuir", "tissu", "rotin", "style", "ambiance"
  ],

  // Image, Son & Équipement de Musique (catégorie principale)
  "image-son-equipement-musique": [
    "image", "son", "musique", "audio", "vidéo", "home cinéma",
    "studio", "enregistrement", "DJ", "streaming", "podcast",
    "hi-fi", "monitor", "casque", "écouteur", "micro", "enceinte",
    "projecteur", "écran", "camera", "photo", "lumière"
  ],

  // Groupes clés
  "televiseurs-affichage": [
    "tv", "écran", "affichage", "LED", "OLED", "QLED",
    "4K", "8K", "smart", "android", "projecteur", "support"
  ],
  "audio-home-cinema": [
    "audio", "home cinéma", "soundbar", "5.1", "2.1",
    "subwoofer", "ampli", "recepteur", "enceintes", "bluetooth",
    "intelligent", "multiroom"
  ],
  "casques-ecouteurs": [
    "casque", "écouteurs", "bluetooth", "gaming", "antibruit",
    "intra", "tws", "sport", "studio", "dj"
  ],
  "photo-video": [
    "photo", "vidéo", "appareil", "reflex", "hybride", "compact",
    "caméscope", "action", "drone", "objectif", "trépied",
    "stabilisateur", "flash", "mémoire", "fond"
  ],
  "studios-audio-enregistrement": [
    "micro", "USB", "XLR", "interface audio", "studio",
    "monitor", "mixeur", "préampli", "enregistreur", "carte son",
    "acoustique", "accessoires"
  ],
  "sonorisation-evenementiel": [
    "sonorisation", "événement", "enceintes pro", "caisson",
    "ampli puissance", "tables de mixage", "HF", "sans fil",
    "karaoke", "lumière", "laser", "fumée", "trépied", "XLR"
  ],
  "equipement-musique": [
    "guitare", "basse", "violon", "mandoline", "oud", "oriental",
    "piano", "clavier", "arrangeur", "synthétiseur", "batterie",
    "percussion", "harmonica"
  ],
  "equipement-dj": [
    "platines", "contrôleurs", "mixeurs", "casques", "éclairage",
    "pads", "boîte à rythmes", "logiciels", "interfaces"
  ],
  "accessoires-instruments": [
    "cordes", "médiators", "capodastre", "stand", "housse", "étui",
    "accordeur", "métronome", "peaux", "baguettes", "ampli",
    "jack", "XLR"
  ],
  "streaming-creation-contenu": [
    "streaming", "webcam", "micro", "anneau lumineux", "LED",
    "green screen", "console", "carte d'acquisition", "podcast"
  ],
  "radios-multimedia": [
    "radio", "FM", "digital", "MP3", "nomade", "autoradio",
    "ampli voiture", "subwoofer voiture", "écran android voiture"
  ],
  "equipements-cinema-maison": [
    "projecteur 4K", "écran projection", "support plafond",
    "surround", "HDMI", "convertisseur"
  ],
  "electroniques-portables": [
    "mini projecteur", "outdoor", "casque sport", "ampli nomade",
    "enregistreur terrain"
  ],
  "accessoires-image-son": [
    "HDMI", "jack", "RCA", "adaptateur", "batterie", "chargeur",
    "nettoyant", "filtre", "SD", "boîtier", "trépied"
  ],
  "marques-populaires": [
    "sony", "samsung", "lg", "panasonic", "canon", "nikon",
    "fujifilm", "jbl", "bose", "yamaha", "pioneer", "shure",
    "rode", "behringer", "sennheiser", "marshall", "roland",
    "casio", "alesis", "numark"
  ],
  "segments-usage": [
    "image domestique", "son domestique", "audio pro", "studio",
    "dj", "événementiel", "création contenu", "musique amateur",
    "musique professionnelle"
  ]

  // Quincaillerie Générale (catégorie principale)
  ,"quincaillerie-generale": [
    "quincaillerie", "outillage", "bricolage", "fixation", "porte", "fenetre",
    "plomberie", "electrique", "peinture", "soudure", "mesure", "rangement",
    "metallique", "adhesif", "securite"
  ]

  ,"outils-manuels": [
    "tournevis", "marteau", "pince", "cle", "scie", "cutter",
    "grattoir", "ciseau", "douille", "cliquet", "niveau",
    "serre-joint", "lime", "rabot", "maillet", "egoine", "japonaise"
  ]
  ,"outils-electriques-electroportatifs": [
    "perceuse", "visseuse", "impact", "meuleuse", "angle",
    "scie", "circulaire", "sauteuse", "sabre", "ponceuse",
    "orbital", "vibrante", "bande", "marteau perforateur",
    "defonceuse", "pistolet chaleur", "pistolet colle", "agrafeuse",
    "multifonction"
  ]
  ,"materiel-de-fixation": [
    "vis", "bois", "metal", "auto-perceuse", "placo",
    "boulon", "ecrou", "rondelle", "frein", "cheville",
    "molly", "metallique", "chimique", "rivet", "clou",
    "pointe", "crochet", "equerre", "piton", "serre-cable"
  ]
  ,"quincaillerie-porte-fenetre": [
    "serrure", "multipoint", "cylindre", "poignee", "paumelle",
    "charniere", "verrou", "loquet", "cremone", "butee",
    "heurtoir", "arret magnetique", "joint etanche"
  ]
  ,"securite-protection": [
    "cadenas", "haute securite", "antivol", "chaine",
    "gants", "anti-coupure", "lunettes", "visiere",
    "casque", "chaussures", "genouillere", "masque",
    "harnais"
  ]
  ,"materiel-de-plomberie": [
    "robinet", "mitigeur", "flexible", "raccord", "pvc",
    "multicouche", "laiton", "tuyau", "per", "siphon",
    "joint", "collier", "vanne", "bonde", "anti-calcaire",
    "evacuation", "coude", "t", "reduction"
  ]
  ,"materiel-electrique": [
    "prise", "interrupteur", "cable", "gaine", "icta",
    "disjoncteur", "tableau", "coffret", "transformateur",
    "multiprise", "rallonge", "connecteur", "domino", "goulotte"
  ]
  ,"colles-adhesifs": [
    "colle", "forte", "universelle", "pvc", "bois",
    "epoxy", "silicone", "mastic", "double face", "ruban",
    "isolant", "toile", "arme", "masquage", "montage"
  ]
  ,"produits-soudure-brasage": [
    "fer a souder", "station", "etain", "chalumeau",
    "baguette", "brasage", "masque", "visiere", "flux"
  ]
  ,"outillage-de-mesure": [
    "metre", "laser", "telemetre", "niveau", "bulle",
    "equerre", "rapporteur", "pied a coulisse", "detecteur",
    "cables", "metaux"
  ]
  ,"rangements-organisation": [
    "boite a outils", "compartiment", "caisse", "organiseur",
    "valise", "chariot", "etagere", "coffre", "support mural"
  ]
  ,"materiaux-metalliques-accessoires": [
    "barre", "acier", "profil", "aluminium", "inox",
    "grillage", "panneau", "chaine", "cable acier", "tendeur",
    "corniere", "tube"
  ]
  ,"peinture-preparation": [
    "pinceau", "rouleau", "bac", "grille", "abrasif",
    "papier de verre", "enduit", "appret", "bache",
    "masquage", "solvant"
  ]
  ,"jardinerie-bricolage-leger": [
    "outil jardin", "secateur", "elagueur", "pulverisateur",
    "arrosoir", "plantation", "rateau", "griffe",
    "kit", "gants jardinage"
  ]
  ,"accessoires-divers": [
    "joint", "poignee", "bouton", "pied meuble", "roulette",
    "ressort", "aimant", "patin", "embout", "cale",
    "support"
  ]

  // Sous-catégories clés de Mobilier & Décoration
  ,"decoration-murale": [
    "tableau", "poster", "miroir", "horloge", "stickers",
    "panneau 3D", "toile", "tapisserie"
  ],
  "luminaires-eclairage": [
    "luminaire", "éclairage", "lampe", "lustre", "applique",
    "suspension", "lampadaire", "LED", "abat-jour"
  ],
  "tapis-textiles-maison": [
    "tapis", "textiles", "coussin", "rideaux", "voilages",
    "stores", "plaids", "linge de lit", "linge de bain"
  ],
  "rangement-organisation": [
    "rangement", "boîte", "panier", "étagère", "armoire",
    "portemanteaux", "crochets", "organiseur"
  ],
  "maison-intelligente": [
    "smart", "connecté", "domotique", "IoT", "capteur",
    "détecteur", "ampoule", "prise"
  ],
  "materiaux": [
    "bois", "métal", "verre", "aluminium", "marbre",
    "céramique", "rotin", "bambou", "résine", "tissu", "velours"
  ],
  "accessoires-maison": [
    "horloge", "cadre photo", "parfum d'intérieur", "fontaine",
    "distributeur de savon", "cintre", "accessoires", "cheminée"
  ],
  "objets-artisanaux-locaux": [
    "artisanat", "traditionnel", "berbère", "oriental", "paniers",
    "poufs", "art mural"
  ]
};

// Mots-clés spécifiques par sous-sous-catégorie
export const detailedKeywords: Record<string, string[]> = {
  // Salon
  "salon": [
    "salon", "séjour", "living", "canapé", "sofa", "fauteuil", "pouf",
    "table basse", "meuble TV", "bibliothèque", "étagère", "console",
    "cuir", "tissu", "velours", "angle", "convertible", "relax",
    "moderne", "classique", "design", "confortable", "spacieux"
  ],

  // Chambre
  "chambre": [
    "chambre", "lit", "matelas", "sommier", "tête de lit", "cadre",
    "armoire", "placard", "dressing", "commode", "table de chevet",
    "140x190", "160x200", "180x200", "200x200", "king size", "queen size",
    "bois", "métal", "capitonné", "rangement", "miroir", "penderie"
  ],

  // Cuisine (meuble)
  "cuisine": [
    "cuisine", "meuble cuisine", "placard", "tiroir", "plan de travail",
    "îlot", "bar", "tabouret", "chaise", "table", "buffet",
    "moderne", "rustique", "design", "fonctionnel", "rangement",
    "laqué", "bois", "stratifié", "granit", "quartz", "inox"
  ],

  // Réfrigérateur
  "refrigerateur": [
    "réfrigérateur", "frigo", "frigidaire", "réfrigération", "froid",
    "congélateur", "freezer", "combiné", "américain", "compact",
    "encastrable", "pose libre", "deux portes", "multi-portes",
    "No Frost", "froid ventilé", "distributeur", "glaçons", "eau",
    "A++", "A+++", "économique", "silencieux", "inox", "blanc", "noir"
  ],

  // Lave-linge
  "lave-linge": [
    "lave-linge", "machine à laver", "lavage", "lessive", "essorage",
    "hublot", "top", "ouverture dessus", "ouverture frontale",
    "6kg", "7kg", "8kg", "9kg", "10kg", "12kg", "capacité",
    "1400 tours", "1600 tours", "variable", "programmable",
    "eco", "rapide", "délicat", "coton", "synthétique", "laine"
  ],

  // Four
  "four": [
    "four", "cuisson", "rôtissage", "gril", "chaleur tournante",
    "multifonction", "pyrolyse", "catalyse", "vapeur", "micro-ondes",
    "encastrable", "pose libre", "électrique", "gaz", "mixte",
    "programmable", "timer", "sonde", "température", "précision",
    "plateau", "grille", "lèchefrite", "porte froide", "sécurité"
  ],

  // Luminaires
  "luminaires": [
    "luminaire", "éclairage", "lampe", "lustre", "plafonnier",
    "suspension", "applique", "lampadaire", "abat-jour", "ampoule",
    "LED", "halogène", "incandescent", "dimmable", "variateur",
    "moderne", "design", "vintage", "industriel", "scandinave",
    "cristal", "métal", "bois", "verre", "tissu", "rotin"
  ],

  // Aspirateurs
  "aspirateurs": [
    "aspirateur", "aspiration", "nettoyage", "poussière", "saleté",
    "traîneau", "balai", "robot", "main", "sans fil", "filaire",
    "sac", "sans sac", "cyclonique", "HEPA", "filtre", "brosse",
    "parquet", "moquette", "carrelage", "animaux", "allergies",
    "silencieux", "puissant", "léger", "maniable", "autonomie"
  ]
};