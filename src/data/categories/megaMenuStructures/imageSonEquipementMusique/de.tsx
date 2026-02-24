import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Tv } from "lucide-react";

export const imageSonEquipementMusiqueDe: MenuCategory = {
  id: "image-son-equipement-musique",
  name: "Bild, Ton & Musikausrüstung",
  slug: "image-son-equipement-musique",
  icon: <Tv className="w-4 h-4" />,
  subcategories: [
    { id: "televiseurs-affichage", name: "Fernseher & Anzeige", slug: "televiseurs-affichage",
      subcategories: [
        { id: "tv-led", name: "LED‑TV", slug: "tv-led" },
        { id: "tv-oled", name: "OLED‑TV", slug: "tv-oled" },
        { id: "tv-qled", name: "QLED‑TV", slug: "tv-qled" },
        { id: "tv-4k", name: "4K‑TV", slug: "tv-4k" },
        { id: "tv-8k", name: "8K‑TV", slug: "tv-8k" },
        { id: "tv-smart-android", name: "Android‑Smart‑TV", slug: "tv-smart-android" },
        { id: "tv-connectees", name: "Verbundene TVs", slug: "tv-connectees" },
        { id: "moniteurs-streaming", name: "Streaming‑Monitore", slug: "moniteurs-streaming" },
        { id: "videoprojecteurs", name: "Projektoren", slug: "videoprojecteurs" },
        { id: "mini-projecteurs", name: "Mini‑Projektoren", slug: "mini-projecteurs" },
        { id: "ecrans-portables", name: "Tragbare Bildschirme", slug: "ecrans-portables" },
        { id: "supports-tv-muraux", name: "TV‑Wandhalterungen", slug: "supports-tv-muraux" },
        { id: "pieds-tv", name: "TV‑Ständer", slug: "pieds-tv" }
      ]
    },
    { id: "audio-home-cinema", name: "Audio & Heimkino", slug: "audio-home-cinema",
      subcategories: [
        { id: "barres-de-son", name: "Soundbars", slug: "barres-de-son" },
        { id: "home-cinema-5-1", name: "Heimkino 5.1", slug: "home-cinema-5-1" },
        { id: "systemes-audio-2-1", name: "Audiosysteme 2.1", slug: "systemes-audio-2-1" },
        { id: "caissons-de-basses", name: "Subwoofer", slug: "caissons-de-basses" },
        { id: "amplificateurs", name: "Verstärker", slug: "amplificateurs" },
        { id: "recepteurs-av", name: "AV‑Receiver", slug: "recepteurs-av" },
        { id: "enceintes-hifi", name: "Hi‑Fi‑Lautsprecher", slug: "enceintes-hifi" },
        { id: "enceintes-bluetooth", name: "Bluetooth‑Lautsprecher", slug: "enceintes-bluetooth" },
        { id: "enceintes-intelligentes", name: "Smart‑Lautsprecher", slug: "enceintes-intelligentes" },
        { id: "multiroom-audio", name: "Multiroom‑Audio", slug: "multiroom-audio" },
        { id: "soundbars-gaming", name: "Gaming‑Soundbars", slug: "soundbars-gaming" }
      ]
    },
    { id: "casques-ecouteurs", name: "Kopfhörer & Ohrhörer", slug: "casques-ecouteurs",
      subcategories: [
        { id: "casques-filaires", name: "Kabelgebundene Kopfhörer", slug: "casques-filaires" },
        { id: "casques-bluetooth", name: "Bluetooth‑Kopfhörer", slug: "casques-bluetooth" },
        { id: "casques-gaming", name: "Gaming‑Headsets", slug: "casques-gaming" },
        { id: "casques-antibruit", name: "Noise‑Cancelling", slug: "casques-antibruit" },
        { id: "ecouteurs-intra-auriculaires", name: "In‑Ear‑Hörer", slug: "ecouteurs-intra-auriculaires" },
        { id: "ecouteurs-tws", name: "True‑Wireless", slug: "ecouteurs-tws" },
        { id: "ecouteurs-sport", name: "Sport‑Ohrhörer", slug: "ecouteurs-sport" },
        { id: "casques-studio", name: "Studio‑Kopfhörer", slug: "casques-studio" },
        { id: "casques-dj", name: "DJ‑Kopfhörer", slug: "casques-dj" }
      ]
    },
    { id: "photo-video", name: "Foto & Video", slug: "photo-video",
      subcategories: [
        { id: "appareils-photo-reflex", name: "DSLR‑Kameras", slug: "appareils-photo-reflex" },
        { id: "appareils-photo-hybrides", name: "Spiegellose Kameras", slug: "appareils-photo-hybrides" },
        { id: "appareils-compacts", name: "Kompaktkameras", slug: "appareils-compacts" },
        { id: "camescopes", name: "Camcorder", slug: "camescopes" },
        { id: "action-cams", name: "Action‑Cams", slug: "action-cams" },
        { id: "drones-camera", name: "Kamera‑Drohnen", slug: "drones-camera" },
        { id: "objectifs-photo", name: "Fotoobjektive", slug: "objectifs-photo" },
        { id: "trepieds", name: "Stative", slug: "trepieds" },
        { id: "stabilisateurs", name: "Stabilisatoren", slug: "stabilisateurs" },
        { id: "gimbals", name: "Gimbals", slug: "gimbals" },
        { id: "flashes-eclairages", name: "Blitze & Beleuchtung", slug: "flashes-eclairages" },
        { id: "cartes-memoire", name: "Speicherkarten", slug: "cartes-memoire" },
        { id: "fonds-photo", name: "Hintergründe", slug: "fonds-photo" }
      ]
    },
    { id: "studios-audio-enregistrement", name: "Audiostudio & Aufnahme", slug: "studios-audio-enregistrement",
      subcategories: [
        { id: "microphones-usb", name: "USB‑Mikrofone", slug: "microphones-usb" },
        { id: "microphones-xlr", name: "XLR‑Mikrofone", slug: "microphones-xlr" },
        { id: "interfaces-audio", name: "Audio‑Interfaces", slug: "interfaces-audio" },
        { id: "casques-studio-2", name: "Studio‑Kopfhörer", slug: "casques-studio-2" },
        { id: "moniteurs-de-studio", name: "Studiomonitore", slug: "moniteurs-de-studio" },
        { id: "mixeurs-audio", name: "Audiomixer", slug: "mixeurs-audio" },
        { id: "preamplis", name: "Preamps", slug: "preamplis" },
        { id: "enregistreurs-portables", name: "Portable Recorder", slug: "enregistreurs-portables" },
        { id: "cartes-son-externes", name: "Externe Soundkarten", slug: "cartes-son-externes" },
        { id: "shields-acoustiques", name: "Akustikschilde", slug: "shields-acoustiques" },
        { id: "accessoires-studio", name: "Studio‑Zubehör", slug: "accessoires-studio" }
      ]
    },
    { id: "sonorisation-evenementiel", name: "Beschallung & Events", slug: "sonorisation-evenementiel",
      subcategories: [
        { id: "enceintes-professionnelles", name: "Pro‑Lautsprecher", slug: "enceintes-professionnelles" },
        { id: "caissons-de-basses-pro", name: "Pro‑Subwoofer", slug: "caissons-de-basses-pro" },
        { id: "amplis-de-puissance", name: "Leistungsverstärker", slug: "amplis-de-puissance" },
        { id: "mixeurs-tables-de-mixage", name: "Mixer & Pulte", slug: "mixeurs-tables-de-mixage" },
        { id: "micros-hf-sans-fil", name: "Funkmikrofone", slug: "micros-hf-sans-fil" },
        { id: "systemes-karaoke", name: "Karaoke‑Systeme", slug: "systemes-karaoke" },
        { id: "jeux-de-lumiere", name: "Lichteffekte", slug: "jeux-de-lumiere" },
        { id: "lasers", name: "Laser", slug: "lasers" },
        { id: "machines-a-fumee", name: "Nebelmaschinen", slug: "machines-a-fumee" },
        { id: "stands-et-trepieds", name: "Ständer & Stative", slug: "stands-et-trepieds" },
        { id: "cablage-audio-xlr", name: "Audio‑ & XLR‑Kabel", slug: "cablage-audio-xlr" }
      ]
    },
    { id: "equipement-musique", name: "Musikausrüstung", slug: "equipement-musique",
      subcategories: [
        { id: "guitares-acoustiques", name: "Akustikgitarren", slug: "guitares-acoustiques" },
        { id: "guitares-electriques", name: "E‑Gitarren", slug: "guitares-electriques" },
        { id: "guitares-basses", name: "Bassgitarren", slug: "guitares-basses" },
        { id: "violons", name: "Violinen", slug: "violons" },
        { id: "mandolines", name: "Mandolinen", slug: "mandolines" },
        { id: "oud-instruments-orientaux", name: "Oud & orientalische Instrumente", slug: "oud-instruments-orientaux" },
        { id: "pianos-numeriques", name: "Digitale Pianos", slug: "pianos-numeriques" },
        { id: "claviers-arrangeurs", name: "Arranger‑Keyboards", slug: "claviers-arrangeurs" },
        { id: "synthetiseurs", name: "Synthesizer", slug: "synthetiseurs" },
        { id: "batteries-acoustiques", name: "Akustik‑Drums", slug: "batteries-acoustiques" },
        { id: "batteries-electroniques", name: "E‑Drums", slug: "batteries-electroniques" },
        { id: "percussions", name: "Percussion", slug: "percussions" },
        { id: "harmonicas", name: "Mundharmonikas", slug: "harmonicas" }
      ]
    },
    { id: "equipement-dj", name: "DJ‑Ausrüstung", slug: "equipement-dj",
      subcategories: [
        { id: "platines-dj", name: "DJ‑Plattenspieler", slug: "platines-dj" },
        { id: "controleurs-dj", name: "DJ‑Controller", slug: "controleurs-dj" },
        { id: "mixeurs-dj", name: "DJ‑Mixer", slug: "mixeurs-dj" },
        { id: "casques-dj-2", name: "DJ‑Kopfhörer", slug: "casques-dj-2" },
        { id: "eclairage-dj", name: "DJ‑Beleuchtung", slug: "eclairage-dj" },
        { id: "pads-boites-rythmes", name: "Pads & Drum‑Machines", slug: "pads-boites-rythmes" },
        { id: "logiciels-dj", name: "DJ‑Software", slug: "logiciels-dj" },
        { id: "interfaces-dj", name: "DJ‑Interfaces", slug: "interfaces-dj" }
      ]
    },
    { id: "accessoires-instruments", name: "Instrumentenzubehör", slug: "accessoires-instruments",
      subcategories: [
        { id: "cordes-guitare-violon", name: "Saiten (Gitarre/Violine)", slug: "cordes-guitare-violon" },
        { id: "mediators", name: "Plektren", slug: "mediators" },
        { id: "capodastres", name: "Kapodaster", slug: "capodastres" },
        { id: "stands-instruments", name: "Instrumentenständer", slug: "stands-instruments" },
        { id: "housses-etuis", name: "Taschen & Koffer", slug: "housses-etuis" },
        { id: "accordeurs-electroniques", name: "Elektronische Stimmer", slug: "accordeurs-electroniques" },
        { id: "metronome", name: "Metronom", slug: "metronome" },
        { id: "batteries-peaux", name: "Drumheads & Zubehör", slug: "batteries-peaux" },
        { id: "baguettes", name: "Drumsticks", slug: "baguettes" },
        { id: "ampli-guitare-basse", name: "Gitarren/Bass‑Amps", slug: "ampli-guitare-basse" },
        { id: "cables-jack-xlr", name: "Klinke & XLR‑Kabel", slug: "cables-jack-xlr" }
      ]
    },
    { id: "streaming-creation-contenu", name: "Streaming & Content‑Erstellung", slug: "streaming-creation-contenu",
      subcategories: [
        { id: "cameras-streaming", name: "Streaming‑Kameras", slug: "cameras-streaming" },
        { id: "webcams-hd", name: "HD‑Webcams", slug: "webcams-hd" },
        { id: "micros-streaming", name: "Streaming‑Mikrofone", slug: "micros-streaming" },
        { id: "anneaux-lumineux", name: "Ringlichter", slug: "anneaux-lumineux" },
        { id: "lampes-led-createurs", name: "LED‑Lampen für Creator", slug: "lampes-led-createurs" },
        { id: "green-screen", name: "Green Screen", slug: "green-screen" },
        { id: "pupitres-streaming", name: "Streaming‑Pulte", slug: "pupitres-streaming" },
        { id: "cartes-acquisition-video", name: "Capture‑Karten", slug: "cartes-acquisition-video" },
        { id: "equipement-podcast", name: "Podcast‑Ausrüstung", slug: "equipement-podcast" }
      ]
    },
    { id: "radios-multimedia", name: "Radios & Multimedia", slug: "radios-multimedia",
      subcategories: [
        { id: "radios-fm", name: "UKW‑Radios", slug: "radios-fm" },
        { id: "radios-digitaux", name: "Digitale Radios", slug: "radios-digitaux" },
        { id: "lecteurs-mp3", name: "MP3‑Player", slug: "lecteurs-mp3" },
        { id: "enceintes-nomades", name: "Mobile Lautsprecher", slug: "enceintes-nomades" },
        { id: "autoradios", name: "Autoradios", slug: "autoradios" },
        { id: "amplificateurs-voiture", name: "Auto‑Verstärker", slug: "amplificateurs-voiture" },
        { id: "subwoofers-voiture", name: "Auto‑Subwoofer", slug: "subwoofers-voiture" },
        { id: "ecrans-android-voiture", name: "Android‑Bildschirme fürs Auto", slug: "ecrans-android-voiture" }
      ]
    },
    { id: "equipements-cinema-maison", name: "Heimkino‑Ausstattung", slug: "equipements-cinema-maison",
      subcategories: [
        { id: "videoprojecteurs-4k", name: "4K‑Projektoren", slug: "videoprojecteurs-4k" },
        { id: "ecrans-de-projection", name: "Leinwände", slug: "ecrans-de-projection" },
        { id: "supports-plafond", name: "Deckenhalterungen", slug: "supports-plafond" },
        { id: "systemes-audio-surround", name: "Surround‑Systeme", slug: "systemes-audio-surround" },
        { id: "cablage-hdmi", name: "HDMI‑Verkabelung", slug: "cablage-hdmi" },
        { id: "convertisseurs-audio-video", name: "Audio/Video‑Konverter", slug: "convertisseurs-audio-video" }
      ]
    },
    { id: "electroniques-portables", name: "Tragbare Elektronik", slug: "electroniques-portables",
      subcategories: [
        { id: "mini-projecteurs-portables", name: "Mini‑Projektoren mobil", slug: "mini-projecteurs-portables" },
        { id: "enceintes-outdoor", name: "Outdoor‑Lautsprecher", slug: "enceintes-outdoor" },
        { id: "casques-sport", name: "Sport‑Kopfhörer", slug: "casques-sport" },
        { id: "amplis-nomades", name: "Mobile Amps", slug: "amplis-nomades" },
        { id: "enregistreurs-de-terrain", name: "Feld‑Recorder", slug: "enregistreurs-de-terrain" }
      ]
    },
    { id: "accessoires-image-son", name: "Bild & Ton‑Zubehör", slug: "accessoires-image-son",
      subcategories: [
        { id: "cables-hdmi", name: "HDMI‑Kabel", slug: "cables-hdmi" },
        { id: "cables-audio-jack-rca", name: "Klinke & RCA‑Kabel", slug: "cables-audio-jack-rca" },
        { id: "adaptateurs", name: "Adapter", slug: "adaptateurs" },
        { id: "batteries-chargeurs", name: "Akkus & Ladegeräte", slug: "batteries-chargeurs" },
        { id: "nettoyants-lentilles", name: "Linsenreiniger", slug: "nettoyants-lentilles" },
        { id: "filtres-photo", name: "Foto‑Filter", slug: "filtres-photo" },
        { id: "cartes-sd", name: "SD‑Karten", slug: "cartes-sd" },
        { id: "boitiers-transport", name: "Transportkoffer", slug: "boitiers-transport" },
        { id: "pieds-camera", name: "Kamerastative", slug: "pieds-camera" }
      ]
    },
    { id: "marques-populaires", name: "Beliebte Marken", slug: "marques-populaires",
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
    { id: "segments-usage", name: "Anwendungssegmente", slug: "segments-usage",
      subcategories: [
        { id: "image-domestique", name: "Heim‑Bild", slug: "image-domestique" },
        { id: "son-domestique", name: "Heim‑Audio", slug: "son-domestique" },
        { id: "audio-professionnel", name: "Pro‑Audio", slug: "audio-professionnel" },
        { id: "studio-enregistrement", name: "Aufnahmestudio", slug: "studio-enregistrement" },
        { id: "dj-evenementiel", name: "DJ & Events", slug: "dj-evenementiel" },
        { id: "creation-contenu", name: "Content‑Erstellung", slug: "creation-contenu" },
        { id: "musique-amateur", name: "Hobby‑Musik", slug: "musique-amateur" },
        { id: "musique-professionnelle", name: "Profi‑Musik", slug: "musique-professionnelle" }
      ]
    }
  ]
};