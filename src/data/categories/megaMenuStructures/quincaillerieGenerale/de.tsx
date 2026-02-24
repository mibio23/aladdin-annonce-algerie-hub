import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Wrench, Hammer, Drill, Shield, Lock, Plug, Droplet, Ruler, Paintbrush, Box } from "lucide-react";

export const quincaillerieGeneraleDe: MenuCategory = {
  id: "quincaillerie-generale",
  name: "Eisenwaren Allgemein",
  slug: "quincaillerie-generale",
  icon: <Wrench className="w-4 h-4" />,
  subcategories: [
    {
      id: "outils-manuels",
      name: "Handwerkzeuge",
      slug: "outils-manuels",
      icon: <Hammer className="w-3 h-3" />,
      subcategories: [
        { id: "tournevis-plats", name: "Schlitzschraubendreher", slug: "tournevis-plats" },
        { id: "tournevis-cruciformes", name: "Kreuzschlitzschraubendreher", slug: "tournevis-cruciformes" },
        { id: "tournevis-de-precision", name: "Präzisionsschraubendreher", slug: "tournevis-de-precision" },
        { id: "marteaux-de-menuisier", name: "Zimmermannshämmer", slug: "marteaux-de-menuisier" },
        { id: "marteaux-de-macon", name: "Maurerhämmer", slug: "marteaux-de-macon" },
        { id: "pinces-universelles", name: "Universalzangen", slug: "pinces-universelles" },
        { id: "pinces-coupantes", name: "Seitenschneider", slug: "pinces-coupantes" },
        { id: "pinces-multiprises", name: "Wasserpumpenzangen", slug: "pinces-multiprises" },
        { id: "cles-plates", name: "Maulschlüssel", slug: "cles-plates" },
        { id: "cles-mixtes", name: "Kombischlüssel", slug: "cles-mixtes" },
        { id: "cle-a-molette", name: "Rollgabelschlüssel", slug: "cle-a-molette" },
        { id: "cles-allen", name: "Innensechskantschlüssel", slug: "cles-allen" },
        { id: "scies-manuelles", name: "Handsägen", slug: "scies-manuelles" },
        { id: "scies-a-metaux", name: "Metallsägen", slug: "scies-a-metaux" },
        { id: "cutters", name: "Cuttermesser", slug: "cutters" },
        { id: "grattoirs", name: "Schaber", slug: "grattoirs" },
        { id: "ciseaux-a-bois", name: "Holzmeißel", slug: "ciseaux-a-bois" },
        { id: "jeux-de-douilles", name: "Steckschlüsselsätze", slug: "jeux-de-douilles" },
        { id: "cliquets", name: "Ratschen", slug: "cliquets" },
        { id: "niveaux-a-bulle", name: "Wasserwaagen", slug: "niveaux-a-bulle" },
        { id: "serre-joints", name: "Schraubzwingen", slug: "serre-joints" },
        { id: "limes", name: "Feilen", slug: "limes" },
        { id: "rabots", name: "Hobel", slug: "rabots" },
        { id: "maillets", name: "Schonhämmer", slug: "maillets" },
        { id: "scies-egoines", name: "Fuchsschwänze", slug: "scies-egoines" },
        { id: "scies-japonaises", name: "Japansägen", slug: "scies-japonaises" }
      ]
    },
    {
      id: "outils-electriques-electroportatifs",
      name: "Elektro- & Akkuwerkzeuge",
      slug: "outils-electriques-electroportatifs",
      icon: <Drill className="w-3 h-3" />,
      subcategories: [
        { id: "perceuses", name: "Bohrmaschinen", slug: "perceuses" },
        { id: "perceuses-a-percussion", name: "Schlagbohrmaschinen", slug: "perceuses-a-percussion" },
        { id: "perceuses-sans-fil", name: "Akkubohrer", slug: "perceuses-sans-fil" },
        { id: "visseuses", name: "Schrauber", slug: "visseuses" },
        { id: "visseuses-a-choc", name: "Schlagschrauber", slug: "visseuses-a-choc" },
        { id: "meuleuses", name: "Schleifer", slug: "meuleuses" },
        { id: "meuleuses-d-angle", name: "Winkelschleifer", slug: "meuleuses-d-angle" },
        { id: "scies-electriques", name: "Elektrische Sägen", slug: "scies-electriques" },
        { id: "scies-circulaires", name: "Kreissägen", slug: "scies-circulaires" },
        { id: "scies-sauteuses", name: "Stichsägen", slug: "scies-sauteuses" },
        { id: "scies-sabres", name: "Säbelsägen", slug: "scies-sabres" },
        { id: "ponceuses-orbitales", name: "Exzenterschleifer", slug: "ponceuses-orbitales" },
        { id: "ponceuses-vibrantes", name: "Vibrationsschleifer", slug: "ponceuses-vibrantes" },
        { id: "ponceuses-a-bande", name: "Bandschleifer", slug: "ponceuses-a-bande" },
        { id: "marteaux-perforateurs", name: "Bohrhämmer", slug: "marteaux-perforateurs" },
        { id: "defonceuses", name: "Fräsen", slug: "defonceuses" },
        { id: "pistolets-a-chaleur", name: "Heißluftgebläse", slug: "pistolets-a-chaleur" },
        { id: "pistolets-a-colle", name: "Heißklebepistolen", slug: "pistolets-a-colle" },
        { id: "agrafeuses-electriques", name: "Elektrotacker", slug: "agrafeuses-electriques" },
        { id: "decoupeurs-multifonctions", name: "Multifunktionsschneider", slug: "decoupeurs-multifonctions" }
      ]
    },
    {
      id: "materiel-de-fixation",
      name: "Befestigungsmaterial",
      slug: "materiel-de-fixation",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "vis-bois", name: "Holzschrauben", slug: "vis-bois" },
        { id: "vis-metal", name: "Metallschrauben", slug: "vis-metal" },
        { id: "vis-auto-perceuses", name: "Selbstbohrende Schrauben", slug: "vis-auto-perceuses" },
        { id: "vis-placo", name: "Gipskartonschrauben", slug: "vis-placo" },
        { id: "boulons", name: "Bolzen", slug: "boulons" },
        { id: "ecrous", name: "Muttern", slug: "ecrous" },
        { id: "rondelles-plates", name: "Scheiben", slug: "rondelles-plates" },
        { id: "rondelles-frein", name: "Federringe", slug: "rondelles-frein" },
        { id: "chevilles-classiques", name: "Standarddübel", slug: "chevilles-classiques" },
        { id: "chevilles-molly", name: "Mollydübel", slug: "chevilles-molly" },
        { id: "chevilles-metalliques", name: "Metalldübel", slug: "chevilles-metalliques" },
        { id: "chevilles-chimiques", name: "Chemische Dübel", slug: "chevilles-chimiques" },
        { id: "rivets", name: "Nieten", slug: "rivets" },
        { id: "clous", name: "Nägel", slug: "clous" },
        { id: "pointes", name: "Stifte", slug: "pointes" },
        { id: "crochets-muraux", name: "Wandhaken", slug: "crochets-muraux" },
        { id: "equerres-renforcees", name: "Verstärkte Winkel", slug: "equerres-renforcees" },
        { id: "pitons", name: "Schraubösen", slug: "pitons" },
        { id: "serre-cables", name: "Kabelbinder", slug: "serre-cables" }
      ]
    },
    {
      id: "quincaillerie-porte-fenetre",
      name: "Tür- & Fensterbeschläge",
      slug: "quincaillerie-porte-fenetre",
      icon: <Lock className="w-3 h-3" />,
      subcategories: [
        { id: "serrures-a-cle", name: "Schlösser", slug: "serrures-a-cle" },
        { id: "serrures-multipoints", name: "Mehrfachverriegelungen", slug: "serrures-multipoints" },
        { id: "cylindres-europeens", name: "Eurozylinder", slug: "cylindres-europeens" },
        { id: "poignees-de-porte", name: "Türgriffe", slug: "poignees-de-porte" },
        { id: "poignees-de-fenetre", name: "Fenstergriffe", slug: "poignees-de-fenetre" },
        { id: "paumelles", name: "Scharniere", slug: "paumelles" },
        { id: "charnieres-renforcees", name: "Verstärkte Scharniere", slug: "charnieres-renforcees" },
        { id: "verrous", name: "Riegel", slug: "verrous" },
        { id: "loquets", name: "Klinken", slug: "loquets" },
        { id: "cremones", name: "Kremonen", slug: "cremones" },
        { id: "butees-de-porte", name: "Türstopper", slug: "butees-de-porte" },
        { id: "heurtoirs", name: "Türklopfer", slug: "heurtoirs" },
        { id: "arrets-de-porte-magnetiques", name: "Magnetische Türhalter", slug: "arrets-de-porte-magnetiques" },
        { id: "joints-detancheite", name: "Dichtungen", slug: "joints-detancheite" }
      ]
    },
    {
      id: "securite-protection",
      name: "Sicherheit & Schutz",
      slug: "securite-protection",
      icon: <Shield className="w-3 h-3" />,
      subcategories: [
        { id: "cadenas-standards", name: "Standardvorhängeschlösser", slug: "cadenas-standards" },
        { id: "cadenas-haute-securite", name: "Hochsicherheitsschlösser", slug: "cadenas-haute-securite" },
        { id: "antivols-portes-portails", name: "Sicherungen für Türen & Tore", slug: "antivols-portes-portails" },
        { id: "chaines-renforcees", name: "Verstärkte Ketten", slug: "chaines-renforcees" },
        { id: "gants-de-protection", name: "Schutzhandschuhe", slug: "gants-de-protection" },
        { id: "gants-anti-coupure", name: "Schnittfeste Handschuhe", slug: "gants-anti-coupure" },
        { id: "lunettes-de-securite", name: "Schutzbrillen", slug: "lunettes-de-securite" },
        { id: "visieres", name: "Gesichtsschutz", slug: "visieres" },
        { id: "casques-de-chantier", name: "Bauhelme", slug: "casques-de-chantier" },
        { id: "chaussures-de-securite", name: "Sicherheitsschuhe", slug: "chaussures-de-securite" },
        { id: "genouilleres", name: "Knieschoner", slug: "genouilleres" },
        { id: "masques-anti-poussiere", name: "Staubmasken", slug: "masques-anti-poussiere" },
        { id: "harnais-de-securite", name: "Sicherheitsgurte", slug: "harnais-de-securite" }
      ]
    },
    {
      id: "materiel-de-plomberie",
      name: "Sanitär",
      slug: "materiel-de-plomberie",
      icon: <Droplet className="w-3 h-3" />,
      subcategories: [
        { id: "robinets", name: "Armaturen", slug: "robinets" },
        { id: "mitigeurs", name: "Mischer", slug: "mitigeurs" },
        { id: "flexibles", name: "Schläuche", slug: "flexibles" },
        { id: "raccords-pvc", name: "PVC-Fittings", slug: "raccords-pvc" },
        { id: "raccords-multicouches", name: "Mehrschicht-Fittings", slug: "raccords-multicouches" },
        { id: "raccords-laiton", name: "Messing-Fittings", slug: "raccords-laiton" },
        { id: "tuyaux-pvc", name: "PVC-Rohre", slug: "tuyaux-pvc" },
        { id: "tuyaux-per", name: "PER-Rohre", slug: "tuyaux-per" },
        { id: "siphons", name: "Siphons", slug: "siphons" },
        { id: "joints-fibre", name: "Faserdichtungen", slug: "joints-fibre" },
        { id: "joints-caoutchouc", name: "Gummidichtungen", slug: "joints-caoutchouc" },
        { id: "colliers-de-serrage", name: "Schlauchschellen", slug: "colliers-de-serrage" },
        { id: "vannes-d-arret", name: "Absperrventile", slug: "vannes-d-arret" },
        { id: "bondes", name: "Abläufe", slug: "bondes" },
        { id: "filtres-anti-calcaire", name: "Entkalkerfilter", slug: "filtres-anti-calcaire" },
        { id: "tubes-devacuation", name: "Abflussrohre", slug: "tubes-devacuation" },
        { id: "coudes", name: "Bögen", slug: "coudes" },
        { id: "tes", name: "T-Stücke", slug: "tes" },
        { id: "reductions", name: "Reduzierungen", slug: "reductions" }
      ]
    },
    {
      id: "materiel-electrique",
      name: "Elektrik",
      slug: "materiel-electrique",
      icon: <Plug className="w-3 h-3" />,
      subcategories: [
        { id: "prises-murales", name: "Steckdosen", slug: "prises-murales" },
        { id: "prises-renforcees", name: "Verstärkte Steckdosen", slug: "prises-renforcees" },
        { id: "interrupteurs-simples", name: "Schalter", slug: "interrupteurs-simples" },
        { id: "interrupteurs-va-et-vient", name: "Wechselschalter", slug: "interrupteurs-va-et-vient" },
        { id: "interrupteurs-automatiques", name: "Automatikschalter", slug: "interrupteurs-automatiques" },
        { id: "cables-electriques-rigides", name: "Starre Kabel", slug: "cables-electriques-rigides" },
        { id: "cables-souples", name: "Flexible Kabel", slug: "cables-souples" },
        { id: "gaines-isolantes", name: "Isolierschläuche", slug: "gaines-isolantes" },
        { id: "gaines-icta", name: "ICTA-Leerrohre", slug: "gaines-icta" },
        { id: "disjoncteurs", name: "Leitungsschutzschalter", slug: "disjoncteurs" },
        { id: "tableaux-electriques", name: "Verteilerkästen", slug: "tableaux-electriques" },
        { id: "coffrets", name: "Gehäuse", slug: "coffrets" },
        { id: "transformateurs", name: "Transformatoren", slug: "transformateurs" },
        { id: "multiprises", name: "Steckdosenleisten", slug: "multiprises" },
        { id: "rallonges", name: "Verlängerungskabel", slug: "rallonges" },
        { id: "connecteurs-rapides", name: "Schnellverbinder", slug: "connecteurs-rapides" },
        { id: "dominos", name: "Lüsterklemmen", slug: "dominos" },
        { id: "goulottes-murales", name: "Kabelkanäle", slug: "goulottes-murales" }
      ]
    },
    {
      id: "colles-adhesifs",
      name: "Klebstoffe & Klebebänder",
      slug: "colles-adhesifs",
      icon: <Box className="w-3 h-3" />,
      subcategories: [
        { id: "colles-fortes", name: "Starkkleber", slug: "colles-fortes" },
        { id: "colles-universelles", name: "Universalkleber", slug: "colles-universelles" },
        { id: "colles-pvc", name: "PVC-Kleber", slug: "colles-pvc" },
        { id: "colles-a-bois", name: "Holzleime", slug: "colles-a-bois" },
        { id: "epoxy", name: "Epoxidharz", slug: "epoxy" },
        { id: "silicone", name: "Silikon", slug: "silicone" },
        { id: "mastic", name: "Dichtmasse", slug: "mastic" },
        { id: "adhesifs-double-face", name: "Doppelseitige Klebebänder", slug: "adhesifs-double-face" },
        { id: "ruban-isolant", name: "Isolierband", slug: "ruban-isolant" },
        { id: "ruban-toile", name: "Gewebeband", slug: "ruban-toile" },
        { id: "ruban-arme", name: "Verstärktes Band", slug: "ruban-arme" },
        { id: "ruban-de-masquage", name: "Abklebeband", slug: "ruban-de-masquage" },
        { id: "colles-de-montage", name: "Montagekleber", slug: "colles-de-montage" }
      ]
    },
    {
      id: "produits-soudure-brasage",
      name: "Schweißen & Löten",
      slug: "produits-soudure-brasage",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "fers-a-souder", name: "Lötkolben", slug: "fers-a-souder" },
        { id: "stations-de-soudure", name: "Lötstationen", slug: "stations-de-soudure" },
        { id: "etain", name: "Lötzinn", slug: "etain" },
        { id: "chalumeaux-gaz", name: "Gasbrenner", slug: "chalumeaux-gaz" },
        { id: "baguettes-de-soudure", name: "Schweißstäbe", slug: "baguettes-de-soudure" },
        { id: "baguettes-de-brasage", name: "Lötstäbe", slug: "baguettes-de-brasage" },
        { id: "masques-de-soudure", name: "Schweißmasken", slug: "masques-de-soudure" },
        { id: "visieres-de-protection", name: "Gesichtsschutz", slug: "visieres-de-protection" },
        { id: "flux-decapants", name: "Flussmittel", slug: "flux-decapants" }
      ]
    },
    {
      id: "outillage-de-mesure",
      name: "Messwerkzeuge",
      slug: "outillage-de-mesure",
      icon: <Ruler className="w-3 h-3" />,
      subcategories: [
        { id: "metres-ruban", name: "Bandmaß", slug: "metres-ruban" },
        { id: "metres-laser", name: "Laser-Entfernungsmesser", slug: "metres-laser" },
        { id: "telemetres-laser", name: "Laser-Telemeter", slug: "telemetres-laser" },
        { id: "niveaux-laser", name: "Laser-Nivelliergeräte", slug: "niveaux-laser" },
        { id: "niveaux-a-bulle", name: "Wasserwaagen", slug: "niveaux-a-bulle" },
        { id: "equerres-metalliques", name: "Metallwinkel", slug: "equerres-metalliques" },
        { id: "rapporteurs", name: "Winkelmesser", slug: "rapporteurs" },
        { id: "pieds-a-coulisse", name: "Messschieber", slug: "pieds-a-coulisse" },
        { id: "detecteurs-de-cables", name: "Kabeldetektoren", slug: "detecteurs-de-cables" },
        { id: "detecteurs-de-metaux", name: "Metalldetektoren", slug: "detecteurs-de-metaux" }
      ]
    },
    {
      id: "rangements-organisation",
      name: "Aufbewahrung & Organisation",
      slug: "rangements-organisation",
      icon: <Box className="w-3 h-3" />,
      subcategories: [
        { id: "boites-a-outils", name: "Werkzeugkisten", slug: "boites-a-outils" },
        { id: "boites-compartimentees", name: "Sortierboxen", slug: "boites-compartimentees" },
        { id: "caisses-metalliques", name: "Metallkisten", slug: "caisses-metalliques" },
        { id: "organiseurs", name: "Organizer", slug: "organiseurs" },
        { id: "valises-de-rangement", name: "Aufbewahrungskoffer", slug: "valises-de-rangement" },
        { id: "chariots-de-manutention", name: "Transportwagen", slug: "chariots-de-manutention" },
        { id: "etagieres-metalliques", name: "Metallregale", slug: "etagieres-metalliques" },
        { id: "coffres-de-chantier", name: "Baustellenkisten", slug: "coffres-de-chantier" },
        { id: "supports-muraux", name: "Wandhalterungen", slug: "supports-muraux" }
      ]
    },
    {
      id: "materiaux-metalliques-accessoires",
      name: "Metallmaterial & Zubehör",
      slug: "materiaux-metalliques-accessoires",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "barres-metalliques", name: "Metallstangen", slug: "barres-metalliques" },
        { id: "barres-dacier", name: "Stahlstangen", slug: "barres-dacier" },
        { id: "profils-aluminium", name: "Aluprofile", slug: "profils-aluminium" },
        { id: "profils-inox", name: "Edelstahlprofile", slug: "profils-inox" },
        { id: "grillages-soudes", name: "Gittermatten", slug: "grillages-soudes" },
        { id: "panneaux-grillages", name: "Gitterpaneele", slug: "panneaux-grillages" },
        { id: "chaines-metalliques", name: "Metallketten", slug: "chaines-metalliques" },
        { id: "cables-acier", name: "Stahlseile", slug: "cables-acier" },
        { id: "tendeurs", name: "Spannschrauben", slug: "tendeurs" },
        { id: "cornieres", name: "Winkelprofile", slug: "cornieres" },
        { id: "tubes-metalliques", name: "Metallrohre", slug: "tubes-metalliques" }
      ]
    },
    {
      id: "peinture-preparation",
      name: "Malen & Vorbereitung",
      slug: "peinture-preparation",
      icon: <Paintbrush className="w-3 h-3" />,
      subcategories: [
        { id: "pinceaux-plats", name: "Flachpinsel", slug: "pinceaux-plats" },
        { id: "pinceaux-ronds", name: "Rundpinsel", slug: "pinceaux-ronds" },
        { id: "rouleaux-anti-goutte", name: "Tropffreie Rollen", slug: "rouleaux-anti-goutte" },
        { id: "rouleaux-laqueurs", name: "Lackierrollen", slug: "rouleaux-laqueurs" },
        { id: "bacs-a-peinture", name: "Farbwannen", slug: "bacs-a-peinture" },
        { id: "grilles", name: "Abstreifgitter", slug: "grilles" },
        { id: "abrasifs", name: "Schleifmittel", slug: "abrasifs" },
        { id: "papiers-de-verre", name: "Schleifpapier", slug: "papiers-de-verre" },
        { id: "enduits-de-finition", name: "Feinspachtel", slug: "enduits-de-finition" },
        { id: "apprets", name: "Grundierungen", slug: "apprets" },
        { id: "baches-de-protection", name: "Schutzplanen", slug: "baches-de-protection" },
        { id: "rubans-de-masquage", name: "Abdeckbänder", slug: "rubans-de-masquage" },
        { id: "solvants", name: "Lösungsmittel", slug: "solvants" }
      ]
    },
    {
      id: "jardinerie-bricolage-leger",
      name: "Garten & leichtes Heimwerken",
      slug: "jardinerie-bricolage-leger",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "petits-outils-de-jardin", name: "Kleine Gartengeräte", slug: "petits-outils-de-jardin" },
        { id: "secateurs", name: "Gartenscheren", slug: "secateurs" },
        { id: "elagueurs", name: "Astscheren", slug: "elagueurs" },
        { id: "pulverisateurs", name: "Sprühgeräte", slug: "pulverisateurs" },
        { id: "arrosoirs", name: "Gießkannen", slug: "arrosoirs" },
        { id: "mini-outils-de-plantation", name: "Pflanzwerkzeuge", slug: "mini-outils-de-plantation" },
        { id: "rateaux", name: "Rechen", slug: "rateaux" },
        { id: "griffes", name: "Kralle", slug: "griffes" },
        { id: "kits-de-reparation-jardin", name: "Gartenreparatursets", slug: "kits-de-reparation-jardin" },
        { id: "gants-de-jardinage", name: "Gartenhandschuhe", slug: "gants-de-jardinage" }
      ]
    },
    {
      id: "accessoires-divers",
      name: "Diverse Zubehör",
      slug: "accessoires-divers",
      icon: <Wrench className="w-3 h-3" />,
      subcategories: [
        { id: "joints-varies", name: "Verschiedene Dichtungen", slug: "joints-varies" },
        { id: "poignees-diverses", name: "Verschiedene Griffe", slug: "poignees-diverses" },
        { id: "boutons-de-meuble", name: "Möbelknöpfe", slug: "boutons-de-meuble" },
        { id: "pieds-de-meubles", name: "Möbelfüße", slug: "pieds-de-meubles" },
        { id: "roulettes-de-deplacement", name: "Transportrollen", slug: "roulettes-de-deplacement" },
        { id: "ressorts", name: "Federn", slug: "ressorts" },
        { id: "aimants", name: "Magnete", slug: "aimants" },
        { id: "patins-anti-derapants", name: "Antirutschpads", slug: "patins-anti-derapants" },
        { id: "embouts-divers", name: "Verschiedene Endstücke", slug: "embouts-divers" },
        { id: "cales", name: "Unterlegkeile", slug: "cales" },
        { id: "supports-multi-usages", name: "Mehrzweckhalter", slug: "supports-multi-usages" }
      ]
    }
  ]
};