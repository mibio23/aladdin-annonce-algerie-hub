import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Tv } from "lucide-react";

export const imageSonEquipementMusiqueFr: MenuCategory = {
  id: "image-son-equipement-musique",
  name: "Image, Son & Équipement de Musique",
  slug: "image-son-equipement-musique",
  icon: <Tv className="w-4 h-4" />,
  subcategories: [
    {
      id: "televiseurs-affichage",
      name: "Téléviseurs & Affichage",
      slug: "televiseurs-affichage",
      subcategories: [
        { id: "tv-led", name: "TV LED", slug: "tv-led" },
        { id: "tv-oled", name: "TV OLED", slug: "tv-oled" },
        { id: "tv-qled", name: "TV QLED", slug: "tv-qled" },
        { id: "tv-4k", name: "TV 4K", slug: "tv-4k" },
        { id: "tv-8k", name: "TV 8K", slug: "tv-8k" },
        { id: "tv-smart-android", name: "TV Smart Android", slug: "tv-smart-android" },
        { id: "tv-connectees", name: "TV connectées", slug: "tv-connectees" },
        { id: "moniteurs-streaming", name: "Moniteurs streaming", slug: "moniteurs-streaming" },
        { id: "videoprojecteurs", name: "Vidéoprojecteurs", slug: "videoprojecteurs" },
        { id: "mini-projecteurs", name: "Mini projecteurs", slug: "mini-projecteurs" },
        { id: "ecrans-portables", name: "Écrans portables", slug: "ecrans-portables" },
        { id: "supports-tv-muraux", name: "Supports TV muraux", slug: "supports-tv-muraux" },
        { id: "pieds-tv", name: "Pieds TV", slug: "pieds-tv" }
      ]
    },
    {
      id: "audio-home-cinema",
      name: "Audio & Home Cinéma",
      slug: "audio-home-cinema",
      subcategories: [
        { id: "barres-de-son", name: "Barres de son", slug: "barres-de-son" },
        { id: "home-cinema-5-1", name: "Home cinéma 5.1", slug: "home-cinema-5-1" },
        { id: "systemes-audio-2-1", name: "Systèmes audio 2.1", slug: "systemes-audio-2-1" },
        { id: "caissons-de-basses", name: "Caissons de basses", slug: "caissons-de-basses" },
        { id: "amplificateurs", name: "Amplificateurs", slug: "amplificateurs" },
        { id: "recepteurs-av", name: "Récepteurs AV", slug: "recepteurs-av" },
        { id: "enceintes-hifi", name: "Enceintes hi-fi", slug: "enceintes-hifi" },
        { id: "enceintes-bluetooth", name: "Enceintes Bluetooth", slug: "enceintes-bluetooth" },
        { id: "enceintes-intelligentes", name: "Enceintes intelligentes", slug: "enceintes-intelligentes" },
        { id: "multiroom-audio", name: "Multiroom audio", slug: "multiroom-audio" },
        { id: "soundbars-gaming", name: "Soundbars gaming", slug: "soundbars-gaming" }
      ]
    },
    {
      id: "casques-ecouteurs",
      name: "Casques & Écouteurs",
      slug: "casques-ecouteurs",
      subcategories: [
        { id: "casques-filaires", name: "Casques filaires", slug: "casques-filaires" },
        { id: "casques-bluetooth", name: "Casques Bluetooth", slug: "casques-bluetooth" },
        { id: "casques-gaming", name: "Casques gaming", slug: "casques-gaming" },
        { id: "casques-antibruit", name: "Casques antibruit", slug: "casques-antibruit" },
        { id: "ecouteurs-intra-auriculaires", name: "Écouteurs intra-auriculaires", slug: "ecouteurs-intra-auriculaires" },
        { id: "ecouteurs-tws", name: "Écouteurs TWS", slug: "ecouteurs-tws" },
        { id: "ecouteurs-sport", name: "Écouteurs sport", slug: "ecouteurs-sport" },
        { id: "casques-studio", name: "Casques studio", slug: "casques-studio" },
        { id: "casques-dj", name: "Casques DJ", slug: "casques-dj" }
      ]
    },
    {
      id: "photo-video",
      name: "Photo & Vidéo",
      slug: "photo-video",
      subcategories: [
        { id: "appareils-photo-reflex", name: "Appareils photo reflex", slug: "appareils-photo-reflex" },
        { id: "appareils-photo-hybrides", name: "Appareils photo hybrides", slug: "appareils-photo-hybrides" },
        { id: "appareils-compacts", name: "Appareils compacts", slug: "appareils-compacts" },
        { id: "camescopes", name: "Caméscopes", slug: "camescopes" },
        { id: "action-cams", name: "Action cams", slug: "action-cams" },
        { id: "drones-camera", name: "Drones caméra", slug: "drones-camera" },
        { id: "objectifs-photo", name: "Objectifs photo", slug: "objectifs-photo" },
        { id: "trepieds", name: "Trépieds", slug: "trepieds" },
        { id: "stabilisateurs", name: "Stabilisateurs", slug: "stabilisateurs" },
        { id: "gimbals", name: "Gimbals", slug: "gimbals" },
        { id: "flashes-eclairages", name: "Flashes & éclairages", slug: "flashes-eclairages" },
        { id: "cartes-memoire", name: "Cartes mémoire", slug: "cartes-memoire" },
        { id: "fonds-photo", name: "Fonds photo", slug: "fonds-photo" }
      ]
    },
    {
      id: "studios-audio-enregistrement",
      name: "Studios Audio & Enregistrement",
      slug: "studios-audio-enregistrement",
      subcategories: [
        { id: "microphones-usb", name: "Microphones USB", slug: "microphones-usb" },
        { id: "microphones-xlr", name: "Microphones XLR", slug: "microphones-xlr" },
        { id: "interfaces-audio", name: "Interfaces audio", slug: "interfaces-audio" },
        { id: "casques-studio-2", name: "Casques studio", slug: "casques-studio-2" },
        { id: "moniteurs-de-studio", name: "Moniteurs de studio", slug: "moniteurs-de-studio" },
        { id: "mixeurs-audio", name: "Mixeurs audio", slug: "mixeurs-audio" },
        { id: "preamplis", name: "Préamplis", slug: "preamplis" },
        { id: "enregistreurs-portables", name: "Enregistreurs portables", slug: "enregistreurs-portables" },
        { id: "cartes-son-externes", name: "Cartes son externes", slug: "cartes-son-externes" },
        { id: "shields-acoustiques", name: "Shields acoustiques", slug: "shields-acoustiques" },
        { id: "accessoires-studio", name: "Accessoires studio", slug: "accessoires-studio" }
      ]
    },
    {
      id: "sonorisation-evenementiel",
      name: "Sonorisation & Événementiel",
      slug: "sonorisation-evenementiel",
      subcategories: [
        { id: "enceintes-professionnelles", name: "Enceintes professionnelles", slug: "enceintes-professionnelles" },
        { id: "caissons-de-basses-pro", name: "Caissons de basses pro", slug: "caissons-de-basses-pro" },
        { id: "amplis-de-puissance", name: "Amplis de puissance", slug: "amplis-de-puissance" },
        { id: "mixeurs-tables-de-mixage", name: "Mixeurs & tables de mixage", slug: "mixeurs-tables-de-mixage" },
        { id: "micros-hf-sans-fil", name: "Micros HF & sans fil", slug: "micros-hf-sans-fil" },
        { id: "systemes-karaoke", name: "Systèmes karaoke", slug: "systemes-karaoke" },
        { id: "jeux-de-lumiere", name: "Jeux de lumière", slug: "jeux-de-lumiere" },
        { id: "lasers", name: "Lasers", slug: "lasers" },
        { id: "machines-a-fumee", name: "Machines à fumée", slug: "machines-a-fumee" },
        { id: "stands-et-trepieds", name: "Stands et trépieds", slug: "stands-et-trepieds" },
        { id: "cablage-audio-xlr", name: "Câblage audio & XLR", slug: "cablage-audio-xlr" }
      ]
    },
    {
      id: "equipement-musique",
      name: "Équipement de Musique",
      slug: "equipement-musique",
      subcategories: [
        { id: "guitares-acoustiques", name: "Guitares acoustiques", slug: "guitares-acoustiques" },
        { id: "guitares-electriques", name: "Guitares électriques", slug: "guitares-electriques" },
        { id: "guitares-basses", name: "Guitares basses", slug: "guitares-basses" },
        { id: "violons", name: "Violons", slug: "violons" },
        { id: "mandolines", name: "Mandolines", slug: "mandolines" },
        { id: "oud-instruments-orientaux", name: "Oud & instruments orientaux", slug: "oud-instruments-orientaux" },
        { id: "pianos-numeriques", name: "Pianos numériques", slug: "pianos-numeriques" },
        { id: "claviers-arrangeurs", name: "Claviers arrangeurs", slug: "claviers-arrangeurs" },
        { id: "synthetiseurs", name: "Synthétiseurs", slug: "synthetiseurs" },
        { id: "batteries-acoustiques", name: "Batteries acoustiques", slug: "batteries-acoustiques" },
        { id: "batteries-electroniques", name: "Batteries électroniques", slug: "batteries-electroniques" },
        { id: "percussions", name: "Percussions", slug: "percussions" },
        { id: "harmonicas", name: "Harmonicas", slug: "harmonicas" }
      ]
    },
    {
      id: "equipement-dj",
      name: "Équipement DJ",
      slug: "equipement-dj",
      subcategories: [
        { id: "platines-dj", name: "Platines DJ (vinyle, numérique)", slug: "platines-dj" },
        { id: "controleurs-dj", name: "Contrôleurs DJ", slug: "controleurs-dj" },
        { id: "mixeurs-dj", name: "Mixeurs DJ", slug: "mixeurs-dj" },
        { id: "casques-dj-2", name: "Casques DJ", slug: "casques-dj-2" },
        { id: "eclairage-dj", name: "Éclairage DJ", slug: "eclairage-dj" },
        { id: "pads-boites-rythmes", name: "Pads & boîtes à rythmes", slug: "pads-boites-rythmes" },
        { id: "logiciels-dj", name: "Logiciels DJ", slug: "logiciels-dj" },
        { id: "interfaces-dj", name: "Interfaces DJ", slug: "interfaces-dj" }
      ]
    },
    {
      id: "accessoires-instruments",
      name: "Accessoires Instruments",
      slug: "accessoires-instruments",
      subcategories: [
        { id: "cordes-guitare-violon", name: "Cordes guitare & violon", slug: "cordes-guitare-violon" },
        { id: "mediators", name: "Médiators", slug: "mediators" },
        { id: "capodastres", name: "Capodastres", slug: "capodastres" },
        { id: "stands-instruments", name: "Stands instruments", slug: "stands-instruments" },
        { id: "housses-etuis", name: "Housses & étuis", slug: "housses-etuis" },
        { id: "accordeurs-electroniques", name: "Accordeurs électroniques", slug: "accordeurs-electroniques" },
        { id: "metronome", name: "Métronome", slug: "metronome" },
        { id: "batteries-peaux", name: "Batteries & peaux", slug: "batteries-peaux" },
        { id: "baguettes", name: "Baguettes", slug: "baguettes" },
        { id: "ampli-guitare-basse", name: "Ampli guitare & basse", slug: "ampli-guitare-basse" },
        { id: "cables-jack-xlr", name: "Câbles jack et XLR", slug: "cables-jack-xlr" }
      ]
    },
    {
      id: "streaming-creation-contenu",
      name: "Streaming, Création & Contenu",
      slug: "streaming-creation-contenu",
      subcategories: [
        { id: "cameras-streaming", name: "Caméras streaming", slug: "cameras-streaming" },
        { id: "webcams-hd", name: "Webcams HD", slug: "webcams-hd" },
        { id: "micros-streaming", name: "Micros streaming", slug: "micros-streaming" },
        { id: "anneaux-lumineux", name: "Anneaux lumineux", slug: "anneaux-lumineux" },
        { id: "lampes-led-createurs", name: "Lampes LED créateurs", slug: "lampes-led-createurs" },
        { id: "green-screen", name: "Green screen", slug: "green-screen" },
        { id: "pupitres-streaming", name: "Pupitres streaming", slug: "pupitres-streaming" },
        { id: "cartes-acquisition-video", name: "Cartes d'acquisition vidéo", slug: "cartes-acquisition-video" },
        { id: "equipement-podcast", name: "Équipement podcast", slug: "equipement-podcast" }
      ]
    },
    {
      id: "radios-multimedia",
      name: "Radios & Multimédia",
      slug: "radios-multimedia",
      subcategories: [
        { id: "radios-fm", name: "Radios FM", slug: "radios-fm" },
        { id: "radios-digitaux", name: "Radios digitaux", slug: "radios-digitaux" },
        { id: "lecteurs-mp3", name: "Lecteurs MP3", slug: "lecteurs-mp3" },
        { id: "enceintes-nomades", name: "Enceintes nomades", slug: "enceintes-nomades" },
        { id: "autoradios", name: "Autoradios", slug: "autoradios" },
        { id: "amplificateurs-voiture", name: "Amplificateurs voiture", slug: "amplificateurs-voiture" },
        { id: "subwoofers-voiture", name: "Subwoofers voiture", slug: "subwoofers-voiture" },
        { id: "ecrans-android-voiture", name: "Écrans Android voiture", slug: "ecrans-android-voiture" }
      ]
    },
    {
      id: "equipements-cinema-maison",
      name: "Équipements Cinéma Maison",
      slug: "equipements-cinema-maison",
      subcategories: [
        { id: "videoprojecteurs-4k", name: "Vidéoprojecteurs 4K", slug: "videoprojecteurs-4k" },
        { id: "ecrans-de-projection", name: "Écrans de projection", slug: "ecrans-de-projection" },
        { id: "supports-plafond", name: "Supports plafond", slug: "supports-plafond" },
        { id: "systemes-audio-surround", name: "Systèmes audio surround", slug: "systemes-audio-surround" },
        { id: "cablage-hdmi", name: "Câblage HDMI", slug: "cablage-hdmi" },
        { id: "convertisseurs-audio-video", name: "Convertisseurs audio/vidéo", slug: "convertisseurs-audio-video" }
      ]
    },
    {
      id: "electroniques-portables",
      name: "Électroniques Portables",
      slug: "electroniques-portables",
      subcategories: [
        { id: "mini-projecteurs-portables", name: "Mini projecteurs portables", slug: "mini-projecteurs-portables" },
        { id: "enceintes-outdoor", name: "Enceintes outdoor", slug: "enceintes-outdoor" },
        { id: "casques-sport", name: "Casques sport", slug: "casques-sport" },
        { id: "amplis-nomades", name: "Amplis nomades", slug: "amplis-nomades" },
        { id: "enregistreurs-de-terrain", name: "Enregistreurs de terrain", slug: "enregistreurs-de-terrain" }
      ]
    },
    {
      id: "accessoires-image-son",
      name: "Accessoires Image & Son",
      slug: "accessoires-image-son",
      subcategories: [
        { id: "cables-hdmi", name: "Câbles HDMI", slug: "cables-hdmi" },
        { id: "cables-audio-jack-rca", name: "Câbles audio jack & RCA", slug: "cables-audio-jack-rca" },
        { id: "adaptateurs", name: "Adaptateurs", slug: "adaptateurs" },
        { id: "batteries-chargeurs", name: "Batteries & chargeurs", slug: "batteries-chargeurs" },
        { id: "nettoyants-lentilles", name: "Nettoyants lentilles", slug: "nettoyants-lentilles" },
        { id: "filtres-photo", name: "Filtres photo", slug: "filtres-photo" },
        { id: "cartes-sd", name: "Cartes SD", slug: "cartes-sd" },
        { id: "boitiers-transport", name: "Boîtiers transport", slug: "boitiers-transport" },
        { id: "pieds-camera", name: "Pieds caméra", slug: "pieds-camera" }
      ]
    },
    {
      id: "marques-populaires",
      name: "Marques Populaires",
      slug: "marques-populaires",
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
    {
      id: "segments-usage",
      name: "Segments d’Usage",
      slug: "segments-usage",
      subcategories: [
        { id: "image-domestique", name: "Image domestique", slug: "image-domestique" },
        { id: "son-domestique", name: "Son domestique", slug: "son-domestique" },
        { id: "audio-professionnel", name: "Audio professionnel", slug: "audio-professionnel" },
        { id: "studio-enregistrement", name: "Studio d’enregistrement", slug: "studio-enregistrement" },
        { id: "dj-evenementiel", name: "DJ & événementiel", slug: "dj-evenementiel" },
        { id: "creation-contenu", name: "Création de contenu", slug: "creation-contenu" },
        { id: "musique-amateur", name: "Musique amateur", slug: "musique-amateur" },
        { id: "musique-professionnelle", name: "Musique professionnelle", slug: "musique-professionnelle" }
      ]
    }
  ]
};