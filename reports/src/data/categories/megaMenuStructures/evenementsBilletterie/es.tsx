import { MenuCategory } from "@/data/categoryTypes";

export const evenementsBilletterieEs: MenuCategory = {
  id: "evenements-billetterie",
  name: "Eventos y Entradas",
  slug: "evenements-billetterie",
  subcategories: [
    {
      id: "concerts-spectacles",
      name: "Conciertos y Espectáculos",
      slug: "concerts-spectacles",
      subcategories: [
        { id: "concerts-live", name: "conciertos en vivo", slug: "concerts-live" },
        { id: "festivals-musicaux", name: "festivales de música", slug: "festivals-musicaux" },
        { id: "spectacles-humoristiques", name: "espectáculos de comedia", slug: "spectacles-humoristiques" },
        { id: "one-man-show", name: "monólogos", slug: "one-man-show" },
        { id: "comedies-musicales", name: "musicales", slug: "comedies-musicales" },
        { id: "soirees-artistiques", name: "noches artísticas", slug: "soirees-artistiques" },
        { id: "performances-culturelles", name: "actuaciones culturales", slug: "performances-culturelles" },
        { id: "recitals", name: "recitales", slug: "recitals" }
      ]
    },
    {
      id: "evenements-sportifs",
      name: "Eventos Deportivos",
      slug: "evenements-sportifs",
      subcategories: [
        { id: "matchs-football", name: "partidos de fútbol", slug: "matchs-football" },
        { id: "competitions-sportives", name: "competiciones deportivas", slug: "competitions-sportives" },
        { id: "tournois", name: "torneos", slug: "tournois" },
        { id: "sports-mecaniques", name: "deportes de motor", slug: "sports-mecaniques" },
        { id: "arts-martiaux", name: "artes marciales", slug: "arts-martiaux" },
        { id: "marathons", name: "maratones", slug: "marathons" },
        { id: "evenements-e-sport", name: "eventos de e-sports", slug: "evenements-e-sport" }
      ]
    },
    {
      id: "cinema-avant-premieres",
      name: "Cine y Estrenos",
      slug: "cinema-avant-premieres",
      subcategories: [
        { id: "billets-cinema", name: "entradas de cine", slug: "billets-cinema" },
        { id: "projections-speciales", name: "proyecciones especiales", slug: "projections-speciales" },
        { id: "avant-premieres", name: "estrenos", slug: "avant-premieres" },
        { id: "festivals-film", name: "festivales de cine", slug: "festivals-film" },
        { id: "seances-vip", name: "sesiones VIP", slug: "seances-vip" }
      ]
    },
    {
      id: "theatre-arts-sceniques",
      name: "Teatro y Artes Escénicas",
      slug: "theatre-arts-sceniques",
      subcategories: [
        { id: "pieces-theatre", name: "obras de teatro", slug: "pieces-theatre" },
        { id: "operas", name: "óperas", slug: "operas" },
        { id: "ballets", name: "ballets", slug: "ballets" },
        { id: "danse-contemporaine", name: "danza contemporánea", slug: "danse-contemporaine" },
        { id: "representations-culturelles", name: "representaciones culturales", slug: "representations-culturelles" }
      ]
    },
    {
      id: "conferences-formations",
      name: "Conferencias y Formación",
      slug: "conferences-formations",
      subcategories: [
        { id: "conferences-professionnelles", name: "conferencias profesionales", slug: "conferences-professionnelles" },
        { id: "seminaires", name: "seminarios", slug: "seminaires" },
        { id: "formations", name: "formaciones", slug: "formations" },
        { id: "ateliers-pratiques", name: "talleres prácticos", slug: "ateliers-pratiques" },
        { id: "masterclass", name: "masterclass", slug: "masterclass" },
        { id: "salons", name: "ferias", slug: "salons" }
      ]
    },
    {
      id: "festivals-fetes",
      name: "Festivales y Fiestas",
      slug: "festivals-fetes",
      subcategories: [
        { id: "festivals-culturels", name: "festivales culturales", slug: "festivals-culturels" },
        { id: "fetes-locales", name: "fiestas locales", slug: "fetes-locales" },
        { id: "evenements-traditionnels", name: "eventos tradicionales", slug: "evenements-traditionnels" },
        { id: "carnavals", name: "carnavales", slug: "carnavals" },
        { id: "celebrations-nationales", name: "celebraciones nacionales", slug: "celebrations-nationales" }
      ]
    },
    {
      id: "parcs-loisirs",
      name: "Parques y Ocio",
      slug: "parcs-loisirs",
      subcategories: [
        { id: "parcs-attraction", name: "entradas a parques de atracciones", slug: "parcs-attraction" },
        { id: "parcs-aquatiques", name: "parques acuáticos", slug: "parcs-aquatiques" },
        { id: "jardins-zoologiques", name: "zoos", slug: "jardins-zoologiques" },
        { id: "circuits-decouvertes", name: "circuitos de descubrimiento", slug: "circuits-decouvertes" },
        { id: "activites-loisirs", name: "actividades de ocio", slug: "activites-loisirs" }
      ]
    },
    {
      id: "evenements-familiaux",
      name: "Eventos Familiares",
      slug: "evenements-familiaux",
      subcategories: [
        { id: "spectacles-enfants", name: "espectáculos para niños", slug: "spectacles-enfants" },
        { id: "animations", name: "animaciones", slug: "animations" },
        { id: "ateliers-creatifs", name: "talleres creativos", slug: "ateliers-creatifs" },
        { id: "evenements-educatifs", name: "eventos educativos", slug: "evenements-educatifs" },
        { id: "shows-interactifs", name: "shows interactivos", slug: "shows-interactifs" }
      ]
    },
    {
      id: "gala-receptions",
      name: "Gala y Recepciones",
      slug: "gala-receptions",
      subcategories: [
        { id: "soirees-gala", name: "noches de gala", slug: "soirees-gala" },
        { id: "diners-caritatifs", name: "cenas benéficas", slug: "diners-caritatifs" },
        { id: "evenements-vip", name: "eventos VIP", slug: "evenements-vip" },
        { id: "soirees-privees", name: "fiestas privadas", slug: "soirees-privees" },
        { id: "evenements-prestige", name: "eventos de prestigio", slug: "evenements-prestige" }
      ]
    },
    {
      id: "salons-expositions",
      name: "Ferias y Exposiciones",
      slug: "salons-expositions",
      subcategories: [
        { id: "salons-professionnels", name: "ferias profesionales", slug: "salons-professionnels" },
        { id: "foires-commerciales", name: "ferias comerciales", slug: "foires-commerciales" },
        { id: "expositions-artistiques", name: "exposiciones artísticas", slug: "expositions-artistiques" },
        { id: "expositions-scientifiques", name: "exposiciones científicas", slug: "expositions-scientifiques" }
      ]
    },
    {
      id: "billetterie-transport",
      name: "Billetes de Transporte",
      slug: "billetterie-transport",
      subcategories: [
        { id: "billets-autocar", name: "billetes de autocar", slug: "billets-autocar" },
        { id: "billets-train", name: "billetes de tren", slug: "billets-train" },
        { id: "billets-ferry", name: "billetes de ferry", slug: "billets-ferry" },
        { id: "traversees-maritimes", name: "travesías marítimas", slug: "traversees-maritimes" },
        { id: "bus-interwilayas", name: "autobuses interwilayas", slug: "bus-interwilayas" },
        { id: "billets-touristiques", name: "billetes turísticos", slug: "billets-touristiques" }
      ]
    },
    {
      id: "evenements-religieux-traditionnels",
      name: "Eventos Religiosos y Tradicionales",
      slug: "evenements-religieux-traditionnels",
      subcategories: [
        { id: "mawlid", name: "mawlid", slug: "mawlid" },
        { id: "fetes-religieuses", name: "fiestas religiosas", slug: "fetes-religieuses" },
        { id: "rassemblements-culturels", name: "encuentros culturales", slug: "rassemblements-culturels" },
        { id: "ceremonies-traditionnelles", name: "ceremonias tradicionales", slug: "ceremonies-traditionnelles" }
      ]
    },
    {
      id: "services-evenementiels",
      name: "Servicios de Eventos",
      slug: "services-evenementiels",
      subcategories: [
        { id: "organisation-evenements", name: "organización de eventos", slug: "organisation-evenements" },
        { id: "location-sono", name: "alquiler de sonido", slug: "location-sono" },
        { id: "eclairage", name: "iluminación", slug: "eclairage" },
        { id: "decoration-evenementielle", name: "decoración de eventos", slug: "decoration-evenementielle" },
        { id: "photographes", name: "fotógrafos", slug: "photographes" },
        { id: "videastes", name: "videógrafos", slug: "videastes" },
        { id: "animateurs", name: "animadores", slug: "animateurs" }
      ]
    },
    {
      id: "packages-offres-speciales",
      name: "Paquetes y Ofertas Especiales",
      slug: "packages-offres-speciales",
      subcategories: [
        { id: "packs-fetes", name: "packs de fiestas", slug: "packs-fetes" },
        { id: "acces-vip", name: "acceso VIP", slug: "acces-vip" },
        { id: "pass-multi-evenements", name: "pases multi-evento", slug: "pass-multi-evenements" },
        { id: "offres-saisonnieres", name: "ofertas de temporada", slug: "offres-saisonnieres" },
        { id: "promotions", name: "promociones", slug: "promotions" }
      ]
    }
  ]
};