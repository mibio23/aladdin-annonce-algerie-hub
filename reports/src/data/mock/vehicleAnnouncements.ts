import type { Announcement } from "@/hooks/useAnnouncements";
import { vehicleDictionary } from "@/data/search/vehicleDictionary";

export interface VehicleAttribute {
  brand: string;
  model: string;
  year: number;
  fuel: string;
  transmission: string;
  mileage: number;
  color: string;
  paper: string;
  type: string;
  engine?: string;
  options?: string[];
}

// Extension of Announcement to include vehicle specific details for the mock
export interface MockVehicleAnnouncement extends Omit<Announcement, 'id'> {
  id: string;
  vehicleDetails: VehicleAttribute;
}

const baseMockVehicleAnnouncements: MockVehicleAnnouncement[] = [
  // --- CARS (12) ---
  {
    id: "v-001",
    title: "Renault Clio 5 RS Line 2023",
    description: "Vends Clio 5 RS Line toute neuve, 00 peinture. Toit ouvrant, Jantes alliage 17 pouces, Caméra 360.",
    price: 3850000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "new",
    images: ["https://images.unsplash.com/photo-1623869675785-65476a5915d3?auto=format&fit=crop&q=80&w=800"],
    location: "Hydra",
    wilaya: "16",
    created_at: new Date(Date.now() - 2 * 24 * 60 * 60 * 1000).toISOString(), // 2 days ago
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: true,
    is_urgent: false,
    views_count: 1250,
    expires_at: null,
    delivery_options: [],
    user_id: "u1",
    contact_phone: "0555123456",
    contact_email: "seller1@example.com",
    vehicleDetails: {
      brand: "Renault",
      model: "Clio",
      year: 2023,
      fuel: "Essence",
      transmission: "Automatique",
      mileage: 15000,
      color: "Bleu Iron",
      paper: "Carte Grise",
      type: "Voiture",
      engine: "1.3 TCe 130ch",
      options: ["Toit ouvrant", "Caméra 360", "Sièges chauffants"]
    }
  },
  {
    id: "v-002",
    title: "Volkswagen Golf 8 R-Line",
    description: "Golf 8 R-Line 2.0 TDI, très propre, entretien maison. Quelques égratignures pare-choc arrière.",
    price: 5200000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "good",
    images: ["https://images.unsplash.com/photo-1541899481282-d53bffe3c35d?auto=format&fit=crop&q=80&w=800"],
    location: "Oran Centre",
    wilaya: "31",
    created_at: new Date(Date.now() - 5 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: true,
    views_count: 3400,
    expires_at: null,
    delivery_options: [],
    user_id: "u2",
    contact_phone: "0770987654",
    contact_email: "seller2@example.com",
    vehicleDetails: {
      brand: "Volkswagen",
      model: "Golf",
      year: 2021,
      fuel: "Diesel",
      transmission: "Automatique",
      mileage: 45000,
      color: "Blanc Pur",
      paper: "Carte Grise",
      type: "Voiture",
      engine: "2.0 TDI 150ch"
    }
  },
  {
    id: "v-003",
    title: "Dacia Sandero Stepway 2022",
    description: "Sandero Stepway en excellent état, première main. Roule très bien.",
    price: 2600000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "good",
    images: ["https://images.unsplash.com/photo-1621896898492-421730e2f54d?auto=format&fit=crop&q=80&w=800"],
    location: "Setif",
    wilaya: "19",
    created_at: new Date(Date.now() - 10 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: false,
    views_count: 890,
    expires_at: null,
    delivery_options: [],
    user_id: "u3",
    contact_phone: "0661234567",
    contact_email: "seller3@example.com",
    vehicleDetails: {
      brand: "Dacia",
      model: "Sandero",
      year: 2022,
      fuel: "GPL",
      transmission: "Manuelle",
      mileage: 30000,
      color: "Gris Comète",
      paper: "Carte Grise",
      type: "Voiture",
      engine: "1.6 MPI"
    }
  },
  {
    id: "v-004",
    title: "Peugeot 208 Allure",
    description: "208 Allure Pack, faible kilométrage. Voiture de femme.",
    price: 3100000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "good",
    images: ["https://images.unsplash.com/photo-1542362567-b07e54358753?auto=format&fit=crop&q=80&w=800"],
    location: "Blida",
    wilaya: "09",
    created_at: new Date(Date.now() - 1 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: false,
    views_count: 560,
    expires_at: null,
    delivery_options: [],
    user_id: "u4",
    contact_phone: "0550112233",
    contact_email: "seller4@example.com",
    vehicleDetails: {
      brand: "Peugeot",
      model: "208",
      year: 2020,
      fuel: "Essence",
      transmission: "Manuelle",
      mileage: 25000,
      color: "Jaune Faro",
      paper: "Carte Grise",
      type: "Voiture",
      engine: "1.2 PureTech"
    }
  },
  {
    id: "v-005",
    title: "Toyota Hilux Double Cabine 4x4",
    description: "Hilux 4x4 robuste, idéal pour chantier ou sahara. Moteur impeccable.",
    price: 6500000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "used",
    images: ["https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?auto=format&fit=crop&q=80&w=800"],
    location: "Hassi Messaoud",
    wilaya: "30",
    created_at: new Date(Date.now() - 15 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: true,
    is_urgent: false,
    views_count: 4500,
    expires_at: null,
    delivery_options: [],
    user_id: "u5",
    contact_phone: "0666998877",
    contact_email: "seller5@example.com",
    vehicleDetails: {
      brand: "Toyota",
      model: "Hilux",
      year: 2019,
      fuel: "Diesel",
      transmission: "Manuelle",
      mileage: 120000,
      color: "Blanc",
      paper: "Carte Grise",
      type: "Voiture",
      engine: "2.8 D-4D"
    }
  },
  {
    id: "v-006",
    title: "Seat Ibiza FR",
    description: "Ibiza FR full option, toit panoramique, jantes 18.",
    price: 3400000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "good",
    images: ["https://images.unsplash.com/photo-1503376763036-066120622c74?auto=format&fit=crop&q=80&w=800"],
    location: "Annaba",
    wilaya: "23",
    created_at: new Date(Date.now() - 3 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: false,
    views_count: 2100,
    expires_at: null,
    delivery_options: [],
    user_id: "u6",
    contact_phone: "0771223344",
    contact_email: "seller6@example.com",
    vehicleDetails: {
      brand: "Seat",
      model: "Ibiza",
      year: 2018,
      fuel: "Essence",
      transmission: "Manuelle",
      mileage: 60000,
      color: "Rouge Désir",
      paper: "Carte Grise",
      type: "Voiture",
      engine: "1.6 MPI"
    }
  },
  {
    id: "v-007",
    title: "Range Rover Evoque",
    description: "Evoque R-Dynamic, importée neuve. État showroom.",
    price: 9500000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "new",
    images: ["https://images.unsplash.com/photo-1609521263047-f8f205293f24?auto=format&fit=crop&q=80&w=800"],
    location: "Cheraga",
    wilaya: "16",
    created_at: new Date(Date.now() - 7 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: true,
    is_urgent: false,
    views_count: 5600,
    expires_at: null,
    delivery_options: [],
    user_id: "u7",
    contact_phone: "0555998877",
    contact_email: "seller7@example.com",
    vehicleDetails: {
      brand: "Land Rover",
      model: "Range Rover Evoque",
      year: 2022,
      fuel: "Hybride",
      transmission: "Automatique",
      mileage: 12000,
      color: "Gris",
      paper: "Licence Moudjahid",
      type: "Voiture",
      engine: "P300e"
    }
  },
  {
    id: "v-008",
    title: "Kia Picanto GT Line",
    description: "Picanto GT Line, petite citadine nerveuse et économique.",
    price: 2450000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "good",
    images: ["https://images.unsplash.com/photo-1590362891991-f776e747a588?auto=format&fit=crop&q=80&w=800"],
    location: "Constantine",
    wilaya: "25",
    created_at: new Date(Date.now() - 4 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: false,
    views_count: 1800,
    expires_at: null,
    delivery_options: [],
    user_id: "u8",
    contact_phone: "0662334455",
    contact_email: "seller8@example.com",
    vehicleDetails: {
      brand: "Kia",
      model: "Picanto",
      year: 2021,
      fuel: "Essence",
      transmission: "Automatique",
      mileage: 28000,
      color: "Noir",
      paper: "Carte Grise",
      type: "Voiture",
      engine: "1.2 84ch"
    }
  },
  {
    id: "v-009",
    title: "Hyundai Tucson",
    description: "Tucson GL, salon cuir, écran tactile. Quelques retouches à froid.",
    price: 4800000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "used",
    images: ["https://images.unsplash.com/photo-1629897184620-83321528628b?auto=format&fit=crop&q=80&w=800"],
    location: "Tlemcen",
    wilaya: "13",
    created_at: new Date(Date.now() - 12 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: false,
    views_count: 2200,
    expires_at: null,
    delivery_options: [],
    user_id: "u9",
    contact_phone: "0773445566",
    contact_email: "seller9@example.com",
    vehicleDetails: {
      brand: "Hyundai",
      model: "Tucson",
      year: 2018,
      fuel: "Diesel",
      transmission: "Automatique",
      mileage: 95000,
      color: "Gris",
      paper: "Carte Grise",
      type: "Voiture",
      engine: "2.0 CRDi"
    }
  },
  {
    id: "v-010",
    title: "Skoda Octavia",
    description: "Octavia Laurin & Klement, toute option. Véhicule de direction.",
    price: 5500000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "good",
    images: ["https://images.unsplash.com/photo-1549399542-7e3f8b79c341?auto=format&fit=crop&q=80&w=800"],
    location: "Bejaia",
    wilaya: "06",
    created_at: new Date(Date.now() - 6 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: true,
    views_count: 3100,
    expires_at: null,
    delivery_options: [],
    user_id: "u10",
    contact_phone: "0556778899",
    contact_email: "seller10@example.com",
    vehicleDetails: {
      brand: "Skoda",
      model: "Octavia",
      year: 2020,
      fuel: "Diesel",
      transmission: "Automatique",
      mileage: 55000,
      color: "Marron",
      paper: "Carte Grise",
      type: "Voiture",
      engine: "2.0 TDI"
    }
  },

  // --- TRUCKS (6) ---
  {
    id: "t-001",
    title: "Renault Trucks C 440",
    description: "Camion benne Renault C 440 6x4, idéal carrières. Année 2021.",
    price: 18500000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "used",
    images: ["https://images.unsplash.com/photo-1601584115197-04ecc0da31d7?auto=format&fit=crop&q=80&w=800"],
    location: "Rouiba",
    wilaya: "16",
    created_at: new Date(Date.now() - 20 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: false,
    views_count: 800,
    expires_at: null,
    delivery_options: [],
    user_id: "u11",
    contact_phone: "0661112233",
    contact_email: "trucks1@example.com",
    vehicleDetails: {
      brand: "Renault Trucks",
      model: "C",
      year: 2021,
      fuel: "Diesel",
      transmission: "Manuelle",
      mileage: 80000,
      color: "Blanc",
      paper: "Carte Grise",
      type: "Camion",
      options: ["Benne", "6x4"]
    }
  },
  {
    id: "t-002",
    title: "Volvo FH 500 Tracteur",
    description: "Tracteur routier Volvo FH 500 Globetrotter. Entretien Volvo.",
    price: 21000000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "good",
    images: ["https://images.unsplash.com/photo-1590502160462-237190117094?auto=format&fit=crop&q=80&w=800"],
    location: "Bordj Bou Arreridj",
    wilaya: "34",
    created_at: new Date(Date.now() - 8 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: true,
    is_urgent: false,
    views_count: 1500,
    expires_at: null,
    delivery_options: [],
    user_id: "u12",
    contact_phone: "0772223344",
    contact_email: "trucks2@example.com",
    vehicleDetails: {
      brand: "Volvo Trucks",
      model: "FH",
      year: 2022,
      fuel: "Diesel",
      transmission: "Automatique",
      mileage: 120000,
      color: "Bleu",
      paper: "Carte Grise",
      type: "Camion",
      options: ["Tracteur", "Globetrotter"]
    }
  },
  {
    id: "t-003",
    title: "Semi-remorque Frigo Lamberet",
    description: "Remorque frigorifique Lamberet, groupe Carrier Vector 1550. ATP valide.",
    price: 8500000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "used",
    images: ["https://images.unsplash.com/photo-1586797960063-47006834df6b?auto=format&fit=crop&q=80&w=800"],
    location: "El Eulma",
    wilaya: "19",
    created_at: new Date(Date.now() - 25 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: false,
    views_count: 600,
    expires_at: null,
    delivery_options: [],
    user_id: "u13",
    contact_phone: "0553334455",
    contact_email: "trucks3@example.com",
    vehicleDetails: {
      brand: "Lamberet",
      model: "Frigo",
      year: 2018,
      fuel: "Autre",
      transmission: "Autre",
      mileage: 0,
      color: "Blanc",
      paper: "Carte Grise",
      type: "Remorque",
      options: ["Frigo", "Carrier"]
    }
  },
  {
    id: "t-004",
    title: "Isuzu NPR 71",
    description: "Camion Isuzu NPR 71 Plateau ridelles. Bon état général.",
    price: 4500000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "used",
    images: ["https://images.unsplash.com/photo-1628885634047-9759e66b3c66?auto=format&fit=crop&q=80&w=800"],
    location: "Batna",
    wilaya: "05",
    created_at: new Date(Date.now() - 18 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: false,
    views_count: 900,
    expires_at: null,
    delivery_options: [],
    user_id: "u14",
    contact_phone: "0664445566",
    contact_email: "trucks4@example.com",
    vehicleDetails: {
      brand: "Isuzu",
      model: "NPR",
      year: 2015,
      fuel: "Diesel",
      transmission: "Manuelle",
      mileage: 250000,
      color: "Blanc",
      paper: "Carte Grise",
      type: "Camion",
      options: ["Plateau"]
    }
  },
  {
    id: "t-005",
    title: "MAN TGX 480",
    description: "Tracteur MAN TGX 480, importé. Retarder, clim stationnaire.",
    price: 16000000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "good",
    images: ["https://images.unsplash.com/photo-1598555986518-971c0c6c8c49?auto=format&fit=crop&q=80&w=800"],
    location: "Djelfa",
    wilaya: "17",
    created_at: new Date(Date.now() - 14 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: false,
    views_count: 1100,
    expires_at: null,
    delivery_options: [],
    user_id: "u15",
    contact_phone: "0775556677",
    contact_email: "trucks5@example.com",
    vehicleDetails: {
      brand: "MAN",
      model: "TGX",
      year: 2019,
      fuel: "Diesel",
      transmission: "Automatique",
      mileage: 300000,
      color: "Blanc",
      paper: "Carte Grise",
      type: "Camion",
      options: ["Tracteur"]
    }
  },
  {
    id: "t-006",
    title: "DAF XF 460",
    description: "Camion DAF XF 460 Space Cab. Pneus neufs.",
    price: 15500000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "used",
    images: ["https://images.unsplash.com/photo-1588622838332-95f24e930950?auto=format&fit=crop&q=80&w=800"],
    location: "Chlef",
    wilaya: "02",
    created_at: new Date(Date.now() - 22 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: false,
    views_count: 750,
    expires_at: null,
    delivery_options: [],
    user_id: "u16",
    contact_phone: "0556667788",
    contact_email: "trucks6@example.com",
    vehicleDetails: {
      brand: "DAF",
      model: "XF",
      year: 2017,
      fuel: "Diesel",
      transmission: "Automatique",
      mileage: 450000,
      color: "Orange",
      paper: "Carte Grise",
      type: "Camion"
    }
  },

  // --- MOTOS (5) ---
  {
    id: "m-001",
    title: "Yamaha TMAX 560 Tech Max",
    description: "TMAX 560 Tech Max, ligne Akrapovic, dosseret, support plaque.",
    price: 3200000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "good",
    images: ["https://images.unsplash.com/photo-1609630875171-b1321377ee65?auto=format&fit=crop&q=80&w=800"],
    location: "Kouba",
    wilaya: "16",
    created_at: new Date(Date.now() - 1 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: true,
    is_urgent: false,
    views_count: 5000,
    expires_at: null,
    delivery_options: [],
    user_id: "u17",
    contact_phone: "0667778899",
    contact_email: "moto1@example.com",
    vehicleDetails: {
      brand: "Yamaha",
      model: "TMAX",
      year: 2022,
      fuel: "Essence",
      transmission: "Automatique",
      mileage: 5000,
      color: "Kaki",
      paper: "Carte Grise",
      type: "Moto",
      engine: "560cc"
    }
  },
  {
    id: "m-002",
    title: "VMS Driver 150",
    description: "VMS Driver 150cc, état neuf. Casque offert.",
    price: 280000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "new",
    images: ["https://images.unsplash.com/photo-1558981403-c5f9899a28bc?auto=format&fit=crop&q=80&w=800"],
    location: "Bejaia",
    wilaya: "06",
    created_at: new Date(Date.now() - 5 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: true,
    views_count: 1200,
    expires_at: null,
    delivery_options: [],
    user_id: "u18",
    contact_phone: "0778889900",
    contact_email: "moto2@example.com",
    vehicleDetails: {
      brand: "VMS",
      model: "Driver",
      year: 2023,
      fuel: "Essence",
      transmission: "Automatique",
      mileage: 0,
      color: "Noir Mat",
      paper: "Carte Jaune",
      type: "Moto",
      engine: "150cc"
    }
  },
  {
    id: "m-003",
    title: "Sym Joymax Z+ 300",
    description: "Joymax 300, très confortable pour la ville et autoroute.",
    price: 850000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "good",
    images: ["https://images.unsplash.com/photo-1623079400394-f0795cd4e445?auto=format&fit=crop&q=80&w=800"],
    location: "Setif",
    wilaya: "19",
    created_at: new Date(Date.now() - 9 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: false,
    views_count: 800,
    expires_at: null,
    delivery_options: [],
    user_id: "u19",
    contact_phone: "0559990011",
    contact_email: "moto3@example.com",
    vehicleDetails: {
      brand: "SYM",
      model: "Joymax",
      year: 2021,
      fuel: "Essence",
      transmission: "Automatique",
      mileage: 15000,
      color: "Gris",
      paper: "Carte Grise",
      type: "Moto",
      engine: "300cc"
    }
  },
  {
    id: "m-004",
    title: "BMW R 1250 GS Adventure",
    description: "La reine du désert. GS Adventure full pack (Comfort, Touring, Dynamic).",
    price: 4500000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "good",
    images: ["https://images.unsplash.com/photo-1625043484555-705ee5420171?auto=format&fit=crop&q=80&w=800"],
    location: "Alger",
    wilaya: "16",
    created_at: new Date(Date.now() - 30 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: true,
    is_urgent: false,
    views_count: 6000,
    expires_at: null,
    delivery_options: [],
    user_id: "u20",
    contact_phone: "0660001122",
    contact_email: "moto4@example.com",
    vehicleDetails: {
      brand: "BMW",
      model: "R 1250 GS",
      year: 2020,
      fuel: "Essence",
      transmission: "Manuelle",
      mileage: 20000,
      color: "Triple Black",
      paper: "Carte Grise",
      type: "Moto",
      engine: "1250cc"
    }
  },
  {
    id: "m-005",
    title: "Kawasaki Z900",
    description: "Z900 A2 bridable. Ligne complète SC Project. Jamais chutée.",
    price: 1950000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "used",
    images: ["https://images.unsplash.com/photo-1568772585407-9361f9bf3a87?auto=format&fit=crop&q=80&w=800"],
    location: "Blida",
    wilaya: "09",
    created_at: new Date(Date.now() - 11 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: false,
    views_count: 1400,
    expires_at: null,
    delivery_options: [],
    user_id: "u21",
    contact_phone: "0771112233",
    contact_email: "moto5@example.com",
    vehicleDetails: {
      brand: "Kawasaki",
      model: "Z900",
      year: 2021,
      fuel: "Essence",
      transmission: "Manuelle",
      mileage: 8000,
      color: "Vert",
      paper: "Carte Grise",
      type: "Moto",
      engine: "948cc"
    }
  },

  // --- EQUIPMENT (4) ---
  {
    id: "e-001",
    title: "Caterpillar 428F2",
    description: "Rétrochargeuse Caterpillar 428F2. Très bon état de marche.",
    price: 12500000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "used",
    images: ["https://images.unsplash.com/photo-1519003300449-424ad9e12435?auto=format&fit=crop&q=80&w=800"],
    location: "Mila",
    wilaya: "43",
    created_at: new Date(Date.now() - 16 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: false,
    views_count: 2000,
    expires_at: null,
    delivery_options: [],
    user_id: "u22",
    contact_phone: "0552223344",
    contact_email: "equip1@example.com",
    vehicleDetails: {
      brand: "Caterpillar",
      model: "428",
      year: 2017,
      fuel: "Diesel",
      transmission: "Automatique",
      mileage: 6000, // Hours actually
      color: "Jaune",
      paper: "Facture",
      type: "Engin",
      options: ["Rétrochargeuse"]
    }
  },
  {
    id: "e-002",
    title: "JCB 3CX Eco",
    description: "JCB 3CX, moteur Dieselmax. Prête à travailler.",
    price: 11000000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "used",
    images: ["https://images.unsplash.com/photo-1579624237590-0b6b668d249d?auto=format&fit=crop&q=80&w=800"],
    location: "Constantine",
    wilaya: "25",
    created_at: new Date(Date.now() - 21 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: false,
    views_count: 1300,
    expires_at: null,
    delivery_options: [],
    user_id: "u23",
    contact_phone: "0663334455",
    contact_email: "equip2@example.com",
    vehicleDetails: {
      brand: "JCB",
      model: "3CX",
      year: 2016,
      fuel: "Diesel",
      transmission: "Manuelle",
      mileage: 7500,
      color: "Jaune",
      paper: "Facture",
      type: "Engin"
    }
  },
  {
    id: "e-003",
    title: "Clark Hyundai 3T",
    description: "Chariot élévateur Hyundai 3 tonnes. Moteur diesel.",
    price: 2800000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "good",
    images: ["https://images.unsplash.com/photo-1587582423116-ec07293f0395?auto=format&fit=crop&q=80&w=800"],
    location: "Oran",
    wilaya: "31",
    created_at: new Date(Date.now() - 13 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: false,
    is_urgent: false,
    views_count: 500,
    expires_at: null,
    delivery_options: [],
    user_id: "u24",
    contact_phone: "0774445566",
    contact_email: "equip3@example.com",
    vehicleDetails: {
      brand: "Hyundai",
      model: "Forklift",
      year: 2019,
      fuel: "Diesel",
      transmission: "Automatique",
      mileage: 2000,
      color: "Jaune",
      paper: "Facture",
      type: "Engin",
      options: ["Chariot élévateur"]
    }
  },
  {
    id: "e-004",
    title: "Grue Liebherr LTM 1050",
    description: "Grue mobile Liebherr 50 tonnes. Location ou vente.",
    price: 45000000,
    currency: "DZD",
    category_id: "vehicules",
    condition: "used",
    images: ["https://images.unsplash.com/photo-1581092335397-9583eb92d232?auto=format&fit=crop&q=80&w=800"],
    location: "Hassi Messaoud",
    wilaya: "30",
    created_at: new Date(Date.now() - 28 * 24 * 60 * 60 * 1000).toISOString(),
    updated_at: new Date().toISOString(),
    is_active: true,
    is_featured: true,
    is_urgent: false,
    views_count: 2200,
    expires_at: null,
    delivery_options: [],
    user_id: "u25",
    contact_phone: "0557778899",
    contact_email: "equip4@example.com",
    vehicleDetails: {
      brand: "Liebherr",
      model: "LTM",
      year: 2010,
      fuel: "Diesel",
      transmission: "Automatique",
      mileage: 15000,
      color: "Jaune",
      paper: "Facture",
      type: "Engin",
      options: ["Grue"]
    }
  }
];

const PLACEHOLDER_VEHICLE_IMAGE =
  "https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?auto=format&fit=crop&q=80&w=1200";

const makeRng = (seed: number) => {
  let state = seed;
  return () => {
    state = (state * 9301 + 49297) % 233280;
    return state / 233280;
  };
};

const pick = <T,>(rng: () => number, items: T[]): T => {
  return items[Math.floor(rng() * items.length)];
};

const pickSome = <T,>(rng: () => number, items: T[], maxCount: number): T[] => {
  const count = Math.max(0, Math.min(maxCount, Math.floor(rng() * (maxCount + 1))));
  if (count === 0) return [];
  const selected: T[] = [];
  const used = new Set<number>();
  while (selected.length < count && used.size < items.length) {
    const idx = Math.floor(rng() * items.length);
    if (used.has(idx)) continue;
    used.add(idx);
    selected.push(items[idx]);
  }
  return selected;
};

const normalizeSpaces = (value: string) => value.replace(/\s+/g, " ").trim();

const buildGeneratedVehicleAnnouncements = (count: number): MockVehicleAnnouncement[] => {
  const brands = vehicleDictionary
    .filter(i => i.type === "brand")
    .map(i => ({ id: i.id, name: i.values.fr[0] }));

  const models = vehicleDictionary
    .filter(i => i.type === "model")
    .map(i => ({ name: i.values.fr[0], brandId: i.metadata?.brandId }));

  const modelsByBrandId = new Map<string, string[]>();
  models.forEach(m => {
    if (!m.brandId) return;
    const current = modelsByBrandId.get(m.brandId) || [];
    if (!current.includes(m.name)) current.push(m.name);
    modelsByBrandId.set(m.brandId, current);
  });

  const typeValues = vehicleDictionary.filter(i => i.type === "type").map(i => i.values.fr[0]);
  const fuelValues = vehicleDictionary.filter(i => i.type === "fuel").map(i => i.values.fr[0]);
  const transmissionValues = vehicleDictionary
    .filter(i => i.type === "transmission")
    .map(i => i.values.fr[0]);
  const paperValues = vehicleDictionary.filter(i => i.type === "paper").map(i => i.values.fr[0]);

  const conditions: Array<Announcement["condition"]> = ["new", "like_new", "good", "fair", "poor"];

  const carTypes = new Set([
    "Voiture",
    "Auto",
    "Automobile",
    "Véhicule",
    "Tourisme",
    "Pick-up",
    "Pickup",
    "Fourgon",
    "Fourgonnette",
    "Utilitaire",
    "VUL",
  ]);
  const truckTypes = new Set([
    "Camion",
    "Poids lourd",
    "Semi-remorque",
    "Tracteur routier",
    "Benne",
    "Remorque",
    "Remorque Plateau",
    "Remorque Frigo",
    "Remorque Citerne",
    "Remorque Benne",
    "Porte-Engin",
    "Porte-Voitures",
    "Porte-Conteneur",
    "Bétaillère",
    "Citerne",
    "Bus",
    "Autobus",
    "Minibus",
    "Autocar",
    "Engin",
    "Travaux publics",
  ]);
  const motoTypes = new Set([
    "Moto",
    "Motocyclette",
    "Scooter",
    "Maxi-Scooter",
    "Quad",
    "Roadster",
    "Sportive",
    "Cross",
    "Enduro",
    "Trail",
    "Custom",
  ]);

  const motoBrands = brands.filter(b =>
    /yamaha|honda_moto|kawasaki|suzuki_moto|bmw_motorrad|ktm|ducati|triumph|harley|vms|sym|piaggio|cfmoto|benelli|zontes|voge|keeway|loncin|lifan|bajaj|tvs|royal_enfield/i.test(
      b.id,
    ),
  );
  const truckBrands = brands.filter(b =>
    /trucks|man|scania|daf|iveco|sinotruk|shacman|daewoo_trucks|foton|gmc/i.test(b.id),
  );
  const carBrands = brands.filter(b => !motoBrands.includes(b) && !truckBrands.includes(b));

  const locationPool: Array<{ location: string; wilaya: string }> = [
    { location: "Hydra", wilaya: "16" },
    { location: "Bab Ezzouar", wilaya: "16" },
    { location: "Oran", wilaya: "31" },
    { location: "Annaba", wilaya: "23" },
    { location: "Constantine", wilaya: "25" },
    { location: "Sétif", wilaya: "19" },
    { location: "Blida", wilaya: "09" },
    { location: "Tlemcen", wilaya: "13" },
    { location: "Bejaia", wilaya: "06" },
    { location: "Batna", wilaya: "05" },
    { location: "Ouargla", wilaya: "30" },
    { location: "Tizi Ouzou", wilaya: "15" },
    { location: "Mostaganem", wilaya: "27" },
    { location: "Chlef", wilaya: "02" },
    { location: "Biskra", wilaya: "07" },
  ];

  const colorPool = [
    "Blanc",
    "Noir",
    "Gris",
    "Argent",
    "Bleu",
    "Rouge",
    "Vert",
    "Jaune",
    "Marron",
    "Beige",
  ];

  const optionPool = [
    "Toit panoramique",
    "Caméra de recul",
    "Radar de recul",
    "Écran tactile",
    "GPS",
    "Bluetooth",
    "Régulateur de vitesse",
    "Climatisation",
    "Jantes alliage",
    "Start & Stop",
    "Feux LED",
    "Sièges chauffants",
    "Volant multifonction",
    "ESP",
    "ABS",
  ];

  const imagePool = [
    "https://images.unsplash.com/photo-1503376780353-7e6692767b70?auto=format&fit=crop&q=80&w=1200",
    "https://images.unsplash.com/photo-1519641471654-76ce0107ad1b?auto=format&fit=crop&q=80&w=1200",
    "https://images.unsplash.com/photo-1503736334956-4c8f8e92946d?auto=format&fit=crop&q=80&w=1200",
    "https://images.unsplash.com/photo-1542362567-b07e54358753?auto=format&fit=crop&q=80&w=1200",
    "https://images.unsplash.com/photo-1541899481282-d53bffe3c35d?auto=format&fit=crop&q=80&w=1200",
    "https://images.unsplash.com/photo-1617814076412-6826f4c1f3b2?auto=format&fit=crop&q=80&w=1200",
    "https://images.unsplash.com/photo-1489824904134-891ab64532f1?auto=format&fit=crop&q=80&w=1200",
    "https://images.unsplash.com/photo-1592194996308-7b43878e84a6?auto=format&fit=crop&q=80&w=1200",
  ];

  const motoModelPool = ["TMAX", "MT-07", "CBR 600", "Z900", "GS 1200", "Duke 390", "Vespa", "PCX"];
  const truckModelPool = ["Actros", "FH", "TGX", "R 450", "XF 480", "Daily", "Howo", "Shacman X3000"];

  const generated: MockVehicleAnnouncement[] = [];
  const now = Date.now();

  for (let i = 0; i < count; i += 1) {
    const rng = makeRng(20260130 + i * 17);
    const vehicleType = pick(rng, typeValues);

    const isMoto = motoTypes.has(vehicleType);
    const isTruck = truckTypes.has(vehicleType) && !isMoto;
    const brandPool = isMoto ? motoBrands : isTruck ? truckBrands : carBrands;
    const brand = pick(rng, brandPool.length ? brandPool : brands);

    const brandModels = modelsByBrandId.get(brand.id) || [];
    const model =
      brandModels.length > 0
        ? pick(rng, brandModels)
        : isMoto
          ? pick(rng, motoModelPool)
          : isTruck
            ? pick(rng, truckModelPool)
            : pick(rng, models.map(m => m.name));

    const year = 2004 + Math.floor(rng() * 22);
    const mileageBase = isMoto ? 80000 : isTruck ? 600000 : 300000;
    const mileage =
      year >= 2024
        ? Math.floor(rng() * 25000)
        : Math.floor(rng() * mileageBase);

    const fuel = pick(rng, fuelValues);
    const transmission = pick(rng, transmissionValues);
    const paper = pick(rng, paperValues);
    const color = pick(rng, colorPool);
    const condition = pick(rng, conditions);

    const loc = pick(rng, locationPool);

    const isUrgent = rng() < 0.18;
    const isFeatured = rng() < 0.12;

    const hasRealPhotos = rng() < 0.82;
    const images = hasRealPhotos ? pickSome(rng, imagePool, 3) : [PLACEHOLDER_VEHICLE_IMAGE];
    if (images.length === 0) images.push(PLACEHOLDER_VEHICLE_IMAGE);

    const createdAt = new Date(now - i * 3 * 60 * 60 * 1000).toISOString();

    const titleParts = [
      brand.name,
      model,
      year.toString(),
      isMoto ? vehicleType : carTypes.has(vehicleType) ? "" : vehicleType,
    ].filter(Boolean);
    const title = normalizeSpaces(titleParts.join(" "));

    const description = normalizeSpaces(
      [
        `${vehicleType} ${brand.name} ${model}.`,
        `Année ${year}, ${mileage.toLocaleString("fr-FR")} km.`,
        `Énergie: ${fuel}. Boîte: ${transmission}.`,
        `Couleur: ${color}. Papiers: ${paper}.`,
        isUrgent ? "Urgent, prix légèrement négociable." : "Prix négociable raisonnablement.",
      ].join(" "),
    );

    generated.push({
      id: `mv-${String(i + 1).padStart(3, "0")}`,
      title,
      description,
      price: Math.floor((rng() * 9_000_000 + 250_000) / 1000) * 1000,
      currency: "DZD",
      category_id: "vehicules",
      condition,
      images,
      location: loc.location,
      wilaya: loc.wilaya,
      created_at: createdAt,
      updated_at: new Date().toISOString(),
      is_active: true,
      is_featured: isFeatured,
      is_urgent: isUrgent,
      views_count: Math.floor(rng() * 12000),
      expires_at: null,
      delivery_options: [],
      user_id: `mock_u_${(i % 25) + 1}`,
      contact_phone: `0${5 + Math.floor(rng() * 3)}${Math.floor(rng() * 90000000 + 10000000)}`,
      contact_email: `mock_vehicle_${(i % 25) + 1}@example.com`,
      vehicleDetails: {
        brand: brand.name,
        model,
        year,
        fuel,
        transmission,
        mileage,
        color,
        paper,
        type: vehicleType,
        engine: isMoto ? undefined : isTruck ? "Diesel" : "1.6",
        options: pickSome(rng, optionPool, 6),
      },
    });
  }

  return generated;
};

export const mockVehicleAnnouncements: MockVehicleAnnouncement[] = [
  ...buildGeneratedVehicleAnnouncements(120),
  ...baseMockVehicleAnnouncements,
];
