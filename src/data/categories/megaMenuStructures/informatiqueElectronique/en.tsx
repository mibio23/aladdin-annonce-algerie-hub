import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Laptop } from "lucide-react";

export const informatiqueElectroniqueEn: MenuCategory = {
  id: "informatique-electronique",
  name: "Computers & Electronics",
  slug: "informatique-electronique",
  icon: <Laptop className="w-4 h-4" />,
  subcategories: [
    {
      id: "ordinateurs-pc",
      name: "Computers & PCs",
      slug: "ordinateurs-pc",
      subcategories: [
        { id: "pc-de-bureau", name: "Desktop PCs", slug: "pc-de-bureau" },
        { id: "pc-gaming", name: "Gaming PCs", slug: "pc-gaming" },
        { id: "pc-professionnels", name: "Professional PCs", slug: "pc-professionnels" },
        { id: "mini-pc", name: "Mini PCs", slug: "mini-pc" },
        { id: "pc-tout-en-un", name: "All-in-One PCs", slug: "pc-tout-en-un" },
        { id: "ordinateurs-portables", name: "Laptops", slug: "ordinateurs-portables" },
        { id: "ultrabooks", name: "Ultrabooks", slug: "ultrabooks" },
        { id: "laptops-professionnels", name: "Professional Laptops", slug: "laptops-professionnels" },
        { id: "laptops-gaming", name: "Gaming Laptops", slug: "laptops-gaming" },
        { id: "laptops-etudiants", name: "Student Laptops", slug: "laptops-etudiants" },
        { id: "macbook", name: "MacBook", slug: "macbook" },
        { id: "chromebook", name: "Chromebook", slug: "chromebook" },
        { id: "stations-travail-portables", name: "Portable Workstations", slug: "stations-travail-portables" },
        { id: "pc-reconditionnes", name: "Refurbished PCs", slug: "pc-reconditionnes" }
      ]
    },
    {
      id: "smartphones",
      name: "Smartphones",
      slug: "smartphones",
      subcategories: [
        { id: "smartphones-android", name: "Android Smartphones", slug: "smartphones-android" },
        { id: "iphone", name: "iPhone", slug: "iphone" },
        { id: "smartphones-5g", name: "5G Smartphones", slug: "smartphones-5g" },
        { id: "smartphones-gaming", name: "Gaming Smartphones", slug: "smartphones-gaming" },
        { id: "smartphones-pliables", name: "Foldable Smartphones", slug: "smartphones-pliables" },
        { id: "smartphones-entree-de-gamme", name: "Entry-level Smartphones", slug: "smartphones-entree-de-gamme" },
        { id: "smartphones-milieu-de-gamme", name: "Mid-range Smartphones", slug: "smartphones-milieu-de-gamme" },
        { id: "smartphones-haut-de-gamme", name: "High-end Smartphones", slug: "smartphones-haut-de-gamme" },
        { id: "smartphones-reconditionnes", name: "Refurbished Smartphones", slug: "smartphones-reconditionnes" },
        { id: "telephones-robustes-rugged", name: "Rugged Phones", slug: "telephones-robustes-rugged" },
        { id: "mini-smartphones", name: "Mini Smartphones", slug: "mini-smartphones" },
        { id: "smartphones-professionnels", name: "Professional Smartphones", slug: "smartphones-professionnels" }
      ]
    },
    {
      id: "telephones-classiques-fixes",
      name: "Classic & Landline Phones",
      slug: "telephones-classiques-fixes",
      subcategories: [
        { id: "telephones-portables-classiques", name: "Classic Mobile Phones", slug: "telephones-portables-classiques" },
        { id: "telephones-a-clapet", name: "Flip Phones", slug: "telephones-a-clapet" },
        { id: "telephones-seniors", name: "Senior Phones", slug: "telephones-seniors" },
        { id: "telephones-fixes-filaires", name: "Wired Landline Phones", slug: "telephones-fixes-filaires" },
        { id: "telephones-fixes-sans-fil", name: "Cordless Landline Phones", slug: "telephones-fixes-sans-fil" },
        { id: "combines-dect", name: "DECT Handsets", slug: "combines-dect" },
        { id: "telephones-voip", name: "VoIP Phones", slug: "telephones-voip" }
      ]
    },
    {
      id: "tablettes-appareils-mobiles",
      name: "Tablets & Mobile Devices",
      slug: "tablettes-appareils-mobiles",
      subcategories: [
        { id: "tablettes-android", name: "Android Tablets", slug: "tablettes-android" },
        { id: "ipad", name: "iPad", slug: "ipad" },
        { id: "tablettes-graphiques", name: "Graphics Tablets", slug: "tablettes-graphiques" },
        { id: "tablettes-enfants", name: "Kids Tablets", slug: "tablettes-enfants" },
        { id: "liseuses-electroniques", name: "E-readers", slug: "liseuses-electroniques" },
        { id: "phablettes", name: "Phablets", slug: "phablettes" },
        { id: "mini-tablettes", name: "Mini Tablets", slug: "mini-tablettes" },
        { id: "tablettes-professionnelles", name: "Professional Tablets", slug: "tablettes-professionnelles" }
      ]
    },
    {
      id: "accessoires-telephones",
      name: "Phone Accessories",
      slug: "accessoires-telephones",
      subcategories: [
        { id: "coques-protection", name: "Protective Cases", slug: "coques-protection" },
        { id: "housses", name: "Sleeves", slug: "housses" },
        { id: "etuis", name: "Pouches", slug: "etuis" },
        { id: "bumpers", name: "Bumpers", slug: "bumpers" },
        { id: "vitres-protections-ecran", name: "Screen Protectors", slug: "vitres-protections-ecran" },
        { id: "supports-telephones", name: "Phone Stands", slug: "supports-telephones" },
        { id: "supports-voiture", name: "Car Mounts", slug: "supports-voiture" },
        { id: "stylos-tactiles", name: "Stylus Pens", slug: "stylos-tactiles" },
        { id: "anneaux-grips", name: "Rings & Grips", slug: "anneaux-grips" },
        { id: "pochettes-impermeables", name: "Waterproof Pouches", slug: "pochettes-impermeables" }
      ]
    },
    {
      id: "batteries-charge",
      name: "Batteries & Charging",
      slug: "batteries-charge",
      subcategories: [
        { id: "chargeurs-standard", name: "Standard Chargers", slug: "chargeurs-standard" },
        { id: "chargeurs-rapides-fast-quick", name: "Fast Chargers (Quick Charge)", slug: "chargeurs-rapides-fast-quick" },
        { id: "chargeurs-sans-fil", name: "Wireless Chargers", slug: "chargeurs-sans-fil" },
        { id: "stations-recharge", name: "Charging Stations", slug: "stations-recharge" },
        { id: "powerbanks", name: "Powerbanks", slug: "powerbanks" },
        { id: "batteries-externes-haute-capacite", name: "High-Capacity External Batteries", slug: "batteries-externes-haute-capacite" },
        { id: "cables-usb", name: "USB Cables", slug: "cables-usb" },
        { id: "adaptateurs-secteur", name: "Power Adapters", slug: "adaptateurs-secteur" },
        { id: "chargeurs-voiture", name: "Car Chargers", slug: "chargeurs-voiture" },
        { id: "hubs-usb-multiprises-intelligentes", name: "USB Hubs & Smart Power Strips", slug: "hubs-usb-multiprises-intelligentes" }
      ]
    },
    {
      id: "audio-mobile",
      name: "Mobile Audio",
      slug: "audio-mobile",
      subcategories: [
        { id: "ecouteurs-filaires", name: "Wired Earphones", slug: "ecouteurs-filaires" },
        { id: "ecouteurs-bluetooth", name: "Bluetooth Earphones", slug: "ecouteurs-bluetooth" },
        { id: "airpods", name: "AirPods", slug: "airpods" },
        { id: "casques-sans-fil", name: "Wireless Headphones", slug: "casques-sans-fil" },
        { id: "casques-filaires", name: "Wired Headphones", slug: "casques-filaires" },
        { id: "enceintes-bluetooth", name: "Bluetooth Speakers", slug: "enceintes-bluetooth" },
        { id: "kits-mains-libres", name: "Hands-free Kits", slug: "kits-mains-libres" },
        { id: "micros-mobiles", name: "Mobile Microphones", slug: "micros-mobiles" },
        { id: "adaptateurs-audio", name: "Audio Adapters", slug: "adaptateurs-audio" }
      ]
    },
    {
      id: "pieces-reparation-telephone",
      name: "Phone Parts & Repair",
      slug: "pieces-reparation-telephone",
      subcategories: [
        { id: "ecrans-lcd-oled", name: "LCD & OLED Screens", slug: "ecrans-lcd-oled" },
        { id: "batteries-internes", name: "Internal Batteries", slug: "batteries-internes" },
        { id: "connecteurs-charge", name: "Charging Connectors", slug: "connecteurs-charge" },
        { id: "nappes-circuits", name: "Flex Cables & Circuits", slug: "nappes-circuits" },
        { id: "cameras-avant-arriere", name: "Front/Rear Cameras", slug: "cameras-avant-arriere" },
        { id: "chassis-coques-arriere", name: "Frames & Back Covers", slug: "chassis-coques-arriere" },
        { id: "boutons-flex", name: "Buttons & Flex Cables", slug: "boutons-flex" },
        { id: "haut-parleurs-micros", name: "Speakers & Mics", slug: "haut-parleurs-micros" },
        { id: "vitres-arriere", name: "Rear Glass", slug: "vitres-arriere" },
        { id: "kits-reparation", name: "Repair Kits", slug: "kits-reparation" },
        { id: "outils-demontage", name: "Disassembly Tools", slug: "outils-demontage" },
        { id: "stations-soudure", name: "Soldering Stations", slug: "stations-soudure" },
        { id: "ecrans-reconditionnes", name: "Refurbished Screens", slug: "ecrans-reconditionnes" }
      ]
    },
    {
      id: "objets-connectes-mobile",
      name: "Connected Devices (Mobile)",
      slug: "objets-connectes-mobile",
      subcategories: [
        { id: "montres-connectees", name: "Smartwatches", slug: "montres-connectees" },
        { id: "bracelets-connectes", name: "Smart Bands", slug: "bracelets-connectes" },
        { id: "trackers-gps", name: "GPS Trackers", slug: "trackers-gps" },
        { id: "ecouteurs-intelligents", name: "Smart Earphones", slug: "ecouteurs-intelligents" },
        { id: "lunettes-connectees", name: "Smart Glasses", slug: "lunettes-connectees" },
        { id: "balises-bluetooth", name: "Bluetooth Beacons", slug: "balises-bluetooth" },
        { id: "assistants-vocaux-portables", name: "Portable Voice Assistants", slug: "assistants-vocaux-portables" }
      ]
    },
    {
      id: "reseau-communication-mobile",
      name: "Network & Mobile Communication",
      slug: "reseau-communication-mobile",
      subcategories: [
        { id: "cartes-sim", name: "SIM Cards", slug: "cartes-sim" },
        { id: "esim", name: "eSIM", slug: "esim" },
        { id: "routeurs-4g-5g", name: "4G/5G Routers", slug: "routeurs-4g-5g" },
        { id: "modems-portables", name: "Portable Modems", slug: "modems-portables" },
        { id: "antennes-amplificateurs-reseau", name: "Antennas & Network Amplifiers", slug: "antennes-amplificateurs-reseau" },
        { id: "repeteurs-gsm", name: "GSM Repeaters", slug: "repeteurs-gsm" },
        { id: "boitiers-wifi-mobiles", name: "Mobile Wi-Fi Hotspots", slug: "boitiers-wifi-mobiles" },
        { id: "adaptateurs-reseau-telephone", name: "Phone Network Adapters", slug: "adaptateurs-reseau-telephone" }
      ]
    },
    {
      id: "securite-protection-mobile",
      name: "Security & Protection",
      slug: "securite-protection",
      subcategories: [
        { id: "antivols-telephone", name: "Anti-theft Systems", slug: "antivols-telephone" },
        { id: "etuis-renforces", name: "Rugged Cases", slug: "etuis-renforces" },
        { id: "coques-anti-chute", name: "Drop-proof Cases", slug: "coques-anti-chute" },
        { id: "protections-etanches-ip68", name: "Waterproof IP68 Protection", slug: "protections-etanches-ip68" },
        { id: "housses-anti-choc", name: "Shockproof Sleeves", slug: "housses-anti-choc" },
        { id: "verres-trempes-haute-resistance", name: "High-Resistance Tempered Glass", slug: "verres-trempes-haute-resistance" },
        { id: "accessoires-confidentialite", name: "Privacy Accessories", slug: "accessoires-confidentialite" }
      ]
    },
    {
      id: "applications-services-mobiles",
      name: "Apps & Services",
      slug: "applications-services",
      subcategories: [
        { id: "services-reparation-mobile", name: "Mobile Repair Services", slug: "services-reparation-mobile" },
        { id: "debloquage-desimlockage", name: "Unlocking & Desimlocking", slug: "debloquage-desimlockage" },
        { id: "transfert-donnees", name: "Data Transfer", slug: "transfert-donnees" },
        { id: "diagnostics-mobiles", name: "Diagnostics", slug: "diagnostics-mobiles" },
        { id: "accessoires-sur-mesure", name: "Custom Accessories", slug: "accessoires-sur-mesure" },
        { id: "personnalisation-mobile", name: "Mobile Customization", slug: "personnalisation-mobile" }
      ]
    },
    {
      id: "marques-populaires-mobiles",
      name: "Popular Mobile Brands",
      slug: "marques-populaires-mobiles",
      subcategories: [
        { id: "apple", name: "Apple", slug: "apple" },
        { id: "samsung", name: "Samsung", slug: "samsung" },
        { id: "xiaomi", name: "Xiaomi", slug: "xiaomi" },
        { id: "huawei", name: "Huawei", slug: "huawei" },
        { id: "oppo", name: "Oppo", slug: "oppo" },
        { id: "vivo", name: "Vivo", slug: "vivo" },
        { id: "realme", name: "Realme", slug: "realme" },
        { id: "infinix", name: "Infinix", slug: "infinix" },
        { id: "tecno", name: "Tecno", slug: "tecno" },
        { id: "oneplus", name: "OnePlus", slug: "oneplus" },
        { id: "sony", name: "Sony", slug: "sony" },
        { id: "nokia", name: "Nokia", slug: "nokia" },
        { id: "honor", name: "Honor", slug: "honor" },
        { id: "motorola", name: "Motorola", slug: "motorola" },
        { id: "lenovo", name: "Lenovo", slug: "lenovo" },
        { id: "asus", name: "Asus", slug: "asus" },
        { id: "zte", name: "ZTE", slug: "zte" },
        { id: "google-pixel", name: "Google Pixel", slug: "google-pixel" }
      ]
    },
    {
      id: "operateurs-mobiles-algerie",
      name: "Mobile Operators in Algeria",
      slug: "operateurs-mobiles-algerie",
      subcategories: [
        { id: "djezzy", name: "Djezzy", slug: "djezzy" },
        { id: "ooredoo", name: "Ooredoo", slug: "ooredoo" },
        { id: "mobilis", name: "Mobilis", slug: "mobilis" },
        { id: "algerie-telecom", name: "Algérie Télécom", slug: "algerie-telecom" }
      ]
    },
    {
      id: "composants-informatiques",
      name: "Computer Components",
      slug: "composants-informatiques",
      subcategories: [
        { id: "processeurs", name: "Processors (Intel, AMD)", slug: "processeurs" },
        { id: "cartes-graphiques", name: "Graphics Cards (NVIDIA, AMD)", slug: "cartes-graphiques" },
        { id: "cartes-meres", name: "Motherboards", slug: "cartes-meres" },
        { id: "memoires-ram", name: "RAM", slug: "memoires-ram" },
        { id: "ssd", name: "SSDs", slug: "ssd" },
        { id: "disques-durs-hdd", name: "HDD Hard Drives", slug: "disques-durs-hdd" },
        { id: "alimentation-pc", name: "Power Supplies (PSU)", slug: "alimentation-pc" },
        { id: "boitiers-pc", name: "PC Cases", slug: "boitiers-pc" },
        { id: "refroidissement-liquide", name: "Liquid Cooling", slug: "refroidissement-liquide" },
        { id: "ventilateurs-air", name: "Fans & Air Cooling", slug: "ventilateurs-air" },
        { id: "pates-thermiques", name: "Thermal Paste", slug: "pates-thermiques" },
        { id: "cartes-son", name: "Sound Cards", slug: "cartes-son" },
        { id: "cartes-reseau", name: "Network Cards", slug: "cartes-reseau" },
        { id: "cartes-acquisition-video", name: "Video Capture Cards", slug: "cartes-acquisition-video" }
      ]
    },
    {
      id: "peripheriques-pc",
      name: "PC Peripherals",
      slug: "peripheriques-pc",
      subcategories: [
        { id: "ecrans-moniteurs", name: "Screens & Monitors", slug: "ecrans-moniteurs" },
        { id: "moniteurs-gaming", name: "Gaming Monitors", slug: "moniteurs-gaming" },
        { id: "moniteurs-incurves", name: "Curved Monitors", slug: "moniteurs-incurves" },
        {
          id: "claviers",
          name: "Keyboards",
          slug: "claviers",
          subcategories: [
            { id: "claviers-mecaniques", name: "Mechanical", slug: "claviers-mecaniques" },
            { id: "claviers-sans-fil", name: "Wireless", slug: "claviers-sans-fil" },
            { id: "claviers-gaming", name: "Gaming", slug: "claviers-gaming" }
          ]
        },
        {
          id: "souris",
          name: "Mice",
          slug: "souris",
          subcategories: [
            { id: "souris-filaire", name: "Wired", slug: "souris-filaire" },
            { id: "souris-sans-fil", name: "Wireless", slug: "souris-sans-fil" },
            { id: "souris-gaming", name: "Gaming", slug: "souris-gaming" }
          ]
        },
        { id: "tapis-souris", name: "Mouse Pads", slug: "tapis-souris" },
        { id: "webcams", name: "Webcams", slug: "webcams" },
        { id: "microphones", name: "Microphones", slug: "microphones" },
        { id: "enceintes-pc", name: "PC Speakers", slug: "enceintes-pc" },
        { id: "casques-audio", name: "Headphones", slug: "casques-audio" },
        { id: "disques-durs-externes", name: "External Hard Drives", slug: "disques-durs-externes" },
        { id: "cles-usb", name: "USB Drives", slug: "cles-usb" },
        { id: "lecteurs-cartes-memoire", name: "Memory Card Readers", slug: "lecteurs-cartes-memoire" },
        { id: "stations-accueil", name: "Docking Stations", slug: "stations-accueil" },
        { id: "imprimantes", name: "Printers", slug: "imprimantes" },
        { id: "scanners", name: "Scanners", slug: "scanners" },
        { id: "videoprojecteurs", name: "Projectors", slug: "videoprojecteurs" }
      ]
    },
    {
      id: "reseau-internet",
      name: "Network & Internet",
      slug: "reseau-internet",
      subcategories: [
        { id: "routeurs-wifi", name: "Wi-Fi Routers", slug: "routeurs-wifi" },
        { id: "wifi-mesh", name: "Wi-Fi Mesh Systems", slug: "wifi-mesh" },
        { id: "modems", name: "Modems", slug: "modems" },
        { id: "repeteurs", name: "Repeaters", slug: "repeteurs" },
        { id: "points-acces", name: "Access Points", slug: "points-acces" },
        { id: "switches", name: "Network Switches", slug: "switches" },
        { id: "cables-ethernet", name: "Ethernet Cables", slug: "cables-ethernet" },
        { id: "fibre-optique", name: "Fiber Optic Equipment", slug: "fibre-optique" },
        { id: "routeurs-4g-5g", name: "4G/5G Routers", slug: "routeurs-4g-5g" },
        { id: "antennes-reseau", name: "Network Antennas", slug: "antennes-reseau" },
        { id: "adaptateurs-usb-wifi", name: "USB Wi-Fi Adapters", slug: "adaptateurs-usb-wifi" },
        { id: "routeurs-vpn", name: "VPN Routers", slug: "routeurs-vpn" }
      ]
    },
    {
      id: "equipement-bureau",
      name: "Office Equipment",
      slug: "equipement-bureau",
      subcategories: [
        { id: "imprimantes-laser", name: "Laser Printers", slug: "imprimantes-laser" },
        { id: "imprimantes-jet-encre", name: "Inkjet Printers", slug: "imprimantes-jet-encre" },
        { id: "photocopieurs", name: "Photocopiers", slug: "photocopieurs" },
        { id: "scanners-pro", name: "Professional Scanners", slug: "scanners-pro" },
        { id: "fax", name: "Fax Machines", slug: "fax" },
        { id: "multifonctions", name: "Multifunction Printers", slug: "multifonctions" },
        { id: "cartouches-encre", name: "Ink Cartridges", slug: "cartouches-encre" },
        { id: "toners", name: "Toners", slug: "toners" },
        { id: "plastifieuses", name: "Laminators", slug: "plastifieuses" },
        { id: "destructeurs-documents", name: "Paper Shredders", slug: "destructeurs-documents" },
        { id: "videoprojecteurs-pro", name: "Professional Projectors", slug: "videoprojecteurs-pro" },
        { id: "tableaux-blancs", name: "Whiteboards", slug: "tableaux-blancs" },
        { id: "equipements-conference", name: "Conference Equipment", slug: "equipements-conference" }
      ]
    },
    {
      id: "electronique-gadgets",
      name: "Electronics & Gadgets",
      slug: "electronique-gadgets",
      subcategories: [
        { id: "montres-connectees", name: "Smartwatches", slug: "montres-connectees" },
        { id: "bracelets-connectes", name: "Smart Bands", slug: "bracelets-connectes" },
        { id: "lunettes-intelligentes", name: "Smart Glasses", slug: "lunettes-intelligentes" },
        { id: "action-cams", name: "Action Cams", slug: "action-cams" },
        { id: "drones", name: "Drones", slug: "drones" },
        { id: "mini-projecteurs", name: "Mini Projectors", slug: "mini-projecteurs" },
        { id: "casques-vr", name: "VR Headsets", slug: "casques-vr" },
        { id: "dispositifs-ar", name: "AR Devices", slug: "dispositifs-ar" },
        { id: "liseuses", name: "E-readers", slug: "liseuses" },
        { id: "radios", name: "Radios", slug: "radios" },
        { id: "talkie-walkies", name: "Walkie-Talkies", slug: "talkie-walkies" },
        { id: "gps-portables", name: "Handheld GPS", slug: "gps-portables" },
        { id: "stylos-numeriques", name: "Digital Pens", slug: "stylos-numeriques" }
      ]
    },
    {
      id: "maison-intelligente",
      name: "Smart Home & Automation",
      slug: "maison-intelligente",
      subcategories: [
        { id: "ampoules-connectees", name: "Smart Bulbs", slug: "ampoules-connectees" },
        { id: "bandes-led", name: "LED Strips", slug: "bandes-led" },
        { id: "prises-intelligentes", name: "Smart Plugs", slug: "prises-intelligentes" },
        { id: "cameras-securite", name: "Security Cameras", slug: "cameras-securite" },
        { id: "cameras-ip", name: "IP Cameras", slug: "cameras-ip" },
        { id: "systemes-alarme", name: "Alarm Systems", slug: "systemes-alarme" },
        { id: "serrures-connectees", name: "Smart Locks", slug: "serrures-connectees" },
        { id: "thermostats", name: "Thermostats", slug: "thermostats" },
        {
          id: "capteurs",
          name: "Sensors",
          slug: "capteurs",
          subcategories: [
            { id: "mouvement", name: "Motion", slug: "mouvement" },
            { id: "fumee", name: "Smoke", slug: "fumee" },
            { id: "fuite-eau", name: "Water Leak", slug: "fuite-eau" }
          ]
        },
        { id: "interrupteurs-intelligents", name: "Smart Switches", slug: "interrupteurs-intelligents" },
        { id: "assistants-vocaux", name: "Voice Assistants", slug: "assistants-vocaux" },
        { id: "sonnettes-video", name: "Video Doorbells", slug: "sonnettes-video" }
      ]
    },
    {
      id: "tv-divertissement",
      name: "TV & Entertainment",
      slug: "tv-divertissement",
      subcategories: [
        { id: "televiseurs-led", name: "LED TVs", slug: "televiseurs-led" },
        { id: "televiseurs-oled", name: "OLED TVs", slug: "televiseurs-oled" },
        { id: "qled", name: "QLED", slug: "qled" },
        { id: "smart-tv", name: "Smart TV", slug: "smart-tv" },
        { id: "android-tv", name: "Android TV", slug: "android-tv" },
        { id: "recepteurs-tv", name: "TV Receivers", slug: "recepteurs-tv" },
        { id: "decodeurs-satellites", name: "Satellite Decoders", slug: "decodeurs-satellites" },
        { id: "box-tv-multimedia", name: "TV & Multimedia Boxes", slug: "box-tv-multimedia" },
        { id: "lecteurs-multimedias", name: "Media Players", slug: "lecteurs-multimedias" },
        { id: "barres-de-son", name: "Soundbars", slug: "barres-de-son" },
        { id: "home-cinema", name: "Home Cinema", slug: "home-cinema" },
        { id: "lecteurs-blu-ray", name: "Blu-ray Players", slug: "lecteurs-blu-ray" }
      ]
    },
    {
      id: "accessoires-mobiles",
      name: "Mobile Accessories (Electronics)",
      slug: "accessoires-mobiles",
      subcategories: [
        { id: "chargeurs", name: "Chargers", slug: "chargeurs" },
        { id: "chargeurs-rapides", name: "Fast Chargers", slug: "chargeurs-rapides" },
        { id: "powerbanks", name: "Powerbanks", slug: "powerbanks" },
        { id: "cables-adaptateurs", name: "Cables & Adapters", slug: "cables-adaptateurs" },
        { id: "chargeurs-sans-fil", name: "Wireless Chargers", slug: "chargeurs-sans-fil" },
        { id: "chargeurs-voiture", name: "Car Chargers", slug: "chargeurs-voiture" },
        { id: "hubs-usb", name: "USB Hubs", slug: "hubs-usb" },
        { id: "protections-ecran", name: "Screen Protectors", slug: "protections-ecran" },
        { id: "claviers-tablettes", name: "Tablet Keyboards", slug: "claviers-tablettes" },
        { id: "stylets-tactiles", name: "Styluses", slug: "stylets-tactiles" },
        { id: "stations-accueil-mobiles", name: "Docking Stations", slug: "stations-accueil-mobiles" }
      ]
    },
    {
      id: "informatique-professionnelle",
      name: "Professional Computing",
      slug: "informatique-professionnelle",
      subcategories: [
        { id: "serveurs", name: "Servers", slug: "serveurs" },
        { id: "baies-serveurs", name: "Server Racks", slug: "baies-serveurs" },
        { id: "nas", name: "NAS", slug: "nas" },
        { id: "onduleurs-ups", name: "UPS", slug: "onduleurs-ups" },
        { id: "switches-professionnels", name: "Professional Switches", slug: "switches-professionnels" },
        { id: "pare-feux-reseau", name: "Network Firewalls", slug: "pare-feux-reseau" },
        { id: "equipements-cloud", name: "Cloud Equipment", slug: "equipements-cloud" },
        { id: "appliances-sauvegarde", name: "Backup Appliances", slug: "appliances-sauvegarde" },
        { id: "dispositifs-biometriques", name: "Biometric Devices", slug: "dispositifs-biometriques" },
        { id: "systemes-conference-haut-de-gamme", name: "High-end Conference Systems", slug: "systemes-conference-haut-de-gamme" }
      ]
    },
    {
      id: "composants-electroniques-outils",
      name: "Electronic Components & Repair Tools",
      slug: "composants-electroniques-outils",
      subcategories: [
        { id: "capteurs-electroniques", name: "Electronic Sensors", slug: "capteurs-electroniques" },
        { id: "resistances", name: "Resistors", slug: "resistances" },
        { id: "condensateurs", name: "Capacitors", slug: "condensateurs" },
        { id: "diodes", name: "Diodes", slug: "diodes" },
        { id: "transistors", name: "Transistors", slug: "transistors" },
        { id: "microcontroleurs", name: "Microcontrollers", slug: "microcontroleurs" },
        { id: "cartes-arduino", name: "Arduino Boards", slug: "cartes-arduino" },
        { id: "raspberry-pi", name: "Raspberry Pi", slug: "raspberry-pi" },
        { id: "breadboards", name: "Breadboards", slug: "breadboards" },
        { id: "stations-soudage", name: "Soldering Stations", slug: "stations-soudage" },
        { id: "multimetres", name: "Multimeters", slug: "multimetres" },
        { id: "outils-reparation", name: "Repair Tools", slug: "outils-reparation" },
        { id: "cables-connecteurs", name: "Cables & Connectors", slug: "cables-connecteurs" },
        { id: "testeurs-electroniques", name: "Electronic Testers", slug: "testeurs-electroniques" },
        { id: "cameras-thermiques", name: "Thermal Cameras", slug: "cameras-thermiques" }
      ]
    },
    {
      id: "marques-populaires",
      name: "Popular Brands",
      slug: "marques-populaires",
      subcategories: [
        { id: "apple", name: "Apple", slug: "apple" },
        { id: "dell", name: "Dell", slug: "dell" },
        { id: "hp", name: "HP", slug: "hp" },
        { id: "lenovo", name: "Lenovo", slug: "lenovo" },
        { id: "asus", name: "Asus", slug: "asus" },
        { id: "acer", name: "Acer", slug: "acer" },
        { id: "msi", name: "MSI", slug: "msi" },
        { id: "razer", name: "Razer", slug: "razer" },
        { id: "samsung", name: "Samsung", slug: "samsung" },
        { id: "huawei", name: "Huawei", slug: "huawei" },
        { id: "xiaomi", name: "Xiaomi", slug: "xiaomi" },
        { id: "lg", name: "LG", slug: "lg" },
        { id: "toshiba", name: "Toshiba", slug: "toshiba" },
        { id: "western-digital", name: "Western Digital", slug: "western-digital" },
        { id: "seagate", name: "Seagate", slug: "seagate" },
        { id: "kingston", name: "Kingston", slug: "kingston" },
        { id: "corsair", name: "Corsair", slug: "corsair" },
        { id: "gigabyte", name: "Gigabyte", slug: "gigabyte" },
        { id: "asus-rog", name: "Asus ROG", slug: "asus-rog" },
        { id: "nvidia", name: "NVIDIA", slug: "nvidia" },
        { id: "amd", name: "AMD", slug: "amd" },
        { id: "jbl", name: "JBL", slug: "jbl" },
        { id: "logitech", name: "Logitech", slug: "logitech" },
        { id: "steelseries", name: "SteelSeries", slug: "steelseries" },
        { id: "tp-link", name: "TP‑Link", slug: "tp-link" },
        { id: "netgear", name: "Netgear", slug: "netgear" },
        { id: "ubiquiti", name: "Ubiquiti", slug: "ubiquiti" }
      ]
    }
  ]
};
