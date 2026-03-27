import { MenuCategory } from "@/data/categoryTypes";

export const evenementsBilletterieFr: MenuCategory = {
  id: "evenements-billetterie",
  name: "Événements & Billetterie",
  slug: "evenements-billetterie",
  subcategories: [
    {
      id: "concerts-spectacles",
      name: "Concerts & Spectacles",
      slug: "concerts-spectacles",
      subcategories: [
        { id: "concerts-live", name: "concerts live", slug: "concerts-live" },
        { id: "festivals-musicaux", name: "festivals musicaux", slug: "festivals-musicaux" },
        { id: "spectacles-humoristiques", name: "spectacles humoristiques", slug: "spectacles-humoristiques" },
        { id: "one-man-show", name: "one-man-show", slug: "one-man-show" },
        { id: "comedies-musicales", name: "comédies musicales", slug: "comedies-musicales" },
        { id: "soirees-artistiques", name: "soirées artistiques", slug: "soirees-artistiques" },
        { id: "performances-culturelles", name: "performances culturelles", slug: "performances-culturelles" },
        { id: "recitals", name: "récitals", slug: "recitals" }
      ]
    },
    {
      id: "evenements-sportifs",
      name: "Événements Sportifs",
      slug: "evenements-sportifs",
      subcategories: [
        { id: "matchs-football", name: "matchs de football", slug: "matchs-football" },
        { id: "competitions-sportives", name: "compétitions sportives", slug: "competitions-sportives" },
        { id: "tournois", name: "tournois", slug: "tournois" },
        { id: "sports-mecaniques", name: "sports mécaniques", slug: "sports-mecaniques" },
        { id: "arts-martiaux", name: "arts martiaux", slug: "arts-martiaux" },
        { id: "marathons", name: "marathons", slug: "marathons" },
        { id: "evenements-e-sport", name: "événements e-sport", slug: "evenements-e-sport" }
      ]
    },
    {
      id: "cinema-avant-premieres",
      name: "Cinéma & Avant-premières",
      slug: "cinema-avant-premieres",
      subcategories: [
        { id: "billets-cinema", name: "billets cinéma", slug: "billets-cinema" },
        { id: "projections-speciales", name: "projections spéciales", slug: "projections-speciales" },
        { id: "avant-premieres", name: "avant-premières", slug: "avant-premieres" },
        { id: "festivals-film", name: "festivals du film", slug: "festivals-film" },
        { id: "seances-vip", name: "séances VIP", slug: "seances-vip" }
      ]
    },
    {
      id: "theatre-arts-sceniques",
      name: "Théâtre & Arts Scéniques",
      slug: "theatre-arts-sceniques",
      subcategories: [
        { id: "pieces-theatre", name: "pièces de théâtre", slug: "pieces-theatre" },
        { id: "operas", name: "opéras", slug: "operas" },
        { id: "ballets", name: "ballets", slug: "ballets" },
        { id: "danse-contemporaine", name: "danse contemporaine", slug: "danse-contemporaine" },
        { id: "representations-culturelles", name: "représentations culturelles", slug: "representations-culturelles" }
      ]
    },
    {
      id: "conferences-formations",
      name: "Conférences & Formations",
      slug: "conferences-formations",
      subcategories: [
        { id: "conferences-professionnelles", name: "conférences professionnelles", slug: "conferences-professionnelles" },
        { id: "seminaires", name: "séminaires", slug: "seminaires" },
        { id: "formations", name: "formations", slug: "formations" },
        { id: "ateliers-pratiques", name: "ateliers pratiques", slug: "ateliers-pratiques" },
        { id: "masterclass", name: "masterclass", slug: "masterclass" },
        { id: "salons", name: "salons", slug: "salons" }
      ]
    },
    {
      id: "festivals-fetes",
      name: "Festivals & Fêtes",
      slug: "festivals-fetes",
      subcategories: [
        { id: "festivals-culturels", name: "festivals culturels", slug: "festivals-culturels" },
        { id: "fetes-locales", name: "fêtes locales", slug: "fetes-locales" },
        { id: "evenements-traditionnels", name: "événements traditionnels", slug: "evenements-traditionnels" },
        { id: "carnavals", name: "carnavals", slug: "carnavals" },
        { id: "celebrations-nationales", name: "célébrations nationales", slug: "celebrations-nationales" }
      ]
    },
    {
      id: "parcs-loisirs",
      name: "Parcs & Loisirs",
      slug: "parcs-loisirs",
      subcategories: [
        { id: "parcs-attraction", name: "billets parcs d’attraction", slug: "parcs-attraction" },
        { id: "parcs-aquatiques", name: "parcs aquatiques", slug: "parcs-aquatiques" },
        { id: "jardins-zoologiques", name: "jardins zoologiques", slug: "jardins-zoologiques" },
        { id: "circuits-decouvertes", name: "circuits découvertes", slug: "circuits-decouvertes" },
        { id: "activites-loisirs", name: "activités de loisirs", slug: "activites-loisirs" }
      ]
    },
    {
      id: "evenements-familiaux",
      name: "Événements Familiaux",
      slug: "evenements-familiaux",
      subcategories: [
        { id: "spectacles-enfants", name: "spectacles pour enfants", slug: "spectacles-enfants" },
        { id: "animations", name: "animations", slug: "animations" },
        { id: "ateliers-creatifs", name: "ateliers créatifs", slug: "ateliers-creatifs" },
        { id: "evenements-educatifs", name: "événements éducatifs", slug: "evenements-educatifs" },
        { id: "shows-interactifs", name: "shows interactifs", slug: "shows-interactifs" }
      ]
    },
    {
      id: "gala-receptions",
      name: "Gala & Réceptions",
      slug: "gala-receptions",
      subcategories: [
        { id: "soirees-gala", name: "soirées gala", slug: "soirees-gala" },
        { id: "diners-caritatifs", name: "dîners caritatifs", slug: "diners-caritatifs" },
        { id: "evenements-vip", name: "événements VIP", slug: "evenements-vip" },
        { id: "soirees-privees", name: "soirées privées", slug: "soirees-privees" },
        { id: "evenements-prestige", name: "événements de prestige", slug: "evenements-prestige" }
      ]
    },
    {
      id: "salons-expositions",
      name: "Salons & Expositions",
      slug: "salons-expositions",
      subcategories: [
        { id: "salons-professionnels", name: "salons professionnels", slug: "salons-professionnels" },
        { id: "foires-commerciales", name: "foires commerciales", slug: "foires-commerciales" },
        { id: "expositions-artistiques", name: "expositions artistiques", slug: "expositions-artistiques" },
        { id: "expositions-scientifiques", name: "expositions scientifiques", slug: "expositions-scientifiques" }
      ]
    },
    {
      id: "billetterie-transport",
      name: "Billetterie de Transport",
      slug: "billetterie-transport",
      subcategories: [
        { id: "billets-autocar", name: "billets d’autocar", slug: "billets-autocar" },
        { id: "billets-train", name: "billets de train", slug: "billets-train" },
        { id: "billets-ferry", name: "billets de ferry", slug: "billets-ferry" },
        { id: "traversees-maritimes", name: "traversées maritimes", slug: "traversees-maritimes" },
        { id: "bus-interwilayas", name: "bus interwilayas", slug: "bus-interwilayas" },
        { id: "billets-touristiques", name: "billets touristiques", slug: "billets-touristiques" }
      ]
    },
    {
      id: "evenements-religieux-traditionnels",
      name: "Événements Religieux & Traditionnels",
      slug: "evenements-religieux-traditionnels",
      subcategories: [
        { id: "mawlid", name: "mawlid", slug: "mawlid" },
        { id: "fetes-religieuses", name: "fêtes religieuses", slug: "fetes-religieuses" },
        { id: "rassemblements-culturels", name: "rassemblements culturels", slug: "rassemblements-culturels" },
        { id: "ceremonies-traditionnelles", name: "cérémonies traditionnelles", slug: "ceremonies-traditionnelles" }
      ]
    },
    {
      id: "services-evenementiels",
      name: "Services Événementiels",
      slug: "services-evenementiels",
      subcategories: [
        { id: "organisation-evenements", name: "organisation événements", slug: "organisation-evenements" },
        { id: "location-sono", name: "location sono", slug: "location-sono" },
        { id: "eclairage", name: "éclairage", slug: "eclairage" },
        { id: "decoration-evenementielle", name: "décoration événementielle", slug: "decoration-evenementielle" },
        { id: "photographes", name: "photographes", slug: "photographes" },
        { id: "videastes", name: "vidéastes", slug: "videastes" },
        { id: "animateurs", name: "animateurs", slug: "animateurs" }
      ]
    },
    {
      id: "packages-offres-speciales",
      name: "Packages & Offres Spéciales",
      slug: "packages-offres-speciales",
      subcategories: [
        { id: "packs-fetes", name: "packs fêtes", slug: "packs-fetes" },
        { id: "acces-vip", name: "accès VIP", slug: "acces-vip" },
        { id: "pass-multi-evenements", name: "pass multi-événements", slug: "pass-multi-evenements" },
        { id: "offres-saisonnieres", name: "offres saisonnières", slug: "offres-saisonnieres" },
        { id: "promotions", name: "promotions", slug: "promotions" }
      ]
    }
  ]
};