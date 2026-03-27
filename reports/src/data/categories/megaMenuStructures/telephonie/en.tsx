import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Smartphone } from "lucide-react";

export const telephonieEn: MenuCategory = {
  id: "telephonie",
  name: "Telephony",
  slug: "telephonie",
  icon: <Smartphone className="w-4 h-4" />,
  subcategories: [
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
        { id: "etuis", name: "Cases", slug: "etuis" },
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
        { id: "chargeurs-rapides-fast-quick", name: "Fast Chargers (Fast Charge, Quick Charge)", slug: "chargeurs-rapides-fast-quick" },
        { id: "chargeurs-sans-fil", name: "Wireless Chargers", slug: "chargeurs-sans-fil" },
        { id: "stations-recharge", name: "Charging Stations", slug: "stations-recharge" },
        { id: "powerbanks", name: "Powerbanks", slug: "powerbanks" },
        { id: "batteries-externes-haute-capacite", name: "High-capacity External Batteries", slug: "batteries-externes-haute-capacite" },
        { id: "cables-usb", name: "USB Cables (Type-C, Lightning, Micro-USB)", slug: "cables-usb" },
        { id: "adaptateurs-secteur", name: "Wall Adapters", slug: "adaptateurs-secteur" },
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
        { id: "ecrans-lcd-oled", name: "LCD and OLED Screens", slug: "ecrans-lcd-oled" },
        { id: "batteries-internes", name: "Internal Batteries", slug: "batteries-internes" },
        { id: "connecteurs-charge", name: "Charging Connectors", slug: "connecteurs-charge" },
        { id: "nappes-circuits", name: "Flex Cables and Circuits", slug: "nappes-circuits" },
        { id: "cameras-avant-arriere", name: "Front/Rear Cameras", slug: "cameras-avant-arriere" },
        { id: "chassis-coques-arriere", name: "Frames and Back Covers", slug: "chassis-coques-arriere" },
        { id: "boutons-flex", name: "Buttons & Flex", slug: "boutons-flex" },
        { id: "haut-parleurs-micros", name: "Speakers & Microphones", slug: "haut-parleurs-micros" },
        { id: "vitres-arriere", name: "Back Glass", slug: "vitres-arriere" },
        { id: "kits-reparation", name: "Repair Kits", slug: "kits-reparation" },
        { id: "outils-demontage", name: "Disassembly Tools", slug: "outils-demontage" },
        { id: "stations-soudure", name: "Soldering Stations", slug: "stations-soudure" },
        { id: "ecrans-reconditionnes", name: "Refurbished Screens", slug: "ecrans-reconditionnes" }
      ]
    },
    {
      id: "objets-connectes-mobile",
      name: "Connected Objects (Mobile)",
      slug: "objets-connectes-mobile",
      subcategories: [
        { id: "montres-connectees", name: "Smartwatches", slug: "montres-connectees" },
        { id: "bracelets-connectes", name: "Fitness Bands", slug: "bracelets-connectes" },
        { id: "trackers-gps", name: "GPS Trackers", slug: "trackers-gps" },
        { id: "ecouteurs-intelligents", name: "Smart Earphones", slug: "ecouteurs-intelligents" },
        { id: "lunettes-connectees", name: "Smart Glasses", slug: "lunettes-connectees" },
        { id: "balises-bluetooth", name: "Bluetooth Beacons", slug: "balises-bluetooth" },
        { id: "assistants-vocaux-portables", name: "Portable Voice Assistants", slug: "assistants-vocaux-portables" }
      ]
    },
    {
      id: "reseau-communication-mobile",
      name: "Mobile Network & Communication",
      slug: "reseau-communication-mobile",
      subcategories: [
        { id: "cartes-sim", name: "SIM Cards", slug: "cartes-sim" },
        { id: "esim", name: "eSIM", slug: "esim" },
        { id: "routeurs-4g-5g", name: "4G/5G Routers", slug: "routeurs-4g-5g" },
        { id: "modems-portables", name: "Portable Modems", slug: "modems-portables" },
        { id: "antennes-amplificateurs-reseau", name: "Antennas and Signal Boosters", slug: "antennes-amplificateurs-reseau" },
        { id: "repeteurs-gsm", name: "GSM Repeaters", slug: "repeteurs-gsm" },
        { id: "boitiers-wifi-mobiles", name: "Mobile Wi-Fi Boxes", slug: "boitiers-wifi-mobiles" },
        { id: "adaptateurs-reseau-telephone", name: "Phone Network Adapters", slug: "adaptateurs-reseau-telephone" }
      ]
    },
    {
      id: "securite-protection-mobile",
      name: "Security & Protection",
      slug: "securite-protection",
      subcategories: [
        { id: "antivols-telephone", name: "Phone Anti-theft", slug: "antivols-telephone" },
        { id: "etuis-renforces", name: "Reinforced Cases", slug: "etuis-renforces" },
        { id: "coques-anti-chute", name: "Drop-proof Cases", slug: "coques-anti-chute" },
        { id: "protections-etanches-ip68", name: "IP68 Waterproof Protections", slug: "protections-etanches-ip68" },
        { id: "housses-anti-choc", name: "Shockproof Sleeves", slug: "housses-anti-choc" },
        { id: "verres-trempes-haute-resistance", name: "High-resistance Tempered Glass", slug: "verres-trempes-haute-resistance" },
        { id: "accessoires-confidentialite", name: "Privacy Accessories", slug: "accessoires-confidentialite" }
      ]
    },
    {
      id: "applications-services-mobiles",
      name: "Apps & Services",
      slug: "applications-services",
      subcategories: [
        { id: "services-reparation-mobile", name: "Mobile Repair Services", slug: "services-reparation-mobile" },
        { id: "debloquage-desimlockage", name: "Unlocking & SIM Unlocking", slug: "debloquage-desimlockage" },
        { id: "transfert-donnees", name: "Data Transfer", slug: "transfert-donnees" },
        { id: "diagnostics-mobiles", name: "Diagnostics", slug: "diagnostics-mobiles" },
        { id: "accessoires-sur-mesure", name: "Custom Accessories", slug: "accessoires-sur-mesure" },
        { id: "personnalisation-mobile", name: "Mobile Personalization", slug: "personnalisation-mobile" }
      ]
    },
    {
      id: "marques-populaires-mobiles",
      name: "Popular Brands (Mobiles)",
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
        { id: "algerie-telecom", name: "Algeria Telecom", slug: "algerie-telecom" }
      ]
    }
  ]
};