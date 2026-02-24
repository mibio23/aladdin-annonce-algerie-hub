import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Gamepad2 } from "lucide-react";

export const jeuxVideoConsolesDe: MenuCategory = {
  id: "jeux-video-consoles",
  name: "Videospiele & Konsolen",
  slug: "jeux-video-consoles",
  icon: <Gamepad2 className="w-4 h-4" />,
  subcategories: [
    {
      id: "consoles-de-salon",
      name: "Stationäre Konsolen",
      slug: "consoles-de-salon",
      subcategories: [
        { id: "playstation", name: "PlayStation", slug: "playstation" },
        { id: "xbox", name: "Xbox", slug: "xbox" },
        { id: "nintendo-switch", name: "Nintendo Switch", slug: "nintendo-switch" },
        { id: "atari", name: "Atari", slug: "atari" },
        { id: "sega", name: "Sega", slug: "sega" },
        { id: "autres-consoles-retro", name: "Weitere Retro-Konsolen", slug: "autres-consoles-retro" },
        {
          id: "accessoires-consoles-de-salon",
          name: "Konsolen‑Zubehör (stationär)",
          slug: "accessoires-consoles-de-salon",
          subcategories: [
            { id: "manettes", name: "Controller", slug: "manettes" },
            { id: "cables-hdmi", name: "HDMI‑Kabel", slug: "cables-hdmi" },
            { id: "alimentations", name: "Netzteile", slug: "alimentations" },
            { id: "stations-de-charge", name: "Ladestationen", slug: "stations-de-charge" },
            { id: "telecommandes-multimedia", name: "Media‑Fernbedienungen", slug: "telecommandes-multimedia" }
          ]
        }
      ]
    },
    {
      id: "consoles-portables",
      name: "Tragbare Konsolen",
      slug: "consoles-portables",
      subcategories: [
        { id: "nintendo-switch-lite", name: "Nintendo Switch Lite", slug: "nintendo-switch-lite" },
        { id: "nintendo-3ds-2ds", name: "Nintendo 3DS/2DS", slug: "nintendo-3ds-2ds" },
        { id: "psp", name: "PSP", slug: "psp" },
        { id: "ps-vita", name: "PS Vita", slug: "ps-vita" },
        { id: "consoles-retro-portables", name: "Retro‑Handhelds", slug: "consoles-retro-portables" },
        { id: "consoles-android", name: "Android‑Konsolen", slug: "consoles-android" },
        {
          id: "accessoires-consoles-portables",
          name: "Zubehör für tragbare Konsolen",
          slug: "accessoires-consoles-portables",
          subcategories: [
            { id: "housses", name: "Schutzhüllen", slug: "housses" },
            { id: "batteries", name: "Batterien", slug: "batteries" },
            { id: "protections-ecran", name: "Displayschutz", slug: "protections-ecran" }
          ]
        }
      ]
    },
    {
      id: "jeux-playstation",
      name: "PlayStation‑Spiele",
      slug: "jeux-playstation",
      subcategories: [
        { id: "ps5", name: "PS5", slug: "ps5" },
        { id: "ps4", name: "PS4", slug: "ps4" },
        { id: "ps3", name: "PS3", slug: "ps3" },
        { id: "ps2", name: "PS2", slug: "ps2" },
        { id: "ps1", name: "PS1", slug: "ps1" },
        { id: "editions-limitees", name: "Limitierte Editionen", slug: "editions-limitees" },
        { id: "jeux-neufs", name: "Neu", slug: "jeux-neufs" },
        { id: "jeux-occasion", name: "Gebraucht", slug: "jeux-occasion" }
      ]
    },
    {
      id: "jeux-xbox",
      name: "Xbox‑Spiele",
      slug: "jeux-xbox",
      subcategories: [
        { id: "xbox-series-xs", name: "Xbox Series X|S", slug: "xbox-series-xs" },
        { id: "xbox-one", name: "Xbox One", slug: "xbox-one" },
        { id: "xbox-360", name: "Xbox 360", slug: "xbox-360" },
        { id: "editions-collector", name: "Sammler‑Editionen", slug: "editions-collector" },
        { id: "jeux-neufs-xbox", name: "Neu", slug: "jeux-neufs-xbox" },
        { id: "jeux-occasion-xbox", name: "Gebraucht", slug: "jeux-occasion-xbox" }
      ]
    },
    {
      id: "jeux-nintendo",
      name: "Nintendo‑Spiele",
      slug: "jeux-nintendo",
      subcategories: [
        { id: "switch-jeux", name: "Switch", slug: "switch-jeux" },
        { id: "wii-u", name: "Wii U", slug: "wii-u" },
        { id: "wii", name: "Wii", slug: "wii" },
        { id: "gamecube", name: "GameCube", slug: "gamecube" },
        { id: "3ds-2ds-jeux", name: "3DS/2DS", slug: "3ds-2ds-jeux" },
        { id: "jeux-retro-nintendo", name: "Retro‑Nintendo‑Spiele", slug: "jeux-retro-nintendo" }
      ]
    },
    {
      id: "jeux-pc-mac",
      name: "PC‑ & Mac‑Spiele",
      slug: "jeux-pc-mac",
      subcategories: [
        { id: "jeux-physiques", name: "Physische Spiele", slug: "jeux-physiques" },
        { id: "jeux-steam", name: "Steam‑Spiele", slug: "jeux-steam" },
        { id: "jeux-epic-games", name: "Epic Games", slug: "jeux-epic-games" },
        { id: "jeux-blizzard", name: "Blizzard‑Spiele", slug: "jeux-blizzard" },
        { id: "comptes-gaming", name: "Gaming‑Konten", slug: "comptes-gaming" }
      ]
    },
    {
      id: "jeux-retro-collections",
      name: "Retro‑Spiele & Sammlungen",
      slug: "jeux-retro-collections",
      subcategories: [
        { id: "cartouches-nes", name: "NES‑Kassetten", slug: "cartouches-nes" },
        { id: "cartouches-snes", name: "SNES‑Kassetten", slug: "cartouches-snes" },
        { id: "sega-retro", name: "Sega", slug: "sega-retro" },
        { id: "gameboy", name: "GameBoy", slug: "gameboy" },
        { id: "atari-retro", name: "Atari", slug: "atari-retro" },
        { id: "neo-geo", name: "Neo‑Geo", slug: "neo-geo" },
        { id: "editions-rares", name: "Seltene Editionen", slug: "editions-rares" },
        {
          id: "objets-collectors",
          name: "Sammlerstücke",
          slug: "objets-collectors",
          subcategories: [
            { id: "figurines-collector", name: "Figuren", slug: "figurines-collector" },
            { id: "ost", name: "Soundtracks", slug: "ost" },
            { id: "artbooks", name: "Artbooks", slug: "artbooks" }
          ]
        }
      ]
    },
    {
      id: "accessoires-gaming",
      name: "Gaming‑Zubehör",
      slug: "accessoires-gaming",
      subcategories: [
        { id: "manettes-gaming", name: "Controller", slug: "manettes-gaming" },
        { id: "casques-gaming", name: "Gaming‑Headsets", slug: "casques-gaming" },
        { id: "tapis-rgb", name: "RGB‑Matten", slug: "tapis-rgb" },
        { id: "claviers-gaming", name: "Gaming‑Tastaturen", slug: "claviers-gaming" },
        { id: "souris-gaming", name: "Gaming‑Mäuse", slug: "souris-gaming" },
        { id: "volants-pedaliers", name: "Lenkräder & Pedale", slug: "volants-pedaliers" },
        { id: "joysticks", name: "Joysticks", slug: "joysticks" },
        { id: "flight-sticks", name: "Flight‑Sticks", slug: "flight-sticks" }
      ]
    },
    {
      id: "equipements-vr-ar",
      name: "VR‑ & AR‑Ausrüstung",
      slug: "equipements-vr-ar",
      subcategories: [
        { id: "ps-vr", name: "PS VR", slug: "ps-vr" },
        { id: "oculus-quest", name: "Oculus Quest", slug: "oculus-quest" },
        { id: "htc-vive", name: "HTC Vive", slug: "htc-vive" },
        {
          id: "accessoires-vr",
          name: "VR‑Zubehör",
          slug: "accessoires-vr",
          subcategories: [
            { id: "capteurs", name: "Sensoren", slug: "capteurs" },
            { id: "sangles", name: "Riemen", slug: "sangles" },
            { id: "adaptateurs", name: "Adapter", slug: "adaptateurs" }
          ]
        }
      ]
    },
    {
      id: "composants-e-sport",
      name: "E‑Sport‑Komponenten & Geräte",
      slug: "composants-e-sport",
      subcategories: [
        { id: "ecrans-gaming", name: "Gaming‑Monitore", slug: "ecrans-gaming" },
        { id: "chaises-gaming", name: "Gaming‑Stühle", slug: "chaises-gaming" },
        { id: "bureaux-gamer", name: "Gaming‑Tische", slug: "bureaux-gamer" },
        { id: "cartes-graphiques", name: "Grafikkarten", slug: "cartes-graphiques" },
        { id: "ram", name: "RAM", slug: "ram" },
        { id: "ssd", name: "SSD", slug: "ssd" },
        { id: "refroidissement", name: "Kühlung", slug: "refroidissement" }
      ]
    },
    {
      id: "cartes-abonnements",
      name: "Karten & Abonnements",
      slug: "cartes-abonnements",
      subcategories: [
        { id: "ps-plus", name: "PS Plus", slug: "ps-plus" },
        { id: "xbox-game-pass", name: "Xbox Game Pass", slug: "xbox-game-pass" },
        { id: "nintendo-online", name: "Nintendo Online", slug: "nintendo-online" },
        {
          id: "cartes-prepayees",
          name: "Prepaid‑Karten",
          slug: "cartes-prepayees",
          subcategories: [
            { id: "playstation-store", name: "PlayStation Store", slug: "playstation-store" },
            { id: "xbox-live", name: "Xbox Live", slug: "xbox-live" },
            { id: "steam", name: "Steam", slug: "steam" }
          ]
        }
      ]
    },
    {
      id: "streaming-capture-video",
      name: "Streaming & Video‑Capture",
      slug: "streaming-capture-video",
      subcategories: [
        {
          id: "cartes-acquisition",
          name: "Capture‑Karten",
          slug: "cartes-acquisition",
          subcategories: [
            { id: "elgato", name: "Elgato", slug: "elgato" },
            { id: "avermedia", name: "AverMedia", slug: "avermedia" }
          ]
        },
        { id: "cameras-streaming", name: "Streaming‑Kameras", slug: "cameras-streaming" },
        { id: "micros-professionnels", name: "Profi‑Mikrofone", slug: "micros-professionnels" },
        { id: "eclairage", name: "Beleuchtung", slug: "eclairage" },
        { id: "fonds-verts", name: "Greenscreens", slug: "fonds-verts" }
      ]
    },
    {
      id: "merchandising-gaming",
      name: "Gaming‑Merchandising",
      slug: "merchandising-gaming",
      subcategories: [
        { id: "figurines", name: "Figuren", slug: "figurines" },
        { id: "posters", name: "Poster", slug: "posters" },
        { id: "vetements-gaming", name: "Gaming‑Bekleidung", slug: "vetements-gaming" },
        { id: "accessoires-cosplay", name: "Cosplay‑Zubehör", slug: "accessoires-cosplay" },
        { id: "collections-officielles", name: "Offizielle Kollektionen", slug: "collections-officielles" }
      ]
    }
  ]
};