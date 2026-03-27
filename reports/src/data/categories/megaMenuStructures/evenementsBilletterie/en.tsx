import { MenuCategory } from "@/data/categoryTypes";

export const evenementsBilletterieEn: MenuCategory = {
  id: "evenements-billetterie",
  name: "Events & Ticketing",
  slug: "evenements-billetterie",
  subcategories: [
    {
      id: "concerts-spectacles",
      name: "Concerts & Shows",
      slug: "concerts-spectacles",
      subcategories: [
        { id: "concerts-live", name: "live concerts", slug: "concerts-live" },
        { id: "festivals-musicaux", name: "music festivals", slug: "festivals-musicaux" },
        { id: "spectacles-humoristiques", name: "comedy shows", slug: "spectacles-humoristiques" },
        { id: "one-man-show", name: "one-man show", slug: "one-man-show" },
        { id: "comedies-musicales", name: "musicals", slug: "comedies-musicales" },
        { id: "soirees-artistiques", name: "art nights", slug: "soirees-artistiques" },
        { id: "performances-culturelles", name: "cultural performances", slug: "performances-culturelles" },
        { id: "recitals", name: "recitals", slug: "recitals" }
      ]
    },
    {
      id: "evenements-sportifs",
      name: "Sports Events",
      slug: "evenements-sportifs",
      subcategories: [
        { id: "matchs-football", name: "football matches", slug: "matchs-football" },
        { id: "competitions-sportives", name: "sport competitions", slug: "competitions-sportives" },
        { id: "tournois", name: "tournaments", slug: "tournois" },
        { id: "sports-mecaniques", name: "motor sports", slug: "sports-mecaniques" },
        { id: "arts-martiaux", name: "martial arts", slug: "arts-martiaux" },
        { id: "marathons", name: "marathons", slug: "marathons" },
        { id: "evenements-e-sport", name: "e-sport events", slug: "evenements-e-sport" }
      ]
    },
    {
      id: "cinema-avant-premieres",
      name: "Cinema & Premieres",
      slug: "cinema-avant-premieres",
      subcategories: [
        { id: "billets-cinema", name: "cinema tickets", slug: "billets-cinema" },
        { id: "projections-speciales", name: "special screenings", slug: "projections-speciales" },
        { id: "avant-premieres", name: "premieres", slug: "avant-premieres" },
        { id: "festivals-film", name: "film festivals", slug: "festivals-film" },
        { id: "seances-vip", name: "VIP sessions", slug: "seances-vip" }
      ]
    },
    {
      id: "theatre-arts-sceniques",
      name: "Theatre & Performing Arts",
      slug: "theatre-arts-sceniques",
      subcategories: [
        { id: "pieces-theatre", name: "plays", slug: "pieces-theatre" },
        { id: "operas", name: "operas", slug: "operas" },
        { id: "ballets", name: "ballets", slug: "ballets" },
        { id: "danse-contemporaine", name: "contemporary dance", slug: "danse-contemporaine" },
        { id: "representations-culturelles", name: "cultural shows", slug: "representations-culturelles" }
      ]
    },
    {
      id: "conferences-formations",
      name: "Conferences & Training",
      slug: "conferences-formations",
      subcategories: [
        { id: "conferences-professionnelles", name: "professional conferences", slug: "conferences-professionnelles" },
        { id: "seminaires", name: "seminars", slug: "seminaires" },
        { id: "formations", name: "training", slug: "formations" },
        { id: "ateliers-pratiques", name: "practical workshops", slug: "ateliers-pratiques" },
        { id: "masterclass", name: "masterclasses", slug: "masterclass" },
        { id: "salons", name: "trade fairs", slug: "salons" }
      ]
    },
    {
      id: "festivals-fetes",
      name: "Festivals & Celebrations",
      slug: "festivals-fetes",
      subcategories: [
        { id: "festivals-culturels", name: "cultural festivals", slug: "festivals-culturels" },
        { id: "fetes-locales", name: "local festivities", slug: "fetes-locales" },
        { id: "evenements-traditionnels", name: "traditional events", slug: "evenements-traditionnels" },
        { id: "carnavals", name: "carnivals", slug: "carnavals" },
        { id: "celebrations-nationales", name: "national celebrations", slug: "celebrations-nationales" }
      ]
    },
    {
      id: "parcs-loisirs",
      name: "Parks & Leisure",
      slug: "parcs-loisirs",
      subcategories: [
        { id: "parcs-attraction", name: "theme park tickets", slug: "parcs-attraction" },
        { id: "parcs-aquatiques", name: "water parks", slug: "parcs-aquatiques" },
        { id: "jardins-zoologiques", name: "zoos", slug: "jardins-zoologiques" },
        { id: "circuits-decouvertes", name: "discovery circuits", slug: "circuits-decouvertes" },
        { id: "activites-loisirs", name: "leisure activities", slug: "activites-loisirs" }
      ]
    },
    {
      id: "evenements-familiaux",
      name: "Family Events",
      slug: "evenements-familiaux",
      subcategories: [
        { id: "spectacles-enfants", name: "children shows", slug: "spectacles-enfants" },
        { id: "animations", name: "animations", slug: "animations" },
        { id: "ateliers-creatifs", name: "creative workshops", slug: "ateliers-creatifs" },
        { id: "evenements-educatifs", name: "educational events", slug: "evenements-educatifs" },
        { id: "shows-interactifs", name: "interactive shows", slug: "shows-interactifs" }
      ]
    },
    {
      id: "gala-receptions",
      name: "Gala & Receptions",
      slug: "gala-receptions",
      subcategories: [
        { id: "soirees-gala", name: "gala nights", slug: "soirees-gala" },
        { id: "diners-caritatifs", name: "charity dinners", slug: "diners-caritatifs" },
        { id: "evenements-vip", name: "VIP events", slug: "evenements-vip" },
        { id: "soirees-privees", name: "private parties", slug: "soirees-privees" },
        { id: "evenements-prestige", name: "prestige events", slug: "evenements-prestige" }
      ]
    },
    {
      id: "salons-expositions",
      name: "Trade Shows & Exhibitions",
      slug: "salons-expositions",
      subcategories: [
        { id: "salons-professionnels", name: "professional trade shows", slug: "salons-professionnels" },
        { id: "foires-commerciales", name: "commercial fairs", slug: "foires-commerciales" },
        { id: "expositions-artistiques", name: "art exhibitions", slug: "expositions-artistiques" },
        { id: "expositions-scientifiques", name: "scientific exhibitions", slug: "expositions-scientifiques" }
      ]
    },
    {
      id: "billetterie-transport",
      name: "Transport Ticketing",
      slug: "billetterie-transport",
      subcategories: [
        { id: "billets-autocar", name: "coach tickets", slug: "billets-autocar" },
        { id: "billets-train", name: "train tickets", slug: "billets-train" },
        { id: "billets-ferry", name: "ferry tickets", slug: "billets-ferry" },
        { id: "traversees-maritimes", name: "sea crossings", slug: "traversees-maritimes" },
        { id: "bus-interwilayas", name: "inter-wilaya buses", slug: "bus-interwilayas" },
        { id: "billets-touristiques", name: "tourist tickets", slug: "billets-touristiques" }
      ]
    },
    {
      id: "evenements-religieux-traditionnels",
      name: "Religious & Traditional Events",
      slug: "evenements-religieux-traditionnels",
      subcategories: [
        { id: "mawlid", name: "Mawlid", slug: "mawlid" },
        { id: "fetes-religieuses", name: "religious festivals", slug: "fetes-religieuses" },
        { id: "rassemblements-culturels", name: "cultural gatherings", slug: "rassemblements-culturels" },
        { id: "ceremonies-traditionnelles", name: "traditional ceremonies", slug: "ceremonies-traditionnelles" }
      ]
    },
    {
      id: "services-evenementiels",
      name: "Event Services",
      slug: "services-evenementiels",
      subcategories: [
        { id: "organisation-evenements", name: "event organization", slug: "organisation-evenements" },
        { id: "location-sono", name: "sound system rental", slug: "location-sono" },
        { id: "eclairage", name: "lighting", slug: "eclairage" },
        { id: "decoration-evenementielle", name: "event decoration", slug: "decoration-evenementielle" },
        { id: "photographes", name: "photographers", slug: "photographes" },
        { id: "videastes", name: "videographers", slug: "videastes" },
        { id: "animateurs", name: "hosts & presenters", slug: "animateurs" }
      ]
    },
    {
      id: "packages-offres-speciales",
      name: "Packages & Special Offers",
      slug: "packages-offres-speciales",
      subcategories: [
        { id: "packs-fetes", name: "party packs", slug: "packs-fetes" },
        { id: "acces-vip", name: "VIP access", slug: "acces-vip" },
        { id: "pass-multi-evenements", name: "multi-event passes", slug: "pass-multi-evenements" },
        { id: "offres-saisonnieres", name: "seasonal offers", slug: "offres-saisonnieres" },
        { id: "promotions", name: "promotions", slug: "promotions" }
      ]
    }
  ]
};