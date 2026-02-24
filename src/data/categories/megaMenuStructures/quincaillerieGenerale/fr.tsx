import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Wrench, Hammer, Drill, Shield, Lock, Plug, Droplet, Ruler, Paintbrush, Box } from "lucide-react";

export const quincaillerieGeneraleFr: MenuCategory = {
  id: "quincaillerie-generale",
  name: "Quincaillerie Générale",
  slug: "quincaillerie-generale",
  icon: <Wrench className="w-4 h-4" />,
  subcategories: [
    {
      id: "outils-manuels",
      name: "Outils manuels",
      slug: "outils-manuels",
      icon: <Hammer className="w-3 h-3" />,
      subcategories: [
        { id: "tournevis-plats", name: "Tournevis plats", slug: "tournevis-plats" },
        { id: "tournevis-cruciformes", name: "Tournevis cruciformes", slug: "tournevis-cruciformes" },
        { id: "tournevis-de-precision", name: "Tournevis de précision", slug: "tournevis-de-precision" },
        { id: "marteaux-de-menuisier", name: "Marteaux de menuisier", slug: "marteaux-de-menuisier" },
        { id: "marteaux-de-macon", name: "Marteaux de maçon", slug: "marteaux-de-macon" },
        { id: "pinces-universelles", name: "Pinces universelles", slug: "pinces-universelles" },
        { id: "pinces-coupantes", name: "Pinces coupantes", slug: "pinces-coupantes" },
        { id: "pinces-multiprises", name: "Pinces multiprises", slug: "pinces-multiprises" },
        { id: "cles-plates", name: "Clés plates", slug: "cles-plates" },
        { id: "cles-mixtes", name: "Clés mixtes", slug: "cles-mixtes" },
        { id: "cle-a-molette", name: "Clé à molette", slug: "cle-a-molette" },
        { id: "cles-allen", name: "Clés Allen", slug: "cles-allen" },
        { id: "scies-manuelles", name: "Scies manuelles", slug: "scies-manuelles" },
        { id: "scies-a-metaux", name: "Scies à métaux", slug: "scies-a-metaux" },
        { id: "cutters", name: "Cutters", slug: "cutters" },
        { id: "grattoirs", name: "Grattoirs", slug: "grattoirs" },
        { id: "ciseaux-a-bois", name: "Ciseaux à bois", slug: "ciseaux-a-bois" },
        { id: "jeux-de-douilles", name: "Jeux de douilles", slug: "jeux-de-douilles" },
        { id: "cliquets", name: "Cliquets", slug: "cliquets" },
        { id: "niveaux-a-bulle", name: "Niveaux à bulle", slug: "niveaux-a-bulle" },
        { id: "serre-joints", name: "Serre-joints", slug: "serre-joints" },
        { id: "limes", name: "Limes", slug: "limes" },
        { id: "rabots", name: "Rabots", slug: "rabots" },
        { id: "maillets", name: "Maillets", slug: "maillets" },
        { id: "scies-egoines", name: "Scies égoïnes", slug: "scies-egoines" },
        { id: "scies-japonaises", name: "Scies japonaises", slug: "scies-japonaises" }
      ]
    },
    {
      id: "outils-electriques-electroportatifs",
      name: "Outils électriques & électroportatifs",
      slug: "outils-electriques-electroportatifs",
      icon: <Drill className="w-3 h-3" />,
      subcategories: [
        { id: "perceuses", name: "Perceuses", slug: "perceuses" },
        { id: "perceuses-a-percussion", name: "Perceuses à percussion", slug: "perceuses-a-percussion" },
        { id: "perceuses-sans-fil", name: "Perceuses sans fil", slug: "perceuses-sans-fil" },
        { id: "visseuses", name: "Visseuses", slug: "visseuses" },
        { id: "visseuses-a-choc", name: "Visseuses à choc", slug: "visseuses-a-choc" },
        { id: "meuleuses", name: "Meuleuses", slug: "meuleuses" },
        { id: "meuleuses-d-angle", name: "Meuleuses d’angle", slug: "meuleuses-d-angle" },
        { id: "scies-electriques", name: "Scies électriques", slug: "scies-electriques" },
        { id: "scies-circulaires", name: "Scies circulaires", slug: "scies-circulaires" },
        { id: "scies-sauteuses", name: "Scies sauteuses", slug: "scies-sauteuses" },
        { id: "scies-sabres", name: "Scies sabres", slug: "scies-sabres" },
        { id: "ponceuses-orbitales", name: "Ponceuses orbitales", slug: "ponceuses-orbitales" },
        { id: "ponceuses-vibrantes", name: "Ponceuses vibrantes", slug: "ponceuses-vibrantes" },
        { id: "ponceuses-a-bande", name: "Ponceuses à bande", slug: "ponceuses-a-bande" },
        { id: "marteaux-perforateurs", name: "Marteaux-perforateurs", slug: "marteaux-perforateurs" },
        { id: "defonceuses", name: "Défonceuses", slug: "defonceuses" },
        { id: "pistolets-a-chaleur", name: "Pistolets à chaleur", slug: "pistolets-a-chaleur" },
        { id: "pistolets-a-colle", name: "Pistolets à colle", slug: "pistolets-a-colle" },
        { id: "agrafeuses-electriques", name: "Agrafeuses électriques", slug: "agrafeuses-electriques" },
        { id: "decoupeurs-multifonctions", name: "Découpeurs multifonctions", slug: "decoupeurs-multifonctions" }
      ]
    },
    {
      id: "materiel-de-fixation",
      name: "Matériel de fixation",
      slug: "materiel-de-fixation",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "vis-bois", name: "Vis bois", slug: "vis-bois" },
        { id: "vis-metal", name: "Vis métal", slug: "vis-metal" },
        { id: "vis-auto-perceuses", name: "Vis auto-perceuses", slug: "vis-auto-perceuses" },
        { id: "vis-placo", name: "Vis placo", slug: "vis-placo" },
        { id: "boulons", name: "Boulons", slug: "boulons" },
        { id: "ecrous", name: "Écrous", slug: "ecrous" },
        { id: "rondelles-plates", name: "Rondelles plates", slug: "rondelles-plates" },
        { id: "rondelles-frein", name: "Rondelles frein", slug: "rondelles-frein" },
        { id: "chevilles-classiques", name: "Chevilles classiques", slug: "chevilles-classiques" },
        { id: "chevilles-molly", name: "Chevilles Molly", slug: "chevilles-molly" },
        { id: "chevilles-metalliques", name: "Chevilles métalliques", slug: "chevilles-metalliques" },
        { id: "chevilles-chimiques", name: "Chevilles chimiques", slug: "chevilles-chimiques" },
        { id: "rivets", name: "Rivets", slug: "rivets" },
        { id: "clous", name: "Clous", slug: "clous" },
        { id: "pointes", name: "Pointes", slug: "pointes" },
        { id: "crochets-muraux", name: "Crochets muraux", slug: "crochets-muraux" },
        { id: "equerres-renforcees", name: "Équerres renforcées", slug: "equerres-renforcees" },
        { id: "pitons", name: "Pitons", slug: "pitons" },
        { id: "serre-cables", name: "Serre-câbles", slug: "serre-cables" }
      ]
    },
    {
      id: "quincaillerie-porte-fenetre",
      name: "Quincaillerie de porte & fenêtre",
      slug: "quincaillerie-porte-fenetre",
      icon: <Lock className="w-3 h-3" />,
      subcategories: [
        { id: "serrures-a-cle", name: "Serrures à clé", slug: "serrures-a-cle" },
        { id: "serrures-multipoints", name: "Serrures multipoints", slug: "serrures-multipoints" },
        { id: "cylindres-europeens", name: "Cylindres européens", slug: "cylindres-europeens" },
        { id: "poignees-de-porte", name: "Poignées de porte", slug: "poignees-de-porte" },
        { id: "poignees-de-fenetre", name: "Poignées de fenêtre", slug: "poignees-de-fenetre" },
        { id: "paumelles", name: "Paumelles", slug: "paumelles" },
        { id: "charnieres-renforcees", name: "Charnières renforcées", slug: "charnieres-renforcees" },
        { id: "verrous", name: "Verrous", slug: "verrous" },
        { id: "loquets", name: "Loquets", slug: "loquets" },
        { id: "cremones", name: "Crémenes", slug: "cremones" },
        { id: "butees-de-porte", name: "Butées de porte", slug: "butees-de-porte" },
        { id: "heurtoirs", name: "Heurtoirs", slug: "heurtoirs" },
        { id: "arrets-de-porte-magnetiques", name: "Arrêts de porte magnétiques", slug: "arrets-de-porte-magnetiques" },
        { id: "joints-detancheite", name: "Joints d’étanchéité", slug: "joints-detancheite" }
      ]
    },
    {
      id: "securite-protection",
      name: "Sécurité & protection",
      slug: "securite-protection",
      icon: <Shield className="w-3 h-3" />,
      subcategories: [
        { id: "cadenas-standards", name: "Cadenas standards", slug: "cadenas-standards" },
        { id: "cadenas-haute-securite", name: "Cadenas haute sécurité", slug: "cadenas-haute-securite" },
        { id: "antivols-portes-portails", name: "Antivols pour portes et portails", slug: "antivols-portes-portails" },
        { id: "chaines-renforcees", name: "Chaînes renforcées", slug: "chaines-renforcees" },
        { id: "gants-de-protection", name: "Gants de protection", slug: "gants-de-protection" },
        { id: "gants-anti-coupure", name: "Gants anti-coupure", slug: "gants-anti-coupure" },
        { id: "lunettes-de-securite", name: "Lunettes de sécurité", slug: "lunettes-de-securite" },
        { id: "visieres", name: "Visières", slug: "visieres" },
        { id: "casques-de-chantier", name: "Casques de chantier", slug: "casques-de-chantier" },
        { id: "chaussures-de-securite", name: "Chaussures de sécurité", slug: "chaussures-de-securite" },
        { id: "genouilleres", name: "Genouillères", slug: "genouilleres" },
        { id: "masques-anti-poussiere", name: "Masques anti-poussière", slug: "masques-anti-poussiere" },
        { id: "harnais-de-securite", name: "Harnais de sécurité", slug: "harnais-de-securite" }
      ]
    },
    {
      id: "materiel-de-plomberie",
      name: "Matériel de plomberie",
      slug: "materiel-de-plomberie",
      icon: <Droplet className="w-3 h-3" />,
      subcategories: [
        { id: "robinets", name: "Robinets", slug: "robinets" },
        { id: "mitigeurs", name: "Mitigeurs", slug: "mitigeurs" },
        { id: "flexibles", name: "Flexibles", slug: "flexibles" },
        { id: "raccords-pvc", name: "Raccords PVC", slug: "raccords-pvc" },
        { id: "raccords-multicouches", name: "Raccords multicouches", slug: "raccords-multicouches" },
        { id: "raccords-laiton", name: "Raccords laiton", slug: "raccords-laiton" },
        { id: "tuyaux-pvc", name: "Tuyaux PVC", slug: "tuyaux-pvc" },
        { id: "tuyaux-per", name: "Tuyaux PER", slug: "tuyaux-per" },
        { id: "siphons", name: "Siphons", slug: "siphons" },
        { id: "joints-fibre", name: "Joints fibre", slug: "joints-fibre" },
        { id: "joints-caoutchouc", name: "Joints caoutchouc", slug: "joints-caoutchouc" },
        { id: "colliers-de-serrage", name: "Colliers de serrage", slug: "colliers-de-serrage" },
        { id: "vannes-d-arret", name: "Vannes d’arrêt", slug: "vannes-d-arret" },
        { id: "bondes", name: "Bondes", slug: "bondes" },
        { id: "filtres-anti-calcaire", name: "Filtres anti-calcaire", slug: "filtres-anti-calcaire" },
        { id: "tubes-devacuation", name: "Tubes d’évacuation", slug: "tubes-devacuation" },
        { id: "coudes", name: "Coudes", slug: "coudes" },
        { id: "tes", name: "Tés", slug: "tes" },
        { id: "reductions", name: "Réductions", slug: "reductions" }
      ]
    },
    {
      id: "materiel-electrique",
      name: "Matériel électrique",
      slug: "materiel-electrique",
      icon: <Plug className="w-3 h-3" />,
      subcategories: [
        { id: "prises-murales", name: "Prises murales", slug: "prises-murales" },
        { id: "prises-renforcees", name: "Prises renforcées", slug: "prises-renforcees" },
        { id: "interrupteurs-simples", name: "Interrupteurs simples", slug: "interrupteurs-simples" },
        { id: "interrupteurs-va-et-vient", name: "Interrupteurs va-et-vient", slug: "interrupteurs-va-et-vient" },
        { id: "interrupteurs-automatiques", name: "Interrupteurs automatiques", slug: "interrupteurs-automatiques" },
        { id: "cables-electriques-rigides", name: "Câbles électriques rigides", slug: "cables-electriques-rigides" },
        { id: "cables-souples", name: "Câbles souples", slug: "cables-souples" },
        { id: "gaines-isolantes", name: "Gaines isolantes", slug: "gaines-isolantes" },
        { id: "gaines-icta", name: "Gaines ICTA", slug: "gaines-icta" },
        { id: "disjoncteurs", name: "Disjoncteurs", slug: "disjoncteurs" },
        { id: "tableaux-electriques", name: "Tableaux électriques", slug: "tableaux-electriques" },
        { id: "coffrets", name: "Coffrets", slug: "coffrets" },
        { id: "transformateurs", name: "Transformateurs", slug: "transformateurs" },
        { id: "multiprises", name: "Multiprises", slug: "multiprises" },
        { id: "rallonges", name: "Rallonges", slug: "rallonges" },
        { id: "connecteurs-rapides", name: "Connecteurs rapides", slug: "connecteurs-rapides" },
        { id: "dominos", name: "Dominos", slug: "dominos" },
        { id: "goulottes-murales", name: "Goulottes murales", slug: "goulottes-murales" }
      ]
    },
    {
      id: "colles-adhesifs",
      name: "Colles & adhésifs",
      slug: "colles-adhesifs",
      icon: <Box className="w-3 h-3" />,
      subcategories: [
        { id: "colles-fortes", name: "Colles fortes", slug: "colles-fortes" },
        { id: "colles-universelles", name: "Colles universelles", slug: "colles-universelles" },
        { id: "colles-pvc", name: "Colles PVC", slug: "colles-pvc" },
        { id: "colles-a-bois", name: "Colles à bois", slug: "colles-a-bois" },
        { id: "epoxy", name: "Epoxy", slug: "epoxy" },
        { id: "silicone", name: "Silicone", slug: "silicone" },
        { id: "mastic", name: "Mastic", slug: "mastic" },
        { id: "adhesifs-double-face", name: "Adhésifs double face", slug: "adhesifs-double-face" },
        { id: "ruban-isolant", name: "Ruban isolant", slug: "ruban-isolant" },
        { id: "ruban-toile", name: "Ruban toilé", slug: "ruban-toile" },
        { id: "ruban-arme", name: "Ruban armé", slug: "ruban-arme" },
        { id: "ruban-de-masquage", name: "Ruban de masquage", slug: "ruban-de-masquage" },
        { id: "colles-de-montage", name: "Colles de montage", slug: "colles-de-montage" }
      ]
    },
    {
      id: "produits-soudure-brasage",
      name: "Produits de soudure & brasage",
      slug: "produits-soudure-brasage",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "fers-a-souder", name: "Fers à souder", slug: "fers-a-souder" },
        { id: "stations-de-soudure", name: "Stations de soudure", slug: "stations-de-soudure" },
        { id: "etain", name: "Étain", slug: "etain" },
        { id: "chalumeaux-gaz", name: "Chalumeaux gaz", slug: "chalumeaux-gaz" },
        { id: "baguettes-de-soudure", name: "Baguettes de soudure", slug: "baguettes-de-soudure" },
        { id: "baguettes-de-brasage", name: "Baguettes de brasage", slug: "baguettes-de-brasage" },
        { id: "masques-de-soudure", name: "Masques de soudure", slug: "masques-de-soudure" },
        { id: "visieres-de-protection", name: "Visières de protection", slug: "visieres-de-protection" },
        { id: "flux-decapants", name: "Flux décapants", slug: "flux-decapants" }
      ]
    },
    {
      id: "outillage-de-mesure",
      name: "Outillage de mesure",
      slug: "outillage-de-mesure",
      icon: <Ruler className="w-3 h-3" />,
      subcategories: [
        { id: "metres-ruban", name: "Mètres ruban", slug: "metres-ruban" },
        { id: "metres-laser", name: "Mètres laser", slug: "metres-laser" },
        { id: "telemetres-laser", name: "Télémètres laser", slug: "telemetres-laser" },
        { id: "niveaux-laser", name: "Niveaux laser", slug: "niveaux-laser" },
        { id: "niveaux-a-bulle", name: "Niveaux à bulle", slug: "niveaux-a-bulle" },
        { id: "equerres-metalliques", name: "Équerres métalliques", slug: "equerres-metalliques" },
        { id: "rapporteurs", name: "Rapporteurs", slug: "rapporteurs" },
        { id: "pieds-a-coulisse", name: "Pieds à coulisse", slug: "pieds-a-coulisse" },
        { id: "detecteurs-de-cables", name: "Détecteurs de câbles", slug: "detecteurs-de-cables" },
        { id: "detecteurs-de-metaux", name: "Détecteurs de métaux", slug: "detecteurs-de-metaux" }
      ]
    },
    {
      id: "rangements-organisation",
      name: "Rangements & organisation",
      slug: "rangements-organisation",
      icon: <Box className="w-3 h-3" />,
      subcategories: [
        { id: "boites-a-outils", name: "Boîtes à outils", slug: "boites-a-outils" },
        { id: "boites-compartimentees", name: "Boîtes compartimentées", slug: "boites-compartimentees" },
        { id: "caisses-metalliques", name: "Caisses métalliques", slug: "caisses-metalliques" },
        { id: "organiseurs", name: "Organiseurs", slug: "organiseurs" },
        { id: "valises-de-rangement", name: "Valises de rangement", slug: "valises-de-rangement" },
        { id: "chariots-de-manutention", name: "Chariots de manutention", slug: "chariots-de-manutention" },
        { id: "etagieres-metalliques", name: "Étagères métalliques", slug: "etagieres-metalliques" },
        { id: "coffres-de-chantier", name: "Coffres de chantier", slug: "coffres-de-chantier" },
        { id: "supports-muraux", name: "Supports muraux", slug: "supports-muraux" }
      ]
    },
    {
      id: "materiaux-metalliques-accessoires",
      name: "Matériaux métalliques & accessoires",
      slug: "materiaux-metalliques-accessoires",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "barres-metalliques", name: "Barres métalliques", slug: "barres-metalliques" },
        { id: "barres-dacier", name: "Barres d’acier", slug: "barres-dacier" },
        { id: "profils-aluminium", name: "Profilés aluminium", slug: "profils-aluminium" },
        { id: "profils-inox", name: "Profilés inox", slug: "profils-inox" },
        { id: "grillages-soudes", name: "Grillages soudés", slug: "grillages-soudes" },
        { id: "panneaux-grillages", name: "Panneaux grillagés", slug: "panneaux-grillages" },
        { id: "chaines-metalliques", name: "Chaînes métalliques", slug: "chaines-metalliques" },
        { id: "cables-acier", name: "Câbles acier", slug: "cables-acier" },
        { id: "tendeurs", name: "Tendeurs", slug: "tendeurs" },
        { id: "cornieres", name: "Cornières", slug: "cornieres" },
        { id: "tubes-metalliques", name: "Tubes métalliques", slug: "tubes-metalliques" }
      ]
    },
    {
      id: "peinture-preparation",
      name: "Peinture & préparation",
      slug: "peinture-preparation",
      icon: <Paintbrush className="w-3 h-3" />,
      subcategories: [
        { id: "pinceaux-plats", name: "Pinceaux plats", slug: "pinceaux-plats" },
        { id: "pinceaux-ronds", name: "Pinceaux ronds", slug: "pinceaux-ronds" },
        { id: "rouleaux-anti-goutte", name: "Rouleaux anti-goutte", slug: "rouleaux-anti-goutte" },
        { id: "rouleaux-laqueurs", name: "Rouleaux laqueurs", slug: "rouleaux-laqueurs" },
        { id: "bacs-a-peinture", name: "Bacs à peinture", slug: "bacs-a-peinture" },
        { id: "grilles", name: "Grilles", slug: "grilles" },
        { id: "abrasifs", name: "Abrasifs", slug: "abrasifs" },
        { id: "papiers-de-verre", name: "Papiers de verre", slug: "papiers-de-verre" },
        { id: "enduits-de-finition", name: "Enduits de finition", slug: "enduits-de-finition" },
        { id: "apprets", name: "Apprêts", slug: "apprets" },
        { id: "baches-de-protection", name: "Bâches de protection", slug: "baches-de-protection" },
        { id: "rubans-de-masquage", name: "Rubans de masquage", slug: "rubans-de-masquage" },
        { id: "solvants", name: "Solvants", slug: "solvants" }
      ]
    },
    {
      id: "jardinerie-bricolage-leger",
      name: "Jardinerie & bricolage léger",
      slug: "jardinerie-bricolage-leger",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "petits-outils-de-jardin", name: "Petits outils de jardin", slug: "petits-outils-de-jardin" },
        { id: "secateurs", name: "Sécateurs", slug: "secateurs" },
        { id: "elagueurs", name: "Élagueurs", slug: "elagueurs" },
        { id: "pulverisateurs", name: "Pulvérisateurs", slug: "pulverisateurs" },
        { id: "arrosoirs", name: "Arrosoirs", slug: "arrosoirs" },
        { id: "mini-outils-de-plantation", name: "Mini-outils de plantation", slug: "mini-outils-de-plantation" },
        { id: "rateaux", name: "Râteaux", slug: "rateaux" },
        { id: "griffes", name: "Griffes", slug: "griffes" },
        { id: "kits-de-reparation-jardin", name: "Kits de réparation jardin", slug: "kits-de-reparation-jardin" },
        { id: "gants-de-jardinage", name: "Gants de jardinage", slug: "gants-de-jardinage" }
      ]
    },
    {
      id: "accessoires-divers",
      name: "Accessoires divers",
      slug: "accessoires-divers",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "joints-varies", name: "Joints variés", slug: "joints-varies" },
        { id: "poignees-diverses", name: "Poignées diverses", slug: "poignees-diverses" },
        { id: "boutons-de-meuble", name: "Boutons de meuble", slug: "boutons-de-meuble" },
        { id: "pieds-de-meubles", name: "Pieds de meubles", slug: "pieds-de-meubles" },
        { id: "roulettes-de-deplacement", name: "Roulettes de déplacement", slug: "roulettes-de-deplacement" },
        { id: "ressorts", name: "Ressorts", slug: "ressorts" },
        { id: "aimants", name: "Aimants", slug: "aimants" },
        { id: "patins-anti-derapants", name: "Patins anti-dérapants", slug: "patins-anti-derapants" },
        { id: "embouts-divers", name: "Embouts divers", slug: "embouts-divers" },
        { id: "cales", name: "Cales", slug: "cales" },
        { id: "supports-multi-usages", name: "Supports multi-usages", slug: "supports-multi-usages" }
      ]
    }
  ]
};