import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Gamepad2 } from "lucide-react";

export const jeuxVideoConsolesEn: MenuCategory = {
  id: "jeux-video-consoles",
  name: "Video Games & Consoles",
  slug: "jeux-video-consoles",
  icon: <Gamepad2 className="w-4 h-4" />,
  subcategories: [
    {
      id: "consoles-de-salon",
      name: "Home Consoles",
      slug: "consoles-de-salon",
      subcategories: [
        { id: "playstation", name: "PlayStation", slug: "playstation" },
        { id: "xbox", name: "Xbox", slug: "xbox" },
        { id: "nintendo-switch", name: "Nintendo Switch", slug: "nintendo-switch" },
        { id: "atari", name: "Atari", slug: "atari" },
        { id: "sega", name: "Sega", slug: "sega" },
        { id: "autres-consoles-retro", name: "Other Retro Consoles", slug: "autres-consoles-retro" },
        {
          id: "accessoires-consoles-de-salon",
          name: "Home Console Accessories",
          slug: "accessoires-consoles-de-salon",
          subcategories: [
            { id: "manettes", name: "Controllers", slug: "manettes" },
            { id: "cables-hdmi", name: "HDMI Cables", slug: "cables-hdmi" },
            { id: "alimentations", name: "Power Supplies", slug: "alimentations" },
            { id: "stations-de-charge", name: "Charging Stations", slug: "stations-de-charge" },
            { id: "telecommandes-multimedia", name: "Media Remotes", slug: "telecommandes-multimedia" }
          ]
        }
      ]
    },
    {
      id: "consoles-portables",
      name: "Portable Consoles",
      slug: "consoles-portables",
      subcategories: [
        { id: "nintendo-switch-lite", name: "Nintendo Switch Lite", slug: "nintendo-switch-lite" },
        { id: "nintendo-3ds-2ds", name: "Nintendo 3DS/2DS", slug: "nintendo-3ds-2ds" },
        { id: "psp", name: "PSP", slug: "psp" },
        { id: "ps-vita", name: "PS Vita", slug: "ps-vita" },
        { id: "consoles-retro-portables", name: "Retro Handhelds", slug: "consoles-retro-portables" },
        { id: "consoles-android", name: "Android Consoles", slug: "consoles-android" },
        {
          id: "accessoires-consoles-portables",
          name: "Portable Console Accessories",
          slug: "accessoires-consoles-portables",
          subcategories: [
            { id: "housses", name: "Cases", slug: "housses" },
            { id: "batteries", name: "Batteries", slug: "batteries" },
            { id: "protections-ecran", name: "Screen Protectors", slug: "protections-ecran" }
          ]
        }
      ]
    },
    {
      id: "jeux-playstation",
      name: "PlayStation Games",
      slug: "jeux-playstation",
      subcategories: [
        { id: "ps5", name: "PS5", slug: "ps5" },
        { id: "ps4", name: "PS4", slug: "ps4" },
        { id: "ps3", name: "PS3", slug: "ps3" },
        { id: "ps2", name: "PS2", slug: "ps2" },
        { id: "ps1", name: "PS1", slug: "ps1" },
        { id: "editions-limitees", name: "Limited Editions", slug: "editions-limitees" },
        { id: "jeux-neufs", name: "New Games", slug: "jeux-neufs" },
        { id: "jeux-occasion", name: "Used Games", slug: "jeux-occasion" }
      ]
    },
    {
      id: "jeux-xbox",
      name: "Xbox Games",
      slug: "jeux-xbox",
      subcategories: [
        { id: "xbox-series-xs", name: "Xbox Series X|S", slug: "xbox-series-xs" },
        { id: "xbox-one", name: "Xbox One", slug: "xbox-one" },
        { id: "xbox-360", name: "Xbox 360", slug: "xbox-360" },
        { id: "editions-collector", name: "Collector Editions", slug: "editions-collector" },
        { id: "jeux-neufs-xbox", name: "New Games", slug: "jeux-neufs-xbox" },
        { id: "jeux-occasion-xbox", name: "Used Games", slug: "jeux-occasion-xbox" }
      ]
    },
    {
      id: "jeux-nintendo",
      name: "Nintendo Games",
      slug: "jeux-nintendo",
      subcategories: [
        { id: "switch-jeux", name: "Switch", slug: "switch-jeux" },
        { id: "wii-u", name: "Wii U", slug: "wii-u" },
        { id: "wii", name: "Wii", slug: "wii" },
        { id: "gamecube", name: "GameCube", slug: "gamecube" },
        { id: "3ds-2ds-jeux", name: "3DS/2DS", slug: "3ds-2ds-jeux" },
        { id: "jeux-retro-nintendo", name: "Retro Nintendo Games", slug: "jeux-retro-nintendo" }
      ]
    },
    {
      id: "jeux-pc-mac",
      name: "PC & Mac Games",
      slug: "jeux-pc-mac",
      subcategories: [
        { id: "jeux-physiques", name: "Physical Games", slug: "jeux-physiques" },
        { id: "jeux-steam", name: "Steam Games", slug: "jeux-steam" },
        { id: "jeux-epic-games", name: "Epic Games", slug: "jeux-epic-games" },
        { id: "jeux-blizzard", name: "Blizzard Games", slug: "jeux-blizzard" },
        { id: "comptes-gaming", name: "Gaming Accounts", slug: "comptes-gaming" }
      ]
    },
    {
      id: "jeux-retro-collections",
      name: "Retro Games & Collections",
      slug: "jeux-retro-collections",
      subcategories: [
        { id: "cartouches-nes", name: "NES Cartridges", slug: "cartouches-nes" },
        { id: "cartouches-snes", name: "SNES Cartridges", slug: "cartouches-snes" },
        { id: "sega-retro", name: "Sega", slug: "sega-retro" },
        { id: "gameboy", name: "GameBoy", slug: "gameboy" },
        { id: "atari-retro", name: "Atari", slug: "atari-retro" },
        { id: "neo-geo", name: "Neo‑Geo", slug: "neo-geo" },
        { id: "editions-rares", name: "Rare Editions", slug: "editions-rares" },
        {
          id: "objets-collectors",
          name: "Collectibles",
          slug: "objets-collectors",
          subcategories: [
            { id: "figurines-collector", name: "Figurines", slug: "figurines-collector" },
            { id: "ost", name: "OST", slug: "ost" },
            { id: "artbooks", name: "Artbooks", slug: "artbooks" }
          ]
        }
      ]
    },
    {
      id: "accessoires-gaming",
      name: "Gaming Accessories",
      slug: "accessoires-gaming",
      subcategories: [
        { id: "manettes-gaming", name: "Controllers", slug: "manettes-gaming" },
        { id: "casques-gaming", name: "Gaming Headsets", slug: "casques-gaming" },
        { id: "tapis-rgb", name: "RGB Mats", slug: "tapis-rgb" },
        { id: "claviers-gaming", name: "Gaming Keyboards", slug: "claviers-gaming" },
        { id: "souris-gaming", name: "Gaming Mice", slug: "souris-gaming" },
        { id: "volants-pedaliers", name: "Racing Wheels & Pedals", slug: "volants-pedaliers" },
        { id: "joysticks", name: "Joysticks", slug: "joysticks" },
        { id: "flight-sticks", name: "Flight Sticks", slug: "flight-sticks" }
      ]
    },
    {
      id: "equipements-vr-ar",
      name: "VR & AR Equipment",
      slug: "equipements-vr-ar",
      subcategories: [
        { id: "ps-vr", name: "PS VR", slug: "ps-vr" },
        { id: "oculus-quest", name: "Oculus Quest", slug: "oculus-quest" },
        { id: "htc-vive", name: "HTC Vive", slug: "htc-vive" },
        {
          id: "accessoires-vr",
          name: "VR Accessories",
          slug: "accessoires-vr",
          subcategories: [
            { id: "capteurs", name: "Sensors", slug: "capteurs" },
            { id: "sangles", name: "Straps", slug: "sangles" },
            { id: "adaptateurs", name: "Adapters", slug: "adaptateurs" }
          ]
        }
      ]
    },
    {
      id: "composants-e-sport",
      name: "E‑sport Components & Equipment",
      slug: "composants-e-sport",
      subcategories: [
        { id: "ecrans-gaming", name: "Gaming Monitors", slug: "ecrans-gaming" },
        { id: "chaises-gaming", name: "Gaming Chairs", slug: "chaises-gaming" },
        { id: "bureaux-gamer", name: "Gaming Desks", slug: "bureaux-gamer" },
        { id: "cartes-graphiques", name: "Graphics Cards", slug: "cartes-graphiques" },
        { id: "ram", name: "RAM", slug: "ram" },
        { id: "ssd", name: "SSD", slug: "ssd" },
        { id: "refroidissement", name: "Cooling", slug: "refroidissement" }
      ]
    },
    {
      id: "cartes-abonnements",
      name: "Cards & Subscriptions",
      slug: "cartes-abonnements",
      subcategories: [
        { id: "ps-plus", name: "PS Plus", slug: "ps-plus" },
        { id: "xbox-game-pass", name: "Xbox Game Pass", slug: "xbox-game-pass" },
        { id: "nintendo-online", name: "Nintendo Online", slug: "nintendo-online" },
        {
          id: "cartes-prepayees",
          name: "Prepaid Cards",
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
      name: "Streaming & Capture",
      slug: "streaming-capture-video",
      subcategories: [
        {
          id: "cartes-acquisition",
          name: "Capture Cards",
          slug: "cartes-acquisition",
          subcategories: [
            { id: "elgato", name: "Elgato", slug: "elgato" },
            { id: "avermedia", name: "AverMedia", slug: "avermedia" }
          ]
        },
        { id: "cameras-streaming", name: "Streaming Cameras", slug: "cameras-streaming" },
        { id: "micros-professionnels", name: "Professional Microphones", slug: "micros-professionnels" },
        { id: "eclairage", name: "Lighting", slug: "eclairage" },
        { id: "fonds-verts", name: "Green Screens", slug: "fonds-verts" }
      ]
    },
    {
      id: "merchandising-gaming",
      name: "Gaming Merchandising",
      slug: "merchandising-gaming",
      subcategories: [
        { id: "figurines", name: "Figurines", slug: "figurines" },
        { id: "posters", name: "Posters", slug: "posters" },
        { id: "vetements-gaming", name: "Gaming Apparel", slug: "vetements-gaming" },
        { id: "accessoires-cosplay", name: "Cosplay Accessories", slug: "accessoires-cosplay" },
        { id: "collections-officielles", name: "Official Collections", slug: "collections-officielles" }
      ]
    }
  ]
};