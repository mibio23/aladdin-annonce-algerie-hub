import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Tv } from "lucide-react";

export const imageSonEquipementMusiqueEn: MenuCategory = {
  id: "image-son-equipement-musique",
  name: "Image, Sound & Music Equipment",
  slug: "image-son-equipement-musique",
  icon: <Tv className="w-4 h-4" />,
  subcategories: [
    { id: "televiseurs-affichage", name: "Televisions & Displays", slug: "televiseurs-affichage",
      subcategories: [
        { id: "tv-led", name: "TV LED", slug: "tv-led" },
        { id: "tv-oled", name: "TV OLED", slug: "tv-oled" },
        { id: "tv-qled", name: "TV QLED", slug: "tv-qled" },
        { id: "tv-4k", name: "TV 4K", slug: "tv-4k" },
        { id: "tv-8k", name: "TV 8K", slug: "tv-8k" },
        { id: "tv-smart-android", name: "Smart Android TVs", slug: "tv-smart-android" },
        { id: "tv-connectees", name: "Connected TVs", slug: "tv-connectees" },
        { id: "moniteurs-streaming", name: "Streaming Monitors", slug: "moniteurs-streaming" },
        { id: "videoprojecteurs", name: "Projectors", slug: "videoprojecteurs" },
        { id: "mini-projecteurs", name: "Mini Projectors", slug: "mini-projecteurs" },
        { id: "ecrans-portables", name: "Portable Screens", slug: "ecrans-portables" },
        { id: "supports-tv-muraux", name: "Wall TV Mounts", slug: "supports-tv-muraux" },
        { id: "pieds-tv", name: "TV Stands", slug: "pieds-tv" }
      ]
    },
    { id: "audio-home-cinema", name: "Audio & Home Theater", slug: "audio-home-cinema",
      subcategories: [
        { id: "barres-de-son", name: "Soundbars", slug: "barres-de-son" },
        { id: "home-cinema-5-1", name: "Home theater 5.1", slug: "home-cinema-5-1" },
        { id: "systemes-audio-2-1", name: "Audio systems 2.1", slug: "systemes-audio-2-1" },
        { id: "caissons-de-basses", name: "Subwoofers", slug: "caissons-de-basses" },
        { id: "amplificateurs", name: "Amplifiers", slug: "amplificateurs" },
        { id: "recepteurs-av", name: "AV Receivers", slug: "recepteurs-av" },
        { id: "enceintes-hifi", name: "Hi‑Fi Speakers", slug: "enceintes-hifi" },
        { id: "enceintes-bluetooth", name: "Bluetooth Speakers", slug: "enceintes-bluetooth" },
        { id: "enceintes-intelligentes", name: "Smart Speakers", slug: "enceintes-intelligentes" },
        { id: "multiroom-audio", name: "Multiroom Audio", slug: "multiroom-audio" },
        { id: "soundbars-gaming", name: "Gaming Soundbars", slug: "soundbars-gaming" }
      ]
    },
    { id: "casques-ecouteurs", name: "Headphones & Earphones", slug: "casques-ecouteurs",
      subcategories: [
        { id: "casques-filaires", name: "Wired Headphones", slug: "casques-filaires" },
        { id: "casques-bluetooth", name: "Bluetooth Headphones", slug: "casques-bluetooth" },
        { id: "casques-gaming", name: "Gaming Headsets", slug: "casques-gaming" },
        { id: "casques-antibruit", name: "Noise‑canceling Headphones", slug: "casques-antibruit" },
        { id: "ecouteurs-intra-auriculaires", name: "In‑ear Earphones", slug: "ecouteurs-intra-auriculaires" },
        { id: "ecouteurs-tws", name: "True Wireless Earbuds", slug: "ecouteurs-tws" },
        { id: "ecouteurs-sport", name: "Sport Earphones", slug: "ecouteurs-sport" },
        { id: "casques-studio", name: "Studio Headphones", slug: "casques-studio" },
        { id: "casques-dj", name: "DJ Headphones", slug: "casques-dj" }
      ]
    },
    { id: "photo-video", name: "Photo & Video", slug: "photo-video",
      subcategories: [
        { id: "appareils-photo-reflex", name: "DSLR Cameras", slug: "appareils-photo-reflex" },
        { id: "appareils-photo-hybrides", name: "Mirrorless Cameras", slug: "appareils-photo-hybrides" },
        { id: "appareils-compacts", name: "Compact Cameras", slug: "appareils-compacts" },
        { id: "camescopes", name: "Camcorders", slug: "camescopes" },
        { id: "action-cams", name: "Action Cameras", slug: "action-cams" },
        { id: "drones-camera", name: "Camera Drones", slug: "drones-camera" },
        { id: "objectifs-photo", name: "Photo Lenses", slug: "objectifs-photo" },
        { id: "trepieds", name: "Tripods", slug: "trepieds" },
        { id: "stabilisateurs", name: "Stabilizers", slug: "stabilisateurs" },
        { id: "gimbals", name: "Gimbals", slug: "gimbals" },
        { id: "flashes-eclairages", name: "Flashes & Lighting", slug: "flashes-eclairages" },
        { id: "cartes-memoire", name: "Memory Cards", slug: "cartes-memoire" },
        { id: "fonds-photo", name: "Photo Backdrops", slug: "fonds-photo" }
      ]
    },
    { id: "studios-audio-enregistrement", name: "Audio Studio & Recording", slug: "studios-audio-enregistrement",
      subcategories: [
        { id: "microphones-usb", name: "USB Microphones", slug: "microphones-usb" },
        { id: "microphones-xlr", name: "XLR Microphones", slug: "microphones-xlr" },
        { id: "interfaces-audio", name: "Audio Interfaces", slug: "interfaces-audio" },
        { id: "casques-studio-2", name: "Studio Headphones", slug: "casques-studio-2" },
        { id: "moniteurs-de-studio", name: "Studio Monitors", slug: "moniteurs-de-studio" },
        { id: "mixeurs-audio", name: "Audio Mixers", slug: "mixeurs-audio" },
        { id: "preamplis", name: "Preamps", slug: "preamplis" },
        { id: "enregistreurs-portables", name: "Portable Recorders", slug: "enregistreurs-portables" },
        { id: "cartes-son-externes", name: "External Sound Cards", slug: "cartes-son-externes" },
        { id: "shields-acoustiques", name: "Acoustic Shields", slug: "shields-acoustiques" },
        { id: "accessoires-studio", name: "Studio Accessories", slug: "accessoires-studio" }
      ]
    },
    { id: "sonorisation-evenementiel", name: "PA & Events", slug: "sonorisation-evenementiel",
      subcategories: [
        { id: "enceintes-professionnelles", name: "Pro Speakers", slug: "enceintes-professionnelles" },
        { id: "caissons-de-basses-pro", name: "Pro Subwoofers", slug: "caissons-de-basses-pro" },
        { id: "amplis-de-puissance", name: "Power Amplifiers", slug: "amplis-de-puissance" },
        { id: "mixeurs-tables-de-mixage", name: "Mixers & Consoles", slug: "mixeurs-tables-de-mixage" },
        { id: "micros-hf-sans-fil", name: "Wireless Microphones", slug: "micros-hf-sans-fil" },
        { id: "systemes-karaoke", name: "Karaoke Systems", slug: "systemes-karaoke" },
        { id: "jeux-de-lumiere", name: "Lighting Effects", slug: "jeux-de-lumiere" },
        { id: "lasers", name: "Lasers", slug: "lasers" },
        { id: "machines-a-fumee", name: "Fog Machines", slug: "machines-a-fumee" },
        { id: "stands-et-trepieds", name: "Stands & Tripods", slug: "stands-et-trepieds" },
        { id: "cablage-audio-xlr", name: "Audio & XLR Cables", slug: "cablage-audio-xlr" }
      ]
    },
    { id: "equipement-musique", name: "Music Equipment", slug: "equipement-musique",
      subcategories: [
        { id: "guitares-acoustiques", name: "Acoustic Guitars", slug: "guitares-acoustiques" },
        { id: "guitares-electriques", name: "Electric Guitars", slug: "guitares-electriques" },
        { id: "guitares-basses", name: "Bass Guitars", slug: "guitares-basses" },
        { id: "violons", name: "Violins", slug: "violons" },
        { id: "mandolines", name: "Mandolins", slug: "mandolines" },
        { id: "oud-instruments-orientaux", name: "Oud & Oriental Instruments", slug: "oud-instruments-orientaux" },
        { id: "pianos-numeriques", name: "Digital Pianos", slug: "pianos-numeriques" },
        { id: "claviers-arrangeurs", name: "Arranger Keyboards", slug: "claviers-arrangeurs" },
        { id: "synthetiseurs", name: "Synthesizers", slug: "synthetiseurs" },
        { id: "batteries-acoustiques", name: "Acoustic Drums", slug: "batteries-acoustiques" },
        { id: "batteries-electroniques", name: "Electronic Drums", slug: "batteries-electroniques" },
        { id: "percussions", name: "Percussion", slug: "percussions" },
        { id: "harmonicas", name: "Harmonicas", slug: "harmonicas" }
      ]
    },
    { id: "equipement-dj", name: "DJ Equipment", slug: "equipement-dj",
      subcategories: [
        { id: "platines-dj", name: "DJ Turntables", slug: "platines-dj" },
        { id: "controleurs-dj", name: "DJ Controllers", slug: "controleurs-dj" },
        { id: "mixeurs-dj", name: "DJ Mixers", slug: "mixeurs-dj" },
        { id: "casques-dj-2", name: "DJ Headphones", slug: "casques-dj-2" },
        { id: "eclairage-dj", name: "DJ Lighting", slug: "eclairage-dj" },
        { id: "pads-boites-rythmes", name: "Pads & Drum Machines", slug: "pads-boites-rythmes" },
        { id: "logiciels-dj", name: "DJ Software", slug: "logiciels-dj" },
        { id: "interfaces-dj", name: "DJ Interfaces", slug: "interfaces-dj" }
      ]
    },
    { id: "accessoires-instruments", name: "Instrument Accessories", slug: "accessoires-instruments",
      subcategories: [
        { id: "cordes-guitare-violon", name: "Strings (Guitar/Violin)", slug: "cordes-guitare-violon" },
        { id: "mediators", name: "Picks", slug: "mediators" },
        { id: "capodastres", name: "Capos", slug: "capodastres" },
        { id: "stands-instruments", name: "Instrument Stands", slug: "stands-instruments" },
        { id: "housses-etuis", name: "Cases & Gigbags", slug: "housses-etuis" },
        { id: "accordeurs-electroniques", name: "Electronic Tuners", slug: "accordeurs-electroniques" },
        { id: "metronome", name: "Metronome", slug: "metronome" },
        { id: "batteries-peaux", name: "Drumheads & Accessories", slug: "batteries-peaux" },
        { id: "baguettes", name: "Drumsticks", slug: "baguettes" },
        { id: "ampli-guitare-basse", name: "Guitar/Bass Amps", slug: "ampli-guitare-basse" },
        { id: "cables-jack-xlr", name: "Jack & XLR Cables", slug: "cables-jack-xlr" }
      ]
    },
    { id: "streaming-creation-contenu", name: "Streaming & Content Creation", slug: "streaming-creation-contenu",
      subcategories: [
        { id: "cameras-streaming", name: "Streaming Cameras", slug: "cameras-streaming" },
        { id: "webcams-hd", name: "HD Webcams", slug: "webcams-hd" },
        { id: "micros-streaming", name: "Streaming Microphones", slug: "micros-streaming" },
        { id: "anneaux-lumineux", name: "Ring Lights", slug: "anneaux-lumineux" },
        { id: "lampes-led-createurs", name: "Creator LED Lamps", slug: "lampes-led-createurs" },
        { id: "green-screen", name: "Green Screen", slug: "green-screen" },
        { id: "pupitres-streaming", name: "Streaming Consoles", slug: "pupitres-streaming" },
        { id: "cartes-acquisition-video", name: "Capture Cards", slug: "cartes-acquisition-video" },
        { id: "equipement-podcast", name: "Podcast Equipment", slug: "equipement-podcast" }
      ]
    },
    { id: "radios-multimedia", name: "Radios & Multimedia", slug: "radios-multimedia",
      subcategories: [
        { id: "radios-fm", name: "FM Radios", slug: "radios-fm" },
        { id: "radios-digitaux", name: "Digital Radios", slug: "radios-digitaux" },
        { id: "lecteurs-mp3", name: "MP3 Players", slug: "lecteurs-mp3" },
        { id: "enceintes-nomades", name: "Portable Speakers", slug: "enceintes-nomades" },
        { id: "autoradios", name: "Car Stereos", slug: "autoradios" },
        { id: "amplificateurs-voiture", name: "Car Amplifiers", slug: "amplificateurs-voiture" },
        { id: "subwoofers-voiture", name: "Car Subwoofers", slug: "subwoofers-voiture" },
        { id: "ecrans-android-voiture", name: "Android Car Screens", slug: "ecrans-android-voiture" }
      ]
    },
    { id: "equipements-cinema-maison", name: "Home Cinema Equipment", slug: "equipements-cinema-maison",
      subcategories: [
        { id: "videoprojecteurs-4k", name: "4K Projectors", slug: "videoprojecteurs-4k" },
        { id: "ecrans-de-projection", name: "Projection Screens", slug: "ecrans-de-projection" },
        { id: "supports-plafond", name: "Ceiling Mounts", slug: "supports-plafond" },
        { id: "systemes-audio-surround", name: "Surround Audio Systems", slug: "systemes-audio-surround" },
        { id: "cablage-hdmi", name: "HDMI Cabling", slug: "cablage-hdmi" },
        { id: "convertisseurs-audio-video", name: "Audio/Video Converters", slug: "convertisseurs-audio-video" }
      ]
    },
    { id: "electroniques-portables", name: "Portable Electronics", slug: "electroniques-portables",
      subcategories: [
        { id: "mini-projecteurs-portables", name: "Portable Mini Projectors", slug: "mini-projecteurs-portables" },
        { id: "enceintes-outdoor", name: "Outdoor Speakers", slug: "enceintes-outdoor" },
        { id: "casques-sport", name: "Sports Headphones", slug: "casques-sport" },
        { id: "amplis-nomades", name: "Portable Amps", slug: "amplis-nomades" },
        { id: "enregistreurs-de-terrain", name: "Field Recorders", slug: "enregistreurs-de-terrain" }
      ]
    },
    { id: "accessoires-image-son", name: "Image & Sound Accessories", slug: "accessoires-image-son",
      subcategories: [
        { id: "cables-hdmi", name: "HDMI Cables", slug: "cables-hdmi" },
        { id: "cables-audio-jack-rca", name: "Jack & RCA Cables", slug: "cables-audio-jack-rca" },
        { id: "adaptateurs", name: "Adapters", slug: "adaptateurs" },
        { id: "batteries-chargeurs", name: "Batteries & Chargers", slug: "batteries-chargeurs" },
        { id: "nettoyants-lentilles", name: "Lens Cleaners", slug: "nettoyants-lentilles" },
        { id: "filtres-photo", name: "Photo Filters", slug: "filtres-photo" },
        { id: "cartes-sd", name: "SD Cards", slug: "cartes-sd" },
        { id: "boitiers-transport", name: "Transport Cases", slug: "boitiers-transport" },
        { id: "pieds-camera", name: "Camera Tripods", slug: "pieds-camera" }
      ]
    },
    { id: "marques-populaires", name: "Popular Brands", slug: "marques-populaires",
      subcategories: [
        { id: "sony", name: "Sony", slug: "sony" },
        { id: "samsung", name: "Samsung", slug: "samsung" },
        { id: "lg", name: "LG", slug: "lg" },
        { id: "panasonic", name: "Panasonic", slug: "panasonic" },
        { id: "canon", name: "Canon", slug: "canon" },
        { id: "nikon", name: "Nikon", slug: "nikon" },
        { id: "fujifilm", name: "Fujifilm", slug: "fujifilm" },
        { id: "jbl", name: "JBL", slug: "jbl" },
        { id: "bose", name: "Bose", slug: "bose" },
        { id: "yamaha", name: "Yamaha", slug: "yamaha" },
        { id: "pioneer", name: "Pioneer", slug: "pioneer" },
        { id: "shure", name: "Shure", slug: "shure" },
        { id: "rode", name: "Rode", slug: "rode" },
        { id: "behringer", name: "Behringer", slug: "behringer" },
        { id: "sennheiser", name: "Sennheiser", slug: "sennheiser" },
        { id: "marshall", name: "Marshall", slug: "marshall" },
        { id: "roland", name: "Roland", slug: "roland" },
        { id: "casio", name: "Casio", slug: "casio" },
        { id: "alesis", name: "Alesis", slug: "alesis" },
        { id: "numark", name: "Numark", slug: "numark" }
      ]
    },
    { id: "segments-usage", name: "Usage Segments", slug: "segments-usage",
      subcategories: [
        { id: "image-domestique", name: "Home Imaging", slug: "image-domestique" },
        { id: "son-domestique", name: "Home Audio", slug: "son-domestique" },
        { id: "audio-professionnel", name: "Professional Audio", slug: "audio-professionnel" },
        { id: "studio-enregistrement", name: "Recording Studio", slug: "studio-enregistrement" },
        { id: "dj-evenementiel", name: "DJ & Events", slug: "dj-evenementiel" },
        { id: "creation-contenu", name: "Content Creation", slug: "creation-contenu" },
        { id: "musique-amateur", name: "Amateur Music", slug: "musique-amateur" },
        { id: "musique-professionnelle", name: "Professional Music", slug: "musique-professionnelle" }
      ]
    }
  ]
};