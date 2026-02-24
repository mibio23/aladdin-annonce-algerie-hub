import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Tv } from "lucide-react";

export const imageSonEquipementMusiqueEs: MenuCategory = {
  id: "image-son-equipement-musique",
  name: "Imagen, Sonido y Equipos de Música",
  slug: "image-son-equipement-musique",
  icon: <Tv className="w-4 h-4" />,
  subcategories: [
    { id: "televiseurs-affichage", name: "Televisores y Pantallas", slug: "televiseurs-affichage",
      subcategories: [
        { id: "tv-led", name: "TV LED", slug: "tv-led" },
        { id: "tv-oled", name: "TV OLED", slug: "tv-oled" },
        { id: "tv-qled", name: "TV QLED", slug: "tv-qled" },
        { id: "tv-4k", name: "TV 4K", slug: "tv-4k" },
        { id: "tv-8k", name: "TV 8K", slug: "tv-8k" },
        { id: "tv-smart-android", name: "TV Android Smart", slug: "tv-smart-android" },
        { id: "tv-connectees", name: "TV Conectadas", slug: "tv-connectees" },
        { id: "moniteurs-streaming", name: "Monitores de Streaming", slug: "moniteurs-streaming" },
        { id: "videoprojecteurs", name: "Proyectores", slug: "videoprojecteurs" },
        { id: "mini-projecteurs", name: "Mini Proyectores", slug: "mini-projecteurs" },
        { id: "ecrans-portables", name: "Pantallas Portátiles", slug: "ecrans-portables" },
        { id: "supports-tv-muraux", name: "Soportes TV de Pared", slug: "supports-tv-muraux" },
        { id: "pieds-tv", name: "Bases de TV", slug: "pieds-tv" }
      ]
    },
    { id: "audio-home-cinema", name: "Audio y Cine en Casa", slug: "audio-home-cinema",
      subcategories: [
        { id: "barres-de-son", name: "Barras de Sonido", slug: "barres-de-son" },
        { id: "home-cinema-5-1", name: "Home Cinema 5.1", slug: "home-cinema-5-1" },
        { id: "systemes-audio-2-1", name: "Sistemas de Audio 2.1", slug: "systemes-audio-2-1" },
        { id: "caissons-de-basses", name: "Subwoofers", slug: "caissons-de-basses" },
        { id: "amplificateurs", name: "Amplificadores", slug: "amplificateurs" },
        { id: "recepteurs-av", name: "Receptores AV", slug: "recepteurs-av" },
        { id: "enceintes-hifi", name: "Altavoces Hi‑Fi", slug: "enceintes-hifi" },
        { id: "enceintes-bluetooth", name: "Altavoces Bluetooth", slug: "enceintes-bluetooth" },
        { id: "enceintes-intelligentes", name: "Altavoces Inteligentes", slug: "enceintes-intelligentes" },
        { id: "multiroom-audio", name: "Audio Multiroom", slug: "multiroom-audio" },
        { id: "soundbars-gaming", name: "Soundbars Gaming", slug: "soundbars-gaming" }
      ]
    },
    { id: "casques-ecouteurs", name: "Auriculares & Cascos", slug: "casques-ecouteurs",
      subcategories: [
        { id: "casques-filaires", name: "Cascos con Cable", slug: "casques-filaires" },
        { id: "casques-bluetooth", name: "Cascos Bluetooth", slug: "casques-bluetooth" },
        { id: "casques-gaming", name: "Cascos Gaming", slug: "casques-gaming" },
        { id: "casques-antibruit", name: "Cancelación de Ruido", slug: "casques-antibruit" },
        { id: "ecouteurs-intra-auriculaires", name: "Auriculares Intraaurales", slug: "ecouteurs-intra-auriculaires" },
        { id: "ecouteurs-tws", name: "Auriculares TWS", slug: "ecouteurs-tws" },
        { id: "ecouteurs-sport", name: "Auriculares Deportivos", slug: "ecouteurs-sport" },
        { id: "casques-studio", name: "Cascos de Estudio", slug: "casques-studio" },
        { id: "casques-dj", name: "Cascos DJ", slug: "casques-dj" }
      ]
    },
    { id: "photo-video", name: "Foto & Video", slug: "photo-video",
      subcategories: [
        { id: "appareils-photo-reflex", name: "Cámaras DSLR", slug: "appareils-photo-reflex" },
        { id: "appareils-photo-hybrides", name: "Cámaras Mirrorless", slug: "appareils-photo-hybrides" },
        { id: "appareils-compacts", name: "Cámaras Compactas", slug: "appareils-compacts" },
        { id: "camescopes", name: "Videocámaras", slug: "camescopes" },
        { id: "action-cams", name: "Cámaras de Acción", slug: "action-cams" },
        { id: "drones-camera", name: "Drones con Cámara", slug: "drones-camera" },
        { id: "objectifs-photo", name: "Objetivos", slug: "objectifs-photo" },
        { id: "trepieds", name: "Trípodes", slug: "trepieds" },
        { id: "stabilisateurs", name: "Estabilizadores", slug: "stabilisateurs" },
        { id: "gimbals", name: "Gimbals", slug: "gimbals" },
        { id: "flashes-eclairages", name: "Flashes & Iluminación", slug: "flashes-eclairages" },
        { id: "cartes-memoire", name: "Tarjetas de Memoria", slug: "cartes-memoire" },
        { id: "fonds-photo", name: "Fondos Fotográficos", slug: "fonds-photo" }
      ]
    },
    { id: "studios-audio-enregistrement", name: "Estudio de Audio & Grabación", slug: "studios-audio-enregistrement",
      subcategories: [
        { id: "microphones-usb", name: "Micrófonos USB", slug: "microphones-usb" },
        { id: "microphones-xlr", name: "Micrófonos XLR", slug: "microphones-xlr" },
        { id: "interfaces-audio", name: "Interfaces de Audio", slug: "interfaces-audio" },
        { id: "casques-studio-2", name: "Cascos de Estudio", slug: "casques-studio-2" },
        { id: "moniteurs-de-studio", name: "Monitores de Estudio", slug: "moniteurs-de-studio" },
        { id: "mixeurs-audio", name: "Mezcladores de Audio", slug: "mixeurs-audio" },
        { id: "preamplis", name: "Preamplificadores", slug: "preamplis" },
        { id: "enregistreurs-portables", name: "Grabadoras Portátiles", slug: "enregistreurs-portables" },
        { id: "cartes-son-externes", name: "Tarjetas de Sonido Externas", slug: "cartes-son-externes" },
        { id: "shields-acoustiques", name: "Pantallas Acústicas", slug: "shields-acoustiques" },
        { id: "accessoires-studio", name: "Accesorios de Estudio", slug: "accessoires-studio" }
      ]
    },
    { id: "sonorisation-evenementiel", name: "Sonorización & Eventos", slug: "sonorisation-evenementiel",
      subcategories: [
        { id: "enceintes-professionnelles", name: "Altavoces Profesionales", slug: "enceintes-professionnelles" },
        { id: "caissons-de-basses-pro", name: "Subwoofers Pro", slug: "caissons-de-basses-pro" },
        { id: "amplis-de-puissance", name: "Amplificadores de Potencia", slug: "amplis-de-puissance" },
        { id: "mixeurs-tables-de-mixage", name: "Mezcladores & Mesas", slug: "mixeurs-tables-de-mixage" },
        { id: "micros-hf-sans-fil", name: "Micrófonos Inalámbricos", slug: "micros-hf-sans-fil" },
        { id: "systemes-karaoke", name: "Sistemas Karaoke", slug: "systemes-karaoke" },
        { id: "jeux-de-lumiere", name: "Efectos de Luz", slug: "jeux-de-lumiere" },
        { id: "lasers", name: "Lásers", slug: "lasers" },
        { id: "machines-a-fumee", name: "Máquinas de Humo", slug: "machines-a-fumee" },
        { id: "stands-et-trepieds", name: "Soportes & Trípodes", slug: "stands-et-trepieds" },
        { id: "cablage-audio-xlr", name: "Cables de Audio & XLR", slug: "cablage-audio-xlr" }
      ]
    },
    { id: "equipement-musique", name: "Equipos de Música", slug: "equipement-musique",
      subcategories: [
        { id: "guitares-acoustiques", name: "Guitarras Acústicas", slug: "guitares-acoustiques" },
        { id: "guitares-electriques", name: "Guitarras Eléctricas", slug: "guitares-electriques" },
        { id: "guitares-basses", name: "Bajos", slug: "guitares-basses" },
        { id: "violons", name: "Violines", slug: "violons" },
        { id: "mandolines", name: "Mandolinas", slug: "mandolines" },
        { id: "oud-instruments-orientaux", name: "Oud e Instrumentos Orientales", slug: "oud-instruments-orientaux" },
        { id: "pianos-numeriques", name: "Pianos Digitales", slug: "pianos-numeriques" },
        { id: "claviers-arrangeurs", name: "Teclados Arreglistas", slug: "claviers-arrangeurs" },
        { id: "synthetiseurs", name: "Sintetizadores", slug: "synthetiseurs" },
        { id: "batteries-acoustiques", name: "Baterías Acústicas", slug: "batteries-acoustiques" },
        { id: "batteries-electroniques", name: "Baterías Electrónicas", slug: "batteries-electroniques" },
        { id: "percussions", name: "Percusión", slug: "percussions" },
        { id: "harmonicas", name: "Armónicas", slug: "harmonicas" }
      ]
    },
    { id: "equipement-dj", name: "Equipos DJ", slug: "equipement-dj",
      subcategories: [
        { id: "platines-dj", name: "Platos DJ", slug: "platines-dj" },
        { id: "controleurs-dj", name: "Controladores DJ", slug: "controleurs-dj" },
        { id: "mixeurs-dj", name: "Mezcladores DJ", slug: "mixeurs-dj" },
        { id: "casques-dj-2", name: "Cascos DJ", slug: "casques-dj-2" },
        { id: "eclairage-dj", name: "Iluminación DJ", slug: "eclairage-dj" },
        { id: "pads-boites-rythmes", name: "Pads & Cajas de Ritmos", slug: "pads-boites-rythmes" },
        { id: "logiciels-dj", name: "Software DJ", slug: "logiciels-dj" },
        { id: "interfaces-dj", name: "Interfaces DJ", slug: "interfaces-dj" }
      ]
    },
    { id: "accessoires-instruments", name: "Accesorios de Instrumentos", slug: "accessoires-instruments",
      subcategories: [
        { id: "cordes-guitare-violon", name: "Cuerdas (Guitarra/Violín)", slug: "cordes-guitare-violon" },
        { id: "mediators", name: "Púas", slug: "mediators" },
        { id: "capodastres", name: "Capos", slug: "capodastres" },
        { id: "stands-instruments", name: "Soportes de Instrumentos", slug: "stands-instruments" },
        { id: "housses-etuis", name: "Fundas & Estuches", slug: "housses-etuis" },
        { id: "accordeurs-electroniques", name: "Afinadores Electrónicos", slug: "accordeurs-electroniques" },
        { id: "metronome", name: "Metrónomo", slug: "metronome" },
        { id: "batteries-peaux", name: "Parches & Accesorios", slug: "batteries-peaux" },
        { id: "baguettes", name: "Baquetas", slug: "baguettes" },
        { id: "ampli-guitare-basse", name: "Amplis Guitarra/Bajo", slug: "ampli-guitare-basse" },
        { id: "cables-jack-xlr", name: "Cables Jack & XLR", slug: "cables-jack-xlr" }
      ]
    },
    { id: "streaming-creation-contenu", name: "Streaming y Creación de Contenido", slug: "streaming-creation-contenu",
      subcategories: [
        { id: "cameras-streaming", name: "Cámaras de Streaming", slug: "cameras-streaming" },
        { id: "webcams-hd", name: "Webcams HD", slug: "webcams-hd" },
        { id: "micros-streaming", name: "Micrófonos de Streaming", slug: "micros-streaming" },
        { id: "anneaux-lumineux", name: "Aros de Luz", slug: "anneaux-lumineux" },
        { id: "lampes-led-createurs", name: "Lámparas LED de Creadores", slug: "lampes-led-createurs" },
        { id: "green-screen", name: "Pantalla Verde", slug: "green-screen" },
        { id: "pupitres-streaming", name: "Consolas de Streaming", slug: "pupitres-streaming" },
        { id: "cartes-acquisition-video", name: "Capturadoras de Vídeo", slug: "cartes-acquisition-video" },
        { id: "equipement-podcast", name: "Equipos de Podcast", slug: "equipement-podcast" }
      ]
    },
    { id: "radios-multimedia", name: "Radios & Multimedia", slug: "radios-multimedia",
      subcategories: [
        { id: "radios-fm", name: "Radios FM", slug: "radios-fm" },
        { id: "radios-digitaux", name: "Radios Digitales", slug: "radios-digitaux" },
        { id: "lecteurs-mp3", name: "Reproductores MP3", slug: "lecteurs-mp3" },
        { id: "enceintes-nomades", name: "Altavoces Portátiles", slug: "enceintes-nomades" },
        { id: "autoradios", name: "Radios de Coche", slug: "autoradios" },
        { id: "amplificateurs-voiture", name: "Amplificadores de Coche", slug: "amplificateurs-voiture" },
        { id: "subwoofers-voiture", name: "Subwoofers de Coche", slug: "subwoofers-voiture" },
        { id: "ecrans-android-voiture", name: "Pantallas Android para Coche", slug: "ecrans-android-voiture" }
      ]
    },
    { id: "equipements-cinema-maison", name: "Equipos de Cine en Casa", slug: "equipements-cinema-maison",
      subcategories: [
        { id: "videoprojecteurs-4k", name: "Proyectores 4K", slug: "videoprojecteurs-4k" },
        { id: "ecrans-de-projection", name: "Pantallas de Proyección", slug: "ecrans-de-projection" },
        { id: "supports-plafond", name: "Soportes de Techo", slug: "supports-plafond" },
        { id: "systemes-audio-surround", name: "Sistemas de Sonido Surround", slug: "systemes-audio-surround" },
        { id: "cablage-hdmi", name: "Cableado HDMI", slug: "cablage-hdmi" },
        { id: "convertisseurs-audio-video", name: "Convertidores Audio/Vídeo", slug: "convertisseurs-audio-video" }
      ]
    },
    { id: "electroniques-portables", name: "Electrónica Portátil", slug: "electroniques-portables",
      subcategories: [
        { id: "mini-projecteurs-portables", name: "Mini Proyectores Portátiles", slug: "mini-projecteurs-portables" },
        { id: "enceintes-outdoor", name: "Altavoces Outdoor", slug: "enceintes-outdoor" },
        { id: "casques-sport", name: "Cascos Deportivos", slug: "casques-sport" },
        { id: "amplis-nomades", name: "Amplificadores Portátiles", slug: "amplis-nomades" },
        { id: "enregistreurs-de-terrain", name: "Grabadoras de Campo", slug: "enregistreurs-de-terrain" }
      ]
    },
    { id: "accessoires-image-son", name: "Accesorios de Imagen & Sonido", slug: "accessoires-image-son",
      subcategories: [
        { id: "cables-hdmi", name: "Cables HDMI", slug: "cables-hdmi" },
        { id: "cables-audio-jack-rca", name: "Cables Jack & RCA", slug: "cables-audio-jack-rca" },
        { id: "adaptateurs", name: "Adaptadores", slug: "adaptateurs" },
        { id: "batteries-chargeurs", name: "Baterías & Cargadores", slug: "batteries-chargeurs" },
        { id: "nettoyants-lentilles", name: "Limpiadores de Lentes", slug: "nettoyants-lentilles" },
        { id: "filtres-photo", name: "Filtros Fotográficos", slug: "filtres-photo" },
        { id: "cartes-sd", name: "Tarjetas SD", slug: "cartes-sd" },
        { id: "boitiers-transport", name: "Estuches de Transporte", slug: "boitiers-transport" },
        { id: "pieds-camera", name: "Trípodes de Cámara", slug: "pieds-camera" }
      ]
    },
    { id: "marques-populaires", name: "Marcas Populares", slug: "marques-populaires",
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
    { id: "segments-usage", name: "Segmentos de Uso", slug: "segments-usage",
      subcategories: [
        { id: "image-domestique", name: "Imagen Doméstica", slug: "image-domestique" },
        { id: "son-domestique", name: "Sonido Doméstico", slug: "son-domestique" },
        { id: "audio-professionnel", name: "Audio Profesional", slug: "audio-professionnel" },
        { id: "studio-enregistrement", name: "Estudio de Grabación", slug: "studio-enregistrement" },
        { id: "dj-evenementiel", name: "DJ & Eventos", slug: "dj-evenementiel" },
        { id: "creation-contenu", name: "Creación de Contenido", slug: "creation-contenu" },
        { id: "musique-amateur", name: "Música Amateur", slug: "musique-amateur" },
        { id: "musique-professionnelle", name: "Música Profesional", slug: "musique-professionnelle" }
      ]
    }
  ]
};