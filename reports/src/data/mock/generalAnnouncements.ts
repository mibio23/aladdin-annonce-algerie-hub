import { Announcement } from "../types/homePageTypes";

export const generalAnnouncements: Announcement[] = [
  // --- IMMOBILIER & MAISON (immobilier-maison) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `immob-${i + 1}`,
    title: [
      "Appartement F4 à Hydra",
      "Villa standing à Cheraga",
      "Studio meublé Alger Centre",
      "Terrain constructible Tipaza",
      "Duplex avec vue sur mer",
      "Location bureau Bab Ezzouar",
      "Local commercial Oran",
      "Maison coloniale Blida",
      "Appartement F3 neuf",
      "Résidence sécurisée F5"
    ][i % 10] + ` (Ref: ${100 + i})`,
    price: (i + 1) * 1500000,
    location: ["Alger", "Oran", "Constantine", "Setif", "Annaba", "Blida", "Tlemcen", "Bejaia"][i % 8],
    imageUrls: ["https://images.unsplash.com/photo-1560518883-ce09059eeffa?q=80&w=800"],
    date: new Date(Date.now() - i * 3600000).toISOString(),
    category: "Immobilier & Maison",
    categorySlug: "immobilier-maison",
    phoneNumber: "0550" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 5 === 0,
    description: "Belle opportunité immobilière située dans un quartier calme et recherché. Proche de toutes commodités.",
    isProfessional: i % 3 === 0,
    property_type: ["appartement", "villa", "studio", "terrain", "duplex", "bureau", "local", "maison"][i % 8],
    surface: [120, 350, 45, 800, 180, 65, 120, 200, 90, 160][i % 10],
    rooms: [4, 6, 1, 0, 5, 3, 2, 8, 3, 5][i % 10],
    bedrooms: [3, 4, 1, 0, 3, 1, 1, 5, 2, 4][i % 10],
    bathrooms: [2, 3, 1, 0, 2, 1, 1, 4, 1, 2][i % 10],
    floor: [2, 0, 4, 0, 3, 1, 0, 0, 5, 2][i % 10],
    furnished: i % 2 === 0,
  })),

  // --- TÉLÉPHONIE (telephonie) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `tel-${i + 1}`,
    title: [
      "iPhone 15 Pro Max 256GB",
      "Samsung S24 Ultra",
      "Google Pixel 8 Pro",
      "Xiaomi 14 Global Version",
      "Huawei P60 Pro",
      "OnePlus 12",
      "Oppo Find X7",
      "Redmi Note 13 Pro",
      "iPad Pro M2",
      "AirPods Pro 2"
    ][i % 10],
    price: 45000 + (i * 5000),
    location: ["Alger", "Oran", "Constantine", "Setif", "Annaba"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?q=80&w=800"],
    date: new Date(Date.now() - (i + 20) * 3600000).toISOString(),
    category: "Téléphonie",
    categorySlug: "telephonie",
    phoneNumber: "0661" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 4 === 0,
    description: "Produit authentique, boîte scellée avec garantie. Livraison disponible dans tout le pays.",
    isOnline: true,
    brand: ["Apple", "Samsung", "Google", "Xiaomi", "Huawei", "OnePlus", "Oppo", "Redmi", "Apple", "Apple"][i % 10],
    model: ["iPhone 15 Pro Max", "S24 Ultra", "Pixel 8 Pro", "14 Global", "P60 Pro", "12", "Find X7", "Note 13 Pro", "iPad Pro", "AirPods Pro 2"][i % 10],
    condition: ["new", "like_new", "good", "used"][i % 4],
    color: ["Noir", "Titane", "Bleu", "Blanc", "Vert"][i % 5],
    storage: ["128 Go", "256 Go", "512 Go", "1 To", "64 Go"][i % 5],
    ram: ["8 Go", "12 Go", "16 Go", "6 Go", "4 Go"][i % 5],
    battery_health: i % 2 === 0 ? "100%" : (90 + (i % 10)) + "%",
  })),

  // --- INFORMATIQUE & ÉLECTRONIQUE (informatique-electronique) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `info-${i + 1}`,
    title: [
      "MacBook Pro M3 14\"",
      "Asus ROG Strix G16",
      "Dell XPS 15 2024",
      "HP Victus Gaming",
      "Lenovo Legion 5",
      "Écran Gamer 144Hz 27\"",
      "Clavier Mécanique RGB",
      "Souris Logitech G Pro",
      "Carte Graphique RTX 4070",
      "Processeur i9-14900K"
    ][i % 10],
    price: 35000 + (i * 8000),
    location: ["Alger", "Oran", "Constantine", "Tizi Ouzou", "Batna"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1496181133206-80ce9b88a853?q=80&w=800"],
    date: new Date(Date.now() - (i + 40) * 3600000).toISOString(),
    category: "Informatique & Électronique",
    categorySlug: "informatique-electronique",
    phoneNumber: "0770" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 6 === 0,
    description: "Matériel informatique haute performance pour gaming ou travail professionnel. État neuf.",
    brand: ["Apple", "Asus", "Dell", "HP", "Lenovo", "Samsung", "Logitech", "NVIDIA", "Intel", "MSI"][i % 10],
    model: ["MacBook Pro", "ROG Strix", "XPS 15", "Victus", "Legion 5", "Odyssey G7", "G Pro X", "RTX 4070", "i9-14900K", "Cyborg 15"][i % 10],
    condition: ["new", "like_new", "good"][i % 3],
    purchase_year: [2024, 2023, 2024, 2022, 2023][i % 5],
  })),

  // --- VÉHICULES & ÉQUIPEMENTS (vehicules-equipements) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `auto-${i + 1}`,
    title: [
      "Toyota Hilux 2023",
      "Volkswagen Golf 8",
      "Renault Clio 5",
      "Hyundai Tucson",
      "Kia Sportage",
      "Seat Ibiza Highline",
      "Dacia Duster 4x4",
      "Peugeot 3008 GT",
      "Skoda Octavia",
      "Mercedes Classe C"
    ][i % 10],
    price: 2500000 + (i * 200000),
    location: ["Alger", "Oran", "Blida", "Setif", "Chlef"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1494976388531-d1058494cdd8?q=80&w=800"],
    date: new Date(Date.now() - (i + 60) * 3600000).toISOString(),
    category: "Véhicules & Équipements",
    categorySlug: "vehicules-equipements",
    phoneNumber: "0560" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 5 === 0,
    description: "Véhicule très bien entretenu, carnet d'entretien à jour. Peinture d'origine, aucun frais à prévoir.",
    brand: ["Toyota", "Volkswagen", "Renault", "Hyundai", "Kia", "Seat", "Dacia", "Peugeot", "Skoda", "Mercedes"][i % 10],
    model: ["Hilux", "Golf 8", "Clio 5", "Tucson", "Sportage", "Ibiza", "Duster", "3008", "Octavia", "Classe C"][i % 10],
    condition: ["good", "like_new", "new"][i % 3],
    purchase_year: [2023, 2022, 2023, 2021, 2022][i % 5],
  })),

  // --- VÉLO, CYCLISME & ÉQUIPEMENTS (velo-cyclisme-equipements) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `velo-${i + 1}`,
    title: [
      "VTT Scott Aspect 940",
      "Vélo de route Trek Domane",
      "VTT Giant Talon 1",
      "Vélo électrique Cube",
      "B'Twin Rockrider ST 540",
      "Casque de protection",
      "Gants de cyclisme Pro",
      "Kit de réparation complet",
      "Porte-vélo Thule",
      "Pneus Michelin VTT"
    ][i % 10],
    price: 5000 + (i * 2000),
    location: ["Alger", "Oran", "Bejaia", "Tlemcen", "Skikda"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1485965120184-e220f721d03e?q=80&w=800"],
    date: new Date(Date.now() - (i + 80) * 3600000).toISOString(),
    category: "Vélo, Cyclisme & Équipements",
    categorySlug: "velo-cyclisme-equipements",
    phoneNumber: "0662" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 7 === 0,
    description: "Équipement de sport de qualité supérieure pour amateurs et professionnels du cyclisme."
  })),

  // --- NAUTISME (nautisme) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `naut-${i + 1}`,
    title: [
      "Bateau de plaisance 6m",
      "Jet Ski Yamaha FX",
      "Voilier d'occasion",
      "Moteur hors-bord 150ch",
      "Semi-rigide Zodiac",
      "Équipement de plongée",
      "Canne à pêche pro",
      "Sondeur GPS Garmin",
      "Gilet de sauvetage",
      "Remorque bateau"
    ][i % 10],
    price: 150000 + (i * 50000),
    location: ["Alger", "Oran", "Bejaia", "Annaba", "Mostaganem"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1544551763-46a013bb70d5?q=80&w=800"],
    date: new Date(Date.now() - (i + 100) * 3600000).toISOString(),
    category: "Nautisme",
    categorySlug: "nautisme",
    phoneNumber: "0551" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 5 === 0,
    description: "Articles et équipements nautiques de premier choix. Idéal pour les passionnés de mer."
  })),

  // --- BTP & ENGINS DE CONSTRUCTION (btp-engins-construction) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `btp-${i + 1}`,
    title: [
      "Pelle hydraulique CAT",
      "Bulldozer Komatsu",
      "Bétonnière 350L",
      "Échafaudage complet 100m2",
      "Grue à tour Potain",
      "Niveau laser pro",
      "Marteau piqueur Bosch",
      "Compacteur vibrant",
      "Générateur 50kVA",
      "Camion benne Volvo"
    ][i % 10],
    price: 500000 + (i * 1000000),
    location: ["Alger", "Setif", "Constantine", "Oran", "Batna"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1581094288338-2314dddb7ecc?q=80&w=800"],
    date: new Date(Date.now() - (i + 120) * 3600000).toISOString(),
    category: "BTP & Engins de Construction",
    categorySlug: "btp-engins-construction",
    phoneNumber: "0561" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 8 === 0,
    description: "Matériel professionnel pour le bâtiment et les travaux publics. Fiabilité garantie."
  })),

  // --- MODE & ACCESSOIRES (mode-accessoires) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `mode-acc-${i + 1}`,
    title: [
      "Costume Homme Slim Fit",
      "Robe de soirée élégante",
      "Chaussures en cuir",
      "Montre de luxe",
      "Sac à main designer",
      "Lunettes de soleil",
      "Veste en jean",
      "Baskets Nike Air",
      "Ceinture en cuir",
      "Parfum de marque"
    ][i % 10],
    price: 2500 + (i * 1500),
    location: ["Alger", "Oran", "Constantine", "Annaba", "Tlemcen"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1483985988355-763728e1935b?q=80&w=800"],
    date: new Date(Date.now() - (i + 140) * 3600000).toISOString(),
    category: "Mode & Accessoires",
    categorySlug: "mode-accessoires",
    phoneNumber: "0663" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 5 === 0,
    description: "Dernières tendances de mode et accessoires de haute qualité pour tous les styles."
  })),

  // --- BÉBÉ & PUÉRICULTURE (bebe-puericulture) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `bebe-${i + 1}`,
    title: [
      "Poussette 3 en 1",
      "Siège auto ISOFIX",
      "Lit bébé en bois",
      "Chaise haute réglable",
      "Transat vibrant",
      "Babyphone vidéo",
      "Sac à langer complet",
      "Chauffe-biberon",
      "Tapis d'éveil",
      "Vêtements nouveau-né"
    ][i % 10],
    price: 3500 + (i * 2500),
    location: ["Alger", "Blida", "Boumerdes", "Tipaza", "Medea"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1515488042361-ee00e0ddd4e4?q=80&w=800"],
    date: new Date(Date.now() - (i + 160) * 3600000).toISOString(),
    category: "Bébé & Puériculture",
    categorySlug: "bebe-puericulture",
    phoneNumber: "0771" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 6 === 0,
    description: "Tout pour le confort et la sécurité de votre bébé. Articles sélectionnés avec soin."
  })),

  // --- MODE ET ACCESSOIRES (mode-et-accessoires) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `mode-et-acc-${i + 1}`,
    title: [
      "Manteau d'hiver",
      "Pull en cachemire",
      "Jean Levis 501",
      "Chemise blanche coton",
      "Echarpe en soie",
      "Chapeau tendance",
      "Bijoux fantaisie",
      "Portefeuille cuir",
      "Gants tactiles",
      "Bottes de pluie"
    ][i % 10],
    price: 1500 + (i * 1200),
    location: ["Alger", "Oran", "Constantine", "Setif", "Batna"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1445205170230-053b83016050?q=80&w=800"],
    date: new Date(Date.now() - (i + 180) * 3600000).toISOString(),
    category: "Mode et Accessoires",
    categorySlug: "mode-et-accessoires",
    phoneNumber: "0552" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 5 === 0,
    description: "Large sélection de vêtements et accessoires pour hommes et femmes."
  })),

  // --- SACS & BAGAGES (sacs-et-bagages) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `sac-${i + 1}`,
    title: [
      "Sac à main cuir",
      "Valise rigide Samsonite",
      "Sac à dos voyage",
      "Sacoche ordinateur",
      "Portefeuille luxe",
      "Sac de sport Nike",
      "Pochette soirée",
      "Sac bandoulière",
      "Set de valises 3pcs",
      "Porte-documents"
    ][i % 10],
    price: 3500 + (i * 4500),
    location: ["Alger", "Oran", "Constantine", "Annaba", "Setif"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1548036328-c9fa89d128fa?q=80&w=800"],
    date: new Date(Date.now() - (i + 200) * 3600000).toISOString(),
    category: "Sacs & Bagages",
    categorySlug: "sacs-et-bagages",
    phoneNumber: "0664" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 7 === 0,
    description: "Bagagerie de qualité supérieure pour tous vos déplacements."
  })),

  // --- ÉLECTROMÉNAGER (electromenager) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `elec-${i + 1}`,
    title: [
      "Réfrigérateur LG Side by Side",
      "Machine à laver Samsung 9kg",
      "Cuisinière 5 feux",
      "Micro-ondes Whirlpool",
      "Lave-vaisselle Bosch",
      "Robot pétrisseur Kenwood",
      "Aspirateur Dyson V15",
      "Climatiseur Condor 12000 BTU",
      "Machine à café Delonghi",
      "Centrifugeuse Moulinex"
    ][i % 10],
    price: 15000 + (i * 12000),
    location: ["Alger", "Blida", "Setif", "Oran", "Constantine"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1584622650111-993a426fbf0a?q=80&w=800"],
    date: new Date(Date.now() - (i + 220) * 3600000).toISOString(),
    category: "Électroménager",
    categorySlug: "electromenager",
    phoneNumber: "0772" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 4 === 0,
    description: "Appareils électroménagers haute performance avec garantie constructeur.",
    brand: ["LG", "Samsung", "Whirlpool", "Bosch", "Kenwood", "Dyson", "Condor", "Delonghi", "Moulinex", "Beko"][i % 10],
    condition: ["new", "like_new", "good"][i % 3],
  })),

  // --- MOBILIER & DÉCORATION (mobilier-et-decoration) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `mob-${i + 1}`,
    title: [
      "Canapé d'angle moderne",
      "Table à manger 6 chaises",
      "Lit double capitonné",
      "Armoire 4 portes",
      "Meuble TV design",
      "Bureau ergonomique",
      "Tapis berbère authentique",
      "Lustre cristal",
      "Rideaux occultants",
      "Miroir mural doré"
    ][i % 10],
    price: 8000 + (i * 15000),
    location: ["Alger", "Blida", "Tizi Ouzou", "Oran", "Constantine"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1524758631624-e2822e304c36?q=80&w=800"],
    date: new Date(Date.now() - (i + 240) * 3600000).toISOString(),
    category: "Mobilier & Décoration",
    categorySlug: "mobilier-et-decoration",
    phoneNumber: "0553" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 6 === 0,
    description: "Sublimez votre intérieur avec notre sélection exclusive de meubles et objets de décoration.",
    condition: ["new", "like_new", "good"][i % 3],
    color: ["Gris", "Beige", "Marron", "Blanc", "Noir"][i % 5],
  })),

  // --- IMAGE, SON & ÉQUIPEMENT DE MUSIQUE (image-son-equipement-musique) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `media-${i + 1}`,
    title: [
      "TV Samsung QLED 65\"",
      "Home Cinéma Sony 5.1",
      "Enceinte Bluetooth Bose",
      "Casque JBL sans fil",
      "Guitare acoustique Yamaha",
      "Piano numérique Roland",
      "Appareil photo Canon EOS",
      "Projecteur 4K",
      "Platine vinyle Audio-Technica",
      "Microphone de studio"
    ][i % 10],
    price: 12000 + (i * 25000),
    location: ["Alger", "Oran", "Constantine", "Annaba", "Setif"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1593305841991-05c297ba4575?q=80&w=800"],
    date: new Date(Date.now() - (i + 260) * 3600000).toISOString(),
    category: "Image, Son & Équipement de Musique",
    categorySlug: "image-son-equipement-musique",
    phoneNumber: "0665" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 5 === 0,
    description: "Équipements audiovisuels et instruments de musique professionnels et amateurs.",
    brand: ["Samsung", "Sony", "Bose", "JBL", "Yamaha", "Roland", "Canon", "Epson", "Audio-Technica", "Shure"][i % 10],
    condition: ["new", "like_new", "good"][i % 3],
  })),

  // --- JEUX VIDÉO & CONSOLES (jeux-video-consoles) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `game-${i + 1}`,
    title: [
      "PlayStation 5 Slim",
      "Xbox Series X",
      "Nintendo Switch OLED",
      "Manette DualSense Edge",
      "Jeu FC 24 PS5",
      "Spider-Man 2",
      "PC Gamer RTX 4080",
      "Casque VR Meta Quest 3",
      "Chaise Gaming Pro",
      "Abonnement PS Plus 12 mois"
    ][i % 10],
    price: 5000 + (i * 18000),
    location: ["Alger", "Oran", "Constantine", "Batna", "Tlemcen"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1486406146926-c627a92ad1ab?q=80&w=800"],
    date: new Date(Date.now() - (i + 280) * 3600000).toISOString(),
    category: "Jeux Vidéo & Consoles",
    categorySlug: "jeux-video-consoles",
    phoneNumber: "0773" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 4 === 0,
    description: "Le meilleur du gaming : consoles, jeux et accessoires au meilleur prix.",
    brand: ["Sony", "Microsoft", "Nintendo", "Sony", "EA Sports", "Insomniac", "Custom", "Meta", "Razer", "Sony"][i % 10],
    model: ["PS5 Slim", "Xbox Series X", "Switch OLED", "DualSense", "FC 24", "Spider-Man 2", "RTX 4080 Build", "Quest 3", "Iskur", "PS Plus"][i % 10],
    condition: ["new", "like_new", "good"][i % 3],
  })),

  // --- QUINCAILLERIE GÉNÉRALE (quincaillerie-generale) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `quin-${i + 1}`,
    title: [
      "Perceuse à percussion Bosch",
      "Coffret d'outils complet",
      "Meuleuse d'angle Makita",
      "Poste à souder Inverter",
      "Niveau laser 360°",
      "Échelle télescopique 5m",
      "Projecteur LED chantier",
      "Jeu de tournevis pro",
      "Compresseur d'air 50L",
      "Nettoyeur haute pression"
    ][i % 10],
    price: 3500 + (i * 6500),
    location: ["Alger", "Setif", "Oran", "Constantine", "Blida"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1581094288338-2314dddb7ecc?q=80&w=800"],
    date: new Date(Date.now() - (i + 300) * 3600000).toISOString(),
    category: "Quincaillerie Générale",
    categorySlug: "quincaillerie-generale",
    phoneNumber: "0554" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 5 === 0,
    description: "Matériel de quincaillerie et outillage professionnel de haute qualité."
  })),

  // --- AGRICULTURE & AGROALIMENTAIRE (agriculture-agroalimentaire) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `agri-${i + 1}`,
    title: [
      "Motoculteur 7CV Diesel",
      "Système irrigation goutte à goutte",
      "Serre agricole 400m2",
      "Tracteur Massey Ferguson",
      "Engrais NPK sac 50kg",
      "Semences de pomme de terre",
      "Ruche d'abeilles complète",
      "Pompe immergée solaire",
      "Cisaille de taille pro",
      "Broyeur de végétaux"
    ][i % 10],
    price: 1500 + (i * 25000),
    location: ["Medea", "Biskra", "Bouira", "Mostaganem", "Ain Defla"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1500382017468-9049fed747ef?q=80&w=800"],
    date: new Date(Date.now() - (i + 320) * 3600000).toISOString(),
    category: "Agriculture & Agroalimentaire",
    categorySlug: "agriculture-agroalimentaire",
    phoneNumber: "0666" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 6 === 0,
    description: "Solutions et matériels pour l'agriculture et l'industrie agroalimentaire."
  })),

  // --- PARAPHARMACIE & PRODUIT CHIMIQUE (parapharmacie-produit-chimique) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `para-${i + 1}`,
    title: [
      "Crème solaire SPF 50+",
      "Complément alimentaire Bio",
      "Tensiomètre électronique",
      "Gel hydroalcoolique 5L",
      "Masque FFP2 boîte de 50",
      "Shampoing traitant",
      "Savon naturel artisanal",
      "Huile essentielle Eucalyptus",
      "Thermomètre sans contact",
      "Trousse de secours complète"
    ][i % 10],
    price: 800 + (i * 1200),
    location: ["Alger", "Oran", "Constantine", "Annaba", "Batna"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1584308666744-24d5c474f2ae?q=80&w=800"],
    date: new Date(Date.now() - (i + 340) * 3600000).toISOString(),
    category: "Parapharmacie & Produit Chimique",
    categorySlug: "parapharmacie-produit-chimique",
    phoneNumber: "0774" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 7 === 0,
    description: "Produits de parapharmacie et bien-être sélectionnés pour votre santé."
  })),

  // --- SANTÉ & BEAUTÉ (sante-beaute) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `sante-${i + 1}`,
    title: [
      "Palette de maquillage pro",
      "Lisseur vapeur",
      "Parfum de luxe 100ml",
      "Sèche-cheveux ionique",
      "Kit de blanchiment dentaire",
      "Massage relaxant (Service)",
      "Brosse nettoyante visage",
      "Crème hydratante nuit",
      "Vernis à ongles set",
      "Tondeuse barbe pro"
    ][i % 10],
    price: 2500 + (i * 3500),
    location: ["Alger", "Oran", "Bejaia", "Tlemcen", "Setif"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1522335789203-aabd1fc54bc9?q=80&w=800"],
    date: new Date(Date.now() - (i + 360) * 3600000).toISOString(),
    category: "Santé & Beauté",
    categorySlug: "sante-beaute",
    phoneNumber: "0555" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 5 === 0,
    description: "Produits de beauté, soins du corps et services bien-être."
  })),

  // --- GASTRONOMIE & ALIMENTATION (gastronomie-alimentation) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `gastro-${i + 1}`,
    title: [
      "Coffret dattes Deglet Nour",
      "Huile d'olive extra vierge",
      "Miel pur de montagne",
      "Épices traditionnelles set",
      "Pâtisseries orientales",
      "Couscous artisanal",
      "Thé vert de qualité",
      "Café moulu premium",
      "Fromage de chèvre local",
      "Confiture artisanale"
    ][i % 10],
    price: 1200 + (i * 1800),
    location: ["Biskra", "Bouira", "Tizi Ouzou", "Alger", "Medea"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1504674900247-0877df9cc836?q=80&w=800"],
    date: new Date(Date.now() - (i + 380) * 3600000).toISOString(),
    category: "Gastronomie & Alimentation",
    categorySlug: "gastronomie-alimentation",
    phoneNumber: "0667" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 8 === 0,
    description: "Produits du terroir et spécialités gastronomiques algériennes."
  })),

  // --- ARTISANAT TRADITIONNEL ALGÉRIEN (artisanat-traditionnel-algerien) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `art-${i + 1}`,
    title: [
      "Tapis Ghardaïa authentique",
      "Poterie de Kabylie peinte",
      "Bijoux en argent Touareg",
      "Plat en cuivre martelé",
      "Burnous en laine marron",
      "Céramique de Biskra",
      "Sac en cuir traditionnel",
      "Objet en bois de thuya",
      "Gandoura Constantinoise",
      "Tableau peinture sable"
    ][i % 10],
    price: 4500 + (i * 12000),
    location: ["Ghardaia", "Tizi Ouzou", "Tamanrasset", "Constantine", "Alger"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1590736704728-f4730bb30770?q=80&w=800"],
    date: new Date(Date.now() - (i + 400) * 3600000).toISOString(),
    category: "Artisanat Traditionnel Algérien",
    categorySlug: "artisanat-traditionnel-algerien",
    phoneNumber: "0556" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 5 === 0,
    description: "Trésors de l'artisanat algérien, faits main par nos maîtres artisans."
  })),

  // --- VOYAGES & TOURISME (voyages-tourisme) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `voy-${i + 1}`,
    title: [
      "Séjour Djanet - 7 jours",
      "Week-end à Tipaza",
      "Circuit Sahara en 4x4",
      "Hôtel vue mer Oran",
      "Omra 2024 Pack Premium",
      "Randonnée Djurdjura",
      "Location villa vacances Bejaia",
      "Billet d'avion Alger-Paris",
      "Guide touristique certifié",
      "Pack découverte Constantine"
    ][i % 10],
    price: 15000 + (i * 35000),
    location: ["Djanet", "Tipaza", "Tamanrasset", "Oran", "Alger"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?q=80&w=800"],
    date: new Date(Date.now() - (i + 420) * 3600000).toISOString(),
    category: "Voyages & Tourisme",
    categorySlug: "voyages-tourisme",
    phoneNumber: "0668" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 6 === 0,
    description: "Offres de voyages, hébergements et activités touristiques à travers l'Algérie."
  })),

  // --- ÉVÉNEMENTS & BILLETTERIE (evenements-billetterie) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `event-${i + 1}`,
    title: [
      "Concert Musique Andalouse",
      "Ticket Match de Foot",
      "Pass Salon de l'Auto",
      "Entrée Parc d'attractions",
      "Conférence Tech 2024",
      "Exposition Peinture Moderne",
      "Spectacle pour enfants",
      "Atelier Cuisine Traditionnelle",
      "Séminaire Management",
      "Festival du Film Alger"
    ][i % 10],
    price: 500 + (i * 1500),
    location: ["Alger", "Oran", "Constantine", "Annaba", "Setif"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1492684223066-81342ee5ff30?q=80&w=800"],
    date: new Date(Date.now() - (i + 440) * 3600000).toISOString(),
    category: "Événements & Billetterie",
    categorySlug: "evenements-billetterie",
    phoneNumber: "0775" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 7 === 0,
    description: "Billets et accès pour tous vos événements culturels, sportifs et professionnels."
  })),

  // --- EMPLOI & CARRIÈRE (emploi-carriere) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `job-${i + 1}`,
    title: [
      "Développeur Fullstack Senior",
      "Comptable Agréé",
      "Commercial Terrain",
      "Infirmier(e) d'État",
      "Ingénieur Génie Civil",
      "Chauffeur Livreur",
      "Vendeur(se) en magasin",
      "Assistant(e) de Direction",
      "Technicien Maintenance",
      "Agent de Sécurité"
    ][i % 10],
    price: 45000 + (i * 15000), // Représente le salaire mensuel
    location: ["Alger", "Oran", "Hassi Messaoud", "Blida", "Setif"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1521791136364-798a7bc0d262?q=80&w=800"],
    date: new Date(Date.now() - (i + 460) * 3600000).toISOString(),
    category: "Emploi & Carrière",
    categorySlug: "emploi-carriere",
    phoneNumber: "0557" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 5 === 0,
    description: "Opportunités de carrière et offres d'emploi dans divers secteurs d'activité."
  })),

  // --- ÉDUCATION & LOISIRS (education-loisirs) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `edu-${i + 1}`,
    title: [
      "Cours de Soutien Mathématiques",
      "Formation Langue Anglaise",
      "Atelier Dessin & Peinture",
      "Cours de Piano à domicile",
      "Formation Marketing Digital",
      "Stage de Photographie",
      "Coaching Sportif Personnel",
      "Cours d'Arabe pour étrangers",
      "Formation Excel Avancé",
      "Atelier Robotique Enfant"
    ][i % 10],
    price: 1500 + (i * 3500),
    location: ["Alger", "Oran", "Constantine", "Batna", "Tlemcen"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1503676260728-1c00da094a0b?q=80&w=800"],
    date: new Date(Date.now() - (i + 480) * 3600000).toISOString(),
    category: "Éducation & Loisirs",
    categorySlug: "education-loisirs",
    phoneNumber: "0669" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 8 === 0,
    description: "Formations, cours particuliers et activités de loisirs pour tous les âges."
  })),

  // --- ANIMAUX & ACCESSOIRES (animaux-accessoires) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `anim-${i + 1}`,
    title: [
      "Chiot Berger Allemand",
      "Chaton Siamois",
      "Aquarium complet 100L",
      "Cage pour oiseaux",
      "Croquettes chien 15kg",
      "Arbre à chat design",
      "Perroquet Gris du Gabon",
      "Accessoires de toilettage",
      "Lapin nain",
      "Tortue de terre"
    ][i % 10],
    price: 2500 + (i * 5500),
    location: ["Alger", "Blida", "Boumerdes", "Tipaza", "Oran"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?q=80&w=800"],
    date: new Date(Date.now() - (i + 500) * 3600000).toISOString(),
    category: "Animaux & Accessoires",
    categorySlug: "animaux-accessoires",
    phoneNumber: "0776" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 5 === 0,
    description: "Animaux de compagnie et tout le nécessaire pour leur bien-être et leur confort."
  })),

  // --- FINANCE (finance) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `fin-${i + 1}`,
    title: [
      "Conseil en Investissement",
      "Expertise Comptable",
      "Assurance Automobile Pack",
      "Crédit Immobilier Conseil",
      "Gestion de Patrimoine",
      "Audit Financier",
      "Courtage en Assurance",
      "Planification Fiscale",
      "Analyse de Marché",
      "Formation Trading"
    ][i % 10],
    price: 5000 + (i * 15000),
    location: ["Alger", "Oran", "Constantine", "Annaba", "Setif"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1554224155-6726b3ff858f?q=80&w=800"],
    date: new Date(Date.now() - (i + 520) * 3600000).toISOString(),
    category: "Finance",
    categorySlug: "finance",
    phoneNumber: "0558" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 6 === 0,
    description: "Services financiers, conseils et solutions d'assurance pour particuliers et entreprises."
  })),

  // --- SERVICES & SUPPORT (services-support) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `serv-${i + 1}`,
    title: [
      "Réparation Électroménager",
      "Plomberie & Chauffage",
      "Électricité Générale",
      "Nettoyage de Bureau",
      "Déménagement National",
      "Peinture & Décoration",
      "Jardinage & Entretien",
      "Serrurerie Urgence 24h",
      "Installation Parabole",
      "Maintenance Informatique"
    ][i % 10],
    price: 1500 + (i * 2500),
    location: ["Alger", "Oran", "Blida", "Constantine", "Annaba"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1581578731548-c64695cc6958?q=80&w=800"],
    date: new Date(Date.now() - (i + 540) * 3600000).toISOString(),
    category: "Services & Support",
    categorySlug: "services-support",
    phoneNumber: "0661" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 7 === 0,
    description: "Large gamme de services professionnels pour répondre à tous vos besoins quotidiens."
  })),

  // --- ÉCHANGES & PARTAGE (echanges-partage) ---
  ...Array.from({ length: 20 }).map((_, i) => ({
    id: `troc-${i + 1}`,
    title: [
      "Échange iPhone contre Android",
      "Donne Livres Scolaires",
      "Troc Console de Jeux",
      "Échange de Services (Jardin)",
      "Partage de Bureau (Coworking)",
      "Don de Vêtements Bébé",
      "Troc Matériel de Sport",
      "Échange de Compétences Tech",
      "Don de Meubles",
      "Partage d'Outils de Jardin"
    ][i % 10],
    price: 0, // Souvent gratuit ou basé sur le troc
    location: ["Alger", "Oran", "Constantine", "Bejaia", "Tlemcen"][i % 5],
    imageUrls: ["https://images.unsplash.com/photo-1526628953301-3e589a6a8b74?q=80&w=800"],
    date: new Date(Date.now() - (i + 560) * 3600000).toISOString(),
    category: "Échanges & Partage",
    categorySlug: "echanges-partage",
    phoneNumber: "0777" + Math.floor(100000 + Math.random() * 900000),
    isFeatured: i % 5 === 0,
    description: "Espace dédié au troc, aux dons et au partage de ressources et de services."
  })),
];
