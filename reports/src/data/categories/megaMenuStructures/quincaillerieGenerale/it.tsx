import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Wrench, Hammer, Drill, Shield, Lock, Plug, Droplet, Ruler, Paintbrush, Box } from "lucide-react";

export const quincaillerieGeneraleIt: MenuCategory = {
  id: "quincaillerie-generale",
  name: "Ferramenta Generale",
  slug: "quincaillerie-generale",
  icon: <Wrench className="w-4 h-4" />,
  subcategories: [
    {
      id: "outils-manuels",
      name: "Utensili manuali",
      slug: "outils-manuels",
      icon: <Hammer className="w-3 h-3" />,
      subcategories: [
        { id: "tournevis-plats", name: "Cacciaviti a taglio", slug: "tournevis-plats" },
        { id: "tournevis-cruciformes", name: "Cacciaviti a croce", slug: "tournevis-cruciformes" },
        { id: "tournevis-de-precision", name: "Cacciaviti di precisione", slug: "tournevis-de-precision" },
        { id: "marteaux-de-menuisier", name: "Martelli da carpentiere", slug: "marteaux-de-menuisier" },
        { id: "marteaux-de-macon", name: "Martelli da muratore", slug: "marteaux-de-macon" },
        { id: "pinces-universelles", name: "Pinze universali", slug: "pinces-universelles" },
        { id: "pinces-coupantes", name: "Pinze tagliatrici", slug: "pinces-coupantes" },
        { id: "pinces-multiprises", name: "Pinze regolabili", slug: "pinces-multiprises" },
        { id: "cles-plates", name: "Chiavi fisse", slug: "cles-plates" },
        { id: "cles-mixtes", name: "Chiavi combinate", slug: "cles-mixtes" },
        { id: "cle-a-molette", name: "Chiave regolabile", slug: "cle-a-molette" },
        { id: "cles-allen", name: "Chiavi Allen", slug: "cles-allen" },
        { id: "scies-manuelles", name: "Seghe manuali", slug: "scies-manuelles" },
        { id: "scies-a-metaux", name: "Seghe per metallo", slug: "scies-a-metaux" },
        { id: "cutters", name: "Taglierini", slug: "cutters" },
        { id: "grattoirs", name: "Raschiatori", slug: "grattoirs" },
        { id: "ciseaux-a-bois", name: "Scalpelli per legno", slug: "ciseaux-a-bois" },
        { id: "jeux-de-douilles", name: "Set di bussole", slug: "jeux-de-douilles" },
        { id: "cliquets", name: "Cricchetti", slug: "cliquets" },
        { id: "niveaux-a-bulle", name: "Livelle a bolla", slug: "niveaux-a-bulle" },
        { id: "serre-joints", name: "Morsetti", slug: "serre-joints" },
        { id: "limes", name: "Lime", slug: "limes" },
        { id: "rabots", name: "Pialle", slug: "rabots" },
        { id: "maillets", name: "Mazzuoli", slug: "maillets" },
        { id: "scies-egoines", name: "Seghe a panele", slug: "scies-egoines" },
        { id: "scies-japonaises", name: "Seghe giapponesi", slug: "scies-japonaises" }
      ]
    },
    {
      id: "outils-electriques-electroportatifs",
      name: "Utensili elettrici",
      slug: "outils-electriques-electroportatifs",
      icon: <Drill className="w-3 h-3" />,
      subcategories: [
        { id: "perceuses", name: "Trapani", slug: "perceuses" },
        { id: "perceuses-a-percussion", name: "Trapani a percussione", slug: "perceuses-a-percussion" },
        { id: "perceuses-sans-fil", name: "Trapani a batteria", slug: "perceuses-sans-fil" },
        { id: "visseuses", name: "Avvitatori", slug: "visseuses" },
        { id: "visseuses-a-choc", name: "Avvitatori a impulsi", slug: "visseuses-a-choc" },
        { id: "meuleuses", name: "Smerigliatrici", slug: "meuleuses" },
        { id: "meuleuses-d-angle", name: "Smerigliatrici angolari", slug: "meuleuses-d-angle" },
        { id: "scies-electriques", name: "Seghe elettriche", slug: "scies-electriques" },
        { id: "scies-circulaires", name: "Seghe circolari", slug: "scies-circulaires" },
        { id: "scies-sauteuses", name: "Seghe a traforo", slug: "scies-sauteuses" },
        { id: "scies-sabres", name: "Seghe a sciabola", slug: "scies-sabres" },
        { id: "ponceuses-orbitales", name: "Levigatrici orbitali", slug: "ponceuses-orbitales" },
        { id: "ponceuses-vibrantes", name: "Levigatrici vibratorie", slug: "ponceuses-vibrantes" },
        { id: "ponceuses-a-bande", name: "Levigatrici a nastro", slug: "ponceuses-a-bande" },
        { id: "marteaux-perforateurs", name: "Martelli perforatori", slug: "marteaux-perforateurs" },
        { id: "defonceuses", name: "Fresatrici", slug: "defonceuses" },
        { id: "pistolets-a-chaleur", name: "Pistole termiche", slug: "pistolets-a-chaleur" },
        { id: "pistolets-a-colle", name: "Pistole per colla", slug: "pistolets-a-colle" },
        { id: "agrafeuses-electriques", name: "Graffatrici elettriche", slug: "agrafeuses-electriques" },
        { id: "decoupeurs-multifonctions", name: "Multitools", slug: "decoupeurs-multifonctions" }
      ]
    },
    {
      id: "materiel-de-fixation",
      name: "Fissaggi",
      slug: "materiel-de-fixation",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "vis-bois", name: "Viti per legno", slug: "vis-bois" },
        { id: "vis-metal", name: "Viti per metallo", slug: "vis-metal" },
        { id: "vis-auto-perceuses", name: "Viti autofilettanti", slug: "vis-auto-perceuses" },
        { id: "vis-placo", name: "Viti cartongesso", slug: "vis-placo" },
        { id: "boulons", name: "Bulloni", slug: "boulons" },
        { id: "ecrous", name: "Dadi", slug: "ecrous" },
        { id: "rondelles-plates", name: "Rondelle", slug: "rondelles-plates" },
        { id: "rondelles-frein", name: "Rondelle Grower", slug: "rondelles-frein" },
        { id: "chevilles-classiques", name: "Tasselli standard", slug: "chevilles-classiques" },
        { id: "chevilles-molly", name: "Tasselli Molly", slug: "chevilles-molly" },
        { id: "chevilles-metalliques", name: "Tasselli metallici", slug: "chevilles-metalliques" },
        { id: "chevilles-chimiques", name: "Ancoraggi chimici", slug: "chevilles-chimiques" },
        { id: "rivets", name: "Rivetti", slug: "rivets" },
        { id: "clous", name: "Chiodi", slug: "clous" },
        { id: "pointes", name: "Spine", slug: "pointes" },
        { id: "crochets-muraux", name: "Ganci da parete", slug: "crochets-muraux" },
        { id: "equerres-renforcees", name: "Staff e angolari rinforzati", slug: "equerres-renforcees" },
        { id: "pitons", name: "Ganci avvitati", slug: "pitons" },
        { id: "serre-cables", name: "Fascette", slug: "serre-cables" }
      ]
    },
    {
      id: "quincaillerie-porte-fenetre",
      name: "Ferramenta per porte & finestre",
      slug: "quincaillerie-porte-fenetre",
      icon: <Lock className="w-3 h-3" />,
      subcategories: [
        { id: "serrures-a-cle", name: "Serrature a chiave", slug: "serrures-a-cle" },
        { id: "serrures-multipoints", name: "Serrature multipunto", slug: "serrures-multipoints" },
        { id: "cylindres-europeens", name: "Cilindri europei", slug: "cylindres-europeens" },
        { id: "poignees-de-porte", name: "Maniglie per porte", slug: "poignees-de-porte" },
        { id: "poignees-de-fenetre", name: "Maniglie per finestre", slug: "poignees-de-fenetre" },
        { id: "paumelles", name: "Cerniere", slug: "paumelles" },
        { id: "charnieres-renforcees", name: "Cerniere rinforzate", slug: "charnieres-renforcees" },
        { id: "verrous", name: "Catenacci", slug: "verrous" },
        { id: "loquets", name: "Scrocchi", slug: "loquets" },
        { id: "cremones", name: "Cremones", slug: "cremones" },
        { id: "butees-de-porte", name: "Ferma porte", slug: "butees-de-porte" },
        { id: "heurtoirs", name: "Battenti", slug: "heurtoirs" },
        { id: "arrets-de-porte-magnetiques", name: "Ferma porte magnetici", slug: "arrets-de-porte-magnetiques" },
        { id: "joints-detancheite", name: "Guarnizioni", slug: "joints-detancheite" }
      ]
    },
    {
      id: "securite-protection",
      name: "Sicurezza & protezione",
      slug: "securite-protection",
      icon: <Shield className="w-3 h-3" />,
      subcategories: [
        { id: "cadenas-standards", name: "Lucchetti standard", slug: "cadenas-standards" },
        { id: "cadenas-haute-securite", name: "Lucchetti alta sicurezza", slug: "cadenas-haute-securite" },
        { id: "antivols-portes-portails", name: "Antifurti per porte e cancelli", slug: "antivols-portes-portails" },
        { id: "chaines-renforcees", name: "Catene rinforzate", slug: "chaines-renforcees" },
        { id: "gants-de-protection", name: "Guanti protettivi", slug: "gants-de-protection" },
        { id: "gants-anti-coupure", name: "Guanti antitaglio", slug: "gants-anti-coupure" },
        { id: "lunettes-de-securite", name: "Occhiali di sicurezza", slug: "lunettes-de-securite" },
        { id: "visieres", name: "Visiere", slug: "visieres" },
        { id: "casques-de-chantier", name: "Caschi da cantiere", slug: "casques-de-chantier" },
        { id: "chaussures-de-securite", name: "Scarpe antinfortunistiche", slug: "chaussures-de-securite" },
        { id: "genouilleres", name: "Ginocchiere", slug: "genouilleres" },
        { id: "masques-anti-poussiere", name: "Maschere antipolvere", slug: "masques-anti-poussiere" },
        { id: "harnais-de-securite", name: "Imbracature di sicurezza", slug: "harnais-de-securite" }
      ]
    },
    {
      id: "materiel-de-plomberie",
      name: "Idraulica",
      slug: "materiel-de-plomberie",
      icon: <Droplet className="w-3 h-3" />,
      subcategories: [
        { id: "robinets", name: "Rubinetti", slug: "robinets" },
        { id: "mitigeurs", name: "Miscelatori", slug: "mitigeurs" },
        { id: "flexibles", name: "Tubi flessibili", slug: "flexibles" },
        { id: "raccords-pvc", name: "Raccordi PVC", slug: "raccords-pvc" },
        { id: "raccords-multicouches", name: "Raccordi multistrato", slug: "raccords-multicouches" },
        { id: "raccords-laiton", name: "Raccordi in ottone", slug: "raccords-laiton" },
        { id: "tuyaux-pvc", name: "Tubi PVC", slug: "tuyaux-pvc" },
        { id: "tuyaux-per", name: "Tubi PER", slug: "tuyaux-per" },
        { id: "siphons", name: "Sifoni", slug: "siphons" },
        { id: "joints-fibre", name: "Guarnizioni in fibra", slug: "joints-fibre" },
        { id: "joints-caoutchouc", name: "Guarnizioni in gomma", slug: "joints-caoutchouc" },
        { id: "colliers-de-serrage", name: "Fascette stringitubo", slug: "colliers-de-serrage" },
        { id: "vannes-d-arret", name: "Valvole di arresto", slug: "vannes-d-arret" },
        { id: "bondes", name: "Sifoni di scarico", slug: "bondes" },
        { id: "filtres-anti-calcaire", name: "Filtri anticalcare", slug: "filtres-anti-calcaire" },
        { id: "tubes-devacuation", name: "Tubi di scarico", slug: "tubes-devacuation" },
        { id: "coudes", name: "Gomiti", slug: "coudes" },
        { id: "tes", name: "Raccordi a T", slug: "tes" },
        { id: "reductions", name: "Riduzioni", slug: "reductions" }
      ]
    },
    {
      id: "materiel-electrique",
      name: "Elettrico",
      slug: "materiel-electrique",
      icon: <Plug className="w-3 h-3" />,
      subcategories: [
        { id: "prises-murales", name: "Prese a muro", slug: "prises-murales" },
        { id: "prises-renforcees", name: "Prese rinforzate", slug: "prises-renforcees" },
        { id: "interrupteurs-simples", name: "Interruttori", slug: "interrupteurs-simples" },
        { id: "interrupteurs-va-et-vient", name: "Invertitori", slug: "interrupteurs-va-et-vient" },
        { id: "interrupteurs-automatiques", name: "Interruttori automatici", slug: "interrupteurs-automatiques" },
        { id: "cables-electriques-rigides", name: "Cavi rigidi", slug: "cables-electriques-rigides" },
        { id: "cables-souples", name: "Cavi flessibili", slug: "cables-souples" },
        { id: "gaines-isolantes", name: "Guaina isolante", slug: "gaines-isolantes" },
        { id: "gaines-icta", name: "Guaina ICTA", slug: "gaines-icta" },
        { id: "disjoncteurs", name: "Interruttori magnetotermici", slug: "disjoncteurs" },
        { id: "tableaux-electriques", name: "Quadri elettrici", slug: "tableaux-electriques" },
        { id: "coffrets", name: "Scatole", slug: "coffrets" },
        { id: "transformateurs", name: "Trasformatori", slug: "transformateurs" },
        { id: "multiprises", name: "Ciabatte", slug: "multiprises" },
        { id: "rallonges", name: "Prolunghe", slug: "rallonges" },
        { id: "connecteurs-rapides", name: "Connettori rapidi", slug: "connecteurs-rapides" },
        { id: "dominos", name: "Morsetti", slug: "dominos" },
        { id: "goulottes-murales", name: "Canaline", slug: "goulottes-murales" }
      ]
    },
    {
      id: "colles-adhesifs",
      name: "Collanti & adesivi",
      slug: "colles-adhesifs",
      icon: <Box className="w-3 h-3" />,
      subcategories: [
        { id: "colles-fortes", name: "Collanti forti", slug: "colles-fortes" },
        { id: "colles-universelles", name: "Collanti universali", slug: "colles-universelles" },
        { id: "colles-pvc", name: "Collanti PVC", slug: "colles-pvc" },
        { id: "colles-a-bois", name: "Colla per legno", slug: "colles-a-bois" },
        { id: "epoxy", name: "Epossidica", slug: "epoxy" },
        { id: "silicone", name: "Silicone", slug: "silicone" },
        { id: "mastic", name: "Mastice", slug: "mastic" },
        { id: "adhesifs-double-face", name: "Nastri biadesivi", slug: "adhesifs-double-face" },
        { id: "ruban-isolant", name: "Nastro isolante", slug: "ruban-isolant" },
        { id: "ruban-toile", name: "Nastro telato", slug: "ruban-toile" },
        { id: "ruban-arme", name: "Nastro rinforzato", slug: "ruban-arme" },
        { id: "ruban-de-masquage", name: "Nastro mascherante", slug: "ruban-de-masquage" },
        { id: "colles-de-montage", name: "Collanti di montaggio", slug: "colles-de-montage" }
      ]
    },
    {
      id: "produits-soudure-brasage",
      name: "Saldatura & brasatura",
      slug: "produits-soudure-brasage",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "fers-a-souder", name: "Saldatori", slug: "fers-a-souder" },
        { id: "stations-de-soudure", name: "Stazioni di saldatura", slug: "stations-de-soudure" },
        { id: "etain", name: "Stagno", slug: "etain" },
        { id: "chalumeaux-gaz", name: "Cannelli a gas", slug: "chalumeaux-gaz" },
        { id: "baguettes-de-soudure", name: "Bacchette di saldatura", slug: "baguettes-de-soudure" },
        { id: "baguettes-de-brasage", name: "Bacchette di brasatura", slug: "baguettes-de-brasage" },
        { id: "masques-de-soudure", name: "Maschere di saldatura", slug: "masques-de-soudure" },
        { id: "visieres-de-protection", name: "Visiere protettive", slug: "visieres-de-protection" },
        { id: "flux-decapants", name: "Flussante", slug: "flux-decapants" }
      ]
    },
    {
      id: "outillage-de-mesure",
      name: "Strumenti di misura",
      slug: "outillage-de-mesure",
      icon: <Ruler className="w-3 h-3" />,
      subcategories: [
        { id: "metres-ruban", name: "Flessometri", slug: "metres-ruban" },
        { id: "metres-laser", name: "Misuratori laser", slug: "metres-laser" },
        { id: "telemetres-laser", name: "Telemetri laser", slug: "telemetres-laser" },
        { id: "niveaux-laser", name: "Livelli laser", slug: "niveaux-laser" },
        { id: "niveaux-a-bulle", name: "Livelle a bolla", slug: "niveaux-a-bulle" },
        { id: "equerres-metalliques", name: "Squadre metalliche", slug: "equerres-metalliques" },
        { id: "rapporteurs", name: "Goniometri", slug: "rapporteurs" },
        { id: "pieds-a-coulisse", name: "Calibri", slug: "pieds-a-coulisse" },
        { id: "detecteurs-de-cables", name: "Rilevatori di cavi", slug: "detecteurs-de-cables" },
        { id: "detecteurs-de-metaux", name: "Metal detector", slug: "detecteurs-de-metaux" }
      ]
    },
    {
      id: "rangements-organisation",
      name: "Stoccaggio & organizzazione",
      slug: "rangements-organisation",
      icon: <Box className="w-3 h-3" />,
      subcategories: [
        { id: "boites-a-outils", name: "Cassette degli attrezzi", slug: "boites-a-outils" },
        { id: "boites-compartimentees", name: "Scatole scompartimentate", slug: "boites-compartimentees" },
        { id: "caisses-metalliques", name: "Cassette metalliche", slug: "caisses-metalliques" },
        { id: "organiseurs", name: "Organizer", slug: "organiseurs" },
        { id: "valises-de-rangement", name: "Valigie di stoccaggio", slug: "valises-de-rangement" },
        { id: "chariots-de-manutention", name: "Carrelli di movimentazione", slug: "chariots-de-manutention" },
        { id: "etagieres-metalliques", name: "Mensole metalliche", slug: "etagieres-metalliques" },
        { id: "coffres-de-chantier", name: "Bauli da cantiere", slug: "coffres-de-chantier" },
        { id: "supports-muraux", name: "Supporti a parete", slug: "supports-muraux" }
      ]
    },
    {
      id: "materiaux-metalliques-accessoires",
      name: "Materiali metallici & accessori",
      slug: "materiaux-metalliques-accessoires",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "barres-metalliques", name: "Barre metalliche", slug: "barres-metalliques" },
        { id: "barres-dacier", name: "Barre di acciaio", slug: "barres-dacier" },
        { id: "profils-aluminium", name: "Profili in alluminio", slug: "profils-aluminium" },
        { id: "profils-inox", name: "Profili inox", slug: "profils-inox" },
        { id: "grillages-soudes", name: "Reti saldate", slug: "grillages-soudes" },
        { id: "panneaux-grillages", name: "Pannelli retinati", slug: "panneaux-grillages" },
        { id: "chaines-metalliques", name: "Catene metalliche", slug: "chaines-metalliques" },
        { id: "cables-acier", name: "Cavi d’acciaio", slug: "cables-acier" },
        { id: "tendeurs", name: "Tiranti", slug: "tendeurs" },
        { id: "cornieres", name: "Angolari", slug: "cornieres" },
        { id: "tubes-metalliques", name: "Tubi metallici", slug: "tubes-metalliques" }
      ]
    },
    {
      id: "peinture-preparation",
      name: "Vernici & preparazione",
      slug: "peinture-preparation",
      icon: <Paintbrush className="w-3 h-3" />,
      subcategories: [
        { id: "pinceaux-plats", name: "Pennelli piatti", slug: "pinceaux-plats" },
        { id: "pinceaux-ronds", name: "Pennelli rotondi", slug: "pinceaux-ronds" },
        { id: "rouleaux-anti-goutte", name: "Rulli antigoccia", slug: "rouleaux-anti-goutte" },
        { id: "rouleaux-laqueurs", name: "Rulli per smalti", slug: "rouleaux-laqueurs" },
        { id: "bacs-a-peinture", name: "Vaschette per pittura", slug: "bacs-a-peinture" },
        { id: "grilles", name: "Griglie", slug: "grilles" },
        { id: "abrasifs", name: "Abrasivi", slug: "abrasifs" },
        { id: "papiers-de-verre", name: "Carte abrasive", slug: "papiers-de-verre" },
        { id: "enduits-de-finition", name: "Stucco di finitura", slug: "enduits-de-finition" },
        { id: "apprets", name: "Primer", slug: "apprets" },
        { id: "baches-de-protection", name: "Teli protettivi", slug: "baches-de-protection" },
        { id: "rubans-de-masquage", name: "Nastro di mascheratura", slug: "rubans-de-masquage" },
        { id: "solvants", name: "Solventi", slug: "solvants" }
      ]
    },
    {
      id: "jardinerie-bricolage-leger",
      name: "Giardinaggio & fai-da-te leggero",
      slug: "jardinerie-bricolage-leger",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "petits-outils-de-jardin", name: "Piccoli attrezzi da giardino", slug: "petits-outils-de-jardin" },
        { id: "secateurs", name: "Cesoie", slug: "secateurs" },
        { id: "elagueurs", name: "Sramatori", slug: "elagueurs" },
        { id: "pulverisateurs", name: "Spruzzatori", slug: "pulverisateurs" },
        { id: "arrosoirs", name: "Annaffiatoi", slug: "arrosoirs" },
        { id: "mini-outils-de-plantation", name: "Mini attrezzi per piantare", slug: "mini-outils-de-plantation" },
        { id: "rateaux", name: "Rastrelli", slug: "rateaux" },
        { id: "griffes", name: "Zappette", slug: "griffes" },
        { id: "kits-de-reparation-jardin", name: "Kit riparazione giardino", slug: "kits-de-reparation-jardin" },
        { id: "gants-de-jardinage", name: "Guanti da giardinaggio", slug: "gants-de-jardinage" }
      ]
    },
    {
      id: "accessoires-divers",
      name: "Accessori vari",
      slug: "accessoires-divers",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "joints-varies", name: "Guarnizioni varie", slug: "joints-varies" },
        { id: "poignees-diverses", name: "Maniglie varie", slug: "poignees-diverses" },
        { id: "boutons-de-meuble", name: "Pomelli per mobili", slug: "boutons-de-meuble" },
        { id: "pieds-de-meubles", name: "Piedi per mobili", slug: "pieds-de-meubles" },
        { id: "roulettes-de-deplacement", name: "Ruote di movimentazione", slug: "roulettes-de-deplacement" },
        { id: "ressorts", name: "Molle", slug: "ressorts" },
        { id: "aimants", name: "Magneti", slug: "aimants" },
        { id: "patins-anti-derapants", name: "Pattini antiscivolo", slug: "patins-anti-derapants" },
        { id: "embouts-divers", name: "Punte varie", slug: "embouts-divers" },
        { id: "cales", name: "Spessori", slug: "cales" },
        { id: "supports-multi-usages", name: "Supporti multiuso", slug: "supports-multi-usages" }
      ]
    }
  ]
};