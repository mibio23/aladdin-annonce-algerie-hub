import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Briefcase } from "lucide-react";

export const sacsEtBagagesEs: MenuCategory = {
  id: "sacs-et-bagages",
  name: "Bolsos y Equipaje",
  slug: "sacs-et-bagages",
  icon: <Briefcase className="w-4 h-4" />,
  subcategories: [
    {
      id: "sacs-a-main",
      name: "Bolsos de mano (mujer & unisex)",
      slug: "sacs-a-main",
      subcategories: [
        { id: "cabas-grand", name: "Shopper grandes", slug: "cabas-grand" },
        { id: "cabas-moyen", name: "Shopper medianos", slug: "cabas-moyen" },
        { id: "cabas-rigide", name: "Shopper rígidos", slug: "cabas-rigide" },
        { id: "cabas-souple", name: "Shopper flexibles", slug: "cabas-souple" },
        { id: "bandouliere-mini", name: "Bolsos bandolera mini", slug: "bandouliere-mini" },
        { id: "bandouliere-moyen", name: "Bolsos bandolera medianos", slug: "bandouliere-moyen" },
        { id: "bandouliere-matelasse", name: "Bolsos bandolera acolchados", slug: "bandouliere-matelasse" },
        { id: "bandouliere-sport", name: "Bolsos bandolera deportivos", slug: "bandouliere-sport" },
        { id: "sacs-seau", name: "Bolsos saco", slug: "sacs-seau" },
        { id: "sacs-tote", name: "Bolsos tote", slug: "sacs-tote" },
        { id: "sacs-hobo", name: "Bolsos hobo", slug: "sacs-hobo" },
        { id: "sacs-bowling", name: "Bolsos bowling", slug: "sacs-bowling" },
        { id: "pochettes-soiree", name: "Clutches de noche", slug: "pochettes-soiree" },
        { id: "pochettes-mariage", name: "Clutches de boda", slug: "pochettes-mariage" },
        { id: "pochettes-minimalistes", name: "Clutches minimalistas", slug: "pochettes-minimalistes" },
        { id: "mini-bags-ville", name: "Mini bolsos urbanos", slug: "mini-bags-ville" },
        { id: "mini-bags-luxe", name: "Mini bolsos de lujo", slug: "mini-bags-luxe" },
        { id: "sacs-demi-lune", name: "Bolsos media luna", slug: "sacs-demi-lune" },
        { id: "sacs-en-cuir-veritable", name: "Bolsos de cuero auténtico", slug: "sacs-en-cuir-veritable" },
        { id: "sacs-en-cuir-synthetique", name: "Bolsos de cuero sintético", slug: "sacs-en-cuir-synthetique" },
        { id: "sacs-en-cuir-artisanal", name: "Bolsos de cuero artesanal", slug: "sacs-en-cuir-artisanal" },
        { id: "sacs-en-toile-tissu", name: "Bolsos de lona y tela", slug: "sacs-en-toile-tissu" }
      ]
    },
    {
      id: "sacs-a-dos",
      name: "Mochilas",
      slug: "sacs-a-dos",
      subcategories: [
        { id: "urbains", name: "Mochilas urbanas", slug: "urbains" },
        { id: "antivol", name: "Mochilas antirrobo", slug: "antivol" },
        { id: "business-porte-pc", name: "Mochilas de negocios (para portátil)", slug: "business-porte-pc" },
        { id: "sport", name: "Mochilas deportivas", slug: "sport" },
        { id: "randonnee-20l", name: "Senderismo y trekking 20L", slug: "randonnee-20l" },
        { id: "randonnee-30l", name: "Senderismo y trekking 30L", slug: "randonnee-30l" },
        { id: "randonnee-50l-plus", name: "Senderismo y trekking 50L+", slug: "randonnee-50l-plus" },
        { id: "tactiques-militaires", name: "Mochilas tácticas y militares", slug: "tactiques-militaires" },
        { id: "scolaires-enfant-ado", name: "Mochilas escolares (niños/adolescentes)", slug: "scolaires-enfant-ado" },
        { id: "minimalistes", name: "Mochilas minimalistas", slug: "minimalistes" },
        { id: "voyage-cabine", name: "Mochilas de cabina para viaje", slug: "voyage-cabine" }
      ]
    },
    {
      id: "sacs-voyage-week-end",
      name: "Bolsas de viaje y fin de semana",
      slug: "sacs-voyage-week-end",
      subcategories: [
        { id: "voyage-souples", name: "Bolsas de viaje blandas", slug: "voyage-souples" },
        { id: "voyage-semi-rigides", name: "Bolsas de viaje semirrígidas", slug: "voyage-semi-rigides" },
        { id: "duffle-bags", name: "Bolsas duffle", slug: "duffle-bags" },
        { id: "polochon", name: "Bolsas barril", slug: "polochon" },
        { id: "week-end", name: "Bolsas de fin de semana", slug: "week-end" },
        { id: "pliables", name: "Bolsas plegables", slug: "pliables" },
        { id: "transport-longue-distance", name: "Bolsas de transporte de larga distancia", slug: "transport-longue-distance" },
        { id: "multi-poches", name: "Bolsas multi-bolsillos", slug: "multi-poches" },
        { id: "compartiment-chaussures", name: "Bolsas con compartimento para zapatos", slug: "compartiment-chaussures" }
      ]
    },
    {
      id: "valises-bagages",
      name: "Maletas y equipaje",
      slug: "valises-bagages",
      subcategories: [
        { id: "cabine-rigides", name: "Maletas de cabina rígidas", slug: "cabine-rigides" },
        { id: "cabine-souples", name: "Maletas de cabina blandas", slug: "cabine-souples" },
        { id: "cabine-extensibles", name: "Maletas de cabina expandibles", slug: "cabine-extensibles" },
        { id: "valises-medium", name: "Maletas medianas", slug: "valises-medium" },
        { id: "valises-grandes", name: "Maletas grandes", slug: "valises-grandes" },
        { id: "valises-aluminium", name: "Maletas de aluminio", slug: "valises-aluminium" },
        { id: "sets-valises", name: "Sets de maletas", slug: "sets-valises" },
        { id: "valises-enfants", name: "Maletas infantiles", slug: "valises-enfants" },
        { id: "valises-connectees", name: "Maletas inteligentes", slug: "valises-connectees" },
        { id: "valises-professionnelles", name: "Maletas profesionales", slug: "valises-professionnelles" },
        { id: "bagages-certifies-iata", name: "Equipaje certificado por IATA", slug: "bagages-certifies-iata" },
        { id: "valises-securisees-tsa", name: "Maletas con seguridad TSA", slug: "valises-securisees-tsa" }
      ]
    },
    {
      id: "maroquinerie",
      name: "Marroquinería",
      slug: "maroquinerie",
      subcategories: [
        { id: "portefeuilles-zippe", name: "Carteras con cremallera", slug: "portefeuilles-zippe" },
        { id: "portefeuilles-pliable", name: "Carteras plegables", slug: "portefeuilles-pliable" },
        { id: "portefeuilles-compact", name: "Carteras compactas", slug: "portefeuilles-compact" },
        { id: "porte-cartes-metal", name: "Porta tarjetas metálico", slug: "porte-cartes-metal" },
        { id: "porte-cartes-cuir", name: "Porta tarjetas de cuero", slug: "porte-cartes-cuir" },
        { id: "porte-cartes-rfid", name: "Porta tarjetas RFID", slug: "porte-cartes-rfid" },
        { id: "porte-monnaie", name: "Monederos", slug: "porte-monnaie" },
        { id: "etuis-pochettes-passeport", name: "Fundas para pasaporte", slug: "etuis-pochettes-passeport" },
        { id: "etuis-documents", name: "Fundas para documentos", slug: "etuis-documents" },
        { id: "etuis-billets", name: "Fundas para billetes", slug: "etuis-billets" },
        { id: "mini-sacs-cuir", name: "Mini bolsos de cuero", slug: "mini-sacs-cuir" },
        { id: "accessoires-luxe", name: "Accesorios de lujo", slug: "accessoires-luxe" },
        { id: "petite-maroquinerie-artisanale", name: "Pequeña marroquinería artesanal", slug: "petite-maroquinerie-artisanale" }
      ]
    },
    {
      id: "sacs-professionnels",
      name: "Bolsos profesionales",
      slug: "sacs-professionnels",
      subcategories: [
        { id: "porte-ordinateur-13", name: "Bolsas para portátil de 13\"", slug: "porte-ordinateur-13" },
        { id: "porte-ordinateur-15", name: "Bolsas para portátil de 15\"", slug: "porte-ordinateur-15" },
        { id: "porte-ordinateur-17", name: "Bolsas para portátil de 17\"", slug: "porte-ordinateur-17" },
        { id: "sacs-business", name: "Bolsos de negocios", slug: "sacs-business" },
        { id: "sacs-documents", name: "Bolsas para documentos", slug: "sacs-documents" },
        { id: "serviettes-attaches-case", name: "Maletines y attaché-case", slug: "serviettes-attaches-case" },
        { id: "sacs-infirmiers-paramedicaux", name: "Bolsos para enfermería/paramédicos", slug: "sacs-infirmiers-paramedicaux" },
        { id: "sacs-architectes-artistes-tubes", name: "Porta planos para arquitectos y artistas", slug: "sacs-architectes-artistes-tubes" },
        { id: "sacs-portfolios-a3-a2", name: "Portafolios A3/A2", slug: "sacs-portfolios-a3-a2" },
        { id: "sacs-techniciens-outils", name: "Bolsas para técnicos y herramientas", slug: "sacs-techniciens-outils" },
        { id: "sacs-livraison-coursiers", name: "Bolsas para reparto y mensajería", slug: "sacs-livraison-coursiers" }
      ]
    },
    {
      id: "sacs-tech-mobilite",
      name: "Bolsos Tech y movilidad",
      slug: "sacs-tech-mobilite",
      subcategories: [
        { id: "etuis-laptop", name: "Fundas para portátil", slug: "etuis-laptop" },
        { id: "housses-tablettes", name: "Fundas para tablet", slug: "housses-tablettes" },
        { id: "housses-disques-durs", name: "Fundas para discos duros", slug: "housses-disques-durs" },
        { id: "sacs-photo-reflex", name: "Bolsas para cámaras réflex", slug: "sacs-photo-reflex" },
        { id: "sacs-photo-mirrorless", name: "Bolsas para cámaras mirrorless", slug: "sacs-photo-mirrorless" },
        { id: "sacs-drone", name: "Bolsas para drones", slug: "sacs-drone" },
        { id: "sacs-camera-video", name: "Bolsas para cámaras y accesorios de video", slug: "sacs-camera-video" },
        { id: "sacs-gamers-console", name: "Bolsas para gamers y consolas", slug: "sacs-gamers-console" },
        { id: "sacs-anti-choc", name: "Bolsas anti golpes", slug: "sacs-anti-choc" },
        { id: "sacs-connectes", name: "Bolsas conectadas", slug: "sacs-connectes" }
      ]
    },
    {
      id: "sacs-de-sport",
      name: "Bolsas de deporte",
      slug: "sacs-de-sport",
      subcategories: [
        { id: "sacs-gym", name: "Bolsas de gimnasio", slug: "sacs-gym" },
        { id: "sacs-fitness", name: "Bolsas de fitness", slug: "sacs-fitness" },
        { id: "sacs-football", name: "Bolsas de fútbol", slug: "sacs-football" },
        { id: "sacs-arts-martiaux", name: "Bolsas de artes marciales (compartimento para guantes)", slug: "sacs-arts-martiaux" },
        { id: "sacs-natation", name: "Bolsas de natación (resistentes al agua)", slug: "sacs-natation" },
        { id: "sacs-tennis-1-raquette", name: "Bolsas de tenis (1 raqueta)", slug: "sacs-tennis-1-raquette" },
        { id: "sacs-tennis-multi-raquettes", name: "Bolsas de tenis (multi raquetas)", slug: "sacs-tennis-multi-raquettes" },
        { id: "sacs-tactiques-militaires-sport", name: "Bolsas tácticas militares", slug: "sacs-tactiques-militaires-sport" },
        { id: "sacs-tir-airsoft", name: "Bolsas de tiro y airsoft", slug: "sacs-tir-airsoft" }
      ]
    },
    {
      id: "sacs-enfants",
      name: "Bolsas infantiles",
      slug: "sacs-enfants",
      subcategories: [
        { id: "sacs-a-dos-bebe", name: "Mochilas para bebé", slug: "sacs-a-dos-bebe" },
        { id: "sacs-creche", name: "Bolsas de guardería", slug: "sacs-creche" },
        { id: "cartables", name: "Carteras escolares", slug: "cartables" },
        { id: "sacs-a-roulettes-scolaire", name: "Mochilas escolares con ruedas", slug: "sacs-a-roulettes-scolaire" },
        { id: "sacs-a-gouter", name: "Bolsas para merienda", slug: "sacs-a-gouter" },
        { id: "sacs-enfant-licence", name: "Bolsos infantiles de personajes/licencias", slug: "sacs-enfant-licence" },
        { id: "sacs-activites", name: "Bolsas de actividades (danza, deporte)", slug: "sacs-activites" },
        { id: "sacs-anti-perte", name: "Bolsas anti-pérdida", slug: "sacs-anti-perte" }
      ]
    },
    {
      id: "sacs-specialises",
      name: "Bolsas especializadas",
      slug: "sacs-specialises",
      subcategories: [
        { id: "isothermes-repas", name: "Bolsas isotérmicas para comida", slug: "isothermes-repas" },
        { id: "isothermes-pique-nique", name: "Bolsas isotérmicas para picnic", slug: "isothermes-pique-nique" },
        { id: "isothermes-medicaments", name: "Bolsas isotérmicas para medicamentos", slug: "isothermes-medicaments" },
        { id: "photo-video", name: "Bolsas para foto y video", slug: "photo-video" },
        { id: "drones", name: "Bolsas para drones", slug: "drones" },
        { id: "peche-chasse", name: "Bolsas de pesca y caza", slug: "peche-chasse" },
        { id: "trekking-hydratation", name: "Mochilas de trekking con hidratación", slug: "trekking-hydratation" },
        { id: "moto-cuir", name: "Bolsas de moto de cuero", slug: "moto-cuir" },
        { id: "moto-textile", name: "Bolsas de moto de textil", slug: "moto-textile" },
        { id: "sacoches-velo-avant", name: "Alforjas delanteras de bicicleta", slug: "sacoches-velo-avant" },
        { id: "sacoches-velo-arriere", name: "Alforjas traseras de bicicleta", slug: "sacoches-velo-arriere" },
        { id: "sacoches-velo-cadre", name: "Bolsas para el cuadro de la bicicleta", slug: "sacoches-velo-cadre" },
        { id: "plongee", name: "Bolsas de buceo", slug: "plongee" },
        { id: "equipement-btp", name: "Bolsas para equipamiento de construcción", slug: "equipement-btp" },
        { id: "instruments-musicaux", name: "Bolsas para instrumentos musicales", slug: "instruments-musicaux" },
        { id: "medicaux-urgences", name: "Bolsas médicas/de emergencia", slug: "medicaux-urgences" }
      ]
    },
    {
      id: "bagagerie-professionnelle-voyage",
      name: "Equipaje profesional y de viaje",
      slug: "bagagerie-professionnelle-voyage",
      subcategories: [
        { id: "cabine-pro", name: "Bolsas de cabina profesionales", slug: "cabine-pro" },
        { id: "pilotes", name: "Bolsas de piloto", slug: "pilotes" },
        { id: "trolley-medical", name: "Carrito médico", slug: "trolley-medical" },
        { id: "echantillons-commerciaux", name: "Maletines de muestras comerciales", slug: "echantillons-commerciaux" },
        { id: "trolley-cabine-organisation", name: "Carrito de cabina con organización multi-bolsillos", slug: "trolley-cabine-organisation" },
        { id: "triangulaires-specifiques", name: "Bolsas triangulares para transportes específicos", slug: "triangulaires-specifiques" }
      ]
    },
    {
      id: "housses-protections",
      name: "Fundas y protección",
      slug: "housses-protections",
      subcategories: [
        { id: "housses-valises", name: "Fundas para maletas", slug: "housses-valises" },
        { id: "housses-vetements-costumes", name: "Fundas para ropa y trajes", slug: "housses-vetements-costumes" },
        { id: "housses-chaussures", name: "Fundas para zapatos", slug: "housses-chaussures" },
        { id: "housses-sacs-a-main", name: "Fundas para bolsos de mano", slug: "housses-sacs-a-main" },
        { id: "sangles-valise", name: "Cintas para maleta", slug: "sangles-valise" },
        { id: "etiquettes-bagages", name: "Etiquetas de equipaje", slug: "etiquettes-bagages" },
        { id: "filets-organiseurs", name: "Redes y organizadores", slug: "filets-organiseurs" },
        { id: "cubes-rangement", name: "Cubos de almacenamiento", slug: "cubes-rangement" },
        { id: "filets-voiture", name: "Redes para coche", slug: "filets-voiture" },
        { id: "protections-anti-pluie", name: "Protecciones antilluvia", slug: "protections-anti-pluie" }
      ]
    },
    {
      id: "accessoires-bagagerie",
      name: "Accesorios de equipaje",
      slug: "accessoires-bagagerie",
      subcategories: [
        { id: "cadenas-tsa", name: "Candados TSA", slug: "cadenas-tsa" },
        { id: "ceintures-valise", name: "Cinturones para maletas", slug: "ceintures-valise" },
        { id: "porte-passeport", name: "Portapasaporte", slug: "porte-passeport" },
        { id: "porte-billets", name: "Portabilletes", slug: "porte-billets" },
        { id: "porte-etiquettes", name: "Portaetiquetas", slug: "porte-etiquettes" },
        { id: "kits-voyage-bouteilles", name: "Kits de viaje (botellas)", slug: "kits-voyage-bouteilles" },
        { id: "kits-voyage-oreillers", name: "Kits de viaje (almohadas)", slug: "kits-voyage-oreillers" },
        { id: "kits-voyage-masques", name: "Kits de viaje (antifaces de dormir)", slug: "kits-voyage-masques" },
        { id: "organiseurs-electroniques", name: "Organizadores electrónicos", slug: "organiseurs-electroniques" },
        { id: "pese-bagage", name: "Báscula para equipaje", slug: "pese-bagage" },
        { id: "sangles-renfort", name: "Cintas de refuerzo", slug: "sangles-renfort" }
      ]
    },
    {
      id: "sacs-mode-luxe",
      name: "Bolsos de moda y lujo",
      slug: "sacs-mode-luxe",
      subcategories: [
        { id: "sacs-createurs", name: "Bolsos de diseñador", slug: "sacs-createurs" },
        { id: "edition-limitee", name: "Bolsos de edición limitada", slug: "edition-limitee" },
        { id: "haute-couture", name: "Bolsos de alta costura", slug: "haute-couture" },
        { id: "vintage-certifies", name: "Bolsos vintage certificados", slug: "vintage-certifies" },
        { id: "collection-dior", name: "Colección Dior", slug: "collection-dior" },
        { id: "collection-chanel", name: "Colección Chanel", slug: "collection-chanel" },
        { id: "collection-lv", name: "Colección LV", slug: "collection-lv" },
        { id: "collection-ysl", name: "Colección YSL", slug: "collection-ysl" },
        { id: "expertise-authentification", name: "Peritaje y autenticación", slug: "expertise-authentification" }
      ]
    },
    {
      id: "sacs-artisanaux-locaux",
      name: "Bolsos artesanales y locales",
      slug: "sacs-artisanaux-locaux",
      subcategories: [
        { id: "cuir-artisanal", name: "Bolsos de cuero artesanal", slug: "cuir-artisanal" },
        { id: "sacs-tresses", name: "Bolsos trenzados", slug: "sacs-tresses" },
        { id: "sacs-berberes", name: "Bolsos bereberes", slug: "sacs-berberes" },
        { id: "sacs-traditionnels", name: "Bolsos tradicionales", slug: "sacs-traditionnels" },
        { id: "sacs-faits-main", name: "Bolsos hechos a mano", slug: "sacs-faits-main" },
        { id: "creations-locales", name: "Creaciones locales y piezas únicas", slug: "creations-locales" }
      ]
    },
    {
      id: "materiaux-fabrication",
      name: "Materiales y fabricación",
      slug: "materiaux-fabrication",
      subcategories: [
        { id: "cuir-veritable", name: "Cuero auténtico", slug: "cuir-veritable" },
        { id: "cuir-vegan", name: "Cuero vegano", slug: "cuir-vegan" },
        { id: "cuir-recycle", name: "Cuero reciclado", slug: "cuir-recycle" },
        { id: "nylon", name: "Nylon", slug: "nylon" },
        { id: "polyester", name: "Poliéster", slug: "polyester" },
        { id: "toile", name: "Lona", slug: "toile" },
        { id: "canevas", name: "Tejido de lona", slug: "canevas" },
        { id: "abs", name: "ABS", slug: "abs" },
        { id: "polycarbonate", name: "Policarbonato", slug: "polycarbonate" },
        { id: "aluminium", name: "Aluminio", slug: "aluminium" },
        { id: "paille-fibres-naturelles", name: "Paja y fibras naturales", slug: "paille-fibres-naturelles" },
        { id: "waterproof-impermeables", name: "Impermeables y resistentes al agua", slug: "waterproof-impermeables" },
        { id: "anti-dechirure", name: "Antidesgarro", slug: "anti-dechirure" },
        { id: "resistants-aux-chocs", name: "Resistentes a los golpes", slug: "resistants-aux-chocs" }
      ]
    },
    {
      id: "segments-usages",
      name: "Segmentos y usos",
      slug: "segments-usages",
      subcategories: [
        { id: "voyage", name: "Viaje", slug: "voyage" },
        { id: "quotidien", name: "Diario", slug: "quotidien" },
        { id: "etude-scolaire", name: "Estudio/escolar", slug: "etude-scolaire" },
        { id: "travail-business", name: "Trabajo y negocios", slug: "travail-business" },
        { id: "sport-usage", name: "Deporte", slug: "sport-usage" },
        { id: "outdoor", name: "Exterior", slug: "outdoor" },
        { id: "professionnels", name: "Profesional", slug: "professionnels" },
        { id: "luxe", name: "Lujo", slug: "luxe" },
        { id: "artisanal", name: "Artesanal", slug: "artisanal" },
        { id: "casual", name: "Casual", slug: "casual" },
        { id: "urban-tech", name: "Tecnología urbana", slug: "urban-tech" }
      ]
    }
  ]
};