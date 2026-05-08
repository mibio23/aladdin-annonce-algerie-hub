// Mapping emoji pour les sous-catégories du mega menu
// Chaque slug de sous-catégorie est associé à un emoji contextuel

export const subcategoryEmojis: Record<string, string> = {
  // === IMMOBILIER ===
  'appartements': '🏢', 'appartements-location': '🏢', 'appartements-vente': '🏢',
  'maisons': '🏡', 'maisons-vente': '🏡', 'maisons-location': '🏡',
  'terrains': '🗺️', 'terrains-achats': '🗺️',
  'locaux-commerciaux': '🏪', 'immobilier-commercial': '🏪',
  'bureaux': '🏛️', 'garages-parkings': '🅿️',
  'locations-immobilier': '🔑', 'locations-vacances': '🏖️',
  'colocation': '👥', 'residence-etudiante': '🎓',
  'villas': '🏰', 'villas-location-vacances': '🏰',
  'fermes': '🌾', 'hangars-entrepots': '🏭',
  'constructions': '🏗️', 'promotion-immobiliere': '📐',
  'mobilier-decoration': '🛋️', 'electromenager': '🧊',
  'bricolage-jardin': '🌿',
  
  // === TELEPHONIE ===
  'smartphones': '📱', 'smartphones-android': '📱', 'smartphones-accessoires': '📱',
  'iphones-apple': '🍎', 'tablettes': '📲', 'tablettes-ipad': '📲',
  'accessoires-telephone': '🔌', 'coques-protections': '🛡️',
  'chargeurs-cables': '🔋', 'montres-connectees': '⌚',
  'montres-connectees-bracelets': '⌚', 'ecouteurs-casques': '🎧',
  'lignes-telephoniques': '📞', 'reparation-telephone': '🔧',

  // === INFORMATIQUE ===
  'ordinateurs-peripheriques': '🖥️', 'pc-portables': '💻', 'pc-de-bureau': '🖥️',
  'macbooks-imac': '🍏', 'composants-informatique': '⚙️',
  'cartes-graphiques-gpu': '🎮', 'processeurs-cpu': '🧠',
  'memoires-ram': '💾', 'disques-durs-stockage': '💿',
  'moniteurs-ecrans': '🖥️', 'claviers-souris': '⌨️',
  'imprimantes-scanners': '🖨️', 'webcams-casques': '📸',
  'logiciels': '💿', 'reseaux-wifi': '📡',
  'objets-connectes': '🌐',

  // === VEHICULES ===
  'voitures-vehicules-legers': '🚗', 'voitures': '🚗', 'voitures-citadines': '🚗',
  'berlines': '🚙', 'suv': '🚙', 'crossovers': '🚙', '4x4': '🚙',
  'camions-vehicules-professionnels': '🚛', 'camions': '🚛',
  'poids-lourds': '🚛', 'semi-remorques': '🚚',
  'motos-cyclomoteurs': '🏍️', 'motos': '🏍️', 'scooters': '🛵',
  'velos-motorises-mobilite': '🛴', 'trottinettes-electriques': '🛴',
  'equipements-accessoires-auto': '🔧', 'pieces-detachees': '⚙️',
  'pieces-accessoires-moto': '🏍️', 'pneus': '⭕',
  'jantes': '💿', 'batteries': '🔋',
  'remorques-attelages': '🚜', 'diagnostic-atelier': '🔬',
  'carburants-energie': '⛽', 'services-assistance': '🆘',
  'marques-populaires-vehicules': '⭐',

  // === VELO & CYCLISME ===
  'velos-route': '🚴', 'vtt': '🚵', 'velos-ville': '🚲',
  'velos-electriques': '⚡', 'velos-enfants': '🧒',
  'accessoires-velo': '🔧', 'equipements-cycliste': '🦺',
  'pieces-velo': '⚙️',

  // === NAUTISME ===
  'bateaux': '⛵', 'bateaux-moteur': '🚤', 'voiliers': '⛵',
  'jet-ski': '🌊', 'kayaks-canoes': '🛶',
  'equipements-nautiques': '🧭', 'peche': '🎣',
  'plongee': '🤿', 'sports-nautiques': '🏄',

  // === BTP & CONSTRUCTION ===
  'engins-chantier': '🚜', 'grues': '🏗️', 'betonnieres': '🏗️',
  'echafaudages': '🪜', 'materiaux-construction': '🧱',
  'outillage-pro': '🛠️', 'electricite-batiment': '⚡',
  'plomberie': '🚿', 'peinture-batiment': '🎨',
  'menuiserie-batiment': '🪚', 'carrelage': '◻️',
  'isolation': '🧊', 'toiture': '🏠',

  // === MODE / VETEMENTS ===
  'vetements-homme': '👔', 'vetements-femme': '👗',
  'vetements-enfant': '👕', 'vetements-bebe': '🧒',
  'chaussures': '👟', 'chaussures-homme-femme': '👞',
  'lingerie': '👙', 'sportswear': '🏃',
  'marques-luxe': '💎', 'luxe-mode': '💎',
  'vetements-traditionnels': '🥻',

  // === BEBE & PUERICULTURE ===
  'poussettes': '🍼', 'equipements-puericulture': '🧸',
  'vetements-bebe-puericulture': '👶', 'alimentation-bebe': '🍼',
  'jouets-bebe': '🧸', 'chambre-bebe': '🛏️',
  'hygiene-bebe': '🧴', 'securite-bebe': '🔒',
  'puericulture-equipement-bebe': '👶',

  // === MODE & ACCESSOIRES ===
  'bijoux': '💍', 'bijoux-montres': '💍',
  'montres': '⌚', 'montres-luxe': '⌚',
  'lunettes': '🕶️', 'ceintures': '👔',
  'echarpes-foulards': '🧣', 'chapeaux': '🎩',
  'accessoires-mode': '👜',

  // === SACS & BAGAGES ===
  'sacs-a-main': '👜', 'valises': '🧳',
  'sacs-dos': '🎒', 'bagages-voyage': '🧳',
  'portefeuilles': '👛', 'portefeuilles-cartes': '👛',
  'bagages-maroquinerie': '💼', 'maroquinerie-luxe': '💼',
  'luggage': '🧳',

  // === ELECTROMENAGER ===
  'refrigerateurs': '🧊', 'lave-linge': '🫧',
  'cuisinieres': '🍳', 'fours': '♨️',
  'micro-ondes': '📡', 'lave-vaisselle': '🍽️',
  'aspirateurs': '🧹', 'climatiseurs': '❄️',
  'seche-linge': '💨', 'petit-electromenager': '☕',
  'appareils-cuisine': '🍳', 'appareils-nettoyage': '🧹',
  'climatisation-chauffage': '🌡️',

  // === MOBILIER & DECORATION ===
  'canapes-sofas': '🛋️', 'meubles-maison': '🪑',
  'tables': '🪑', 'chaises': '💺',
  'lits-matelas': '🛏️', 'armoires': '🗄️',
  'decoration': '🖼️', 'decoration-interieur': '🖼️',
  'luminaires': '💡', 'tapis-rideaux': '🪟',
  'rangement-organisation': '📦', 'rangement': '📦',

  // === IMAGE, SON & MUSIQUE ===
  'appareils-photo': '📸', 'cameras-video': '🎥',
  'audio-hifi': '🔊', 'casques-audio': '🎧',
  'enceintes': '🔉', 'enceintes-bluetooth': '🔊',
  'microphones': '🎤', 'instruments-musique': '🎵',
  'instruments-corde': '🎸', 'instruments-clavier': '🎹',
  'instruments-vent': '🎷', 'instruments-percussion': '🥁',
  'platines-cd-vinyles': '📀', 'barres-son': '🔊',

  // === JEUX VIDEO & CONSOLES ===
  'consoles-jeux': '🎮', 'playstation': '🎮',
  'xbox': '🕹️', 'nintendo': '🕹️',
  'jeux-accessoires': '💿', 'jeux-playstation': '💿',
  'jeux-xbox': '💿', 'jeux-nintendo': '💿',
  'manettes-gamepads': '🎮', 'casques-gaming': '🎧',
  'claviers-gaming': '⌨️', 'consoles-portables-retro': '🕹️',

  // === QUINCAILLERIE ===
  'outillage-quincaillerie': '🔧', 'outils-main-bricolage': '🔨',
  'outils-electriques-bricolage': '⚡', 'visserie-boulonnerie': '🔩',
  'peintures-vernis': '🎨', 'equipements-electriques': '💡',
  'plomberie-chauffage': '🚿', 'serrurerie': '🔐',
  'outils-mesure-bricolage': '📏', 'outils-jardinage-paysager': '🌿',
  'materiaux-construction-bricolage': '🧱', 'quincaillerie-fixation': '🔩',

  // === AGRICULTURE ===
  'materiel-agricole': '🚜', 'semences-plants': '🌱',
  'engrais-fertilisants': '🌿', 'elevage-soins-animaux': '🐄',
  'produits-agricoles-bruts': '🌾', 'irrigation': '💧',
  'systemes-irrigation': '💧', 'serres-solutions-de-culture': '🏡',
  'produits-phytosanitaires': '🧪', 'equipements-agroalimentaires': '🏭',
  'transport-logistique-agricole': '🚛',

  // === PARAPHARMACIE ===
  'produits-parapharmaceutiques': '💊', 'complements-alimentaires': '💊',
  'materiel-medical': '🏥', 'equipements-medicaux': '🩺',
  'produits-chimiques-industriels': '🧪', 'produits-bien-etre': '🧘',
  'materiel-professionnel-medical': '🏥',

  // === SANTE & BEAUTE ===
  'maquillage-cosmetiques': '💄', 'parfums': '🌸',
  'parfums-eaux-toilette': '🌸', 'soins-peau': '🧴',
  'soins-peau-dermocosmetiques': '🧴', 'soins-cheveux': '💇',
  'soins-cheveux-coiffure': '✂️', 'produits-beaute': '✨',
  'soins-corps-bains': '🛁', 'epilation-soins-corps': '✨',

  // === GASTRONOMIE ===
  'produits-frais': '🥬', 'produits-frais-epicerie': '🥬',
  'epicerie': '🛒', 'epicerie-produits-sec': '📦',
  'boissons': '🥤', 'patisserie': '🎂',
  'boulangerie': '🥖', 'viandes': '🥩',
  'poissons': '🐟', 'fruits-legumes': '🍎',
  'produits-alimentaires': '🛒', 'equipements-cuisine': '🍳',
  'ustensiles-cuisine': '🍴', 'restauration-traiteurs': '👨‍🍳',
  'services-traiteurs-catering': '👨‍🍳', 'cafes-bistros-salons-the': '☕',
  'restaurants-bars': '🍽️',

  // === ARTISANAT ALGERIEN ===
  'tapis-berberes': '🪡', 'poterie-traditionnelle': '🏺',
  'bijoux-traditionnels': '💍', 'costumes-traditionnels': '🥻',
  'huile-olive': '🫒', 'dattes-algeriennes': '🌴',
  'miel-algerien': '🍯', 'epices-algeriennes': '🌶️',
  'couscous-algerien': '🍲', 'patisseries-traditionnelles-algeriennes': '🧁',
  'plats-traditionnels-algeriens': '🥘',
  'produits-locaux-algeriens': '🇩🇿',

  // === VOYAGES & TOURISME ===
  'hebergement': '🏨', 'hotels-hebergement': '🏨',
  'transport-voyages': '🚆', 'vols-compagnies-aeriennes': '✈️',
  'trains-sncf-ter': '🚆', 'bus-autocars-transports': '🚌',
  'location-voitures-agences': '🚗', 'activites-touristiques': '🗺️',
  'visites-guidees-activites': '🗺️', 'croisières': '🚢',
  'campings-gites-ruraux': '⛺',

  // === EVENEMENTS ===
  'spectacles-concerts': '🎵', 'theatre-spectacles-vivants': '🎭',
  'sport-billetterie': '🏟️', 'evenements-culturels': '🎪',
  'cinema-films-seances': '🎬', 'conferences-seminaires': '🎤',
  'expositions-galeries-musees': '🖼️', 'festivals-musique-culture': '🎶',

  // === EMPLOI ===
  'offres-emploi': '📋', 'emploi-carriere': '💼',
  'cv-lettres-motivation': '📄', 'formations-professionnelles': '🎓',
  'secteurs-activite': '🏢', 'niveaux-experience': '📊',
  'services-professionnels': '🤝', 'comptabilite-finance': '🧮',
  'marketing-communication': '📢', 'services-juridiques': '⚖️',
  'services-informatiques-pro': '💻',

  // === EDUCATION & LOISIRS ===
  'livres-papeterie': '📚', 'livres-boutique': '📖',
  'papeterie-fournitures': '✏️', 'art-collections': '🎨',
  'jeux-jouets': '🧩', 'puzzles-casse-tetes': '🧩',
  'jouets-enfants-jeux': '🪀', 'formation-tutoriels': '📝',
  'cours-informatique': '💻', 'equipements-sportifs': '⚽',
  'materiel-fitness': '💪', 'sports-collectifs': '🏀',

  // === ANIMAUX ===
  'chiens-animaux-compagnie': '🐕', 'animaux-domestiques': '🐕',
  'chats-animaux-compagnie': '🐈', 'oiseaux-volieres': '🦜',
  'poissons-aquariums': '🐠', 'rongeurs-nac-animaux': '🐹',
  'reptiles-terrariums': '🦎', 'animaux-ferme-elevage': '🐄',
  'nourriture-animaux': '🦴', 'accessoires-animaux': '🎀',
  'veterinaires-cliniques': '🩺', 'toilettage-grooming': '✂️',

  // === FINANCE ===
  'services-bancaires': '🏦', 'credits': '💳',
  'assurances': '🛡️', 'assurances-auto-moto': '🛡️',
  'investissements': '📈', 'epargne-comptes-bancaires': '🐷',
  'change-devises-bureaux': '💱', 'crypto-monnaies-blockchain': '₿',
  'actions-bourse-investissement': '📊',

  // === SERVICES ===
  'installation-maintenance': '🔧', 'depannage-informatique': '🛠️',
  'reparation-entretien': '🔩', 'reparation-electromenager': '🔌',
  'reparation-informatique-domestique': '💻', 'reparation-vehicule': '🚗',
  'entretien-menager': '🏠', 'entretien-jardin-paysager': '🌳',
  'conseil-gestion-entreprise': '📊',

  // === ECHANGES ===
  'don-troc': '🎁', 'covoiturage-transport': '🚗',
  'partage-competences': '💡', 'temps-libre-activites': '⏰',
  'objets-don-echanges': '🎁', 'objets-troc-echanges': '🔄',

  // === COLLECTIONS ===
  'timbres-poste': '📮', 'livres-rares-collection': '📕',
  'pieces-monnaie-medailles': '🪙', 'objets-vintage-retro': '📻',
  'antiquites-brocante': '🏺', 'collections-specialisees': '🔖',
};

export const getSubcategoryEmoji = (slug: string): string => {
  return subcategoryEmojis[slug] || '📌';
};
