import { MenuCategory } from "@/data/categoryTypes";

export const evenementsBilletterieDe: MenuCategory = {
  id: "evenements-billetterie",
  name: "Veranstaltungen & Tickets",
  slug: "evenements-billetterie",
  subcategories: [
    {
      id: "concerts-spectacles",
      name: "Konzerte & Shows",
      slug: "concerts-spectacles",
      subcategories: [
        { id: "concerts-live", name: "Live-Konzerte", slug: "concerts-live" },
        { id: "festivals-musicaux", name: "Musikfestivals", slug: "festivals-musicaux" },
        { id: "spectacles-humoristiques", name: "Comedyshows", slug: "spectacles-humoristiques" },
        { id: "one-man-show", name: "Soloshow", slug: "one-man-show" },
        { id: "comedies-musicales", name: "Musicals", slug: "comedies-musicales" },
        { id: "soirees-artistiques", name: "Kunstabende", slug: "soirees-artistiques" },
        { id: "performances-culturelles", name: "Kulturelle Aufführungen", slug: "performances-culturelles" },
        { id: "recitals", name: "Rezitals", slug: "recitals" }
      ]
    },
    {
      id: "evenements-sportifs",
      name: "Sportveranstaltungen",
      slug: "evenements-sportifs",
      subcategories: [
        { id: "matchs-football", name: "Fußballspiele", slug: "matchs-football" },
        { id: "competitions-sportives", name: "Sportwettbewerbe", slug: "competitions-sportives" },
        { id: "tournois", name: "Turniere", slug: "tournois" },
        { id: "sports-mecaniques", name: "Motorsport", slug: "sports-mecaniques" },
        { id: "arts-martiaux", name: "Kampfsport", slug: "arts-martiaux" },
        { id: "marathons", name: "Marathons", slug: "marathons" },
        { id: "evenements-e-sport", name: "E-Sport-Events", slug: "evenements-e-sport" }
      ]
    },
    {
      id: "cinema-avant-premieres",
      name: "Kino & Premieren",
      slug: "cinema-avant-premieres",
      subcategories: [
        { id: "billets-cinema", name: "Kinokarten", slug: "billets-cinema" },
        { id: "projections-speciales", name: "Sondervorführungen", slug: "projections-speciales" },
        { id: "avant-premieres", name: "Premieren", slug: "avant-premieres" },
        { id: "festivals-film", name: "Filmfestivals", slug: "festivals-film" },
        { id: "seances-vip", name: "VIP-Vorstellungen", slug: "seances-vip" }
      ]
    },
    {
      id: "theatre-arts-sceniques",
      name: "Theater & Darstellende Künste",
      slug: "theatre-arts-sceniques",
      subcategories: [
        { id: "pieces-theatre", name: "Stücke", slug: "pieces-theatre" },
        { id: "operas", name: "Opern", slug: "operas" },
        { id: "ballets", name: "Ballette", slug: "ballets" },
        { id: "danse-contemporaine", name: "Zeitgenössischer Tanz", slug: "danse-contemporaine" },
        { id: "representations-culturelles", name: "Kulturelle Aufführungen", slug: "representations-culturelles" }
      ]
    },
    {
      id: "conferences-formations",
      name: "Konferenzen & Schulungen",
      slug: "conferences-formations",
      subcategories: [
        { id: "conferences-professionnelles", name: "Fachkonferenzen", slug: "conferences-professionnelles" },
        { id: "seminaires", name: "Seminare", slug: "seminaires" },
        { id: "formations", name: "Schulungen", slug: "formations" },
        { id: "ateliers-pratiques", name: "Praxis-Workshops", slug: "ateliers-pratiques" },
        { id: "masterclass", name: "Masterclasses", slug: "masterclass" },
        { id: "salons", name: "Messen", slug: "salons" }
      ]
    },
    {
      id: "festivals-fetes",
      name: "Festivals & Feiern",
      slug: "festivals-fetes",
      subcategories: [
        { id: "festivals-culturels", name: "Kulturelle Festivals", slug: "festivals-culturels" },
        { id: "fetes-locales", name: "Lokale Feste", slug: "fetes-locales" },
        { id: "evenements-traditionnels", name: "Traditionelle Veranstaltungen", slug: "evenements-traditionnels" },
        { id: "carnavals", name: "Karnevals", slug: "carnavals" },
        { id: "celebrations-nationales", name: "Nationale Feierlichkeiten", slug: "celebrations-nationales" }
      ]
    },
    {
      id: "parcs-loisirs",
      name: "Parks & Freizeit",
      slug: "parcs-loisirs",
      subcategories: [
        { id: "parcs-attraction", name: "Freizeitpark-Tickets", slug: "parcs-attraction" },
        { id: "parcs-aquatiques", name: "Wasserparks", slug: "parcs-aquatiques" },
        { id: "jardins-zoologiques", name: "Zoos", slug: "jardins-zoologiques" },
        { id: "circuits-decouvertes", name: "Entdeckungsrouten", slug: "circuits-decouvertes" },
        { id: "activites-loisirs", name: "Freizeitaktivitäten", slug: "activites-loisirs" }
      ]
    },
    {
      id: "evenements-familiaux",
      name: "Familienveranstaltungen",
      slug: "evenements-familiaux",
      subcategories: [
        { id: "spectacles-enfants", name: "Kinderaufführungen", slug: "spectacles-enfants" },
        { id: "animations", name: "Animationen", slug: "animations" },
        { id: "ateliers-creatifs", name: "Kreativ-Workshops", slug: "ateliers-creatifs" },
        { id: "evenements-educatifs", name: "Bildungsveranstaltungen", slug: "evenements-educatifs" },
        { id: "shows-interactifs", name: "Interaktive Shows", slug: "shows-interactifs" }
      ]
    },
    {
      id: "gala-receptions",
      name: "Gala & Empfänge",
      slug: "gala-receptions",
      subcategories: [
        { id: "soirees-gala", name: "Galaabende", slug: "soirees-gala" },
        { id: "diners-caritatifs", name: "Wohltätigkeitsdinner", slug: "diners-caritatifs" },
        { id: "evenements-vip", name: "VIP-Veranstaltungen", slug: "evenements-vip" },
        { id: "soirees-privees", name: "Private Partys", slug: "soirees-privees" },
        { id: "evenements-prestige", name: "Prestige-Events", slug: "evenements-prestige" }
      ]
    },
    {
      id: "salons-expositions",
      name: "Messen & Ausstellungen",
      slug: "salons-expositions",
      subcategories: [
        { id: "salons-professionnels", name: "Fachmessen", slug: "salons-professionnels" },
        { id: "foires-commerciales", name: "Handelsmessen", slug: "foires-commerciales" },
        { id: "expositions-artistiques", name: "Kunstausstellungen", slug: "expositions-artistiques" },
        { id: "expositions-scientifiques", name: "Wissenschaftliche Ausstellungen", slug: "expositions-scientifiques" }
      ]
    },
    {
      id: "billetterie-transport",
      name: "Ticketing für Verkehrsmittel",
      slug: "billetterie-transport",
      subcategories: [
        { id: "billets-autocar", name: "Fernbus-Tickets", slug: "billets-autocar" },
        { id: "billets-train", name: "Zugtickets", slug: "billets-train" },
        { id: "billets-ferry", name: "Fährtickets", slug: "billets-ferry" },
        { id: "traversees-maritimes", name: "Seefahrten", slug: "traversees-maritimes" },
        { id: "bus-interwilayas", name: "Überlandbusse", slug: "bus-interwilayas" },
        { id: "billets-touristiques", name: "Touristentickets", slug: "billets-touristiques" }
      ]
    },
    {
      id: "evenements-religieux-traditionnels",
      name: "Religiöse & Traditionelle Veranstaltungen",
      slug: "evenements-religieux-traditionnels",
      subcategories: [
        { id: "mawlid", name: "Mawlid", slug: "mawlid" },
        { id: "fetes-religieuses", name: "Religiöse Feste", slug: "fetes-religieuses" },
        { id: "rassemblements-culturels", name: "Kulturelle Treffen", slug: "rassemblements-culturels" },
        { id: "ceremonies-traditionnelles", name: "Traditionelle Zeremonien", slug: "ceremonies-traditionnelles" }
      ]
    },
    {
      id: "services-evenementiels",
      name: "Event-Dienstleistungen",
      slug: "services-evenementiels",
      subcategories: [
        { id: "organisation-evenements", name: "Eventorganisation", slug: "organisation-evenements" },
        { id: "location-sono", name: "Tonanlagenverleih", slug: "location-sono" },
        { id: "eclairage", name: "Beleuchtung", slug: "eclairage" },
        { id: "decoration-evenementielle", name: "Eventdekoration", slug: "decoration-evenementielle" },
        { id: "photographes", name: "Fotografen", slug: "photographes" },
        { id: "videastes", name: "Videografen", slug: "videastes" },
        { id: "animateurs", name: "Moderatoren", slug: "animateurs" }
      ]
    },
    {
      id: "packages-offres-speciales",
      name: "Pakete & Sonderangebote",
      slug: "packages-offres-speciales",
      subcategories: [
        { id: "packs-fetes", name: "Party-Pakete", slug: "packs-fetes" },
        { id: "acces-vip", name: "VIP-Zugang", slug: "acces-vip" },
        { id: "pass-multi-evenements", name: "Multi-Event-Pässe", slug: "pass-multi-evenements" },
        { id: "offres-saisonnieres", name: "Saisonangebote", slug: "offres-saisonnieres" },
        { id: "promotions", name: "Aktionen", slug: "promotions" }
      ]
    }
  ]
};