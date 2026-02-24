import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Wrench, Hammer, Drill, Shield, Lock, Plug, Droplet, Ruler, Paintbrush, Box } from "lucide-react";

export const quincaillerieGeneraleEs: MenuCategory = {
  id: "quincaillerie-generale",
  name: "Ferretería General",
  slug: "quincaillerie-generale",
  icon: <Wrench className="w-4 h-4" />,
  subcategories: [
    {
      id: "outils-manuels",
      name: "Herramientas manuales",
      slug: "outils-manuels",
      icon: <Hammer className="w-3 h-3" />,
      subcategories: [
        { id: "tournevis-plats", name: "Destornilladores planos", slug: "tournevis-plats" },
        { id: "tournevis-cruciformes", name: "Destornilladores Phillips", slug: "tournevis-cruciformes" },
        { id: "tournevis-de-precision", name: "Destornilladores de precisión", slug: "tournevis-de-precision" },
        { id: "marteaux-de-menuisier", name: "Martillos de carpintero", slug: "marteaux-de-menuisier" },
        { id: "marteaux-de-macon", name: "Martillos de albañil", slug: "marteaux-de-macon" },
        { id: "pinces-universelles", name: "Alicates universales", slug: "pinces-universelles" },
        { id: "pinces-coupantes", name: "Alicates de corte", slug: "pinces-coupantes" },
        { id: "pinces-multiprises", name: "Alicates ajustables", slug: "pinces-multiprises" },
        { id: "cles-plates", name: "Llaves planas", slug: "cles-plates" },
        { id: "cles-mixtes", name: "Llaves combinadas", slug: "cles-mixtes" },
        { id: "cle-a-molette", name: "Llave inglesa", slug: "cle-a-molette" },
        { id: "cles-allen", name: "Llaves Allen", slug: "cles-allen" },
        { id: "scies-manuelles", name: "Sierras manuales", slug: "scies-manuelles" },
        { id: "scies-a-metaux", name: "Sierras para metal", slug: "scies-a-metaux" },
        { id: "cutters", name: "Cúteres", slug: "cutters" },
        { id: "grattoirs", name: "Raspadores", slug: "grattoirs" },
        { id: "ciseaux-a-bois", name: "Cinceles de madera", slug: "ciseaux-a-bois" },
        { id: "jeux-de-douilles", name: "Juegos de vasos", slug: "jeux-de-douilles" },
        { id: "cliquets", name: "Carracas", slug: "cliquets" },
        { id: "niveaux-a-bulle", name: "Niveles", slug: "niveaux-a-bulle" },
        { id: "serre-joints", name: "Sargentos", slug: "serre-joints" },
        { id: "limes", name: "Limas", slug: "limes" },
        { id: "rabots", name: "Cepillos", slug: "rabots" },
        { id: "maillets", name: "Mazas", slug: "maillets" },
        { id: "scies-egoines", name: "Sierras de panel", slug: "scies-egoines" },
        { id: "scies-japonaises", name: "Sierras japonesas", slug: "scies-japonaises" }
      ]
    },
    {
      id: "outils-electriques-electroportatifs",
      name: "Herramientas eléctricas",
      slug: "outils-electriques-electroportatifs",
      icon: <Drill className="w-3 h-3" />,
      subcategories: [
        { id: "perceuses", name: "Taladros", slug: "perceuses" },
        { id: "perceuses-a-percussion", name: "Taladros de percusión", slug: "perceuses-a-percussion" },
        { id: "perceuses-sans-fil", name: "Taladros inalámbricos", slug: "perceuses-sans-fil" },
        { id: "visseuses", name: "Atornilladores", slug: "visseuses" },
        { id: "visseuses-a-choc", name: "Atornilladores de impacto", slug: "visseuses-a-choc" },
        { id: "meuleuses", name: "Amoladoras", slug: "meuleuses" },
        { id: "meuleuses-d-angle", name: "Amoladoras angulares", slug: "meuleuses-d-angle" },
        { id: "scies-electriques", name: "Sierras eléctricas", slug: "scies-electriques" },
        { id: "scies-circulaires", name: "Sierras circulares", slug: "scies-circulaires" },
        { id: "scies-sauteuses", name: "Sierras de calar", slug: "scies-sauteuses" },
        { id: "scies-sabres", name: "Sierras sable", slug: "scies-sabres" },
        { id: "ponceuses-orbitales", name: "Lijadoras orbitales", slug: "ponceuses-orbitales" },
        { id: "ponceuses-vibrantes", name: "Lijadoras vibratorias", slug: "ponceuses-vibrantes" },
        { id: "ponceuses-a-bande", name: "Lijadoras de banda", slug: "ponceuses-a-bande" },
        { id: "marteaux-perforateurs", name: "Martillos perforadores", slug: "marteaux-perforateurs" },
        { id: "defonceuses", name: "Fresadoras", slug: "defonceuses" },
        { id: "pistolets-a-chaleur", name: "Pistolas de aire caliente", slug: "pistolets-a-chaleur" },
        { id: "pistolets-a-colle", name: "Pistolas de pegamento", slug: "pistolets-a-colle" },
        { id: "agrafeuses-electriques", name: "Grapadoras eléctricas", slug: "agrafeuses-electriques" },
        { id: "decoupeurs-multifonctions", name: "Multiherramientas", slug: "decoupeurs-multifonctions" }
      ]
    },
    {
      id: "materiel-de-fixation",
      name: "Fijaciones",
      slug: "materiel-de-fixation",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "vis-bois", name: "Tornillos para madera", slug: "vis-bois" },
        { id: "vis-metal", name: "Tornillos para metal", slug: "vis-metal" },
        { id: "vis-auto-perceuses", name: "Tornillos autoperforantes", slug: "vis-auto-perceuses" },
        { id: "vis-placo", name: "Tornillos para pladur", slug: "vis-placo" },
        { id: "boulons", name: "Pernos", slug: "boulons" },
        { id: "ecrous", name: "Tuercas", slug: "ecrous" },
        { id: "rondelles-plates", name: "Arandelas planas", slug: "rondelles-plates" },
        { id: "rondelles-frein", name: "Arandelas Grower", slug: "rondelles-frein" },
        { id: "chevilles-classiques", name: "Tacos estándar", slug: "chevilles-classiques" },
        { id: "chevilles-molly", name: "Tacos Molly", slug: "chevilles-molly" },
        { id: "chevilles-metalliques", name: "Tacos metálicos", slug: "chevilles-metalliques" },
        { id: "chevilles-chimiques", name: "Anclajes químicos", slug: "chevilles-chimiques" },
        { id: "rivets", name: "Remaches", slug: "rivets" },
        { id: "clous", name: "Clavos", slug: "clous" },
        { id: "pointes", name: "Puntas", slug: "pointes" },
        { id: "crochets-muraux", name: "Ganchos de pared", slug: "crochets-muraux" },
        { id: "equerres-renforcees", name: "Escuadras reforzadas", slug: "equerres-renforcees" },
        { id: "pitons", name: "Ganchos roscados", slug: "pitons" },
        { id: "serre-cables", name: "Bridas", slug: "serre-cables" }
      ]
    },
    {
      id: "quincaillerie-porte-fenetre",
      name: "Herrajes para puertas y ventanas",
      slug: "quincaillerie-porte-fenetre",
      icon: <Lock className="w-3 h-3" />,
      subcategories: [
        { id: "serrures-a-cle", name: "Cerraduras con llave", slug: "serrures-a-cle" },
        { id: "serrures-multipoints", name: "Cerraduras multipunto", slug: "serrures-multipoints" },
        { id: "cylindres-europeens", name: "Cilindros europeos", slug: "cylindres-europeens" },
        { id: "poignees-de-porte", name: "Manillas de puerta", slug: "poignees-de-porte" },
        { id: "poignees-de-fenetre", name: "Manillas de ventana", slug: "poignees-de-fenetre" },
        { id: "paumelles", name: "Bisagras", slug: "paumelles" },
        { id: "charnieres-renforcees", name: "Bisagras reforzadas", slug: "charnieres-renforcees" },
        { id: "verrous", name: "Cierres", slug: "verrous" },
        { id: "loquets", name: "Pestillos", slug: "loquets" },
        { id: "cremones", name: "Cremonas", slug: "cremones" },
        { id: "butees-de-porte", name: "Topes de puerta", slug: "butees-de-porte" },
        { id: "heurtoirs", name: "Aldabas", slug: "heurtoirs" },
        { id: "arrets-de-porte-magnetiques", name: "Topes magnéticos", slug: "arrets-de-porte-magnetiques" },
        { id: "joints-detancheite", name: "Juntas de estanqueidad", slug: "joints-detancheite" }
      ]
    },
    {
      id: "securite-protection",
      name: "Seguridad y protección",
      slug: "securite-protection",
      icon: <Shield className="w-3 h-3" />,
      subcategories: [
        { id: "cadenas-standards", name: "Candados estándar", slug: "cadenas-standards" },
        { id: "cadenas-haute-securite", name: "Candados de alta seguridad", slug: "cadenas-haute-securite" },
        { id: "antivols-portes-portails", name: "Antirrobos para puertas y portales", slug: "antivols-portes-portails" },
        { id: "chaines-renforcees", name: "Cadenas reforzadas", slug: "chaines-renforcees" },
        { id: "gants-de-protection", name: "Guantes de protección", slug: "gants-de-protection" },
        { id: "gants-anti-coupure", name: "Guantes anticorte", slug: "gants-anti-coupure" },
        { id: "lunettes-de-securite", name: "Gafas de seguridad", slug: "lunettes-de-securite" },
        { id: "visieres", name: "Pantallas faciales", slug: "visieres" },
        { id: "casques-de-chantier", name: "Cascos de obra", slug: "casques-de-chantier" },
        { id: "chaussures-de-securite", name: "Zapatos de seguridad", slug: "chaussures-de-securite" },
        { id: "genouilleres", name: "Rodilleras", slug: "genouilleres" },
        { id: "masques-anti-poussiere", name: "Mascarillas antipolvo", slug: "masques-anti-poussiere" },
        { id: "harnais-de-securite", name: "Arneses de seguridad", slug: "harnais-de-securite" }
      ]
    },
    {
      id: "materiel-de-plomberie",
      name: "Fontanería",
      slug: "materiel-de-plomberie",
      icon: <Droplet className="w-3 h-3" />,
      subcategories: [
        { id: "robinets", name: "Grifos", slug: "robinets" },
        { id: "mitigeurs", name: "Mezcladores", slug: "mitigeurs" },
        { id: "flexibles", name: "Mangueras", slug: "flexibles" },
        { id: "raccords-pvc", name: "Accesorios PVC", slug: "raccords-pvc" },
        { id: "raccords-multicouches", name: "Accesorios multicapa", slug: "raccords-multicouches" },
        { id: "raccords-laiton", name: "Accesorios de latón", slug: "raccords-laiton" },
        { id: "tuyaux-pvc", name: "Tubos PVC", slug: "tuyaux-pvc" },
        { id: "tuyaux-per", name: "Tubos PER", slug: "tuyaux-per" },
        { id: "siphons", name: "Sifones", slug: "siphons" },
        { id: "joints-fibre", name: "Juntas de fibra", slug: "joints-fibre" },
        { id: "joints-caoutchouc", name: "Juntas de goma", slug: "joints-caoutchouc" },
        { id: "colliers-de-serrage", name: "Abrazaderas", slug: "colliers-de-serrage" },
        { id: "vannes-d-arret", name: "Válvulas de cierre", slug: "vannes-d-arret" },
        { id: "bondes", name: "Sumideros", slug: "bondes" },
        { id: "filtres-anti-calcaire", name: "Filtros antical", slug: "filtres-anti-calcaire" },
        { id: "tubes-devacuation", name: "Tubos de evacuación", slug: "tubes-devacuation" },
        { id: "coudes", name: "Codos", slug: "coudes" },
        { id: "tes", name: "Tees", slug: "tes" },
        { id: "reductions", name: "Reducciones", slug: "reductions" }
      ]
    },
    {
      id: "materiel-electrique",
      name: "Eléctrico",
      slug: "materiel-electrique",
      icon: <Plug className="w-3 h-3" />,
      subcategories: [
        { id: "prises-murales", name: "Tomas de pared", slug: "prises-murales" },
        { id: "prises-renforcees", name: "Tomas reforzadas", slug: "prises-renforcees" },
        { id: "interrupteurs-simples", name: "Interruptores", slug: "interrupteurs-simples" },
        { id: "interrupteurs-va-et-vient", name: "Conmutadores", slug: "interrupteurs-va-et-vient" },
        { id: "interrupteurs-automatiques", name: "Interruptores automáticos", slug: "interrupteurs-automatiques" },
        { id: "cables-electriques-rigides", name: "Cables rígidos", slug: "cables-electriques-rigides" },
        { id: "cables-souples", name: "Cables flexibles", slug: "cables-souples" },
        { id: "gaines-isolantes", name: "Fundas aislantes", slug: "gaines-isolantes" },
        { id: "gaines-icta", name: "Conductos ICTA", slug: "gaines-icta" },
        { id: "disjoncteurs", name: "Disyuntores", slug: "disjoncteurs" },
        { id: "tableaux-electriques", name: "Cuadros eléctricos", slug: "tableaux-electriques" },
        { id: "coffrets", name: "Cajas", slug: "coffrets" },
        { id: "transformateurs", name: "Transformadores", slug: "transformateurs" },
        { id: "multiprises", name: "Regletas", slug: "multiprises" },
        { id: "rallonges", name: "Alargadores", slug: "rallonges" },
        { id: "connecteurs-rapides", name: "Conectores rápidos", slug: "connecteurs-rapides" },
        { id: "dominos", name: "Bornes", slug: "dominos" },
        { id: "goulottes-murales", name: "Canaletas", slug: "goulottes-murales" }
      ]
    },
    {
      id: "colles-adhesifs",
      name: "Colas y adhesivos",
      slug: "colles-adhesifs",
      icon: <Box className="w-3 h-3" />,
      subcategories: [
        { id: "colles-fortes", name: "Colas fuertes", slug: "colles-fortes" },
        { id: "colles-universelles", name: "Colas universales", slug: "colles-universelles" },
        { id: "colles-pvc", name: "Colas PVC", slug: "colles-pvc" },
        { id: "colles-a-bois", name: "Colas para madera", slug: "colles-a-bois" },
        { id: "epoxy", name: "Epoxi", slug: "epoxy" },
        { id: "silicone", name: "Silicona", slug: "silicone" },
        { id: "mastic", name: "Masilla", slug: "mastic" },
        { id: "adhesifs-double-face", name: "Cintas de doble cara", slug: "adhesifs-double-face" },
        { id: "ruban-isolant", name: "Cinta aislante", slug: "ruban-isolant" },
        { id: "ruban-toile", name: "Cinta de tela", slug: "ruban-toile" },
        { id: "ruban-arme", name: "Cinta reforzada", slug: "ruban-arme" },
        { id: "ruban-de-masquage", name: "Cinta de enmascarar", slug: "ruban-de-masquage" },
        { id: "colles-de-montage", name: "Colas de montaje", slug: "colles-de-montage" }
      ]
    },
    {
      id: "produits-soudure-brasage",
      name: "Soldadura y brasaje",
      slug: "produits-soudure-brasage",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "fers-a-souder", name: "Soldadores", slug: "fers-a-souder" },
        { id: "stations-de-soudure", name: "Estaciones de soldadura", slug: "stations-de-soudure" },
        { id: "etain", name: "Estaño", slug: "etain" },
        { id: "chalumeaux-gaz", name: "Soplete de gas", slug: "chalumeaux-gaz" },
        { id: "baguettes-de-soudure", name: "Varillas de soldar", slug: "baguettes-de-soudure" },
        { id: "baguettes-de-brasage", name: "Varillas de brasaje", slug: "baguettes-de-brasage" },
        { id: "masques-de-soudure", name: "Máscaras de soldadura", slug: "masques-de-soudure" },
        { id: "visieres-de-protection", name: "Pantallas protectoras", slug: "visieres-de-protection" },
        { id: "flux-decapants", name: "Fundente", slug: "flux-decapants" }
      ]
    },
    {
      id: "outillage-de-mesure",
      name: "Herramientas de medición",
      slug: "outillage-de-mesure",
      icon: <Ruler className="w-3 h-3" />,
      subcategories: [
        { id: "metres-ruban", name: "Cintas métricas", slug: "metres-ruban" },
        { id: "metres-laser", name: "Medidores láser", slug: "metres-laser" },
        { id: "telemetres-laser", name: "Télmetros láser", slug: "telemetres-laser" },
        { id: "niveaux-laser", name: "Niveles láser", slug: "niveaux-laser" },
        { id: "niveaux-a-bulle", name: "Niveles de burbuja", slug: "niveaux-a-bulle" },
        { id: "equerres-metalliques", name: "Escuadras metálicas", slug: "equerres-metalliques" },
        { id: "rapporteurs", name: "Transportadores", slug: "rapporteurs" },
        { id: "pieds-a-coulisse", name: "Calibradores", slug: "pieds-a-coulisse" },
        { id: "detecteurs-de-cables", name: "Detectores de cables", slug: "detecteurs-de-cables" },
        { id: "detecteurs-de-metaux", name: "Detectores de metales", slug: "detecteurs-de-metaux" }
      ]
    },
    {
      id: "rangements-organisation",
      name: "Almacenaje y organización",
      slug: "rangements-organisation",
      icon: <Box className="w-3 h-3" />,
      subcategories: [
        { id: "boites-a-outils", name: "Cajas de herramientas", slug: "boites-a-outils" },
        { id: "boites-compartimentees", name: "Cajas compartimentadas", slug: "boites-compartimentees" },
        { id: "caisses-metalliques", name: "Cajas metálicas", slug: "caisses-metalliques" },
        { id: "organiseurs", name: "Organizadores", slug: "organiseurs" },
        { id: "valises-de-rangement", name: "Maletas de almacenamiento", slug: "valises-de-rangement" },
        { id: "chariots-de-manutention", name: "Carros de manipulación", slug: "chariots-de-manutention" },
        { id: "etagieres-metalliques", name: "Estanterías metálicas", slug: "etagieres-metalliques" },
        { id: "coffres-de-chantier", name: "Cofres de obra", slug: "coffres-de-chantier" },
        { id: "supports-muraux", name: "Soportes murales", slug: "supports-muraux" }
      ]
    },
    {
      id: "materiaux-metalliques-accessoires",
      name: "Materiales metálicos y accesorios",
      slug: "materiaux-metalliques-accessoires",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "barres-metalliques", name: "Barras metálicas", slug: "barres-metalliques" },
        { id: "barres-dacier", name: "Barras de acero", slug: "barres-dacier" },
        { id: "profils-aluminium", name: "Perfiles de aluminio", slug: "profils-aluminium" },
        { id: "profils-inox", name: "Perfiles inox", slug: "profils-inox" },
        { id: "grillages-soudes", name: "Mallas soldadas", slug: "grillages-soudes" },
        { id: "panneaux-grillages", name: "Paneles mallados", slug: "panneaux-grillages" },
        { id: "chaines-metalliques", name: "Cadenas metálicas", slug: "chaines-metalliques" },
        { id: "cables-acier", name: "Cables de acero", slug: "cables-acier" },
        { id: "tendeurs", name: "Tensor", slug: "tendeurs" },
        { id: "cornieres", name: "Escuadras", slug: "cornieres" },
        { id: "tubes-metalliques", name: "Tubos metálicos", slug: "tubes-metalliques" }
      ]
    },
    {
      id: "peinture-preparation",
      name: "Pintura y preparación",
      slug: "peinture-preparation",
      icon: <Paintbrush className="w-3 h-3" />,
      subcategories: [
        { id: "pinceaux-plats", name: "Brochas planas", slug: "pinceaux-plats" },
        { id: "pinceaux-ronds", name: "Brochas redondas", slug: "pinceaux-ronds" },
        { id: "rouleaux-anti-goutte", name: "Rodillos antigoteo", slug: "rouleaux-anti-goutte" },
        { id: "rouleaux-laqueurs", name: "Rodillos lacadores", slug: "rouleaux-laqueurs" },
        { id: "bacs-a-peinture", name: "Bandejas de pintura", slug: "bacs-a-peinture" },
        { id: "grilles", name: "Rejillas", slug: "grilles" },
        { id: "abrasifs", name: "Abrasivos", slug: "abrasifs" },
        { id: "papiers-de-verre", name: "Lijas", slug: "papiers-de-verre" },
        { id: "enduits-de-finition", name: "Masillas de acabado", slug: "enduits-de-finition" },
        { id: "apprets", name: "Imprimaciones", slug: "apprets" },
        { id: "baches-de-protection", name: "Lonas de protección", slug: "baches-de-protection" },
        { id: "rubans-de-masquage", name: "Cintas de enmascarar", slug: "rubans-de-masquage" },
        { id: "solvants", name: "Disolventes", slug: "solvants" }
      ]
    },
    {
      id: "jardinerie-bricolage-leger",
      name: "Jardinería y bricolaje ligero",
      slug: "jardinerie-bricolage-leger",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "petits-outils-de-jardin", name: "Pequeñas herramientas de jardín", slug: "petits-outils-de-jardin" },
        { id: "secateurs", name: "Tijeras de podar", slug: "secateurs" },
        { id: "elagueurs", name: "Cizallas", slug: "elagueurs" },
        { id: "pulverisateurs", name: "Pulverizadores", slug: "pulverisateurs" },
        { id: "arrosoirs", name: "Regaderas", slug: "arrosoirs" },
        { id: "mini-outils-de-plantation", name: "Mini herramientas de plantación", slug: "mini-outils-de-plantation" },
        { id: "rateaux", name: "Rastrillos", slug: "rateaux" },
        { id: "griffes", name: "Gradas de mano", slug: "griffes" },
        { id: "kits-de-reparation-jardin", name: "Kits de reparación de jardín", slug: "kits-de-reparation-jardin" },
        { id: "gants-de-jardinage", name: "Guantes de jardinería", slug: "gants-de-jardinage" }
      ]
    },
    {
      id: "accessoires-divers",
      name: "Accesorios varios",
      slug: "accessoires-divers",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "joints-varies", name: "Juntas varias", slug: "joints-varies" },
        { id: "poignees-diverses", name: "Manillas varias", slug: "poignees-diverses" },
        { id: "boutons-de-meuble", name: "Pomos de muebles", slug: "boutons-de-meuble" },
        { id: "pieds-de-meubles", name: "Patas de muebles", slug: "pieds-de-meubles" },
        { id: "roulettes-de-deplacement", name: "Ruedas de desplazamiento", slug: "roulettes-de-deplacement" },
        { id: "ressorts", name: "Muelles", slug: "ressorts" },
        { id: "aimants", name: "Imanes", slug: "aimants" },
        { id: "patins-anti-derapants", name: "Almohadillas antideslizantes", slug: "patins-anti-derapants" },
        { id: "embouts-divers", name: "Puntas varias", slug: "embouts-divers" },
        { id: "cales", name: "Calzos", slug: "cales" },
        { id: "supports-multi-usages", name: "Soportes multiusos", slug: "supports-multi-usages" }
      ]
    }
  ]
};