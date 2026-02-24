import { MenuCategory } from "@/data/categoryTypes";

export const evenementsBilletterieIt: MenuCategory = {
  id: "evenements-billetterie",
  name: "Eventi & Biglietteria",
  slug: "evenements-billetterie",
  subcategories: [
    {
      id: "concerts-spectacles",
      name: "Concerti & Spettacoli",
      slug: "concerts-spectacles",
      subcategories: [
        { id: "concerts-live", name: "concerti live", slug: "concerts-live" },
        { id: "festivals-musicaux", name: "festival musicali", slug: "festivals-musicaux" },
        { id: "spectacles-humoristiques", name: "spettacoli comici", slug: "spectacles-humoristiques" },
        { id: "one-man-show", name: "one-man show", slug: "one-man-show" },
        { id: "comedies-musicales", name: "musical", slug: "comedies-musicales" },
        { id: "soirees-artistiques", name: "serate artistiche", slug: "soirees-artistiques" },
        { id: "performances-culturelles", name: "performance culturali", slug: "performances-culturelles" },
        { id: "recitals", name: "recital", slug: "recitals" }
      ]
    },
    {
      id: "evenements-sportifs",
      name: "Eventi Sportivi",
      slug: "evenements-sportifs",
      subcategories: [
        { id: "matchs-football", name: "partite di calcio", slug: "matchs-football" },
        { id: "competitions-sportives", name: "competizioni sportive", slug: "competitions-sportives" },
        { id: "tournois", name: "tornei", slug: "tournois" },
        { id: "sports-mecaniques", name: "sport motoristici", slug: "sports-mecaniques" },
        { id: "arts-martiaux", name: "arti marziali", slug: "arts-martiaux" },
        { id: "marathons", name: "maratone", slug: "marathons" },
        { id: "evenements-e-sport", name: "eventi e-sport", slug: "evenements-e-sport" }
      ]
    },
    {
      id: "cinema-avant-premieres",
      name: "Cinema & Anteprime",
      slug: "cinema-avant-premieres",
      subcategories: [
        { id: "billets-cinema", name: "biglietti cinema", slug: "billets-cinema" },
        { id: "projections-speciales", name: "proiezioni speciali", slug: "projections-speciales" },
        { id: "avant-premieres", name: "anteprime", slug: "avant-premieres" },
        { id: "festivals-film", name: "festival del cinema", slug: "festivals-film" },
        { id: "seances-vip", name: "sessioni VIP", slug: "seances-vip" }
      ]
    },
    {
      id: "theatre-arts-sceniques",
      name: "Teatro & Arti Performative",
      slug: "theatre-arts-sceniques",
      subcategories: [
        { id: "pieces-theatre", name: "spettacoli teatrali", slug: "pieces-theatre" },
        { id: "operas", name: "opere", slug: "operas" },
        { id: "ballets", name: "balletti", slug: "ballets" },
        { id: "danse-contemporaine", name: "danza contemporanea", slug: "danse-contemporaine" },
        { id: "representations-culturelles", name: "rappresentazioni culturali", slug: "representations-culturelles" }
      ]
    },
    {
      id: "conferences-formations",
      name: "Conferenze & Formazione",
      slug: "conferences-formations",
      subcategories: [
        { id: "conferences-professionnelles", name: "conferenze professionali", slug: "conferences-professionnelles" },
        { id: "seminaires", name: "seminari", slug: "seminaires" },
        { id: "formations", name: "formazioni", slug: "formations" },
        { id: "ateliers-pratiques", name: "laboratori pratici", slug: "ateliers-pratiques" },
        { id: "masterclass", name: "masterclass", slug: "masterclass" },
        { id: "salons", name: "fiere", slug: "salons" }
      ]
    },
    {
      id: "festivals-fetes",
      name: "Festival & Feste",
      slug: "festivals-fetes",
      subcategories: [
        { id: "festivals-culturels", name: "festival culturali", slug: "festivals-culturels" },
        { id: "fetes-locales", name: "feste locali", slug: "fetes-locales" },
        { id: "evenements-traditionnels", name: "eventi tradizionali", slug: "evenements-traditionnels" },
        { id: "carnavals", name: "carnevali", slug: "carnavals" },
        { id: "celebrations-nationales", name: "celebrazioni nazionali", slug: "celebrations-nationales" }
      ]
    },
    {
      id: "parcs-loisirs",
      name: "Parchi & Tempo Libero",
      slug: "parcs-loisirs",
      subcategories: [
        { id: "parcs-attraction", name: "biglietti parchi divertimento", slug: "parcs-attraction" },
        { id: "parcs-aquatiques", name: "parchi acquatici", slug: "parcs-aquatiques" },
        { id: "jardins-zoologiques", name: "zoo", slug: "jardins-zoologiques" },
        { id: "circuits-decouvertes", name: "percorsi di scoperta", slug: "circuits-decouvertes" },
        { id: "activites-loisirs", name: "attività ricreative", slug: "activites-loisirs" }
      ]
    },
    {
      id: "evenements-familiaux",
      name: "Eventi Familiari",
      slug: "evenements-familiaux",
      subcategories: [
        { id: "spectacles-enfants", name: "spettacoli per bambini", slug: "spectacles-enfants" },
        { id: "animations", name: "animazioni", slug: "animations" },
        { id: "ateliers-creatifs", name: "laboratori creativi", slug: "ateliers-creatifs" },
        { id: "evenements-educatifs", name: "eventi educativi", slug: "evenements-educatifs" },
        { id: "shows-interactifs", name: "show interattivi", slug: "shows-interactifs" }
      ]
    },
    {
      id: "gala-receptions",
      name: "Gala & Ricevimenti",
      slug: "gala-receptions",
      subcategories: [
        { id: "soirees-gala", name: "serate di gala", slug: "soirees-gala" },
        { id: "diners-caritatifs", name: "cene di beneficenza", slug: "diners-caritatifs" },
        { id: "evenements-vip", name: "eventi VIP", slug: "evenements-vip" },
        { id: "soirees-privees", name: "feste private", slug: "soirees-privees" },
        { id: "evenements-prestige", name: "eventi di prestigio", slug: "evenements-prestige" }
      ]
    },
    {
      id: "salons-expositions",
      name: "Fiere & Esposizioni",
      slug: "salons-expositions",
      subcategories: [
        { id: "salons-professionnels", name: "fiere professionali", slug: "salons-professionnels" },
        { id: "foires-commerciales", name: "fiere commerciali", slug: "foires-commerciales" },
        { id: "expositions-artistiques", name: "mostre d'arte", slug: "expositions-artistiques" },
        { id: "expositions-scientifiques", name: "mostre scientifiche", slug: "expositions-scientifiques" }
      ]
    },
    {
      id: "billetterie-transport",
      name: "Biglietteria Trasporti",
      slug: "billetterie-transport",
      subcategories: [
        { id: "billets-autocar", name: "biglietti autobus", slug: "billets-autocar" },
        { id: "billets-train", name: "biglietti treno", slug: "billets-train" },
        { id: "billets-ferry", name: "biglietti traghetto", slug: "billets-ferry" },
        { id: "traversees-maritimes", name: "traversate marittime", slug: "traversees-maritimes" },
        { id: "bus-interwilayas", name: "autobus interprovinciali", slug: "bus-interwilayas" },
        { id: "billets-touristiques", name: "biglietti turistici", slug: "billets-touristiques" }
      ]
    },
    {
      id: "evenements-religieux-traditionnels",
      name: "Eventi Religiosi & Tradizionali",
      slug: "evenements-religieux-traditionnels",
      subcategories: [
        { id: "mawlid", name: "Mawlid", slug: "mawlid" },
        { id: "fetes-religieuses", name: "feste religiose", slug: "fetes-religieuses" },
        { id: "rassemblements-culturels", name: "raduni culturali", slug: "rassemblements-culturels" },
        { id: "ceremonies-traditionnelles", name: "cerimonie tradizionali", slug: "ceremonies-traditionnelles" }
      ]
    },
    {
      id: "services-evenementiels",
      name: "Servizi Eventi",
      slug: "services-evenementiels",
      subcategories: [
        { id: "organisation-evenements", name: "organizzazione eventi", slug: "organisation-evenements" },
        { id: "location-sono", name: "noleggio impianto audio", slug: "location-sono" },
        { id: "eclairage", name: "illuminazione", slug: "eclairage" },
        { id: "decoration-evenementielle", name: "decorazione eventi", slug: "decoration-evenementielle" },
        { id: "photographes", name: "fotografi", slug: "photographes" },
        { id: "videastes", name: "videomaker", slug: "videastes" },
        { id: "animateurs", name: "animatori", slug: "animateurs" }
      ]
    },
    {
      id: "packages-offres-speciales",
      name: "Pacchetti & Offerte Speciali",
      slug: "packages-offres-speciales",
      subcategories: [
        { id: "packs-fetes", name: "pacchetti feste", slug: "packs-fetes" },
        { id: "acces-vip", name: "accesso VIP", slug: "acces-vip" },
        { id: "pass-multi-evenements", name: "pass multi-evento", slug: "pass-multi-evenements" },
        { id: "offres-saisonnieres", name: "offerte stagionali", slug: "offres-saisonnieres" },
        { id: "promotions", name: "promozioni", slug: "promotions" }
      ]
    }
  ]
};