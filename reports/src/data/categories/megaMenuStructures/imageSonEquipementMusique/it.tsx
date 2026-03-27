import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Tv } from "lucide-react";

export const imageSonEquipementMusiqueIt: MenuCategory = {
  id: "image-son-equipement-musique",
  name: "Immagine, Suono & Attrezzature Musicali",
  slug: "image-son-equipement-musique",
  icon: <Tv className="w-4 h-4" />,
  subcategories: [
    { id: "televiseurs-affichage", name: "Televisori & Display", slug: "televiseurs-affichage",
      subcategories: [
        { id: "tv-led", name: "TV LED", slug: "tv-led" },
        { id: "tv-oled", name: "TV OLED", slug: "tv-oled" },
        { id: "tv-qled", name: "TV QLED", slug: "tv-qled" },
        { id: "tv-4k", name: "TV 4K", slug: "tv-4k" },
        { id: "tv-8k", name: "TV 8K", slug: "tv-8k" },
        { id: "tv-smart-android", name: "TV Android Smart", slug: "tv-smart-android" },
        { id: "tv-connectees", name: "TV Connesse", slug: "tv-connectees" },
        { id: "moniteurs-streaming", name: "Monitor Streaming", slug: "moniteurs-streaming" },
        { id: "videoprojecteurs", name: "Videoproiettori", slug: "videoprojecteurs" },
        { id: "mini-projecteurs", name: "Mini Proiettori", slug: "mini-projecteurs" },
        { id: "ecrans-portables", name: "Schermi Portatili", slug: "ecrans-portables" },
        { id: "supports-tv-muraux", name: "Supporti TV a Parete", slug: "supports-tv-muraux" },
        { id: "pieds-tv", name: "Supporti TV", slug: "pieds-tv" }
      ]
    },
    { id: "audio-home-cinema", name: "Audio & Home Cinema", slug: "audio-home-cinema",
      subcategories: [
        { id: "barres-de-son", name: "Soundbar", slug: "barres-de-son" },
        { id: "home-cinema-5-1", name: "Home Cinema 5.1", slug: "home-cinema-5-1" },
        { id: "systemes-audio-2-1", name: "Sistemi Audio 2.1", slug: "systemes-audio-2-1" },
        { id: "caissons-de-basses", name: "Subwoofer", slug: "caissons-de-basses" },
        { id: "amplificateurs", name: "Amplificatori", slug: "amplificateurs" },
        { id: "recepteurs-av", name: "Ricevitori AV", slug: "recepteurs-av" },
        { id: "enceintes-hifi", name: "Diffusori Hi‑Fi", slug: "enceintes-hifi" },
        { id: "enceintes-bluetooth", name: "Diffusori Bluetooth", slug: "enceintes-bluetooth" },
        { id: "enceintes-intelligentes", name: "Diffusori Smart", slug: "enceintes-intelligentes" },
        { id: "multiroom-audio", name: "Audio Multiroom", slug: "multiroom-audio" },
        { id: "soundbars-gaming", name: "Soundbar Gaming", slug: "soundbars-gaming" }
      ]
    },
    { id: "casques-ecouteurs", name: "Cuffie & Auricolari", slug: "casques-ecouteurs",
      subcategories: [
        { id: "casques-filaires", name: "Cuffie con Cavo", slug: "casques-filaires" },
        { id: "casques-bluetooth", name: "Cuffie Bluetooth", slug: "casques-bluetooth" },
        { id: "casques-gaming", name: "Cuffie Gaming", slug: "casques-gaming" },
        { id: "casques-antibruit", name: "Cancellazione Rumore", slug: "casques-antibruit" },
        { id: "ecouteurs-intra-auriculaires", name: "Auricolari In‑Ear", slug: "ecouteurs-intra-auriculaires" },
        { id: "ecouteurs-tws", name: "Auricolari TWS", slug: "ecouteurs-tws" },
        { id: "ecouteurs-sport", name: "Auricolari Sport", slug: "ecouteurs-sport" },
        { id: "casques-studio", name: "Cuffie da Studio", slug: "casques-studio" },
        { id: "casques-dj", name: "Cuffie DJ", slug: "casques-dj" }
      ]
    },
    { id: "photo-video", name: "Foto & Video", slug: "photo-video",
      subcategories: [
        { id: "appareils-photo-reflex", name: "Fotocamere DSLR", slug: "appareils-photo-reflex" },
        { id: "appareils-photo-hybrides", name: "Fotocamere Mirrorless", slug: "appareils-photo-hybrides" },
        { id: "appareils-compacts", name: "Compatte", slug: "appareils-compacts" },
        { id: "camescopes", name: "Videocamere", slug: "camescopes" },
        { id: "action-cams", name: "Action Cam", slug: "action-cams" },
        { id: "drones-camera", name: "Droni con Camera", slug: "drones-camera" },
        { id: "objectifs-photo", name: "Obiettivi", slug: "objectifs-photo" },
        { id: "trepieds", name: "Treppiedi", slug: "trepieds" },
        { id: "stabilisateurs", name: "Stabilizzatori", slug: "stabilisateurs" },
        { id: "gimbals", name: "Gimbal", slug: "gimbals" },
        { id: "flashes-eclairages", name: "Flash & Illuminazione", slug: "flashes-eclairages" },
        { id: "cartes-memoire", name: "Schede di Memoria", slug: "cartes-memoire" },
        { id: "fonds-photo", name: "Fondali Fotografici", slug: "fonds-photo" }
      ]
    },
    { id: "studios-audio-enregistrement", name: "Studio Audio & Registrazione", slug: "studios-audio-enregistrement",
      subcategories: [
        { id: "microphones-usb", name: "Microfoni USB", slug: "microphones-usb" },
        { id: "microphones-xlr", name: "Microfoni XLR", slug: "microphones-xlr" },
        { id: "interfaces-audio", name: "Interfacce Audio", slug: "interfaces-audio" },
        { id: "casques-studio-2", name: "Cuffie da Studio", slug: "casques-studio-2" },
        { id: "moniteurs-de-studio", name: "Monitor da Studio", slug: "moniteurs-de-studio" },
        { id: "mixeurs-audio", name: "Mixer Audio", slug: "mixeurs-audio" },
        { id: "preamplis", name: "Preamplificatori", slug: "preamplis" },
        { id: "enregistreurs-portables", name: "Registratori Portatili", slug: "enregistreurs-portables" },
        { id: "cartes-son-externes", name: "Schede Audio Esterne", slug: "cartes-son-externes" },
        { id: "shields-acoustiques", name: "Schermi Acustici", slug: "shields-acoustiques" },
        { id: "accessoires-studio", name: "Accessori Studio", slug: "accessoires-studio" }
      ]
    },
    { id: "sonorisation-evenementiel", name: "Sonorizzazione & Eventi", slug: "sonorisation-evenementiel",
      subcategories: [
        { id: "enceintes-professionnelles", name: "Diffusori Professionali", slug: "enceintes-professionnelles" },
        { id: "caissons-de-basses-pro", name: "Subwoofer Pro", slug: "caissons-de-basses-pro" },
        { id: "amplis-de-puissance", name: "Amplificatori di Potenza", slug: "amplis-de-puissance" },
        { id: "mixeurs-tables-de-mixage", name: "Mixer & Consolle", slug: "mixeurs-tables-de-mixage" },
        { id: "micros-hf-sans-fil", name: "Microfoni Wireless", slug: "micros-hf-sans-fil" },
        { id: "systemes-karaoke", name: "Sistemi Karaoke", slug: "systemes-karaoke" },
        { id: "jeux-de-lumiere", name: "Effetti Luce", slug: "jeux-de-lumiere" },
        { id: "lasers", name: "Laser", slug: "lasers" },
        { id: "machines-a-fumee", name: "Macchine del Fumo", slug: "machines-a-fumee" },
        { id: "stands-et-trepieds", name: "Supporti & Treppiedi", slug: "stands-et-trepieds" },
        { id: "cablage-audio-xlr", name: "Cavi Audio & XLR", slug: "cablage-audio-xlr" }
      ]
    },
    { id: "equipement-musique", name: "Attrezzatura Musicale", slug: "equipement-musique",
      subcategories: [
        { id: "guitares-acoustiques", name: "Chitarre Acustiche", slug: "guitares-acoustiques" },
        { id: "guitares-electriques", name: "Chitarre Elettriche", slug: "guitares-electriques" },
        { id: "guitares-basses", name: "Bassi", slug: "guitares-basses" },
        { id: "violons", name: "Violini", slug: "violons" },
        { id: "mandolines", name: "Mandolini", slug: "mandolines" },
        { id: "oud-instruments-orientaux", name: "Oud & Strumenti Orientali", slug: "oud-instruments-orientaux" },
        { id: "pianos-numeriques", name: "Pianoforti Digitali", slug: "pianos-numeriques" },
        { id: "claviers-arrangeurs", name: "Tastiere Arranger", slug: "claviers-arrangeurs" },
        { id: "synthetiseurs", name: "Sintetizzatori", slug: "synthetiseurs" },
        { id: "batteries-acoustiques", name: "Batterie Acustiche", slug: "batteries-acoustiques" },
        { id: "batteries-electroniques", name: "Batterie Elettroniche", slug: "batteries-electroniques" },
        { id: "percussions", name: "Percussioni", slug: "percussions" },
        { id: "harmonicas", name: "Armoniche", slug: "harmonicas" }
      ]
    },
    { id: "equipement-dj", name: "Attrezzatura DJ", slug: "equipement-dj",
      subcategories: [
        { id: "platines-dj", name: "Giradischi DJ", slug: "platines-dj" },
        { id: "controleurs-dj", name: "Controller DJ", slug: "controleurs-dj" },
        { id: "mixeurs-dj", name: "Mixer DJ", slug: "mixeurs-dj" },
        { id: "casques-dj-2", name: "Cuffie DJ", slug: "casques-dj-2" },
        { id: "eclairage-dj", name: "Illuminazione DJ", slug: "eclairage-dj" },
        { id: "pads-boites-rythmes", name: "Pads & Drum Machine", slug: "pads-boites-rythmes" },
        { id: "logiciels-dj", name: "Software DJ", slug: "logiciels-dj" },
        { id: "interfaces-dj", name: "Interfacce DJ", slug: "interfaces-dj" }
      ]
    },
    { id: "accessoires-instruments", name: "Accessori Strumenti", slug: "accessoires-instruments",
      subcategories: [
        { id: "cordes-guitare-violon", name: "Corde (Chitarra/Violino)", slug: "cordes-guitare-violon" },
        { id: "mediators", name: "Plettri", slug: "mediators" },
        { id: "capodastres", name: "Capotasti", slug: "capodastres" },
        { id: "stands-instruments", name: "Supporti Strumenti", slug: "stands-instruments" },
        { id: "housses-etuis", name: "Custodie & Borse", slug: "housses-etuis" },
        { id: "accordeurs-electroniques", name: "Accordatori Elettronici", slug: "accordeurs-electroniques" },
        { id: "metronome", name: "Metronomo", slug: "metronome" },
        { id: "batteries-peaux", name: "Pelli & Accessori", slug: "batteries-peaux" },
        { id: "baguettes", name: "Bacchette", slug: "baguettes" },
        { id: "ampli-guitare-basse", name: "Amplificatori Chitarra/Basso", slug: "ampli-guitare-basse" },
        { id: "cables-jack-xlr", name: "Cavi Jack & XLR", slug: "cables-jack-xlr" }
      ]
    },
    { id: "streaming-creation-contenu", name: "Streaming & Creazione Contenuti", slug: "streaming-creation-contenu",
      subcategories: [
        { id: "cameras-streaming", name: "Camere Streaming", slug: "cameras-streaming" },
        { id: "webcams-hd", name: "Webcam HD", slug: "webcams-hd" },
        { id: "micros-streaming", name: "Microfoni Streaming", slug: "micros-streaming" },
        { id: "anneaux-lumineux", name: "Ring Light", slug: "anneaux-lumineux" },
        { id: "lampes-led-createurs", name: "Lampade LED Creators", slug: "lampes-led-createurs" },
        { id: "green-screen", name: "Green Screen", slug: "green-screen" },
        { id: "pupitres-streaming", name: "Console Streaming", slug: "pupitres-streaming" },
        { id: "cartes-acquisition-video", name: "Schede di Acquisizione", slug: "cartes-acquisition-video" },
        { id: "equipement-podcast", name: "Attrezzatura Podcast", slug: "equipement-podcast" }
      ]
    },
    { id: "radios-multimedia", name: "Radio & Multimedia", slug: "radios-multimedia",
      subcategories: [
        { id: "radios-fm", name: "Radio FM", slug: "radios-fm" },
        { id: "radios-digitaux", name: "Radio Digitale", slug: "radios-digitaux" },
        { id: "lecteurs-mp3", name: "Lettori MP3", slug: "lecteurs-mp3" },
        { id: "enceintes-nomades", name: "Diffusori Portatili", slug: "enceintes-nomades" },
        { id: "autoradios", name: "Autoradio", slug: "autoradios" },
        { id: "amplificateurs-voiture", name: "Amplificatori Auto", slug: "amplificateurs-voiture" },
        { id: "subwoofers-voiture", name: "Subwoofer Auto", slug: "subwoofers-voiture" },
        { id: "ecrans-android-voiture", name: "Schermi Android Auto", slug: "ecrans-android-voiture" }
      ]
    },
    { id: "equipements-cinema-maison", name: "Attrezzature Home Cinema", slug: "equipements-cinema-maison",
      subcategories: [
        { id: "videoprojecteurs-4k", name: "Videoproiettori 4K", slug: "videoprojecteurs-4k" },
        { id: "ecrans-de-projection", name: "Schermi di Proiezione", slug: "ecrans-de-projection" },
        { id: "supports-plafond", name: "Supporti a Soffitto", slug: "supports-plafond" },
        { id: "systemes-audio-surround", name: "Sistemi Audio Surround", slug: "systemes-audio-surround" },
        { id: "cablage-hdmi", name: "Cablaggio HDMI", slug: "cablage-hdmi" },
        { id: "convertisseurs-audio-video", name: "Convertitori Audio/Video", slug: "convertisseurs-audio-video" }
      ]
    },
    { id: "electroniques-portables", name: "Elettronica Portatile", slug: "electroniques-portables",
      subcategories: [
        { id: "mini-projecteurs-portables", name: "Mini Proiettori Portatili", slug: "mini-projecteurs-portables" },
        { id: "enceintes-outdoor", name: "Diffusori Outdoor", slug: "enceintes-outdoor" },
        { id: "casques-sport", name: "Cuffie Sport", slug: "casques-sport" },
        { id: "amplis-nomades", name: "Amplificatori Portatili", slug: "amplis-nomades" },
        { id: "enregistreurs-de-terrain", name: "Registratori da Campo", slug: "enregistreurs-de-terrain" }
      ]
    },
    { id: "accessoires-image-son", name: "Accessori Immagine & Suono", slug: "accessoires-image-son",
      subcategories: [
        { id: "cables-hdmi", name: "Cavi HDMI", slug: "cables-hdmi" },
        { id: "cables-audio-jack-rca", name: "Cavi Jack & RCA", slug: "cables-audio-jack-rca" },
        { id: "adaptateurs", name: "Adattatori", slug: "adaptateurs" },
        { id: "batteries-chargeurs", name: "Batterie & Caricatori", slug: "batteries-chargeurs" },
        { id: "nettoyants-lentilles", name: "Pulitori Lenti", slug: "nettoyants-lentilles" },
        { id: "filtres-photo", name: "Filtri Fotografici", slug: "filtres-photo" },
        { id: "cartes-sd", name: "Schede SD", slug: "cartes-sd" },
        { id: "boitiers-transport", name: "Custodie Trasporto", slug: "boitiers-transport" },
        { id: "pieds-camera", name: "Treppiedi Fotocamera", slug: "pieds-camera" }
      ]
    },
    { id: "marques-populaires", name: "Marche Popolari", slug: "marques-populaires",
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
    { id: "segments-usage", name: "Segmenti d’Uso", slug: "segments-usage",
      subcategories: [
        { id: "image-domestique", name: "Immagine Domestica", slug: "image-domestique" },
        { id: "son-domestique", name: "Audio Domestico", slug: "son-domestique" },
        { id: "audio-professionnel", name: "Audio Professionale", slug: "audio-professionnel" },
        { id: "studio-enregistrement", name: "Studio di Registrazione", slug: "studio-enregistrement" },
        { id: "dj-evenementiel", name: "DJ & Eventi", slug: "dj-evenementiel" },
        { id: "creation-contenu", name: "Creazione Contenuti", slug: "creation-contenu" },
        { id: "musique-amateur", name: "Musica Amatoriale", slug: "musique-amateur" },
        { id: "musique-professionnelle", name: "Musica Professionale", slug: "musique-professionnelle" }
      ]
    }
  ]
};