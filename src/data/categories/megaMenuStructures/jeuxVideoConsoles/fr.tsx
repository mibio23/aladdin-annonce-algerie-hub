import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Gamepad2 } from "lucide-react";

export const jeuxVideoConsolesFr: MenuCategory = {
  id: "jeux-video-consoles",
  name: "Jeux Vidéo & Consoles",
  slug: "jeux-video-consoles",
  icon: <Gamepad2 className="w-4 h-4" />,
  subcategories: [
    {
      id: "consoles-de-salon",
      name: "Consoles de salon",
      slug: "consoles-de-salon",
      subcategories: [
        { id: "playstation", name: "PlayStation", slug: "playstation" },
        { id: "xbox", name: "Xbox", slug: "xbox" },
        { id: "nintendo-switch", name: "Nintendo Switch", slug: "nintendo-switch" },
        { id: "atari", name: "Atari", slug: "atari" },
        { id: "sega", name: "Sega", slug: "sega" },
        { id: "autres-consoles-retro", name: "Autres consoles rétro", slug: "autres-consoles-retro" },
        {
          id: "accessoires-consoles-de-salon",
          name: "Accessoires consoles de salon",
          slug: "accessoires-consoles-de-salon",
          subcategories: [
            { id: "manettes", name: "Manettes", slug: "manettes" },
            { id: "cables-hdmi", name: "Câbles HDMI", slug: "cables-hdmi" },
            { id: "alimentations", name: "Alimentations", slug: "alimentations" },
            { id: "stations-de-charge", name: "Stations de charge", slug: "stations-de-charge" },
            { id: "telecommandes-multimedia", name: "Télécommandes multimédia", slug: "telecommandes-multimedia" }
          ]
        }
      ]
    },
    {
      id: "consoles-portables",
      name: "Consoles portables",
      slug: "consoles-portables",
      subcategories: [
        { id: "nintendo-switch-lite", name: "Nintendo Switch Lite", slug: "nintendo-switch-lite" },
        { id: "nintendo-3ds-2ds", name: "Nintendo 3DS/2DS", slug: "nintendo-3ds-2ds" },
        { id: "psp", name: "PSP", slug: "psp" },
        { id: "ps-vita", name: "PS Vita", slug: "ps-vita" },
        { id: "consoles-retro-portables", name: "Consoles rétro portables", slug: "consoles-retro-portables" },
        { id: "consoles-android", name: "Consoles Android", slug: "consoles-android" },
        {
          id: "accessoires-consoles-portables",
          name: "Accessoires consoles portables",
          slug: "accessoires-consoles-portables",
          subcategories: [
            { id: "housses", name: "Housses", slug: "housses" },
            { id: "batteries", name: "Batteries", slug: "batteries" },
            { id: "protections-ecran", name: "Protections d’écran", slug: "protections-ecran" }
          ]
        }
      ]
    },
    {
      id: "jeux-playstation",
      name: "Jeux PlayStation",
      slug: "jeux-playstation",
      subcategories: [
        { id: "ps5", name: "PS5", slug: "ps5" },
        { id: "ps4", name: "PS4", slug: "ps4" },
        { id: "ps3", name: "PS3", slug: "ps3" },
        { id: "ps2", name: "PS2", slug: "ps2" },
        { id: "ps1", name: "PS1", slug: "ps1" },
        { id: "editions-limitees", name: "Éditions limitées", slug: "editions-limitees" },
        { id: "jeux-neufs", name: "Jeux neufs", slug: "jeux-neufs" },
        { id: "jeux-occasion", name: "Jeux d’occasion", slug: "jeux-occasion" }
      ]
    },
    {
      id: "jeux-xbox",
      name: "Jeux Xbox",
      slug: "jeux-xbox",
      subcategories: [
        { id: "xbox-series-xs", name: "Xbox Series X|S", slug: "xbox-series-xs" },
        { id: "xbox-one", name: "Xbox One", slug: "xbox-one" },
        { id: "xbox-360", name: "Xbox 360", slug: "xbox-360" },
        { id: "editions-collector", name: "Éditions collector", slug: "editions-collector" },
        { id: "jeux-neufs-xbox", name: "Jeux neufs", slug: "jeux-neufs-xbox" },
        { id: "jeux-occasion-xbox", name: "Jeux d’occasion", slug: "jeux-occasion-xbox" }
      ]
    },
    {
      id: "jeux-nintendo",
      name: "Jeux Nintendo",
      slug: "jeux-nintendo",
      subcategories: [
        { id: "switch-jeux", name: "Switch", slug: "switch-jeux" },
        { id: "wii-u", name: "Wii U", slug: "wii-u" },
        { id: "wii", name: "Wii", slug: "wii" },
        { id: "gamecube", name: "GameCube", slug: "gamecube" },
        { id: "3ds-2ds-jeux", name: "3DS/2DS", slug: "3ds-2ds-jeux" },
        { id: "jeux-retro-nintendo", name: "Jeux rétro Nintendo", slug: "jeux-retro-nintendo" }
      ]
    },
    {
      id: "jeux-pc-mac",
      name: "Jeux PC & Mac",
      slug: "jeux-pc-mac",
      subcategories: [
        { id: "jeux-physiques", name: "Jeux physiques", slug: "jeux-physiques" },
        { id: "jeux-steam", name: "Jeux Steam", slug: "jeux-steam" },
        { id: "jeux-epic-games", name: "Jeux Epic Games", slug: "jeux-epic-games" },
        { id: "jeux-blizzard", name: "Jeux Blizzard", slug: "jeux-blizzard" },
        { id: "comptes-gaming", name: "Comptes gaming", slug: "comptes-gaming" }
      ]
    },
    {
      id: "jeux-retro-collections",
      name: "Jeux rétro & collections",
      slug: "jeux-retro-collections",
      subcategories: [
        { id: "cartouches-nes", name: "Cartouches NES", slug: "cartouches-nes" },
        { id: "cartouches-snes", name: "Cartouches SNES", slug: "cartouches-snes" },
        { id: "sega-retro", name: "Sega", slug: "sega-retro" },
        { id: "gameboy", name: "GameBoy", slug: "gameboy" },
        { id: "atari-retro", name: "Atari", slug: "atari-retro" },
        { id: "neo-geo", name: "Neo‑Geo", slug: "neo-geo" },
        { id: "editions-rares", name: "Éditions rares", slug: "editions-rares" },
        {
          id: "objets-collectors",
          name: "Objets collectors",
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
      name: "Accessoires gaming",
      slug: "accessoires-gaming",
      subcategories: [
        { id: "manettes-gaming", name: "Manettes", slug: "manettes-gaming" },
        { id: "casques-gaming", name: "Casques gaming", slug: "casques-gaming" },
        { id: "tapis-rgb", name: "Tapis RGB", slug: "tapis-rgb" },
        { id: "claviers-gaming", name: "Claviers gaming", slug: "claviers-gaming" },
        { id: "souris-gaming", name: "Souris gaming", slug: "souris-gaming" },
        { id: "volants-pedaliers", name: "Volants & pédaliers", slug: "volants-pedaliers" },
        { id: "joysticks", name: "Joysticks", slug: "joysticks" },
        { id: "flight-sticks", name: "Flight sticks", slug: "flight-sticks" }
      ]
    },
    {
      id: "equipements-vr-ar",
      name: "Équipements VR & AR",
      slug: "equipements-vr-ar",
      subcategories: [
        { id: "ps-vr", name: "PS VR", slug: "ps-vr" },
        { id: "oculus-quest", name: "Oculus Quest", slug: "oculus-quest" },
        { id: "htc-vive", name: "HTC Vive", slug: "htc-vive" },
        {
          id: "accessoires-vr",
          name: "Accessoires VR",
          slug: "accessoires-vr",
          subcategories: [
            { id: "capteurs", name: "Capteurs", slug: "capteurs" },
            { id: "sangles", name: "Sangles", slug: "sangles" },
            { id: "adaptateurs", name: "Adaptateurs", slug: "adaptateurs" }
          ]
        }
      ]
    },
    {
      id: "composants-e-sport",
      name: "Composants & équipements e‑sport",
      slug: "composants-e-sport",
      subcategories: [
        { id: "ecrans-gaming", name: "Écrans gaming", slug: "ecrans-gaming" },
        { id: "chaises-gaming", name: "Chaises gaming", slug: "chaises-gaming" },
        { id: "bureaux-gamer", name: "Bureaux gamer", slug: "bureaux-gamer" },
        { id: "cartes-graphiques", name: "Cartes graphiques", slug: "cartes-graphiques" },
        { id: "ram", name: "RAM", slug: "ram" },
        { id: "ssd", name: "SSD", slug: "ssd" },
        { id: "refroidissement", name: "Refroidissement", slug: "refroidissement" }
      ]
    },
    {
      id: "cartes-abonnements",
      name: "Cartes & abonnements",
      slug: "cartes-abonnements",
      subcategories: [
        { id: "ps-plus", name: "PS Plus", slug: "ps-plus" },
        { id: "xbox-game-pass", name: "Xbox Game Pass", slug: "xbox-game-pass" },
        { id: "nintendo-online", name: "Nintendo Online", slug: "nintendo-online" },
        {
          id: "cartes-prepayees",
          name: "Cartes prépayées",
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
      name: "Streaming & capture vidéo",
      slug: "streaming-capture-video",
      subcategories: [
        {
          id: "cartes-acquisition",
          name: "Cartes d’acquisition",
          slug: "cartes-acquisition",
          subcategories: [
            { id: "elgato", name: "Elgato", slug: "elgato" },
            { id: "avermedia", name: "AverMedia", slug: "avermedia" }
          ]
        },
        { id: "cameras-streaming", name: "Caméras streaming", slug: "cameras-streaming" },
        { id: "micros-professionnels", name: "Micros professionnels", slug: "micros-professionnels" },
        { id: "eclairage", name: "Éclairage", slug: "eclairage" },
        { id: "fonds-verts", name: "Fonds verts", slug: "fonds-verts" }
      ]
    },
    {
      id: "merchandising-gaming",
      name: "Merchandising gaming",
      slug: "merchandising-gaming",
      subcategories: [
        { id: "figurines", name: "Figurines", slug: "figurines" },
        { id: "posters", name: "Posters", slug: "posters" },
        { id: "vetements-gaming", name: "Vêtements gaming", slug: "vetements-gaming" },
        { id: "accessoires-cosplay", name: "Accessoires cosplay", slug: "accessoires-cosplay" },
        { id: "collections-officielles", name: "Collections officielles", slug: "collections-officielles" }
      ]
    }
  ]
};