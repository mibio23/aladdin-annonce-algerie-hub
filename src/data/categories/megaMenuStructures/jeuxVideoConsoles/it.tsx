import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Gamepad2 } from "lucide-react";

export const jeuxVideoConsolesIt: MenuCategory = {
  id: "jeux-video-consoles",
  name: "Videogiochi & Console",
  slug: "jeux-video-consoles",
  icon: <Gamepad2 className="w-4 h-4" />,
  subcategories: [
    {
      id: "consoles-de-salon",
      name: "Console da salotto",
      slug: "consoles-de-salon",
      subcategories: [
        { id: "playstation", name: "PlayStation", slug: "playstation" },
        { id: "xbox", name: "Xbox", slug: "xbox" },
        { id: "nintendo-switch", name: "Nintendo Switch", slug: "nintendo-switch" },
        { id: "atari", name: "Atari", slug: "atari" },
        { id: "sega", name: "Sega", slug: "sega" },
        { id: "autres-consoles-retro", name: "Altre console retrò", slug: "autres-consoles-retro" },
        {
          id: "accessoires-consoles-de-salon",
          name: "Accessori console",
          slug: "accessoires-consoles-de-salon",
          subcategories: [
            { id: "manettes", name: "Controller", slug: "manettes" },
            { id: "cables-hdmi", name: "Cavi HDMI", slug: "cables-hdmi" },
            { id: "alimentations", name: "Alimentatori", slug: "alimentations" },
            { id: "stations-de-charge", name: "Stazioni di ricarica", slug: "stations-de-charge" },
            { id: "telecommandes-multimedia", name: "Telecomandi multimediali", slug: "telecommandes-multimedia" }
          ]
        }
      ]
    },
    {
      id: "consoles-portables",
      name: "Console portatili",
      slug: "consoles-portables",
      subcategories: [
        { id: "nintendo-switch-lite", name: "Nintendo Switch Lite", slug: "nintendo-switch-lite" },
        { id: "nintendo-3ds-2ds", name: "Nintendo 3DS/2DS", slug: "nintendo-3ds-2ds" },
        { id: "psp", name: "PSP", slug: "psp" },
        { id: "ps-vita", name: "PS Vita", slug: "ps-vita" },
        { id: "consoles-retro-portables", name: "Portatili retrò", slug: "consoles-retro-portables" },
        { id: "consoles-android", name: "Console Android", slug: "consoles-android" },
        {
          id: "accessoires-consoles-portables",
          name: "Accessori portatili",
          slug: "accessoires-consoles-portables",
          subcategories: [
            { id: "housses", name: "Custodie", slug: "housses" },
            { id: "batteries", name: "Batterie", slug: "batteries" },
            { id: "protections-ecran", name: "Proteggi‑schermo", slug: "protections-ecran" }
          ]
        }
      ]
    },
    {
      id: "jeux-playstation",
      name: "Giochi PlayStation",
      slug: "jeux-playstation",
      subcategories: [
        { id: "ps5", name: "PS5", slug: "ps5" },
        { id: "ps4", name: "PS4", slug: "ps4" },
        { id: "ps3", name: "PS3", slug: "ps3" },
        { id: "ps2", name: "PS2", slug: "ps2" },
        { id: "ps1", name: "PS1", slug: "ps1" },
        { id: "editions-limitees", name: "Edizioni limitate", slug: "editions-limitees" },
        { id: "jeux-neufs", name: "Nuovi", slug: "jeux-neufs" },
        { id: "jeux-occasion", name: "Usati", slug: "jeux-occasion" }
      ]
    },
    {
      id: "jeux-xbox",
      name: "Giochi Xbox",
      slug: "jeux-xbox",
      subcategories: [
        { id: "xbox-series-xs", name: "Xbox Series X|S", slug: "xbox-series-xs" },
        { id: "xbox-one", name: "Xbox One", slug: "xbox-one" },
        { id: "xbox-360", name: "Xbox 360", slug: "xbox-360" },
        { id: "editions-collector", name: "Edizioni da collezione", slug: "editions-collector" },
        { id: "jeux-neufs-xbox", name: "Nuovi", slug: "jeux-neufs-xbox" },
        { id: "jeux-occasion-xbox", name: "Usati", slug: "jeux-occasion-xbox" }
      ]
    },
    {
      id: "jeux-nintendo",
      name: "Giochi Nintendo",
      slug: "jeux-nintendo",
      subcategories: [
        { id: "switch-jeux", name: "Switch", slug: "switch-jeux" },
        { id: "wii-u", name: "Wii U", slug: "wii-u" },
        { id: "wii", name: "Wii", slug: "wii" },
        { id: "gamecube", name: "GameCube", slug: "gamecube" },
        { id: "3ds-2ds-jeux", name: "3DS/2DS", slug: "3ds-2ds-jeux" },
        { id: "jeux-retro-nintendo", name: "Nintendo retrò", slug: "jeux-retro-nintendo" }
      ]
    },
    {
      id: "jeux-pc-mac",
      name: "Giochi PC & Mac",
      slug: "jeux-pc-mac",
      subcategories: [
        { id: "jeux-physiques", name: "Fisici", slug: "jeux-physiques" },
        { id: "jeux-steam", name: "Steam", slug: "jeux-steam" },
        { id: "jeux-epic-games", name: "Epic Games", slug: "jeux-epic-games" },
        { id: "jeux-blizzard", name: "Blizzard", slug: "jeux-blizzard" },
        { id: "comptes-gaming", name: "Account di gioco", slug: "comptes-gaming" }
      ]
    },
    {
      id: "jeux-retro-collections",
      name: "Retro & collezioni",
      slug: "jeux-retro-collections",
      subcategories: [
        { id: "cartouches-nes", name: "Cartucce NES", slug: "cartouches-nes" },
        { id: "cartouches-snes", name: "Cartucce SNES", slug: "cartouches-snes" },
        { id: "sega-retro", name: "Sega", slug: "sega-retro" },
        { id: "gameboy", name: "GameBoy", slug: "gameboy" },
        { id: "atari-retro", name: "Atari", slug: "atari-retro" },
        { id: "neo-geo", name: "Neo‑Geo", slug: "neo-geo" },
        { id: "editions-rares", name: "Edizioni rare", slug: "editions-rares" },
        {
          id: "objets-collectors",
          name: "Collezionabili",
          slug: "objets-collectors",
          subcategories: [
            { id: "figurines-collector", name: "Figure", slug: "figurines-collector" },
            { id: "ost", name: "OST", slug: "ost" },
            { id: "artbooks", name: "Artbooks", slug: "artbooks" }
          ]
        }
      ]
    },
    {
      id: "accessoires-gaming",
      name: "Accessori gaming",
      slug: "accessoires-gaming",
      subcategories: [
        { id: "manettes-gaming", name: "Controller", slug: "manettes-gaming" },
        { id: "casques-gaming", name: "Cuffie gaming", slug: "casques-gaming" },
        { id: "tapis-rgb", name: "Tappetini RGB", slug: "tapis-rgb" },
        { id: "claviers-gaming", name: "Tastiere gaming", slug: "claviers-gaming" },
        { id: "souris-gaming", name: "Mouse gaming", slug: "souris-gaming" },
        { id: "volants-pedaliers", name: "Volanti e pedali", slug: "volants-pedaliers" },
        { id: "joysticks", name: "Joystick", slug: "joysticks" },
        { id: "flight-sticks", name: "Flight sticks", slug: "flight-sticks" }
      ]
    },
    {
      id: "equipements-vr-ar",
      name: "Dispositivi VR & AR",
      slug: "equipements-vr-ar",
      subcategories: [
        { id: "ps-vr", name: "PS VR", slug: "ps-vr" },
        { id: "oculus-quest", name: "Oculus Quest", slug: "oculus-quest" },
        { id: "htc-vive", name: "HTC Vive", slug: "htc-vive" },
        {
          id: "accessoires-vr",
          name: "Accessori VR",
          slug: "accessoires-vr",
          subcategories: [
            { id: "capteurs", name: "Sensori", slug: "capteurs" },
            { id: "sangles", name: "Cinghie", slug: "sangles" },
            { id: "adaptateurs", name: "Adattatori", slug: "adaptateurs" }
          ]
        }
      ]
    },
    {
      id: "composants-e-sport",
      name: "Componenti & attrezzature e‑sport",
      slug: "composants-e-sport",
      subcategories: [
        { id: "ecrans-gaming", name: "Monitor gaming", slug: "ecrans-gaming" },
        { id: "chaises-gaming", name: "Sedie gaming", slug: "chaises-gaming" },
        { id: "bureaux-gamer", name: "Scrivanie gamer", slug: "bureaux-gamer" },
        { id: "cartes-graphiques", name: "Schede grafiche", slug: "cartes-graphiques" },
        { id: "ram", name: "RAM", slug: "ram" },
        { id: "ssd", name: "SSD", slug: "ssd" },
        { id: "refroidissement", name: "Raffreddamento", slug: "refroidissement" }
      ]
    },
    {
      id: "cartes-abonnements",
      name: "Carte & abbonamenti",
      slug: "cartes-abonnements",
      subcategories: [
        { id: "ps-plus", name: "PS Plus", slug: "ps-plus" },
        { id: "xbox-game-pass", name: "Xbox Game Pass", slug: "xbox-game-pass" },
        { id: "nintendo-online", name: "Nintendo Online", slug: "nintendo-online" },
        {
          id: "cartes-prepayees",
          name: "Carte prepagate",
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
      name: "Streaming & acquisizione video",
      slug: "streaming-capture-video",
      subcategories: [
        {
          id: "cartes-acquisition",
          name: "Schede di acquisizione",
          slug: "cartes-acquisition",
          subcategories: [
            { id: "elgato", name: "Elgato", slug: "elgato" },
            { id: "avermedia", name: "AverMedia", slug: "avermedia" }
          ]
        },
        { id: "cameras-streaming", name: "Telecamere streaming", slug: "cameras-streaming" },
        { id: "micros-professionnels", name: "Microfoni professionali", slug: "micros-professionnels" },
        { id: "eclairage", name: "Illuminazione", slug: "eclairage" },
        { id: "fonds-verts", name: "Green screen", slug: "fonds-verts" }
      ]
    },
    {
      id: "merchandising-gaming",
      name: "Merchandising gaming",
      slug: "merchandising-gaming",
      subcategories: [
        { id: "figurines", name: "Figure", slug: "figurines" },
        { id: "posters", name: "Poster", slug: "posters" },
        { id: "vetements-gaming", name: "Abbigliamento gaming", slug: "vetements-gaming" },
        { id: "accessoires-cosplay", name: "Accessori cosplay", slug: "accessoires-cosplay" },
        { id: "collections-officielles", name: "Collezioni ufficiali", slug: "collections-officielles" }
      ]
    }
  ]
};