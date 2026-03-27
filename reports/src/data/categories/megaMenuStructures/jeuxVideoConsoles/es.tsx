import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Gamepad2 } from "lucide-react";

export const jeuxVideoConsolesEs: MenuCategory = {
  id: "jeux-video-consoles",
  name: "Videojuegos y Consolas",
  slug: "jeux-video-consoles",
  icon: <Gamepad2 className="w-4 h-4" />,
  subcategories: [
    {
      id: "consoles-de-salon",
      name: "Consolas de sobremesa",
      slug: "consoles-de-salon",
      subcategories: [
        { id: "playstation", name: "PlayStation", slug: "playstation" },
        { id: "xbox", name: "Xbox", slug: "xbox" },
        { id: "nintendo-switch", name: "Nintendo Switch", slug: "nintendo-switch" },
        { id: "atari", name: "Atari", slug: "atari" },
        { id: "sega", name: "Sega", slug: "sega" },
        { id: "autres-consoles-retro", name: "Otras consolas retro", slug: "autres-consoles-retro" },
        {
          id: "accessoires-consoles-de-salon",
          name: "Accesorios de consola",
          slug: "accessoires-consoles-de-salon",
          subcategories: [
            { id: "manettes", name: "Mandos", slug: "manettes" },
            { id: "cables-hdmi", name: "Cables HDMI", slug: "cables-hdmi" },
            { id: "alimentations", name: "Fuentes de alimentación", slug: "alimentations" },
            { id: "stations-de-charge", name: "Estaciones de carga", slug: "stations-de-charge" },
            { id: "telecommandes-multimedia", name: "Mandos multimedia", slug: "telecommandes-multimedia" }
          ]
        }
      ]
    },
    {
      id: "consoles-portables",
      name: "Consolas portátiles",
      slug: "consoles-portables",
      subcategories: [
        { id: "nintendo-switch-lite", name: "Nintendo Switch Lite", slug: "nintendo-switch-lite" },
        { id: "nintendo-3ds-2ds", name: "Nintendo 3DS/2DS", slug: "nintendo-3ds-2ds" },
        { id: "psp", name: "PSP", slug: "psp" },
        { id: "ps-vita", name: "PS Vita", slug: "ps-vita" },
        { id: "consoles-retro-portables", name: "Retro portátiles", slug: "consoles-retro-portables" },
        { id: "consoles-android", name: "Consolas Android", slug: "consoles-android" },
        {
          id: "accessoires-consoles-portables",
          name: "Accesorios portátiles",
          slug: "accessoires-consoles-portables",
          subcategories: [
            { id: "housses", name: "Fundas", slug: "housses" },
            { id: "batteries", name: "Baterías", slug: "batteries" },
            { id: "protections-ecran", name: "Protectores de pantalla", slug: "protections-ecran" }
          ]
        }
      ]
    },
    {
      id: "jeux-playstation",
      name: "Juegos de PlayStation",
      slug: "jeux-playstation",
      subcategories: [
        { id: "ps5", name: "PS5", slug: "ps5" },
        { id: "ps4", name: "PS4", slug: "ps4" },
        { id: "ps3", name: "PS3", slug: "ps3" },
        { id: "ps2", name: "PS2", slug: "ps2" },
        { id: "ps1", name: "PS1", slug: "ps1" },
        { id: "editions-limitees", name: "Ediciones limitadas", slug: "editions-limitees" },
        { id: "jeux-neufs", name: "Nuevos", slug: "jeux-neufs" },
        { id: "jeux-occasion", name: "Usados", slug: "jeux-occasion" }
      ]
    },
    {
      id: "jeux-xbox",
      name: "Juegos de Xbox",
      slug: "jeux-xbox",
      subcategories: [
        { id: "xbox-series-xs", name: "Xbox Series X|S", slug: "xbox-series-xs" },
        { id: "xbox-one", name: "Xbox One", slug: "xbox-one" },
        { id: "xbox-360", name: "Xbox 360", slug: "xbox-360" },
        { id: "editions-collector", name: "Ediciones de colección", slug: "editions-collector" },
        { id: "jeux-neufs-xbox", name: "Nuevos", slug: "jeux-neufs-xbox" },
        { id: "jeux-occasion-xbox", name: "Usados", slug: "jeux-occasion-xbox" }
      ]
    },
    {
      id: "jeux-nintendo",
      name: "Juegos de Nintendo",
      slug: "jeux-nintendo",
      subcategories: [
        { id: "switch-jeux", name: "Switch", slug: "switch-jeux" },
        { id: "wii-u", name: "Wii U", slug: "wii-u" },
        { id: "wii", name: "Wii", slug: "wii" },
        { id: "gamecube", name: "GameCube", slug: "gamecube" },
        { id: "3ds-2ds-jeux", name: "3DS/2DS", slug: "3ds-2ds-jeux" },
        { id: "jeux-retro-nintendo", name: "Retro Nintendo", slug: "jeux-retro-nintendo" }
      ]
    },
    {
      id: "jeux-pc-mac",
      name: "Juegos para PC y Mac",
      slug: "jeux-pc-mac",
      subcategories: [
        { id: "jeux-physiques", name: "Físicos", slug: "jeux-physiques" },
        { id: "jeux-steam", name: "Steam", slug: "jeux-steam" },
        { id: "jeux-epic-games", name: "Epic Games", slug: "jeux-epic-games" },
        { id: "jeux-blizzard", name: "Blizzard", slug: "jeux-blizzard" },
        { id: "comptes-gaming", name: "Cuentas de juego", slug: "comptes-gaming" }
      ]
    },
    {
      id: "jeux-retro-collections",
      name: "Retro y coleccionismo",
      slug: "jeux-retro-collections",
      subcategories: [
        { id: "cartouches-nes", name: "Cartuchos NES", slug: "cartouches-nes" },
        { id: "cartouches-snes", name: "Cartuchos SNES", slug: "cartouches-snes" },
        { id: "sega-retro", name: "Sega", slug: "sega-retro" },
        { id: "gameboy", name: "GameBoy", slug: "gameboy" },
        { id: "atari-retro", name: "Atari", slug: "atari-retro" },
        { id: "neo-geo", name: "Neo‑Geo", slug: "neo-geo" },
        { id: "editions-rares", name: "Ediciones raras", slug: "editions-rares" },
        {
          id: "objets-collectors",
          name: "Coleccionables",
          slug: "objets-collectors",
          subcategories: [
            { id: "figurines-collector", name: "Figuras", slug: "figurines-collector" },
            { id: "ost", name: "Bandas sonoras", slug: "ost" },
            { id: "artbooks", name: "Artbooks", slug: "artbooks" }
          ]
        }
      ]
    },
    {
      id: "accessoires-gaming",
      name: "Accesorios gaming",
      slug: "accessoires-gaming",
      subcategories: [
        { id: "manettes-gaming", name: "Mandos", slug: "manettes-gaming" },
        { id: "casques-gaming", name: "Auriculares gaming", slug: "casques-gaming" },
        { id: "tapis-rgb", name: "Alfombrillas RGB", slug: "tapis-rgb" },
        { id: "claviers-gaming", name: "Teclados gaming", slug: "claviers-gaming" },
        { id: "souris-gaming", name: "Ratones gaming", slug: "souris-gaming" },
        { id: "volants-pedaliers", name: "Volantes y pedales", slug: "volants-pedaliers" },
        { id: "joysticks", name: "Joysticks", slug: "joysticks" },
        { id: "flight-sticks", name: "Palancas de vuelo", slug: "flight-sticks" }
      ]
    },
    {
      id: "equipements-vr-ar",
      name: "Equipos VR y AR",
      slug: "equipements-vr-ar",
      subcategories: [
        { id: "ps-vr", name: "PS VR", slug: "ps-vr" },
        { id: "oculus-quest", name: "Oculus Quest", slug: "oculus-quest" },
        { id: "htc-vive", name: "HTC Vive", slug: "htc-vive" },
        {
          id: "accessoires-vr",
          name: "Accesorios VR",
          slug: "accessoires-vr",
          subcategories: [
            { id: "capteurs", name: "Sensores", slug: "capteurs" },
            { id: "sangles", name: "Correas", slug: "sangles" },
            { id: "adaptateurs", name: "Adaptadores", slug: "adaptateurs" }
          ]
        }
      ]
    },
    {
      id: "composants-e-sport",
      name: "Componentes y equipos e‑sport",
      slug: "composants-e-sport",
      subcategories: [
        { id: "ecrans-gaming", name: "Monitores gaming", slug: "ecrans-gaming" },
        { id: "chaises-gaming", name: "Sillas gaming", slug: "chaises-gaming" },
        { id: "bureaux-gamer", name: "Escritorios gamer", slug: "bureaux-gamer" },
        { id: "cartes-graphiques", name: "Tarjetas gráficas", slug: "cartes-graphiques" },
        { id: "ram", name: "RAM", slug: "ram" },
        { id: "ssd", name: "SSD", slug: "ssd" },
        { id: "refroidissement", name: "Refrigeración", slug: "refroidissement" }
      ]
    },
    {
      id: "cartes-abonnements",
      name: "Tarjetas y suscripciones",
      slug: "cartes-abonnements",
      subcategories: [
        { id: "ps-plus", name: "PS Plus", slug: "ps-plus" },
        { id: "xbox-game-pass", name: "Xbox Game Pass", slug: "xbox-game-pass" },
        { id: "nintendo-online", name: "Nintendo Online", slug: "nintendo-online" },
        {
          id: "cartes-prepayees",
          name: "Tarjetas prepago",
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
      name: "Streaming y captura de vídeo",
      slug: "streaming-capture-video",
      subcategories: [
        {
          id: "cartes-acquisition",
          name: "Tarjetas de captura",
          slug: "cartes-acquisition",
          subcategories: [
            { id: "elgato", name: "Elgato", slug: "elgato" },
            { id: "avermedia", name: "AverMedia", slug: "avermedia" }
          ]
        },
        { id: "cameras-streaming", name: "Cámaras de streaming", slug: "cameras-streaming" },
        { id: "micros-professionnels", name: "Micrófonos profesionales", slug: "micros-professionnels" },
        { id: "eclairage", name: "Iluminación", slug: "eclairage" },
        { id: "fonds-verts", name: "Fondos verdes", slug: "fonds-verts" }
      ]
    },
    {
      id: "merchandising-gaming",
      name: "Merchandising gaming",
      slug: "merchandising-gaming",
      subcategories: [
        { id: "figurines", name: "Figuras", slug: "figurines" },
        { id: "posters", name: "Pósters", slug: "posters" },
        { id: "vetements-gaming", name: "Ropa gaming", slug: "vetements-gaming" },
        { id: "accessoires-cosplay", name: "Accesorios cosplay", slug: "accessoires-cosplay" },
        { id: "collections-officielles", name: "Colecciones oficiales", slug: "collections-officielles" }
      ]
    }
  ]
};