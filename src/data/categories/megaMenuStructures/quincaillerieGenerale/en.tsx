import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Wrench, Hammer, Drill, Shield, Lock, Plug, Droplet, Ruler, Paintbrush, Box } from "lucide-react";

export const quincaillerieGeneraleEn: MenuCategory = {
  id: "quincaillerie-generale",
  name: "General Hardware",
  slug: "quincaillerie-generale",
  icon: <Wrench className="w-4 h-4" />,
  subcategories: [
    {
      id: "outils-manuels",
      name: "Hand Tools",
      slug: "outils-manuels",
      icon: <Hammer className="w-3 h-3" />,
      subcategories: [
        { id: "tournevis-plats", name: "Flat screwdrivers", slug: "tournevis-plats" },
        { id: "tournevis-cruciformes", name: "Phillips screwdrivers", slug: "tournevis-cruciformes" },
        { id: "tournevis-de-precision", name: "Precision screwdrivers", slug: "tournevis-de-precision" },
        { id: "marteaux-de-menuisier", name: "Carpenter hammers", slug: "marteaux-de-menuisier" },
        { id: "marteaux-de-macon", name: "Mason hammers", slug: "marteaux-de-macon" },
        { id: "pinces-universelles", name: "Universal pliers", slug: "pinces-universelles" },
        { id: "pinces-coupantes", name: "Cutting pliers", slug: "pinces-coupantes" },
        { id: "pinces-multiprises", name: "Adjustable pliers", slug: "pinces-multiprises" },
        { id: "cles-plates", name: "Open-end wrenches", slug: "cles-plates" },
        { id: "cles-mixtes", name: "Combination wrenches", slug: "cles-mixtes" },
        { id: "cle-a-molette", name: "Adjustable wrench", slug: "cle-a-molette" },
        { id: "cles-allen", name: "Allen keys", slug: "cles-allen" },
        { id: "scies-manuelles", name: "Hand saws", slug: "scies-manuelles" },
        { id: "scies-a-metaux", name: "Hacksaws", slug: "scies-a-metaux" },
        { id: "cutters", name: "Utility knives", slug: "cutters" },
        { id: "grattoirs", name: "Scrapers", slug: "grattoirs" },
        { id: "ciseaux-a-bois", name: "Wood chisels", slug: "ciseaux-a-bois" },
        { id: "jeux-de-douilles", name: "Socket sets", slug: "jeux-de-douilles" },
        { id: "cliquets", name: "Ratchets", slug: "cliquets" },
        { id: "niveaux-a-bulle", name: "Bubble levels", slug: "niveaux-a-bulle" },
        { id: "serre-joints", name: "Clamps", slug: "serre-joints" },
        { id: "limes", name: "Files", slug: "limes" },
        { id: "rabots", name: "Planes", slug: "rabots" },
        { id: "maillets", name: "Mallets", slug: "maillets" },
        { id: "scies-egoines", name: "Panel saws", slug: "scies-egoines" },
        { id: "scies-japonaises", name: "Japanese saws", slug: "scies-japonaises" }
      ]
    },
    {
      id: "outils-electriques-electroportatifs",
      name: "Power & Cordless Tools",
      slug: "outils-electriques-electroportatifs",
      icon: <Drill className="w-3 h-3" />,
      subcategories: [
        { id: "perceuses", name: "Drills", slug: "perceuses" },
        { id: "perceuses-a-percussion", name: "Hammer drills", slug: "perceuses-a-percussion" },
        { id: "perceuses-sans-fil", name: "Cordless drills", slug: "perceuses-sans-fil" },
        { id: "visseuses", name: "Screwdrivers", slug: "visseuses" },
        { id: "visseuses-a-choc", name: "Impact drivers", slug: "visseuses-a-choc" },
        { id: "meuleuses", name: "Grinders", slug: "meuleuses" },
        { id: "meuleuses-d-angle", name: "Angle grinders", slug: "meuleuses-d-angle" },
        { id: "scies-electriques", name: "Electric saws", slug: "scies-electriques" },
        { id: "scies-circulaires", name: "Circular saws", slug: "scies-circulaires" },
        { id: "scies-sauteuses", name: "Jigsaws", slug: "scies-sauteuses" },
        { id: "scies-sabres", name: "Reciprocating saws", slug: "scies-sabres" },
        { id: "ponceuses-orbitales", name: "Orbital sanders", slug: "ponceuses-orbitales" },
        { id: "ponceuses-vibrantes", name: "Detail sanders", slug: "ponceuses-vibrantes" },
        { id: "ponceuses-a-bande", name: "Belt sanders", slug: "ponceuses-a-bande" },
        { id: "marteaux-perforateurs", name: "Rotary hammers", slug: "marteaux-perforateurs" },
        { id: "defonceuses", name: "Routers", slug: "defonceuses" },
        { id: "pistolets-a-chaleur", name: "Heat guns", slug: "pistolets-a-chaleur" },
        { id: "pistolets-a-colle", name: "Glue guns", slug: "pistolets-a-colle" },
        { id: "agrafeuses-electriques", name: "Electric staplers", slug: "agrafeuses-electriques" },
        { id: "decoupeurs-multifonctions", name: "Multi-cutters", slug: "decoupeurs-multifonctions" }
      ]
    },
    {
      id: "materiel-de-fixation",
      name: "Fasteners",
      slug: "materiel-de-fixation",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "vis-bois", name: "Wood screws", slug: "vis-bois" },
        { id: "vis-metal", name: "Metal screws", slug: "vis-metal" },
        { id: "vis-auto-perceuses", name: "Self-drilling screws", slug: "vis-auto-perceuses" },
        { id: "vis-placo", name: "Drywall screws", slug: "vis-placo" },
        { id: "boulons", name: "Bolts", slug: "boulons" },
        { id: "ecrous", name: "Nuts", slug: "ecrous" },
        { id: "rondelles-plates", name: "Flat washers", slug: "rondelles-plates" },
        { id: "rondelles-frein", name: "Lock washers", slug: "rondelles-frein" },
        { id: "chevilles-classiques", name: "Standard plugs", slug: "chevilles-classiques" },
        { id: "chevilles-molly", name: "Molly anchors", slug: "chevilles-molly" },
        { id: "chevilles-metalliques", name: "Metal anchors", slug: "chevilles-metalliques" },
        { id: "chevilles-chimiques", name: "Chemical anchors", slug: "chevilles-chimiques" },
        { id: "rivets", name: "Rivets", slug: "rivets" },
        { id: "clous", name: "Nails", slug: "clous" },
        { id: "pointes", name: "Pins", slug: "pointes" },
        { id: "crochets-muraux", name: "Wall hooks", slug: "crochets-muraux" },
        { id: "equerres-renforcees", name: "Reinforced brackets", slug: "equerres-renforcees" },
        { id: "pitons", name: "Screw eyes", slug: "pitons" },
        { id: "serre-cables", name: "Cable ties", slug: "serre-cables" }
      ]
    },
    {
      id: "quincaillerie-porte-fenetre",
      name: "Door & Window Hardware",
      slug: "quincaillerie-porte-fenetre",
      icon: <Lock className="w-3 h-3" />,
      subcategories: [
        { id: "serrures-a-cle", name: "Key locks", slug: "serrures-a-cle" },
        { id: "serrures-multipoints", name: "Multipoint locks", slug: "serrures-multipoints" },
        { id: "cylindres-europeens", name: "Euro cylinders", slug: "cylindres-europeens" },
        { id: "poignees-de-porte", name: "Door handles", slug: "poignees-de-porte" },
        { id: "poignees-de-fenetre", name: "Window handles", slug: "poignees-de-fenetre" },
        { id: "paumelles", name: "Hinges", slug: "paumelles" },
        { id: "charnieres-renforcees", name: "Reinforced hinges", slug: "charnieres-renforcees" },
        { id: "verrous", name: "Bolts", slug: "verrous" },
        { id: "loquets", name: "Latches", slug: "loquets" },
        { id: "cremones", name: "Cremones", slug: "cremones" },
        { id: "butees-de-porte", name: "Door stops", slug: "butees-de-porte" },
        { id: "heurtoirs", name: "Door knockers", slug: "heurtoirs" },
        { id: "arrets-de-porte-magnetiques", name: "Magnetic door stops", slug: "arrets-de-porte-magnetiques" },
        { id: "joints-detancheite", name: "Sealing gaskets", slug: "joints-detancheite" }
      ]
    },
    {
      id: "securite-protection",
      name: "Safety & Protection",
      slug: "securite-protection",
      icon: <Shield className="w-3 h-3" />,
      subcategories: [
        { id: "cadenas-standards", name: "Standard padlocks", slug: "cadenas-standards" },
        { id: "cadenas-haute-securite", name: "High-security padlocks", slug: "cadenas-haute-securite" },
        { id: "antivols-portes-portails", name: "Locks for doors and gates", slug: "antivols-portes-portails" },
        { id: "chaines-renforcees", name: "Reinforced chains", slug: "chaines-renforcees" },
        { id: "gants-de-protection", name: "Protective gloves", slug: "gants-de-protection" },
        { id: "gants-anti-coupure", name: "Cut-resistant gloves", slug: "gants-anti-coupure" },
        { id: "lunettes-de-securite", name: "Safety glasses", slug: "lunettes-de-securite" },
        { id: "visieres", name: "Face shields", slug: "visieres" },
        { id: "casques-de-chantier", name: "Hard hats", slug: "casques-de-chantier" },
        { id: "chaussures-de-securite", name: "Safety shoes", slug: "chaussures-de-securite" },
        { id: "genouilleres", name: "Knee pads", slug: "genouilleres" },
        { id: "masques-anti-poussiere", name: "Dust masks", slug: "masques-anti-poussiere" },
        { id: "harnais-de-securite", name: "Safety harnesses", slug: "harnais-de-securite" }
      ]
    },
    {
      id: "materiel-de-plomberie",
      name: "Plumbing",
      slug: "materiel-de-plomberie",
      icon: <Droplet className="w-3 h-3" />,
      subcategories: [
        { id: "robinets", name: "Faucets", slug: "robinets" },
        { id: "mitigeurs", name: "Mixers", slug: "mitigeurs" },
        { id: "flexibles", name: "Hoses", slug: "flexibles" },
        { id: "raccords-pvc", name: "PVC fittings", slug: "raccords-pvc" },
        { id: "raccords-multicouches", name: "Multilayer fittings", slug: "raccords-multicouches" },
        { id: "raccords-laiton", name: "Brass fittings", slug: "raccords-laiton" },
        { id: "tuyaux-pvc", name: "PVC pipes", slug: "tuyaux-pvc" },
        { id: "tuyaux-per", name: "PER pipes", slug: "tuyaux-per" },
        { id: "siphons", name: "Siphons", slug: "siphons" },
        { id: "joints-fibre", name: "Fiber gaskets", slug: "joints-fibre" },
        { id: "joints-caoutchouc", name: "Rubber gaskets", slug: "joints-caoutchouc" },
        { id: "colliers-de-serrage", name: "Clamps", slug: "colliers-de-serrage" },
        { id: "vannes-d-arret", name: "Shut-off valves", slug: "vannes-d-arret" },
        { id: "bondes", name: "Waste drains", slug: "bondes" },
        { id: "filtres-anti-calcaire", name: "Anti-scale filters", slug: "filtres-anti-calcaire" },
        { id: "tubes-devacuation", name: "Drain pipes", slug: "tubes-devacuation" },
        { id: "coudes", name: "Elbows", slug: "coudes" },
        { id: "tes", name: "Tees", slug: "tes" },
        { id: "reductions", name: "Reducers", slug: "reductions" }
      ]
    },
    {
      id: "materiel-electrique",
      name: "Electrical",
      slug: "materiel-electrique",
      icon: <Plug className="w-3 h-3" />,
      subcategories: [
        { id: "prises-murales", name: "Wall sockets", slug: "prises-murales" },
        { id: "prises-renforcees", name: "Heavy-duty sockets", slug: "prises-renforcees" },
        { id: "interrupteurs-simples", name: "Switches", slug: "interrupteurs-simples" },
        { id: "interrupteurs-va-et-vient", name: "Two-way switches", slug: "interrupteurs-va-et-vient" },
        { id: "interrupteurs-automatiques", name: "Automatic switches", slug: "interrupteurs-automatiques" },
        { id: "cables-electriques-rigides", name: "Rigid electrical cables", slug: "cables-electriques-rigides" },
        { id: "cables-souples", name: "Flexible cables", slug: "cables-souples" },
        { id: "gaines-isolantes", name: "Insulating sleeves", slug: "gaines-isolantes" },
        { id: "gaines-icta", name: "ICTA conduits", slug: "gaines-icta" },
        { id: "disjoncteurs", name: "Circuit breakers", slug: "disjoncteurs" },
        { id: "tableaux-electriques", name: "Electrical panels", slug: "tableaux-electriques" },
        { id: "coffrets", name: "Boxes", slug: "coffrets" },
        { id: "transformateurs", name: "Transformers", slug: "transformateurs" },
        { id: "multiprises", name: "Power strips", slug: "multiprises" },
        { id: "rallonges", name: "Extension cords", slug: "rallonges" },
        { id: "connecteurs-rapides", name: "Quick connectors", slug: "connecteurs-rapides" },
        { id: "dominos", name: "Terminal blocks", slug: "dominos" },
        { id: "goulottes-murales", name: "Cable ducts", slug: "goulottes-murales" }
      ]
    },
    {
      id: "colles-adhesifs",
      name: "Glues & Adhesives",
      slug: "colles-adhesifs",
      icon: <Box className="w-3 h-3" />,
      subcategories: [
        { id: "colles-fortes", name: "Strong glues", slug: "colles-fortes" },
        { id: "colles-universelles", name: "Universal glues", slug: "colles-universelles" },
        { id: "colles-pvc", name: "PVC glues", slug: "colles-pvc" },
        { id: "colles-a-bois", name: "Wood glues", slug: "colles-a-bois" },
        { id: "epoxy", name: "Epoxy", slug: "epoxy" },
        { id: "silicone", name: "Silicone", slug: "silicone" },
        { id: "mastic", name: "Sealant", slug: "mastic" },
        { id: "adhesifs-double-face", name: "Double-sided tapes", slug: "adhesifs-double-face" },
        { id: "ruban-isolant", name: "Insulating tape", slug: "ruban-isolant" },
        { id: "ruban-toile", name: "Cloth tape", slug: "ruban-toile" },
        { id: "ruban-arme", name: "Reinforced tape", slug: "ruban-arme" },
        { id: "ruban-de-masquage", name: "Masking tape", slug: "ruban-de-masquage" },
        { id: "colles-de-montage", name: "Assembly glues", slug: "colles-de-montage" }
      ]
    },
    {
      id: "produits-soudure-brasage",
      name: "Soldering & Brazing",
      slug: "produits-soudure-brasage",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "fers-a-souder", name: "Soldering irons", slug: "fers-a-souder" },
        { id: "stations-de-soudure", name: "Soldering stations", slug: "stations-de-soudure" },
        { id: "etain", name: "Tin", slug: "etain" },
        { id: "chalumeaux-gaz", name: "Gas blowtorches", slug: "chalumeaux-gaz" },
        { id: "baguettes-de-soudure", name: "Soldering rods", slug: "baguettes-de-soudure" },
        { id: "baguettes-de-brasage", name: "Brazing rods", slug: "baguettes-de-brasage" },
        { id: "masques-de-soudure", name: "Welding masks", slug: "masques-de-soudure" },
        { id: "visieres-de-protection", name: "Protective face shields", slug: "visieres-de-protection" },
        { id: "flux-decapants", name: "Flux", slug: "flux-decapants" }
      ]
    },
    {
      id: "outillage-de-mesure",
      name: "Measuring Tools",
      slug: "outillage-de-mesure",
      icon: <Ruler className="w-3 h-3" />,
      subcategories: [
        { id: "metres-ruban", name: "Tape measures", slug: "metres-ruban" },
        { id: "metres-laser", name: "Laser meters", slug: "metres-laser" },
        { id: "telemetres-laser", name: "Laser rangefinders", slug: "telemetres-laser" },
        { id: "niveaux-laser", name: "Laser levels", slug: "niveaux-laser" },
        { id: "niveaux-a-bulle", name: "Spirit levels", slug: "niveaux-a-bulle" },
        { id: "equerres-metalliques", name: "Metal squares", slug: "equerres-metalliques" },
        { id: "rapporteurs", name: "Protractors", slug: "rapporteurs" },
        { id: "pieds-a-coulisse", name: "Calipers", slug: "pieds-a-coulisse" },
        { id: "detecteurs-de-cables", name: "Cable detectors", slug: "detecteurs-de-cables" },
        { id: "detecteurs-de-metaux", name: "Metal detectors", slug: "detecteurs-de-metaux" }
      ]
    },
    {
      id: "rangements-organisation",
      name: "Storage & Organization",
      slug: "rangements-organisation",
      icon: <Box className="w-3 h-3" />,
      subcategories: [
        { id: "boites-a-outils", name: "Toolboxes", slug: "boites-a-outils" },
        { id: "boites-compartimentees", name: "Compartment boxes", slug: "boites-compartimentees" },
        { id: "caisses-metalliques", name: "Metal cases", slug: "caisses-metalliques" },
        { id: "organiseurs", name: "Organizers", slug: "organiseurs" },
        { id: "valises-de-rangement", name: "Storage cases", slug: "valises-de-rangement" },
        { id: "chariots-de-manutention", name: "Handling carts", slug: "chariots-de-manutention" },
        { id: "etagieres-metalliques", name: "Metal shelves", slug: "etagieres-metalliques" },
        { id: "coffres-de-chantier", name: "Site chests", slug: "coffres-de-chantier" },
        { id: "supports-muraux", name: "Wall mounts", slug: "supports-muraux" }
      ]
    },
    {
      id: "materiaux-metalliques-accessoires",
      name: "Metal Materials & Accessories",
      slug: "materiaux-metalliques-accessoires",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "barres-metalliques", name: "Metal bars", slug: "barres-metalliques" },
        { id: "barres-dacier", name: "Steel bars", slug: "barres-dacier" },
        { id: "profils-aluminium", name: "Aluminum profiles", slug: "profils-aluminium" },
        { id: "profils-inox", name: "Stainless profiles", slug: "profils-inox" },
        { id: "grillages-soudes", name: "Welded mesh", slug: "grillages-soudes" },
        { id: "panneaux-grillages", name: "Mesh panels", slug: "panneaux-grillages" },
        { id: "chaines-metalliques", name: "Metal chains", slug: "chaines-metalliques" },
        { id: "cables-acier", name: "Steel cables", slug: "cables-acier" },
        { id: "tendeurs", name: "Turnbuckles", slug: "tendeurs" },
        { id: "cornieres", name: "Angles", slug: "cornieres" },
        { id: "tubes-metalliques", name: "Metal tubes", slug: "tubes-metalliques" }
      ]
    },
    {
      id: "peinture-preparation",
      name: "Painting & Prep",
      slug: "peinture-preparation",
      icon: <Paintbrush className="w-3 h-3" />,
      subcategories: [
        { id: "pinceaux-plats", name: "Flat brushes", slug: "pinceaux-plats" },
        { id: "pinceaux-ronds", name: "Round brushes", slug: "pinceaux-ronds" },
        { id: "rouleaux-anti-goutte", name: "Anti-drip rollers", slug: "rouleaux-anti-goutte" },
        { id: "rouleaux-laqueurs", name: "Lacquer rollers", slug: "rouleaux-laqueurs" },
        { id: "bacs-a-peinture", name: "Paint trays", slug: "bacs-a-peinture" },
        { id: "grilles", name: "Grids", slug: "grilles" },
        { id: "abrasifs", name: "Abrasives", slug: "abrasifs" },
        { id: "papiers-de-verre", name: "Sandpapers", slug: "papiers-de-verre" },
        { id: "enduits-de-finition", name: "Finishing compounds", slug: "enduits-de-finition" },
        { id: "apprets", name: "Primers", slug: "apprets" },
        { id: "baches-de-protection", name: "Protective tarps", slug: "baches-de-protection" },
        { id: "rubans-de-masquage", name: "Masking tapes", slug: "rubans-de-masquage" },
        { id: "solvants", name: "Solvents", slug: "solvants" }
      ]
    },
    {
      id: "jardinerie-bricolage-leger",
      name: "Gardening & Light DIY",
      slug: "jardinerie-bricolage-leger",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "petits-outils-de-jardin", name: "Small garden tools", slug: "petits-outils-de-jardin" },
        { id: "secateurs", name: "Pruners", slug: "secateurs" },
        { id: "elagueurs", name: "Loppers", slug: "elagueurs" },
        { id: "pulverisateurs", name: "Sprayers", slug: "pulverisateurs" },
        { id: "arrosoirs", name: "Watering cans", slug: "arrosoirs" },
        { id: "mini-outils-de-plantation", name: "Mini planting tools", slug: "mini-outils-de-plantation" },
        { id: "rateaux", name: "Rakes", slug: "rateaux" },
        { id: "griffes", name: "Cultivators", slug: "griffes" },
        { id: "kits-de-reparation-jardin", name: "Garden repair kits", slug: "kits-de-reparation-jardin" },
        { id: "gants-de-jardinage", name: "Gardening gloves", slug: "gants-de-jardinage" }
      ]
    },
    {
      id: "accessoires-divers",
      name: "Misc Accessories",
      slug: "accessoires-divers",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "joints-varies", name: "Various gaskets", slug: "joints-varies" },
        { id: "poignees-diverses", name: "Various handles", slug: "poignees-diverses" },
        { id: "boutons-de-meuble", name: "Furniture knobs", slug: "boutons-de-meuble" },
        { id: "pieds-de-meubles", name: "Furniture feet", slug: "pieds-de-meubles" },
        { id: "roulettes-de-deplacement", name: "Moving casters", slug: "roulettes-de-deplacement" },
        { id: "ressorts", name: "Springs", slug: "ressorts" },
        { id: "aimants", name: "Magnets", slug: "aimants" },
        { id: "patins-anti-derapants", name: "Anti-slip pads", slug: "patins-anti-derapants" },
        { id: "embouts-divers", name: "Various tips", slug: "embouts-divers" },
        { id: "cales", name: "Shims", slug: "cales" },
        { id: "supports-multi-usages", name: "Multi-purpose supports", slug: "supports-multi-usages" }
      ]
    }
  ]
};