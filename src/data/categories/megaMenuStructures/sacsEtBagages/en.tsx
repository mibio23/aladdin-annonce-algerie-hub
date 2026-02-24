import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Briefcase } from "lucide-react";

export const sacsEtBagagesEn: MenuCategory = {
  id: "sacs-et-bagages",
  name: "Bags & Luggage",
  slug: "sacs-et-bagages",
  icon: <Briefcase className="w-4 h-4" />,
  subcategories: [
    {
      id: "sacs-a-main",
      name: "Handbags (women & unisex)",
      slug: "sacs-a-main",
      subcategories: [
        { id: "cabas-grand", name: "Large tote bags", slug: "cabas-grand" },
        { id: "cabas-moyen", name: "Medium tote bags", slug: "cabas-moyen" },
        { id: "cabas-rigide", name: "Rigid tote bags", slug: "cabas-rigide" },
        { id: "cabas-souple", name: "Soft tote bags", slug: "cabas-souple" },
        { id: "bandouliere-mini", name: "Mini shoulder bags", slug: "bandouliere-mini" },
        { id: "bandouliere-moyen", name: "Medium shoulder bags", slug: "bandouliere-moyen" },
        { id: "bandouliere-matelasse", name: "Quilted shoulder bags", slug: "bandouliere-matelasse" },
        { id: "bandouliere-sport", name: "Sport shoulder bags", slug: "bandouliere-sport" },
        { id: "sacs-seau", name: "Bucket bags", slug: "sacs-seau" },
        { id: "sacs-tote", name: "Tote bags", slug: "sacs-tote" },
        { id: "sacs-hobo", name: "Hobo bags", slug: "sacs-hobo" },
        { id: "sacs-bowling", name: "Bowling bags", slug: "sacs-bowling" },
        { id: "pochettes-soiree", name: "Evening clutches", slug: "pochettes-soiree" },
        { id: "pochettes-mariage", name: "Wedding clutches", slug: "pochettes-mariage" },
        { id: "pochettes-minimalistes", name: "Minimalist clutches", slug: "pochettes-minimalistes" },
        { id: "mini-bags-ville", name: "City mini bags", slug: "mini-bags-ville" },
        { id: "mini-bags-luxe", name: "Luxury mini bags", slug: "mini-bags-luxe" },
        { id: "sacs-demi-lune", name: "Half-moon bags", slug: "sacs-demi-lune" },
        { id: "sacs-en-cuir-veritable", name: "Genuine leather bags", slug: "sacs-en-cuir-veritable" },
        { id: "sacs-en-cuir-synthetique", name: "Synthetic leather bags", slug: "sacs-en-cuir-synthetique" },
        { id: "sacs-en-cuir-artisanal", name: "Artisanal leather bags", slug: "sacs-en-cuir-artisanal" },
        { id: "sacs-en-toile-tissu", name: "Canvas & fabric bags", slug: "sacs-en-toile-tissu" }
      ]
    },
    {
      id: "sacs-a-dos",
      name: "Backpacks",
      slug: "sacs-a-dos",
      subcategories: [
        { id: "urbains", name: "Urban backpacks", slug: "urbains" },
        { id: "antivol", name: "Anti-theft backpacks", slug: "antivol" },
        { id: "business-porte-pc", name: "Business backpacks (laptop)", slug: "business-porte-pc" },
        { id: "sport", name: "Sports backpacks", slug: "sport" },
        { id: "randonnee-20l", name: "Hiking & trekking 20L", slug: "randonnee-20l" },
        { id: "randonnee-30l", name: "Hiking & trekking 30L", slug: "randonnee-30l" },
        { id: "randonnee-50l-plus", name: "Hiking & trekking 50L+", slug: "randonnee-50l-plus" },
        { id: "tactiques-militaires", name: "Tactical & military", slug: "tactiques-militaires" },
        { id: "scolaires-enfant-ado", name: "School backpacks (kids/teens)", slug: "scolaires-enfant-ado" },
        { id: "minimalistes", name: "Minimalist backpacks", slug: "minimalistes" },
        { id: "voyage-cabine", name: "Carry-on travel backpacks", slug: "voyage-cabine" }
      ]
    },
    {
      id: "sacs-voyage-week-end",
      name: "Travel & Weekend bags",
      slug: "sacs-voyage-week-end",
      subcategories: [
        { id: "voyage-souples", name: "Soft travel bags", slug: "voyage-souples" },
        { id: "voyage-semi-rigides", name: "Semi-rigid travel bags", slug: "voyage-semi-rigides" },
        { id: "duffle-bags", name: "Duffle bags", slug: "duffle-bags" },
        { id: "polochon", name: "Barrel bags", slug: "polochon" },
        { id: "week-end", name: "Weekender bags", slug: "week-end" },
        { id: "pliables", name: "Foldable bags", slug: "pliables" },
        { id: "transport-longue-distance", name: "Long-distance transport bags", slug: "transport-longue-distance" },
        { id: "multi-poches", name: "Multi-pocket bags", slug: "multi-poches" },
        { id: "compartiment-chaussures", name: "Shoe compartment bags", slug: "compartiment-chaussures" }
      ]
    },
    {
      id: "valises-bagages",
      name: "Suitcases & Luggage",
      slug: "valises-bagages",
      subcategories: [
        { id: "cabine-rigides", name: "Cabin suitcases (hard)", slug: "cabine-rigides" },
        { id: "cabine-souples", name: "Cabin suitcases (soft)", slug: "cabine-souples" },
        { id: "cabine-extensibles", name: "Expandable cabin suitcases", slug: "cabine-extensibles" },
        { id: "valises-medium", name: "Medium suitcases", slug: "valises-medium" },
        { id: "valises-grandes", name: "Large suitcases", slug: "valises-grandes" },
        { id: "valises-aluminium", name: "Aluminium suitcases", slug: "valises-aluminium" },
        { id: "sets-valises", name: "Luggage sets", slug: "sets-valises" },
        { id: "valises-enfants", name: "Kids suitcases", slug: "valises-enfants" },
        { id: "valises-connectees", name: "Smart suitcases", slug: "valises-connectees" },
        { id: "valises-professionnelles", name: "Professional suitcases", slug: "valises-professionnelles" },
        { id: "bagages-certifies-iata", name: "IATA certified luggage", slug: "bagages-certifies-iata" },
        { id: "valises-securisees-tsa", name: "TSA secure suitcases", slug: "valises-securisees-tsa" }
      ]
    },
    {
      id: "maroquinerie",
      name: "Leather goods",
      slug: "maroquinerie",
      subcategories: [
        { id: "portefeuilles-zippe", name: "Zipped wallets", slug: "portefeuilles-zippe" },
        { id: "portefeuilles-pliable", name: "Foldable wallets", slug: "portefeuilles-pliable" },
        { id: "portefeuilles-compact", name: "Compact wallets", slug: "portefeuilles-compact" },
        { id: "porte-cartes-metal", name: "Metal card holders", slug: "porte-cartes-metal" },
        { id: "porte-cartes-cuir", name: "Leather card holders", slug: "porte-cartes-cuir" },
        { id: "porte-cartes-rfid", name: "RFID card holders", slug: "porte-cartes-rfid" },
        { id: "porte-monnaie", name: "Coin purses", slug: "porte-monnaie" },
        { id: "etuis-pochettes-passeport", name: "Passport sleeves", slug: "etuis-pochettes-passeport" },
        { id: "etuis-documents", name: "Document sleeves", slug: "etuis-documents" },
        { id: "etuis-billets", name: "Ticket sleeves", slug: "etuis-billets" },
        { id: "mini-sacs-cuir", name: "Mini leather bags", slug: "mini-sacs-cuir" },
        { id: "accessoires-luxe", name: "Luxury accessories", slug: "accessoires-luxe" },
        { id: "petite-maroquinerie-artisanale", name: "Artisanal small leather goods", slug: "petite-maroquinerie-artisanale" }
      ]
    },
    {
      id: "sacs-professionnels",
      name: "Professional bags",
      slug: "sacs-professionnels",
      subcategories: [
        { id: "porte-ordinateur-13", name: "Laptop bags 13\"", slug: "porte-ordinateur-13" },
        { id: "porte-ordinateur-15", name: "Laptop bags 15\"", slug: "porte-ordinateur-15" },
        { id: "porte-ordinateur-17", name: "Laptop bags 17\"", slug: "porte-ordinateur-17" },
        { id: "sacs-business", name: "Business bags", slug: "sacs-business" },
        { id: "sacs-documents", name: "Document bags", slug: "sacs-documents" },
        { id: "serviettes-attaches-case", name: "Briefcases & attaché cases", slug: "serviettes-attaches-case" },
        { id: "sacs-infirmiers-paramedicaux", name: "Nurse/paramedic bags", slug: "sacs-infirmiers-paramedicaux" },
        { id: "sacs-architectes-artistes-tubes", name: "Architect/artist tubes", slug: "sacs-architectes-artistes-tubes" },
        { id: "sacs-portfolios-a3-a2", name: "Portfolios A3/A2", slug: "sacs-portfolios-a3-a2" },
        { id: "sacs-techniciens-outils", name: "Technician & tool bags", slug: "sacs-techniciens-outils" },
        { id: "sacs-livraison-coursiers", name: "Courier & delivery bags", slug: "sacs-livraison-coursiers" }
      ]
    },
    {
      id: "sacs-tech-mobilite",
      name: "Tech & Mobility bags",
      slug: "sacs-tech-mobilite",
      subcategories: [
        { id: "etuis-laptop", name: "Laptop sleeves", slug: "etuis-laptop" },
        { id: "housses-tablettes", name: "Tablet sleeves", slug: "housses-tablettes" },
        { id: "housses-disques-durs", name: "Hard drive cases", slug: "housses-disques-durs" },
        { id: "sacs-photo-reflex", name: "DSLR camera bags", slug: "sacs-photo-reflex" },
        { id: "sacs-photo-mirrorless", name: "Mirrorless camera bags", slug: "sacs-photo-mirrorless" },
        { id: "sacs-drone", name: "Drone bags", slug: "sacs-drone" },
        { id: "sacs-camera-video", name: "Video camera & accessories bags", slug: "sacs-camera-video" },
        { id: "sacs-gamers-console", name: "Gamer & console bags", slug: "sacs-gamers-console" },
        { id: "sacs-anti-choc", name: "Shockproof bags", slug: "sacs-anti-choc" },
        { id: "sacs-connectes", name: "Connected bags", slug: "sacs-connectes" }
      ]
    },
    {
      id: "sacs-de-sport",
      name: "Sports bags",
      slug: "sacs-de-sport",
      subcategories: [
        { id: "sacs-gym", name: "Gym bags", slug: "sacs-gym" },
        { id: "sacs-fitness", name: "Fitness bags", slug: "sacs-fitness" },
        { id: "sacs-football", name: "Football bags", slug: "sacs-football" },
        { id: "sacs-arts-martiaux", name: "Martial arts bags (glove compartment)", slug: "sacs-arts-martiaux" },
        { id: "sacs-natation", name: "Swimming bags (water-resistant)", slug: "sacs-natation" },
        { id: "sacs-tennis-1-raquette", name: "Tennis bags (1 racket)", slug: "sacs-tennis-1-raquette" },
        { id: "sacs-tennis-multi-raquettes", name: "Tennis bags (multi-rackets)", slug: "sacs-tennis-multi-raquettes" },
        { id: "sacs-tactiques-militaires-sport", name: "Tactical military bags", slug: "sacs-tactiques-militaires-sport" },
        { id: "sacs-tir-airsoft", name: "Shooting & airsoft bags", slug: "sacs-tir-airsoft" }
      ]
    },
    {
      id: "sacs-enfants",
      name: "Kids bags",
      slug: "sacs-enfants",
      subcategories: [
        { id: "sacs-a-dos-bebe", name: "Baby backpacks", slug: "sacs-a-dos-bebe" },
        { id: "sacs-creche", name: "Nursery bags", slug: "sacs-creche" },
        { id: "cartables", name: "School satchels", slug: "cartables" },
        { id: "sacs-a-roulettes-scolaire", name: "Rolling school bags", slug: "sacs-a-roulettes-scolaire" },
        { id: "sacs-a-gouter", name: "Snack bags", slug: "sacs-a-gouter" },
        { id: "sacs-enfant-licence", name: "Character/licensed bags", slug: "sacs-enfant-licence" },
        { id: "sacs-activites", name: "Activity bags (dance, sport)", slug: "sacs-activites" },
        { id: "sacs-anti-perte", name: "Anti-loss bags", slug: "sacs-anti-perte" }
      ]
    },
    {
      id: "sacs-specialises",
      name: "Specialized bags",
      slug: "sacs-specialises",
      subcategories: [
        { id: "isothermes-repas", name: "Insulated lunch bags", slug: "isothermes-repas" },
        { id: "isothermes-pique-nique", name: "Insulated picnic bags", slug: "isothermes-pique-nique" },
        { id: "isothermes-medicaments", name: "Insulated medical bags", slug: "isothermes-medicaments" },
        { id: "photo-video", name: "Photo & video bags", slug: "photo-video" },
        { id: "drones", name: "Drone bags", slug: "drones" },
        { id: "peche-chasse", name: "Fishing & hunting bags", slug: "peche-chasse" },
        { id: "trekking-hydratation", name: "Hydration trekking bags", slug: "trekking-hydratation" },
        { id: "moto-cuir", name: "Motorcycle leather bags", slug: "moto-cuir" },
        { id: "moto-textile", name: "Motorcycle textile bags", slug: "moto-textile" },
        { id: "sacoches-velo-avant", name: "Front bike panniers", slug: "sacoches-velo-avant" },
        { id: "sacoches-velo-arriere", name: "Rear bike panniers", slug: "sacoches-velo-arriere" },
        { id: "sacoches-velo-cadre", name: "Frame bike bags", slug: "sacoches-velo-cadre" },
        { id: "plongee", name: "Diving bags", slug: "plongee" },
        { id: "equipement-btp", name: "Construction equipment bags", slug: "equipement-btp" },
        { id: "instruments-musicaux", name: "Musical instrument bags", slug: "instruments-musicaux" },
        { id: "medicaux-urgences", name: "Medical/emergency bags", slug: "medicaux-urgences" }
      ]
    },
    {
      id: "bagagerie-professionnelle-voyage",
      name: "Professional & Travel luggage",
      slug: "bagagerie-professionnelle-voyage",
      subcategories: [
        { id: "cabine-pro", name: "Professional cabin bags", slug: "cabine-pro" },
        { id: "pilotes", name: "Pilot bags", slug: "pilotes" },
        { id: "trolley-medical", name: "Medical trolley", slug: "trolley-medical" },
        { id: "echantillons-commerciaux", name: "Sample cases (commercial)", slug: "echantillons-commerciaux" },
        { id: "trolley-cabine-organisation", name: "Cabin trolley (multi-pocket)", slug: "trolley-cabine-organisation" },
        { id: "triangulaires-specifiques", name: "Triangular specialized bags", slug: "triangulaires-specifiques" }
      ]
    },
    {
      id: "housses-protections",
      name: "Covers & Protection",
      slug: "housses-protections",
      subcategories: [
        { id: "housses-valises", name: "Suitcase covers", slug: "housses-valises" },
        { id: "housses-vetements-costumes", name: "Garment & suit covers", slug: "housses-vetements-costumes" },
        { id: "housses-chaussures", name: "Shoe covers", slug: "housses-chaussures" },
        { id: "housses-sacs-a-main", name: "Handbag covers", slug: "housses-sacs-a-main" },
        { id: "sangles-valise", name: "Luggage straps", slug: "sangles-valise" },
        { id: "etiquettes-bagages", name: "Luggage tags", slug: "etiquettes-bagages" },
        { id: "filets-organiseurs", name: "Nets & organizers", slug: "filets-organiseurs" },
        { id: "cubes-rangement", name: "Packing cubes", slug: "cubes-rangement" },
        { id: "filets-voiture", name: "Car nets", slug: "filets-voiture" },
        { id: "protections-anti-pluie", name: "Rain protection", slug: "protections-anti-pluie" }
      ]
    },
    {
      id: "accessoires-bagagerie",
      name: "Luggage accessories",
      slug: "accessoires-bagagerie",
      subcategories: [
        { id: "cadenas-tsa", name: "TSA locks", slug: "cadenas-tsa" },
        { id: "ceintures-valise", name: "Suitcase belts", slug: "ceintures-valise" },
        { id: "porte-passeport", name: "Passport holders", slug: "porte-passeport" },
        { id: "porte-billets", name: "Ticket holders", slug: "porte-billets" },
        { id: "porte-etiquettes", name: "Tag holders", slug: "porte-etiquettes" },
        { id: "kits-voyage-bouteilles", name: "Travel kits (bottles)", slug: "kits-voyage-bouteilles" },
        { id: "kits-voyage-oreillers", name: "Travel kits (pillows)", slug: "kits-voyage-oreillers" },
        { id: "kits-voyage-masques", name: "Travel kits (sleep masks)", slug: "kits-voyage-masques" },
        { id: "organiseurs-electroniques", name: "Electronic organizers", slug: "organiseurs-electroniques" },
        { id: "pese-bagage", name: "Luggage scale", slug: "pese-bagage" },
        { id: "sangles-renfort", name: "Reinforcement straps", slug: "sangles-renfort" }
      ]
    },
    {
      id: "sacs-mode-luxe",
      name: "Fashion & Luxury bags",
      slug: "sacs-mode-luxe",
      subcategories: [
        { id: "sacs-createurs", name: "Designer bags", slug: "sacs-createurs" },
        { id: "edition-limitee", name: "Limited edition bags", slug: "edition-limitee" },
        { id: "haute-couture", name: "Haute couture bags", slug: "haute-couture" },
        { id: "vintage-certifies", name: "Certified vintage bags", slug: "vintage-certifies" },
        { id: "collection-dior", name: "Dior collection", slug: "collection-dior" },
        { id: "collection-chanel", name: "Chanel collection", slug: "collection-chanel" },
        { id: "collection-lv", name: "LV collection", slug: "collection-lv" },
        { id: "collection-ysl", name: "YSL collection", slug: "collection-ysl" },
        { id: "expertise-authentification", name: "Expertise & authentication", slug: "expertise-authentification" }
      ]
    },
    {
      id: "sacs-artisanaux-locaux",
      name: "Artisanal & Local bags",
      slug: "sacs-artisanaux-locaux",
      subcategories: [
        { id: "cuir-artisanal", name: "Artisanal leather bags", slug: "cuir-artisanal" },
        { id: "sacs-tresses", name: "Woven bags", slug: "sacs-tresses" },
        { id: "sacs-berberes", name: "Berber bags", slug: "sacs-berberes" },
        { id: "sacs-traditionnels", name: "Traditional bags", slug: "sacs-traditionnels" },
        { id: "sacs-faits-main", name: "Handcrafted bags", slug: "sacs-faits-main" },
        { id: "creations-locales", name: "Local creations & unique pieces", slug: "creations-locales" }
      ]
    },
    {
      id: "materiaux-fabrication",
      name: "Materials & Manufacturing",
      slug: "materiaux-fabrication",
      subcategories: [
        { id: "cuir-veritable", name: "Genuine leather", slug: "cuir-veritable" },
        { id: "cuir-vegan", name: "Vegan leather", slug: "cuir-vegan" },
        { id: "cuir-recycle", name: "Recycled leather", slug: "cuir-recycle" },
        { id: "nylon", name: "Nylon", slug: "nylon" },
        { id: "polyester", name: "Polyester", slug: "polyester" },
        { id: "toile", name: "Canvas", slug: "toile" },
        { id: "canevas", name: "Canvas weave", slug: "canevas" },
        { id: "abs", name: "ABS", slug: "abs" },
        { id: "polycarbonate", name: "Polycarbonate", slug: "polycarbonate" },
        { id: "aluminium", name: "Aluminium", slug: "aluminium" },
        { id: "paille-fibres-naturelles", name: "Straw & natural fibers", slug: "paille-fibres-naturelles" },
        { id: "waterproof-impermeables", name: "Waterproof & water-resistant", slug: "waterproof-impermeables" },
        { id: "anti-dechirure", name: "Ripstop", slug: "anti-dechirure" },
        { id: "resistants-aux-chocs", name: "Shock-resistant", slug: "resistants-aux-chocs" }
      ]
    },
    {
      id: "segments-usages",
      name: "Segments & Uses",
      slug: "segments-usages",
      subcategories: [
        { id: "voyage", name: "Travel", slug: "voyage" },
        { id: "quotidien", name: "Daily", slug: "quotidien" },
        { id: "etude-scolaire", name: "Study/school", slug: "etude-scolaire" },
        { id: "travail-business", name: "Work & Business", slug: "travail-business" },
        { id: "sport-usage", name: "Sport", slug: "sport-usage" },
        { id: "outdoor", name: "Outdoor", slug: "outdoor" },
        { id: "professionnels", name: "Professional", slug: "professionnels" },
        { id: "luxe", name: "Luxury", slug: "luxe" },
        { id: "artisanal", name: "Artisanal", slug: "artisanal" },
        { id: "casual", name: "Casual", slug: "casual" },
        { id: "urban-tech", name: "Urban tech", slug: "urban-tech" }
      ]
    }
  ]
};