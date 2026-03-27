import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Briefcase } from "lucide-react";

export const sacsEtBagagesDe: MenuCategory = {
  id: "sacs-et-bagages",
  name: "Taschen & Gepäck",
  slug: "sacs-et-bagages",
  icon: <Briefcase className="w-4 h-4" />,
  subcategories: [
    {
      id: "sacs-a-main",
      name: "Handtaschen (Damen & Unisex)",
      slug: "sacs-a-main",
      subcategories: [
        { id: "cabas-grand", name: "Große Shopper-Taschen", slug: "cabas-grand" },
        { id: "cabas-moyen", name: "Mittlere Shopper-Taschen", slug: "cabas-moyen" },
        { id: "cabas-rigide", name: "Shopper, hart", slug: "cabas-rigide" },
        { id: "cabas-souple", name: "Shopper, weich", slug: "cabas-souple" },
        { id: "bandouliere-mini", name: "Mini-Schultertaschen", slug: "bandouliere-mini" },
        { id: "bandouliere-moyen", name: "Schultertaschen mittel", slug: "bandouliere-moyen" },
        { id: "bandouliere-matelasse", name: "Gesteppten Schultertaschen", slug: "bandouliere-matelasse" },
        { id: "bandouliere-sport", name: "Sport-Schultertaschen", slug: "bandouliere-sport" },
        { id: "sacs-seau", name: "Beuteltaschen", slug: "sacs-seau" },
        { id: "sacs-tote", name: "Tote Bags", slug: "sacs-tote" },
        { id: "sacs-hobo", name: "Hobo-Taschen", slug: "sacs-hobo" },
        { id: "sacs-bowling", name: "Bowling-Taschen", slug: "sacs-bowling" },
        { id: "pochettes-soiree", name: "Abendclutches", slug: "pochettes-soiree" },
        { id: "pochettes-mariage", name: "Hochzeitsclutches", slug: "pochettes-mariage" },
        { id: "pochettes-minimalistes", name: "Minimalistische Clutches", slug: "pochettes-minimalistes" },
        { id: "mini-bags-ville", name: "City Mini-Bags", slug: "mini-bags-ville" },
        { id: "mini-bags-luxe", name: "Luxus Mini-Bags", slug: "mini-bags-luxe" },
        { id: "sacs-demi-lune", name: "Halbmond-Taschen", slug: "sacs-demi-lune" },
        { id: "sacs-en-cuir-veritable", name: "Taschen aus Echtleder", slug: "sacs-en-cuir-veritable" },
        { id: "sacs-en-cuir-synthetique", name: "Taschen aus Kunstleder", slug: "sacs-en-cuir-synthetique" },
        { id: "sacs-en-cuir-artisanal", name: "Handgefertigte Ledertaschen", slug: "sacs-en-cuir-artisanal" },
        { id: "sacs-en-toile-tissu", name: "Canvas- & Stofftaschen", slug: "sacs-en-toile-tissu" }
      ]
    },
    {
      id: "sacs-a-dos",
      name: "Rucksäcke",
      slug: "sacs-a-dos",
      subcategories: [
        { id: "urbains", name: "Urbane Rucksäcke", slug: "urbains" },
        { id: "antivol", name: "Anti-Diebstahl-Rucksäcke", slug: "antivol" },
        { id: "business-porte-pc", name: "Business-Rucksäcke (Laptop)", slug: "business-porte-pc" },
        { id: "sport", name: "Sport-Rucksäcke", slug: "sport" },
        { id: "randonnee-20l", name: "Wandern & Trekking 20L", slug: "randonnee-20l" },
        { id: "randonnee-30l", name: "Wandern & Trekking 30L", slug: "randonnee-30l" },
        { id: "randonnee-50l-plus", name: "Wandern & Trekking 50L+", slug: "randonnee-50l-plus" },
        { id: "tactiques-militaires", name: "Taktische & Militär", slug: "tactiques-militaires" },
        { id: "scolaires-enfant-ado", name: "Schulrucksäcke (Kinder/Teenager)", slug: "scolaires-enfant-ado" },
        { id: "minimalistes", name: "Minimalistische Rucksäcke", slug: "minimalistes" },
        { id: "voyage-cabine", name: "Reise-Rucksäcke (Handgepäck)", slug: "voyage-cabine" }
      ]
    },
    {
      id: "sacs-voyage-week-end",
      name: "Reise- & Weekender-Taschen",
      slug: "sacs-voyage-week-end",
      subcategories: [
        { id: "voyage-souples", name: "Weiche Reisetaschen", slug: "voyage-souples" },
        { id: "voyage-semi-rigides", name: "Halbharte Reisetaschen", slug: "voyage-semi-rigides" },
        { id: "duffle-bags", name: "Duffle Bags", slug: "duffle-bags" },
        { id: "polochon", name: "Seesäcke", slug: "polochon" },
        { id: "week-end", name: "Weekender-Taschen", slug: "week-end" },
        { id: "pliables", name: "Faltbare Taschen", slug: "pliables" },
        { id: "transport-longue-distance", name: "Langstrecken-Transporttaschen", slug: "transport-longue-distance" },
        { id: "multi-poches", name: "Mehrfachtaschen", slug: "multi-poches" },
        { id: "compartiment-chaussures", name: "Taschen mit Schuhfach", slug: "compartiment-chaussures" }
      ]
    },
    {
      id: "valises-bagages",
      name: "Koffer & Gepäck",
      slug: "valises-bagages",
      subcategories: [
        { id: "cabine-rigides", name: "Handgepäckkoffer (hart)", slug: "cabine-rigides" },
        { id: "cabine-souples", name: "Handgepäckkoffer (weich)", slug: "cabine-souples" },
        { id: "cabine-extensibles", name: "Erweiterbare Handgepäckkoffer", slug: "cabine-extensibles" },
        { id: "valises-medium", name: "Mittlere Koffer", slug: "valises-medium" },
        { id: "valises-grandes", name: "Große Koffer", slug: "valises-grandes" },
        { id: "valises-aluminium", name: "Aluminiumkoffer", slug: "valises-aluminium" },
        { id: "sets-valises", name: "Kofferset", slug: "sets-valises" },
        { id: "valises-enfants", name: "Kinderkoffer", slug: "valises-enfants" },
        { id: "valises-connectees", name: "Smarte Koffer", slug: "valises-connectees" },
        { id: "valises-professionnelles", name: "Berufskoffer", slug: "valises-professionnelles" },
        { id: "bagages-certifies-iata", name: "IATA-zertifiziertes Gepäck", slug: "bagages-certifies-iata" },
        { id: "valises-securisees-tsa", name: "TSA-sichere Koffer", slug: "valises-securisees-tsa" }
      ]
    },
    {
      id: "maroquinerie",
      name: "Lederwaren",
      slug: "maroquinerie",
      subcategories: [
        { id: "portefeuilles-zippe", name: "Geldbörsen mit Reißverschluss", slug: "portefeuilles-zippe" },
        { id: "portefeuilles-pliable", name: "Faltbare Geldbörsen", slug: "portefeuilles-pliable" },
        { id: "portefeuilles-compact", name: "Kompakte Geldbörsen", slug: "portefeuilles-compact" },
        { id: "porte-cartes-metal", name: "Kartenetuis Metall", slug: "porte-cartes-metal" },
        { id: "porte-cartes-cuir", name: "Kartenetuis Leder", slug: "porte-cartes-cuir" },
        { id: "porte-cartes-rfid", name: "Kartenetuis RFID", slug: "porte-cartes-rfid" },
        { id: "porte-monnaie", name: "Münzgeldbörsen", slug: "porte-monnaie" },
        { id: "etuis-pochettes-passeport", name: "Reisepasshüllen", slug: "etuis-pochettes-passeport" },
        { id: "etuis-documents", name: "Dokumentenhüllen", slug: "etuis-documents" },
        { id: "etuis-billets", name: "Tickethüllen", slug: "etuis-billets" },
        { id: "mini-sacs-cuir", name: "Mini-Ledertaschen", slug: "mini-sacs-cuir" },
        { id: "accessoires-luxe", name: "Luxus-Accessoires", slug: "accessoires-luxe" },
        { id: "petite-maroquinerie-artisanale", name: "Handgefertigte Kleinlederwaren", slug: "petite-maroquinerie-artisanale" }
      ]
    },
    {
      id: "sacs-professionnels",
      name: "Business-Taschen",
      slug: "sacs-professionnels",
      subcategories: [
        { id: "porte-ordinateur-13", name: "Laptoptaschen 13\"", slug: "porte-ordinateur-13" },
        { id: "porte-ordinateur-15", name: "Laptoptaschen 15\"", slug: "porte-ordinateur-15" },
        { id: "porte-ordinateur-17", name: "Laptoptaschen 17\"", slug: "porte-ordinateur-17" },
        { id: "sacs-business", name: "Business-Taschen", slug: "sacs-business" },
        { id: "sacs-documents", name: "Dokumententaschen", slug: "sacs-documents" },
        { id: "serviettes-attaches-case", name: "Aktentaschen & Attaché-Koffer", slug: "serviettes-attaches-case" },
        { id: "sacs-infirmiers-paramedicaux", name: "Krankenpflege-/Sanitätertaschen", slug: "sacs-infirmiers-paramedicaux" },
        { id: "sacs-architectes-artistes-tubes", name: "Architekten-/Künstler-Taschen (Rohre)", slug: "sacs-architectes-artistes-tubes" },
        { id: "sacs-portfolios-a3-a2", name: "Portfolios A3/A2", slug: "sacs-portfolios-a3-a2" },
        { id: "sacs-techniciens-outils", name: "Techniker- & Werkzeugtaschen", slug: "sacs-techniciens-outils" },
        { id: "sacs-livraison-coursiers", name: "Liefer-/Kurier-Taschen", slug: "sacs-livraison-coursiers" }
      ]
    },
    {
      id: "sacs-tech-mobilite",
      name: "Tech & Mobilität",
      slug: "sacs-tech-mobilite",
      subcategories: [
        { id: "etuis-laptop", name: "Laptop-Hüllen", slug: "etuis-laptop" },
        { id: "housses-tablettes", name: "Tablet-Hüllen", slug: "housses-tablettes" },
        { id: "housses-disques-durs", name: "Festplatten-Hüllen", slug: "housses-disques-durs" },
        { id: "sacs-photo-reflex", name: "DSLR-Kamerataschen", slug: "sacs-photo-reflex" },
        { id: "sacs-photo-mirrorless", name: "Spiegellose Kamerataschen", slug: "sacs-photo-mirrorless" },
        { id: "sacs-drone", name: "Drohnentaschen", slug: "sacs-drone" },
        { id: "sacs-camera-video", name: "Video-Kamera- & Zubehörtaschen", slug: "sacs-camera-video" },
        { id: "sacs-gamers-console", name: "Gamer- & Konsolen-Taschen", slug: "sacs-gamers-console" },
        { id: "sacs-anti-choc", name: "Stoßfeste Taschen", slug: "sacs-anti-choc" },
        { id: "sacs-connectes", name: "Vernetzte Taschen", slug: "sacs-connectes" }
      ]
    },
    {
      id: "sacs-de-sport",
      name: "Sporttaschen",
      slug: "sacs-de-sport",
      subcategories: [
        { id: "sacs-gym", name: "Gym-Taschen", slug: "sacs-gym" },
        { id: "sacs-fitness", name: "Fitness-Taschen", slug: "sacs-fitness" },
        { id: "sacs-football", name: "Fußballtaschen", slug: "sacs-football" },
        { id: "sacs-arts-martiaux", name: "Kampfsporttaschen (mit Handschuhfach)", slug: "sacs-arts-martiaux" },
        { id: "sacs-natation", name: "Schwimm-Taschen (wasserbeständig)", slug: "sacs-natation" },
        { id: "sacs-tennis-1-raquette", name: "Tennistaschen (1 Schläger)", slug: "sacs-tennis-1-raquette" },
        { id: "sacs-tennis-multi-raquettes", name: "Tennistaschen (mehrere Schläger)", slug: "sacs-tennis-multi-raquettes" },
        { id: "sacs-tactiques-militaires-sport", name: "Militärtaktik-Taschen", slug: "sacs-tactiques-militaires-sport" },
        { id: "sacs-tir-airsoft", name: "Schieß- & Airsoft-Taschen", slug: "sacs-tir-airsoft" }
      ]
    },
    {
      id: "sacs-enfants",
      name: "Kinder-Taschen",
      slug: "sacs-enfants",
      subcategories: [
        { id: "sacs-a-dos-bebe", name: "Baby-Rucksäcke", slug: "sacs-a-dos-bebe" },
        { id: "sacs-creche", name: "Kita-Taschen", slug: "sacs-creche" },
        { id: "cartables", name: "Schulranzen", slug: "cartables" },
        { id: "sacs-a-roulettes-scolaire", name: "Schul-Rolltaschen", slug: "sacs-a-roulettes-scolaire" },
        { id: "sacs-a-gouter", name: "Snack-Taschen", slug: "sacs-a-gouter" },
        { id: "sacs-enfant-licence", name: "Charakter-/Lizenz-Taschen", slug: "sacs-enfant-licence" },
        { id: "sacs-activites", name: "Aktivitäts-Taschen (Tanz, Sport)", slug: "sacs-activites" },
        { id: "sacs-anti-perte", name: "Anti-Verlust-Taschen", slug: "sacs-anti-perte" }
      ]
    },
    {
      id: "sacs-specialises",
      name: "Spezialtaschen",
      slug: "sacs-specialises",
      subcategories: [
        { id: "isothermes-repas", name: "Isolierte Lunch-Taschen", slug: "isothermes-repas" },
        { id: "isothermes-pique-nique", name: "Isolierte Picknick-Taschen", slug: "isothermes-pique-nique" },
        { id: "isothermes-medicaments", name: "Isolierte Medikamenten-Taschen", slug: "isothermes-medicaments" },
        { id: "photo-video", name: "Foto- & Video-Taschen", slug: "photo-video" },
        { id: "drones", name: "Drohnentaschen", slug: "drones" },
        { id: "peche-chasse", name: "Angel- & Jagd-Taschen", slug: "peche-chasse" },
        { id: "trekking-hydratation", name: "Trinkrucksäcke (Trekking)", slug: "trekking-hydratation" },
        { id: "moto-cuir", name: "Motorrad-Ledertaschen", slug: "moto-cuir" },
        { id: "moto-textile", name: "Motorrad-Textiltaschen", slug: "moto-textile" },
        { id: "sacoches-velo-avant", name: "Fahrrad-Fronttaschen", slug: "sacoches-velo-avant" },
        { id: "sacoches-velo-arriere", name: "Fahrrad-Hecktaschen", slug: "sacoches-velo-arriere" },
        { id: "sacoches-velo-cadre", name: "Fahrrad-Rahmentaschen", slug: "sacoches-velo-cadre" },
        { id: "plongee", name: "Tauch-Taschen", slug: "plongee" },
        { id: "equipement-btp", name: "Bauausrüstung-Taschen", slug: "equipement-btp" },
        { id: "instruments-musicaux", name: "Musikinstrument-Taschen", slug: "instruments-musicaux" },
        { id: "medicaux-urgences", name: "Medizin-/Notfall-Taschen", slug: "medicaux-urgences" }
      ]
    },
    {
      id: "bagagerie-professionnelle-voyage",
      name: "Professionelles Gepäck & Reise",
      slug: "bagagerie-professionnelle-voyage",
      subcategories: [
        { id: "cabine-pro", name: "Professionelle Handgepäcktaschen", slug: "cabine-pro" },
        { id: "pilotes", name: "Pilotentaschen", slug: "pilotes" },
        { id: "trolley-medical", name: "Medizinischer Trolley", slug: "trolley-medical" },
        { id: "echantillons-commerciaux", name: "Musterkoffer (Vertrieb)", slug: "echantillons-commerciaux" },
        { id: "trolley-cabine-organisation", name: "Kabinen-Trolley (Organisationsfächer)", slug: "trolley-cabine-organisation" },
        { id: "triangulaires-specifiques", name: "Dreieckige Spezialtaschen", slug: "triangulaires-specifiques" }
      ]
    },
    {
      id: "housses-protections",
      name: "Hüllen & Schutz",
      slug: "housses-protections",
      subcategories: [
        { id: "housses-valises", name: "Kofferhüllen", slug: "housses-valises" },
        { id: "housses-vetements-costumes", name: "Kleider- & Anzughüllen", slug: "housses-vetements-costumes" },
        { id: "housses-chaussures", name: "Schuhhüllen", slug: "housses-chaussures" },
        { id: "housses-sacs-a-main", name: "Handtaschenhüllen", slug: "housses-sacs-a-main" },
        { id: "sangles-valise", name: "Koffergurte", slug: "sangles-valise" },
        { id: "etiquettes-bagages", name: "Gepäckanhänger", slug: "etiquettes-bagages" },
        { id: "filets-organiseurs", name: "Netze & Organizer", slug: "filets-organiseurs" },
        { id: "cubes-rangement", name: "Packwürfel", slug: "cubes-rangement" },
        { id: "filets-voiture", name: "Auto-Netze", slug: "filets-voiture" },
        { id: "protections-anti-pluie", name: "Regenschutz", slug: "protections-anti-pluie" }
      ]
    },
    {
      id: "accessoires-bagagerie",
      name: "Gepäckzubehör",
      slug: "accessoires-bagagerie",
      subcategories: [
        { id: "cadenas-tsa", name: "TSA-Schlösser", slug: "cadenas-tsa" },
        { id: "ceintures-valise", name: "Koffergürtel", slug: "ceintures-valise" },
        { id: "porte-passeport", name: "Reisepasshalter", slug: "porte-passeport" },
        { id: "porte-billets", name: "Tickethalter", slug: "porte-billets" },
        { id: "porte-etiquettes", name: "Etikettenhalter", slug: "porte-etiquettes" },
        { id: "kits-voyage-bouteilles", name: "Reisekits (Flaschen Flugzeug)", slug: "kits-voyage-bouteilles" },
        { id: "kits-voyage-oreillers", name: "Reisekits (Kissen)", slug: "kits-voyage-oreillers" },
        { id: "kits-voyage-masques", name: "Reisekits (Schlafmasken)", slug: "kits-voyage-masques" },
        { id: "organiseurs-electroniques", name: "Elektronik-Organizer", slug: "organiseurs-electroniques" },
        { id: "pese-bagage", name: "Kofferwaage", slug: "pese-bagage" },
        { id: "sangles-renfort", name: "Verstärkungsgurte", slug: "sangles-renfort" }
      ]
    },
    {
      id: "sacs-mode-luxe",
      name: "Mode & Luxus Taschen",
      slug: "sacs-mode-luxe",
      subcategories: [
        { id: "sacs-createurs", name: "Designertaschen", slug: "sacs-createurs" },
        { id: "edition-limitee", name: "Limitierte Edition", slug: "edition-limitee" },
        { id: "haute-couture", name: "Haute Couture Taschen", slug: "haute-couture" },
        { id: "vintage-certifies", name: "Zertifizierte Vintage-Taschen", slug: "vintage-certifies" },
        { id: "collection-dior", name: "Dior-Kollektion", slug: "collection-dior" },
        { id: "collection-chanel", name: "Chanel-Kollektion", slug: "collection-chanel" },
        { id: "collection-lv", name: "LV-Kollektion", slug: "collection-lv" },
        { id: "collection-ysl", name: "YSL-Kollektion", slug: "collection-ysl" },
        { id: "expertise-authentification", name: "Expertise & Authentifizierung", slug: "expertise-authentification" }
      ]
    },
    {
      id: "sacs-artisanaux-locaux",
      name: "Handwerk & Lokal",
      slug: "sacs-artisanaux-locaux",
      subcategories: [
        { id: "cuir-artisanal", name: "Handgefertigte Ledertaschen", slug: "cuir-artisanal" },
        { id: "sacs-tresses", name: "Geflochtene Taschen", slug: "sacs-tresses" },
        { id: "sacs-berberes", name: "Berber-Taschen", slug: "sacs-berberes" },
        { id: "sacs-traditionnels", name: "Traditionelle Taschen", slug: "sacs-traditionnels" },
        { id: "sacs-faits-main", name: "Handgemachte Taschen", slug: "sacs-faits-main" },
        { id: "creations-locales", name: "Lokale Kreationen & Unikate", slug: "creations-locales" }
      ]
    },
    {
      id: "materiaux-fabrication",
      name: "Materialien & Herstellung",
      slug: "materiaux-fabrication",
      subcategories: [
        { id: "cuir-veritable", name: "Echtleder", slug: "cuir-veritable" },
        { id: "cuir-vegan", name: "Veganes Leder", slug: "cuir-vegan" },
        { id: "cuir-recycle", name: "Recyceltes Leder", slug: "cuir-recycle" },
        { id: "nylon", name: "Nylon", slug: "nylon" },
        { id: "polyester", name: "Polyester", slug: "polyester" },
        { id: "toile", name: "Canvas", slug: "toile" },
        { id: "canevas", name: "Canvas-Gewebe", slug: "canevas" },
        { id: "abs", name: "ABS", slug: "abs" },
        { id: "polycarbonate", name: "Polycarbonat", slug: "polycarbonate" },
        { id: "aluminium", name: "Aluminium", slug: "aluminium" },
        { id: "paille-fibres-naturelles", name: "Stroh & Naturfasern", slug: "paille-fibres-naturelles" },
        { id: "waterproof-impermeables", name: "Wasserdicht & wasserabweisend", slug: "waterproof-impermeables" },
        { id: "anti-dechirure", name: "Reißfest", slug: "anti-dechirure" },
        { id: "resistants-aux-chocs", name: "Stoßfest", slug: "resistants-aux-chocs" }
      ]
    },
    {
      id: "segments-usages",
      name: "Segmente & Nutzung",
      slug: "segments-usages",
      subcategories: [
        { id: "voyage", name: "Reise", slug: "voyage" },
        { id: "quotidien", name: "Alltag", slug: "quotidien" },
        { id: "etude-scolaire", name: "Studium/Schule", slug: "etude-scolaire" },
        { id: "travail-business", name: "Arbeit & Business", slug: "travail-business" },
        { id: "sport-usage", name: "Sport", slug: "sport-usage" },
        { id: "outdoor", name: "Outdoor", slug: "outdoor" },
        { id: "professionnels", name: "Professionell", slug: "professionnels" },
        { id: "luxe", name: "Luxus", slug: "luxe" },
        { id: "artisanal", name: "Handwerklich", slug: "artisanal" },
        { id: "casual", name: "Casual", slug: "casual" },
        { id: "urban-tech", name: "Urban Tech", slug: "urban-tech" }
      ]
    }
  ]
};