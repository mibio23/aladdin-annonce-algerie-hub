import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Briefcase } from "lucide-react";

export const sacsEtBagagesFr: MenuCategory = {
  id: "sacs-et-bagages",
  name: "Sacs & Bagages",
  slug: "sacs-et-bagages",
  icon: <Briefcase className="w-4 h-4" />,
  subcategories: [
    {
      id: "sacs-a-main",
      name: "Sacs à main (femme & unisexe)",
      slug: "sacs-a-main",
      subcategories: [
        { id: "cabas-grand", name: "Cabas grand", slug: "cabas-grand" },
        { id: "cabas-moyen", name: "Cabas moyen", slug: "cabas-moyen" },
        { id: "cabas-rigide", name: "Cabas rigide", slug: "cabas-rigide" },
        { id: "cabas-souple", name: "Cabas souple", slug: "cabas-souple" },
        { id: "bandouliere-mini", name: "Sacs bandoulière mini", slug: "bandouliere-mini" },
        { id: "bandouliere-moyen", name: "Sacs bandoulière moyen", slug: "bandouliere-moyen" },
        { id: "bandouliere-matelasse", name: "Sacs bandoulière matelassé", slug: "bandouliere-matelasse" },
        { id: "bandouliere-sport", name: "Sacs bandoulière sport", slug: "bandouliere-sport" },
        { id: "sacs-seau", name: "Sacs seau", slug: "sacs-seau" },
        { id: "sacs-tote", name: "Sacs tote", slug: "sacs-tote" },
        { id: "sacs-hobo", name: "Sacs hobo", slug: "sacs-hobo" },
        { id: "sacs-bowling", name: "Sacs bowling", slug: "sacs-bowling" },
        { id: "pochettes-soiree", name: "Pochettes soirée", slug: "pochettes-soiree" },
        { id: "pochettes-mariage", name: "Pochettes mariage", slug: "pochettes-mariage" },
        { id: "pochettes-minimalistes", name: "Pochettes minimalistes", slug: "pochettes-minimalistes" },
        { id: "mini-bags-ville", name: "Mini-bags ville", slug: "mini-bags-ville" },
        { id: "mini-bags-luxe", name: "Mini-bags luxe", slug: "mini-bags-luxe" },
        { id: "sacs-demi-lune", name: "Sacs demi-lune", slug: "sacs-demi-lune" },
        { id: "sacs-en-cuir-veritable", name: "Sacs en cuir véritable", slug: "sacs-en-cuir-veritable" },
        { id: "sacs-en-cuir-synthetique", name: "Sacs en cuir synthétique", slug: "sacs-en-cuir-synthetique" },
        { id: "sacs-en-cuir-artisanal", name: "Sacs en cuir artisanal", slug: "sacs-en-cuir-artisanal" },
        { id: "sacs-en-toile-tissu", name: "Sacs en toile & tissu", slug: "sacs-en-toile-tissu" }
      ]
    },
    {
      id: "sacs-a-dos",
      name: "Sacs à dos",
      slug: "sacs-a-dos",
      subcategories: [
        { id: "urbains", name: "Sacs à dos urbains", slug: "urbains" },
        { id: "antivol", name: "Sacs à dos antivol", slug: "antivol" },
        { id: "business-porte-pc", name: "Sacs à dos business (porte-PC)", slug: "business-porte-pc" },
        { id: "sport", name: "Sacs à dos sport", slug: "sport" },
        { id: "randonnee-20l", name: "Randonnée & trekking 20L", slug: "randonnee-20l" },
        { id: "randonnee-30l", name: "Randonnée & trekking 30L", slug: "randonnee-30l" },
        { id: "randonnee-50l-plus", name: "Randonnée & trekking 50L+", slug: "randonnee-50l-plus" },
        { id: "tactiques-militaires", name: "Sacs tactiques & militaires", slug: "tactiques-militaires" },
        { id: "scolaires-enfant-ado", name: "Sacs à dos scolaires (enfant/ado)", slug: "scolaires-enfant-ado" },
        { id: "minimalistes", name: "Sacs à dos minimalistes", slug: "minimalistes" },
        { id: "voyage-cabine", name: "Sacs à dos voyage cabine", slug: "voyage-cabine" }
      ]
    },
    {
      id: "sacs-voyage-week-end",
      name: "Sacs Voyage & Week-end",
      slug: "sacs-voyage-week-end",
      subcategories: [
        { id: "voyage-souples", name: "Sacs de voyage souples", slug: "voyage-souples" },
        { id: "voyage-semi-rigides", name: "Sacs de voyage semi-rigides", slug: "voyage-semi-rigides" },
        { id: "duffle-bags", name: "Duffle bags", slug: "duffle-bags" },
        { id: "polochon", name: "Sacs polochon", slug: "polochon" },
        { id: "week-end", name: "Sacs week-end", slug: "week-end" },
        { id: "pliables", name: "Sacs pliables", slug: "pliables" },
        { id: "transport-longue-distance", name: "Sacs transport longue distance", slug: "transport-longue-distance" },
        { id: "multi-poches", name: "Sacs multi-poches", slug: "multi-poches" },
        { id: "compartiment-chaussures", name: "Sacs avec compartiment chaussures", slug: "compartiment-chaussures" }
      ]
    },
    {
      id: "valises-bagages",
      name: "Valises & Bagages",
      slug: "valises-bagages",
      subcategories: [
        { id: "cabine-rigides", name: "Valises cabine rigides", slug: "cabine-rigides" },
        { id: "cabine-souples", name: "Valises cabine souples", slug: "cabine-souples" },
        { id: "cabine-extensibles", name: "Valises cabine extensibles", slug: "cabine-extensibles" },
        { id: "valises-medium", name: "Valises médium", slug: "valises-medium" },
        { id: "valises-grandes", name: "Valises grandes tailles", slug: "valises-grandes" },
        { id: "valises-aluminium", name: "Valises aluminium", slug: "valises-aluminium" },
        { id: "sets-valises", name: "Sets de valises", slug: "sets-valises" },
        { id: "valises-enfants", name: "Valises enfants", slug: "valises-enfants" },
        { id: "valises-connectees", name: "Valises connectées", slug: "valises-connectees" },
        { id: "valises-professionnelles", name: "Valises professionnelles", slug: "valises-professionnelles" },
        { id: "bagages-certifies-iata", name: "Bagages certifiés IATA", slug: "bagages-certifies-iata" },
        { id: "valises-securisees-tsa", name: "Valises sécurisées TSA", slug: "valises-securisees-tsa" }
      ]
    },
    {
      id: "maroquinerie",
      name: "Maroquinerie",
      slug: "maroquinerie",
      subcategories: [
        { id: "portefeuilles-zippe", name: "Portefeuilles zippé", slug: "portefeuilles-zippe" },
        { id: "portefeuilles-pliable", name: "Portefeuilles pliable", slug: "portefeuilles-pliable" },
        { id: "portefeuilles-compact", name: "Portefeuilles compact", slug: "portefeuilles-compact" },
        { id: "porte-cartes-metal", name: "Porte-cartes métal", slug: "porte-cartes-metal" },
        { id: "porte-cartes-cuir", name: "Porte-cartes cuir", slug: "porte-cartes-cuir" },
        { id: "porte-cartes-rfid", name: "Porte-cartes RFID", slug: "porte-cartes-rfid" },
        { id: "porte-monnaie", name: "Porte-monnaie", slug: "porte-monnaie" },
        { id: "etuis-pochettes-passeport", name: "Étuis passeport", slug: "etuis-pochettes-passeport" },
        { id: "etuis-documents", name: "Étuis documents", slug: "etuis-documents" },
        { id: "etuis-billets", name: "Étuis billets", slug: "etuis-billets" },
        { id: "mini-sacs-cuir", name: "Mini sacs cuir", slug: "mini-sacs-cuir" },
        { id: "accessoires-luxe", name: "Accessoires luxe", slug: "accessoires-luxe" },
        { id: "petite-maroquinerie-artisanale", name: "Petite maroquinerie artisanale", slug: "petite-maroquinerie-artisanale" }
      ]
    },
    {
      id: "sacs-professionnels",
      name: "Sacs Professionnels",
      slug: "sacs-professionnels",
      subcategories: [
        { id: "porte-ordinateur-13", name: "Sacs porte-ordinateur 13\"", slug: "porte-ordinateur-13" },
        { id: "porte-ordinateur-15", name: "Sacs porte-ordinateur 15\"", slug: "porte-ordinateur-15" },
        { id: "porte-ordinateur-17", name: "Sacs porte-ordinateur 17\"", slug: "porte-ordinateur-17" },
        { id: "sacs-business", name: "Sacs business", slug: "sacs-business" },
        { id: "sacs-documents", name: "Sacs documents", slug: "sacs-documents" },
        { id: "serviettes-attaches-case", name: "Serviettes & attachés-case", slug: "serviettes-attaches-case" },
        { id: "sacs-infirmiers-paramedicaux", name: "Sacs infirmiers/paramédicaux", slug: "sacs-infirmiers-paramedicaux" },
        { id: "sacs-architectes-artistes-tubes", name: "Sacs architectes & artistes (tubes)", slug: "sacs-architectes-artistes-tubes" },
        { id: "sacs-portfolios-a3-a2", name: "Portfolios A3/A2", slug: "sacs-portfolios-a3-a2" },
        { id: "sacs-techniciens-outils", name: "Sacs techniciens & outils", slug: "sacs-techniciens-outils" },
        { id: "sacs-livraison-coursiers", name: "Sacs livraison & coursiers", slug: "sacs-livraison-coursiers" }
      ]
    },
    {
      id: "sacs-tech-mobilite",
      name: "Sacs Tech & Mobilité",
      slug: "sacs-tech-mobilite",
      subcategories: [
        { id: "etuis-laptop", name: "Étuis laptop", slug: "etuis-laptop" },
        { id: "housses-tablettes", name: "Housses tablettes", slug: "housses-tablettes" },
        { id: "housses-disques-durs", name: "Housses disques durs", slug: "housses-disques-durs" },
        { id: "sacs-photo-reflex", name: "Sacs photo reflex", slug: "sacs-photo-reflex" },
        { id: "sacs-photo-mirrorless", name: "Sacs photo mirrorless", slug: "sacs-photo-mirrorless" },
        { id: "sacs-drone", name: "Sacs drones", slug: "sacs-drone" },
        { id: "sacs-camera-video", name: "Sacs caméras & accessoires vidéo", slug: "sacs-camera-video" },
        { id: "sacs-gamers-console", name: "Sacs gamers & console", slug: "sacs-gamers-console" },
        { id: "sacs-anti-choc", name: "Sacs anti-choc", slug: "sacs-anti-choc" },
        { id: "sacs-connectes", name: "Sacs connectés", slug: "sacs-connectes" }
      ]
    },
    {
      id: "sacs-de-sport",
      name: "Sacs de Sport",
      slug: "sacs-de-sport",
      subcategories: [
        { id: "sacs-gym", name: "Sacs gym", slug: "sacs-gym" },
        { id: "sacs-fitness", name: "Sacs fitness", slug: "sacs-fitness" },
        { id: "sacs-football", name: "Sacs football", slug: "sacs-football" },
        { id: "sacs-arts-martiaux", name: "Sacs arts martiaux (compartiment gants)", slug: "sacs-arts-martiaux" },
        { id: "sacs-natation", name: "Sacs natation (résistants à l’eau)", slug: "sacs-natation" },
        { id: "sacs-tennis-1-raquette", name: "Sacs tennis 1 raquette", slug: "sacs-tennis-1-raquette" },
        { id: "sacs-tennis-multi-raquettes", name: "Sacs tennis multi-raquettes", slug: "sacs-tennis-multi-raquettes" },
        { id: "sacs-tactiques-militaires-sport", name: "Sacs tactiques militaires", slug: "sacs-tactiques-militaires-sport" },
        { id: "sacs-tir-airsoft", name: "Sacs de tir & airsoft", slug: "sacs-tir-airsoft" }
      ]
    },
    {
      id: "sacs-enfants",
      name: "Sacs Enfants",
      slug: "sacs-enfants",
      subcategories: [
        { id: "sacs-a-dos-bebe", name: "Sacs à dos bébé", slug: "sacs-a-dos-bebe" },
        { id: "sacs-creche", name: "Sacs crèche", slug: "sacs-creche" },
        { id: "cartables", name: "Cartables", slug: "cartables" },
        { id: "sacs-a-roulettes-scolaire", name: "Sacs à roulettes scolaire", slug: "sacs-a-roulettes-scolaire" },
        { id: "sacs-a-gouter", name: "Sacs à goûter", slug: "sacs-a-gouter" },
        { id: "sacs-enfant-licence", name: "Sacs enfant personnage/licence", slug: "sacs-enfant-licence" },
        { id: "sacs-activites", name: "Sacs d'activités (danse, sport)", slug: "sacs-activites" },
        { id: "sacs-anti-perte", name: "Sacs anti-perte", slug: "sacs-anti-perte" }
      ]
    },
    {
      id: "sacs-specialises",
      name: "Sacs Spécialisés",
      slug: "sacs-specialises",
      subcategories: [
        { id: "isothermes-repas", name: "Sacs isothermes repas", slug: "isothermes-repas" },
        { id: "isothermes-pique-nique", name: "Sacs isothermes pique-nique", slug: "isothermes-pique-nique" },
        { id: "isothermes-medicaments", name: "Sacs isothermes médicaments", slug: "isothermes-medicaments" },
        { id: "photo-video", name: "Sacs photo & vidéo", slug: "photo-video" },
        { id: "drones", name: "Sacs drones", slug: "drones" },
        { id: "peche-chasse", name: "Sacs de pêche & chasse", slug: "peche-chasse" },
        { id: "trekking-hydratation", name: "Sacs trekking hydratation", slug: "trekking-hydratation" },
        { id: "moto-cuir", name: "Sacs moto cuir", slug: "moto-cuir" },
        { id: "moto-textile", name: "Sacs moto textile", slug: "moto-textile" },
        { id: "sacoches-velo-avant", name: "Sacoches vélo avant", slug: "sacoches-velo-avant" },
        { id: "sacoches-velo-arriere", name: "Sacoches vélo arrière", slug: "sacoches-velo-arriere" },
        { id: "sacoches-velo-cadre", name: "Sacoches vélo cadre", slug: "sacoches-velo-cadre" },
        { id: "plongee", name: "Sacs de plongée", slug: "plongee" },
        { id: "equipement-btp", name: "Sacs équipement BTP", slug: "equipement-btp" },
        { id: "instruments-musicaux", name: "Sacs pour instruments musicaux", slug: "instruments-musicaux" },
        { id: "medicaux-urgences", name: "Sacs médicaux/urgences", slug: "medicaux-urgences" }
      ]
    },
    {
      id: "bagagerie-professionnelle-voyage",
      name: "Bagagerie Professionnelle & Voyage",
      slug: "bagagerie-professionnelle-voyage",
      subcategories: [
        { id: "cabine-pro", name: "Sacs cabine pro", slug: "cabine-pro" },
        { id: "pilotes", name: "Sacs pilotes", slug: "pilotes" },
        { id: "trolley-medical", name: "Trolley médical", slug: "trolley-medical" },
        { id: "echantillons-commerciaux", name: "Bagages échantillons commerciaux", slug: "echantillons-commerciaux" },
        { id: "trolley-cabine-organisation", name: "Trolley cabine organisation multi-poches", slug: "trolley-cabine-organisation" },
        { id: "triangulaires-specifiques", name: "Sacs triangulaires transport spécifiques", slug: "triangulaires-specifiques" }
      ]
    },
    {
      id: "housses-protections",
      name: "Housses & Protections",
      slug: "housses-protections",
      subcategories: [
        { id: "housses-valises", name: "Housses valises", slug: "housses-valises" },
        { id: "housses-vetements-costumes", name: "Housses vêtements & costumes", slug: "housses-vetements-costumes" },
        { id: "housses-chaussures", name: "Housses chaussures", slug: "housses-chaussures" },
        { id: "housses-sacs-a-main", name: "Housses sacs à main", slug: "housses-sacs-a-main" },
        { id: "sangles-valise", name: "Sangles valise", slug: "sangles-valise" },
        { id: "etiquettes-bagages", name: "Étiquettes bagages", slug: "etiquettes-bagages" },
        { id: "filets-organiseurs", name: "Filets & organiseurs", slug: "filets-organiseurs" },
        { id: "cubes-rangement", name: "Cubes de rangement", slug: "cubes-rangement" },
        { id: "filets-voiture", name: "Filets voiture", slug: "filets-voiture" },
        { id: "protections-anti-pluie", name: "Protections anti-pluie", slug: "protections-anti-pluie" }
      ]
    },
    {
      id: "accessoires-bagagerie",
      name: "Accessoires Bagagerie",
      slug: "accessoires-bagagerie",
      subcategories: [
        { id: "cadenas-tsa", name: "Cadenas TSA", slug: "cadenas-tsa" },
        { id: "ceintures-valise", name: "Ceintures valise", slug: "ceintures-valise" },
        { id: "porte-passeport", name: "Porte-passeport", slug: "porte-passeport" },
        { id: "porte-billets", name: "Porte-billets", slug: "porte-billets" },
        { id: "porte-etiquettes", name: "Porte-étiquettes", slug: "porte-etiquettes" },
        { id: "kits-voyage-bouteilles", name: "Kits de voyage (bouteilles avion)", slug: "kits-voyage-bouteilles" },
        { id: "kits-voyage-oreillers", name: "Kits de voyage (oreillers)", slug: "kits-voyage-oreillers" },
        { id: "kits-voyage-masques", name: "Kits de voyage (masques sommeil)", slug: "kits-voyage-masques" },
        { id: "organiseurs-electroniques", name: "Organiseurs électroniques", slug: "organiseurs-electroniques" },
        { id: "pese-bagage", name: "Pèse-bagage", slug: "pese-bagage" },
        { id: "sangles-renfort", name: "Sangles de renfort", slug: "sangles-renfort" }
      ]
    },
    {
      id: "sacs-mode-luxe",
      name: "Sacs Mode & Luxe",
      slug: "sacs-mode-luxe",
      subcategories: [
        { id: "sacs-createurs", name: "Sacs de créateurs", slug: "sacs-createurs" },
        { id: "edition-limitee", name: "Sacs en édition limitée", slug: "edition-limitee" },
        { id: "haute-couture", name: "Sacs haute couture", slug: "haute-couture" },
        { id: "vintage-certifies", name: "Sacs vintage certifiés", slug: "vintage-certifies" },
        { id: "collection-dior", name: "Sacs collection Dior", slug: "collection-dior" },
        { id: "collection-chanel", name: "Sacs collection Chanel", slug: "collection-chanel" },
        { id: "collection-lv", name: "Sacs collection LV", slug: "collection-lv" },
        { id: "collection-ysl", name: "Sacs collection YSL", slug: "collection-ysl" },
        { id: "expertise-authentification", name: "Expertise & authentification", slug: "expertise-authentification" }
      ]
    },
    {
      id: "sacs-artisanaux-locaux",
      name: "Sacs Artisanaux & Locaux",
      slug: "sacs-artisanaux-locaux",
      subcategories: [
        { id: "cuir-artisanal", name: "Sacs en cuir artisanal", slug: "cuir-artisanal" },
        { id: "sacs-tresses", name: "Sacs tressés", slug: "sacs-tresses" },
        { id: "sacs-berberes", name: "Sacs berbères", slug: "sacs-berberes" },
        { id: "sacs-traditionnels", name: "Sacs traditionnels", slug: "sacs-traditionnels" },
        { id: "sacs-faits-main", name: "Sacs faits main", slug: "sacs-faits-main" },
        { id: "creations-locales", name: "Créations locales & pièces uniques", slug: "creations-locales" }
      ]
    },
    {
      id: "materiaux-fabrication",
      name: "Matériaux & Types de fabrication",
      slug: "materiaux-fabrication",
      subcategories: [
        { id: "cuir-veritable", name: "Cuir véritable", slug: "cuir-veritable" },
        { id: "cuir-vegan", name: "Cuir vegan", slug: "cuir-vegan" },
        { id: "cuir-recycle", name: "Cuir recyclé", slug: "cuir-recycle" },
        { id: "nylon", name: "Nylon", slug: "nylon" },
        { id: "polyester", name: "Polyester", slug: "polyester" },
        { id: "toile", name: "Toile", slug: "toile" },
        { id: "canevas", name: "Canevas", slug: "canevas" },
        { id: "abs", name: "ABS", slug: "abs" },
        { id: "polycarbonate", name: "Polycarbonate", slug: "polycarbonate" },
        { id: "aluminium", name: "Aluminium", slug: "aluminium" },
        { id: "paille-fibres-naturelles", name: "Paille & fibres naturelles", slug: "paille-fibres-naturelles" },
        { id: "waterproof-impermeables", name: "Waterproof & imperméables", slug: "waterproof-impermeables" },
        { id: "anti-dechirure", name: "Anti-déchirure", slug: "anti-dechirure" },
        { id: "resistants-aux-chocs", name: "Résistants aux chocs", slug: "resistants-aux-chocs" }
      ]
    },
    {
      id: "segments-usages",
      name: "Segments & Usages",
      slug: "segments-usages",
      subcategories: [
        { id: "voyage", name: "Voyage", slug: "voyage" },
        { id: "quotidien", name: "Quotidien", slug: "quotidien" },
        { id: "etude-scolaire", name: "Étude/scolaire", slug: "etude-scolaire" },
        { id: "travail-business", name: "Travail & Business", slug: "travail-business" },
        { id: "sport-usage", name: "Sport", slug: "sport-usage" },
        { id: "outdoor", name: "Outdoor", slug: "outdoor" },
        { id: "professionnels", name: "Professionnels", slug: "professionnels" },
        { id: "luxe", name: "Luxe", slug: "luxe" },
        { id: "artisanal", name: "Artisanal", slug: "artisanal" },
        { id: "casual", name: "Casual", slug: "casual" },
        { id: "urban-tech", name: "Urban tech", slug: "urban-tech" }
      ]
    }
  ]
};