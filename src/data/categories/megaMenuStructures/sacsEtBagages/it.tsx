import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Briefcase } from "lucide-react";

export const sacsEtBagagesIt: MenuCategory = {
  id: "sacs-et-bagages",
  name: "Borse & Bagagli",
  slug: "sacs-et-bagages",
  icon: <Briefcase className="w-4 h-4" />,
  subcategories: [
    {
      id: "sacs-a-main",
      name: "Borse a mano (donna & unisex)",
      slug: "sacs-a-main",
      subcategories: [
        { id: "cabas-grand", name: "Shopper grande", slug: "cabas-grand" },
        { id: "cabas-moyen", name: "Shopper medio", slug: "cabas-moyen" },
        { id: "cabas-rigide", name: "Shopper rigido", slug: "cabas-rigide" },
        { id: "cabas-souple", name: "Shopper morbido", slug: "cabas-souple" },
        { id: "bandouliere-mini", name: "Borse a tracolla mini", slug: "bandouliere-mini" },
        { id: "bandouliere-moyen", name: "Borse a tracolla medie", slug: "bandouliere-moyen" },
        { id: "bandouliere-matelasse", name: "Borse a tracolla trapuntate", slug: "bandouliere-matelasse" },
        { id: "bandouliere-sport", name: "Borse a tracolla sportive", slug: "bandouliere-sport" },
        { id: "sacs-seau", name: "Borse secchiello", slug: "sacs-seau" },
        { id: "sacs-tote", name: "Borse tote", slug: "sacs-tote" },
        { id: "sacs-hobo", name: "Borse hobo", slug: "sacs-hobo" },
        { id: "sacs-bowling", name: "Borse bowling", slug: "sacs-bowling" },
        { id: "pochettes-soiree", name: "Clutch da sera", slug: "pochettes-soiree" },
        { id: "pochettes-mariage", name: "Clutch da matrimonio", slug: "pochettes-mariage" },
        { id: "pochettes-minimalistes", name: "Clutch minimaliste", slug: "pochettes-minimalistes" },
        { id: "mini-bags-ville", name: "Mini borse cittadine", slug: "mini-bags-ville" },
        { id: "mini-bags-luxe", name: "Mini borse di lusso", slug: "mini-bags-luxe" },
        { id: "sacs-demi-lune", name: "Borse mezzaluna", slug: "sacs-demi-lune" },
        { id: "sacs-en-cuir-veritable", name: "Borse in vera pelle", slug: "sacs-en-cuir-veritable" },
        { id: "sacs-en-cuir-synthetique", name: "Borse in pelle sintetica", slug: "sacs-en-cuir-synthetique" },
        { id: "sacs-en-cuir-artisanal", name: "Borse in pelle artigianale", slug: "sacs-en-cuir-artisanal" },
        { id: "sacs-en-toile-tissu", name: "Borse in tela e tessuto", slug: "sacs-en-toile-tissu" }
      ]
    },
    {
      id: "sacs-a-dos",
      name: "Zaini",
      slug: "sacs-a-dos",
      subcategories: [
        { id: "urbains", name: "Zaini urbani", slug: "urbains" },
        { id: "antivol", name: "Zaini antifurto", slug: "antivol" },
        { id: "business-porte-pc", name: "Zaini business (per laptop)", slug: "business-porte-pc" },
        { id: "sport", name: "Zaini sportivi", slug: "sport" },
        { id: "randonnee-20l", name: "Escursionismo & trekking 20L", slug: "randonnee-20l" },
        { id: "randonnee-30l", name: "Escursionismo & trekking 30L", slug: "randonnee-30l" },
        { id: "randonnee-50l-plus", name: "Escursionismo & trekking 50L+", slug: "randonnee-50l-plus" },
        { id: "tactiques-militaires", name: "Zaini tattici e militari", slug: "tactiques-militaires" },
        { id: "scolaires-enfant-ado", name: "Zaini scolastici (bambini/adolescenti)", slug: "scolaires-enfant-ado" },
        { id: "minimalistes", name: "Zaini minimalisti", slug: "minimalistes" },
        { id: "voyage-cabine", name: "Zaini da viaggio cabina", slug: "voyage-cabine" }
      ]
    },
    {
      id: "sacs-voyage-week-end",
      name: "Borse da viaggio & weekend",
      slug: "sacs-voyage-week-end",
      subcategories: [
        { id: "voyage-souples", name: "Borse da viaggio morbide", slug: "voyage-souples" },
        { id: "voyage-semi-rigides", name: "Borse da viaggio semirigide", slug: "voyage-semi-rigides" },
        { id: "duffle-bags", name: "Borse duffle", slug: "duffle-bags" },
        { id: "polochon", name: "Borse a barile", slug: "polochon" },
        { id: "week-end", name: "Borse weekend", slug: "week-end" },
        { id: "pliables", name: "Borse pieghevoli", slug: "pliables" },
        { id: "transport-longue-distance", name: "Borse per trasporto a lunga distanza", slug: "transport-longue-distance" },
        { id: "multi-poches", name: "Borse multi-tasche", slug: "multi-poches" },
        { id: "compartiment-chaussures", name: "Borse con scomparto scarpe", slug: "compartiment-chaussures" }
      ]
    },
    {
      id: "valises-bagages",
      name: "Valigie & bagagli",
      slug: "valises-bagages",
      subcategories: [
        { id: "cabine-rigides", name: "Valigie da cabina rigide", slug: "cabine-rigides" },
        { id: "cabine-souples", name: "Valigie da cabina morbide", slug: "cabine-souples" },
        { id: "cabine-extensibles", name: "Valigie da cabina espandibili", slug: "cabine-extensibles" },
        { id: "valises-medium", name: "Valigie medie", slug: "valises-medium" },
        { id: "valises-grandes", name: "Valigie grandi", slug: "valises-grandes" },
        { id: "valises-aluminium", name: "Valigie in alluminio", slug: "valises-aluminium" },
        { id: "sets-valises", name: "Set di valigie", slug: "sets-valises" },
        { id: "valises-enfants", name: "Valigie per bambini", slug: "valises-enfants" },
        { id: "valises-connectees", name: "Valigie smart", slug: "valises-connectees" },
        { id: "valises-professionnelles", name: "Valigie professionali", slug: "valises-professionnelles" },
        { id: "bagages-certifies-iata", name: "Bagagli certificati IATA", slug: "bagages-certifies-iata" },
        { id: "valises-securisees-tsa", name: "Valigie con sicurezza TSA", slug: "valises-securisees-tsa" }
      ]
    },
    {
      id: "maroquinerie",
      name: "Pelletteria",
      slug: "maroquinerie",
      subcategories: [
        { id: "portefeuilles-zippe", name: "Portafogli con cerniera", slug: "portefeuilles-zippe" },
        { id: "portefeuilles-pliable", name: "Portafogli pieghevoli", slug: "portefeuilles-pliable" },
        { id: "portefeuilles-compact", name: "Portafogli compatti", slug: "portefeuilles-compact" },
        { id: "porte-cartes-metal", name: "Porta carte in metallo", slug: "porte-cartes-metal" },
        { id: "porte-cartes-cuir", name: "Porta carte in pelle", slug: "porte-cartes-cuir" },
        { id: "porte-cartes-rfid", name: "Porta carte RFID", slug: "porte-cartes-rfid" },
        { id: "porte-monnaie", name: "Portamonete", slug: "porte-monnaie" },
        { id: "etuis-pochettes-passeport", name: "Custodie per passaporto", slug: "etuis-pochettes-passeport" },
        { id: "etuis-documents", name: "Custodie per documenti", slug: "etuis-documents" },
        { id: "etuis-billets", name: "Custodie per biglietti", slug: "etuis-billets" },
        { id: "mini-sacs-cuir", name: "Mini borse in pelle", slug: "mini-sacs-cuir" },
        { id: "accessoires-luxe", name: "Accessori di lusso", slug: "accessoires-luxe" },
        { id: "petite-maroquinerie-artisanale", name: "Piccola pelletteria artigianale", slug: "petite-maroquinerie-artisanale" }
      ]
    },
    {
      id: "sacs-professionnels",
      name: "Borse professionali",
      slug: "sacs-professionnels",
      subcategories: [
        { id: "porte-ordinateur-13", name: "Borse per laptop da 13\"", slug: "porte-ordinateur-13" },
        { id: "porte-ordinateur-15", name: "Borse per laptop da 15\"", slug: "porte-ordinateur-15" },
        { id: "porte-ordinateur-17", name: "Borse per laptop da 17\"", slug: "porte-ordinateur-17" },
        { id: "sacs-business", name: "Borse business", slug: "sacs-business" },
        { id: "sacs-documents", name: "Borse porta documenti", slug: "sacs-documents" },
        { id: "serviettes-attaches-case", name: "Valigette e attaché-case", slug: "serviettes-attaches-case" },
        { id: "sacs-infirmiers-paramedicaux", name: "Borse per infermieri/paramedici", slug: "sacs-infirmiers-paramedicaux" },
        { id: "sacs-architectes-artistes-tubes", name: "Borse per architetti e artisti (tubi)", slug: "sacs-architectes-artistes-tubes" },
        { id: "sacs-portfolios-a3-a2", name: "Portfolio A3/A2", slug: "sacs-portfolios-a3-a2" },
        { id: "sacs-techniciens-outils", name: "Borse per tecnici e attrezzi", slug: "sacs-techniciens-outils" },
        { id: "sacs-livraison-coursiers", name: "Borse per consegna e corrieri", slug: "sacs-livraison-coursiers" }
      ]
    },
    {
      id: "sacs-tech-mobilite",
      name: "Borse Tech & Mobilità",
      slug: "sacs-tech-mobilite",
      subcategories: [
        { id: "etuis-laptop", name: "Custodie per laptop", slug: "etuis-laptop" },
        { id: "housses-tablettes", name: "Custodie per tablet", slug: "housses-tablettes" },
        { id: "housses-disques-durs", name: "Custodie per dischi rigidi", slug: "housses-disques-durs" },
        { id: "sacs-photo-reflex", name: "Borse per fotocamere reflex", slug: "sacs-photo-reflex" },
        { id: "sacs-photo-mirrorless", name: "Borse per fotocamere mirrorless", slug: "sacs-photo-mirrorless" },
        { id: "sacs-drone", name: "Borse per droni", slug: "sacs-drone" },
        { id: "sacs-camera-video", name: "Borse per videocamere e accessori", slug: "sacs-camera-video" },
        { id: "sacs-gamers-console", name: "Borse per gamer e console", slug: "sacs-gamers-console" },
        { id: "sacs-anti-choc", name: "Borse antiurto", slug: "sacs-anti-choc" },
        { id: "sacs-connectes", name: "Borse connesse", slug: "sacs-connectes" }
      ]
    },
    {
      id: "sacs-de-sport",
      name: "Borse sportive",
      slug: "sacs-de-sport",
      subcategories: [
        { id: "sacs-gym", name: "Borse da palestra", slug: "sacs-gym" },
        { id: "sacs-fitness", name: "Borse fitness", slug: "sacs-fitness" },
        { id: "sacs-football", name: "Borse calcio", slug: "sacs-football" },
        { id: "sacs-arts-martiaux", name: "Borse arti marziali (scomparto guanti)", slug: "sacs-arts-martiaux" },
        { id: "sacs-natation", name: "Borse nuoto (resistenti all'acqua)", slug: "sacs-natation" },
        { id: "sacs-tennis-1-raquette", name: "Borse tennis (1 racchetta)", slug: "sacs-tennis-1-raquette" },
        { id: "sacs-tennis-multi-raquettes", name: "Borse tennis (multi racchette)", slug: "sacs-tennis-multi-raquettes" },
        { id: "sacs-tactiques-militaires-sport", name: "Borse tattiche militari", slug: "sacs-tactiques-militaires-sport" },
        { id: "sacs-tir-airsoft", name: "Borse tiro e airsoft", slug: "sacs-tir-airsoft" }
      ]
    },
    {
      id: "sacs-enfants",
      name: "Borse bambini",
      slug: "sacs-enfants",
      subcategories: [
        { id: "sacs-a-dos-bebe", name: "Zainetti per bebè", slug: "sacs-a-dos-bebe" },
        { id: "sacs-creche", name: "Borse asilo", slug: "sacs-creche" },
        { id: "cartables", name: "Cartelle scolastiche", slug: "cartables" },
        { id: "sacs-a-roulettes-scolaire", name: "Zaini scolastici con ruote", slug: "sacs-a-roulettes-scolaire" },
        { id: "sacs-a-gouter", name: "Borse merenda", slug: "sacs-a-gouter" },
        { id: "sacs-enfant-licence", name: "Borse bimbi personaggi/licenza", slug: "sacs-enfant-licence" },
        { id: "sacs-activites", name: "Borse attività (danza, sport)", slug: "sacs-activites" },
        { id: "sacs-anti-perte", name: "Borse anti-smarrimento", slug: "sacs-anti-perte" }
      ]
    },
    {
      id: "sacs-specialises",
      name: "Borse specializzate",
      slug: "sacs-specialises",
      subcategories: [
        { id: "isothermes-repas", name: "Borse termiche per pasti", slug: "isothermes-repas" },
        { id: "isothermes-pique-nique", name: "Borse termiche per picnic", slug: "isothermes-pique-nique" },
        { id: "isothermes-medicaments", name: "Borse termiche per medicinali", slug: "isothermes-medicaments" },
        { id: "photo-video", name: "Borse foto e video", slug: "photo-video" },
        { id: "drones", name: "Borse per droni", slug: "drones" },
        { id: "peche-chasse", name: "Borse pesca e caccia", slug: "peche-chasse" },
        { id: "trekking-hydratation", name: "Zaini trekking con idratazione", slug: "trekking-hydratation" },
        { id: "moto-cuir", name: "Borse moto in pelle", slug: "moto-cuir" },
        { id: "moto-textile", name: "Borse moto in tessuto", slug: "moto-textile" },
        { id: "sacoches-velo-avant", name: "Borse anteriori per bici", slug: "sacoches-velo-avant" },
        { id: "sacoches-velo-arriere", name: "Borse posteriori per bici", slug: "sacoches-velo-arriere" },
        { id: "sacoches-velo-cadre", name: "Borse da telaio per bici", slug: "sacoches-velo-cadre" },
        { id: "plongee", name: "Borse da immersione", slug: "plongee" },
        { id: "equipement-btp", name: "Borse per attrezzature edili", slug: "equipement-btp" },
        { id: "instruments-musicaux", name: "Borse per strumenti musicali", slug: "instruments-musicaux" },
        { id: "medicaux-urgences", name: "Borse mediche/emergenza", slug: "medicaux-urgences" }
      ]
    },
    {
      id: "bagagerie-professionnelle-voyage",
      name: "Bagagli professionali & viaggio",
      slug: "bagagerie-professionnelle-voyage",
      subcategories: [
        { id: "cabine-pro", name: "Borse da cabina professionali", slug: "cabine-pro" },
        { id: "pilotes", name: "Borse da pilota", slug: "pilotes" },
        { id: "trolley-medical", name: "Trolley medico", slug: "trolley-medical" },
        { id: "echantillons-commerciaux", name: "Valigie campioni commerciali", slug: "echantillons-commerciaux" },
        { id: "trolley-cabine-organisation", name: "Trolley da cabina con organizzazione multi-tasche", slug: "trolley-cabine-organisation" },
        { id: "triangulaires-specifiques", name: "Borse triangolari per trasporti specifici", slug: "triangulaires-specifiques" }
      ]
    },
    {
      id: "housses-protections",
      name: "Coperture & protezioni",
      slug: "housses-protections",
      subcategories: [
        { id: "housses-valises", name: "Coperture per valigie", slug: "housses-valises" },
        { id: "housses-vetements-costumes", name: "Coperture per abiti e completi", slug: "housses-vetements-costumes" },
        { id: "housses-chaussures", name: "Coperture per scarpe", slug: "housses-chaussures" },
        { id: "housses-sacs-a-main", name: "Coperture per borse a mano", slug: "housses-sacs-a-main" },
        { id: "sangles-valise", name: "Cinghie per valigia", slug: "sangles-valise" },
        { id: "etiquettes-bagages", name: "Etichette bagaglio", slug: "etiquettes-bagages" },
        { id: "filets-organiseurs", name: "Reti e organizzatori", slug: "filets-organiseurs" },
        { id: "cubes-rangement", name: "Cubi di organizzazione", slug: "cubes-rangement" },
        { id: "filets-voiture", name: "Reti per auto", slug: "filets-voiture" },
        { id: "protections-anti-pluie", name: "Protezioni antipioggia", slug: "protections-anti-pluie" }
      ]
    },
    {
      id: "accessoires-bagagerie",
      name: "Accessori bagagli",
      slug: "accessoires-bagagerie",
      subcategories: [
        { id: "cadenas-tsa", name: "Lucchetti TSA", slug: "cadenas-tsa" },
        { id: "ceintures-valise", name: "Cinture per valigia", slug: "ceintures-valise" },
        { id: "porte-passeport", name: "Portapassaporto", slug: "porte-passeport" },
        { id: "porte-billets", name: "Portabiglietti", slug: "porte-billets" },
        { id: "porte-etiquettes", name: "Portaetichette", slug: "porte-etiquettes" },
        { id: "kits-voyage-bouteilles", name: "Kit da viaggio (bottiglie)", slug: "kits-voyage-bouteilles" },
        { id: "kits-voyage-oreillers", name: "Kit da viaggio (cuscini)", slug: "kits-voyage-oreillers" },
        { id: "kits-voyage-masques", name: "Kit da viaggio (maschere per dormire)", slug: "kits-voyage-masques" },
        { id: "organiseurs-electroniques", name: "Organizer elettronici", slug: "organiseurs-electroniques" },
        { id: "pese-bagage", name: "Bilancia per bagagli", slug: "pese-bagage" },
        { id: "sangles-renfort", name: "Cinghie di rinforzo", slug: "sangles-renfort" }
      ]
    },
    {
      id: "sacs-mode-luxe",
      name: "Borse moda & lusso",
      slug: "sacs-mode-luxe",
      subcategories: [
        { id: "sacs-createurs", name: "Borse di designer", slug: "sacs-createurs" },
        { id: "edition-limitee", name: "Borse in edizione limitata", slug: "edition-limitee" },
        { id: "haute-couture", name: "Borse haute couture", slug: "haute-couture" },
        { id: "vintage-certifies", name: "Borse vintage certificate", slug: "vintage-certifies" },
        { id: "collection-dior", name: "Collezione Dior", slug: "collection-dior" },
        { id: "collection-chanel", name: "Collezione Chanel", slug: "collection-chanel" },
        { id: "collection-lv", name: "Collezione LV", slug: "collection-lv" },
        { id: "collection-ysl", name: "Collezione YSL", slug: "collection-ysl" },
        { id: "expertise-authentification", name: "Perizia e autenticazione", slug: "expertise-authentification" }
      ]
    },
    {
      id: "sacs-artisanaux-locaux",
      name: "Borse artigianali & locali",
      slug: "sacs-artisanaux-locaux",
      subcategories: [
        { id: "cuir-artisanal", name: "Borse in pelle artigianale", slug: "cuir-artisanal" },
        { id: "sacs-tresses", name: "Borse intrecciate", slug: "sacs-tresses" },
        { id: "sacs-berberes", name: "Borse berbere", slug: "sacs-berberes" },
        { id: "sacs-traditionnels", name: "Borse tradizionali", slug: "sacs-traditionnels" },
        { id: "sacs-faits-main", name: "Borse fatte a mano", slug: "sacs-faits-main" },
        { id: "creations-locales", name: "Creazioni locali e pezzi unici", slug: "creations-locales" }
      ]
    },
    {
      id: "materiaux-fabrication",
      name: "Materiali & fabbricazione",
      slug: "materiaux-fabrication",
      subcategories: [
        { id: "cuir-veritable", name: "Vera pelle", slug: "cuir-veritable" },
        { id: "cuir-vegan", name: "Pelle vegana", slug: "cuir-vegan" },
        { id: "cuir-recycle", name: "Pelle riciclata", slug: "cuir-recycle" },
        { id: "nylon", name: "Nylon", slug: "nylon" },
        { id: "polyester", name: "Poliestere", slug: "polyester" },
        { id: "toile", name: "Tela", slug: "toile" },
        { id: "canevas", name: "Tessuto canvas", slug: "canevas" },
        { id: "abs", name: "ABS", slug: "abs" },
        { id: "polycarbonate", name: "Policarbonato", slug: "polycarbonate" },
        { id: "aluminium", name: "Alluminio", slug: "aluminium" },
        { id: "paille-fibres-naturelles", name: "Paglia e fibre naturali", slug: "paille-fibres-naturelles" },
        { id: "waterproof-impermeables", name: "Impermeabili e idrorepellenti", slug: "waterproof-impermeables" },
        { id: "anti-dechirure", name: "Antistrappo", slug: "anti-dechirure" },
        { id: "resistants-aux-chocs", name: "Resistenti agli urti", slug: "resistants-aux-chocs" }
      ]
    },
    {
      id: "segments-usages",
      name: "Segmenti & usi",
      slug: "segments-usages",
      subcategories: [
        { id: "voyage", name: "Viaggio", slug: "voyage" },
        { id: "quotidien", name: "Quotidiano", slug: "quotidien" },
        { id: "etude-scolaire", name: "Studio/scuola", slug: "etude-scolaire" },
        { id: "travail-business", name: "Lavoro & Business", slug: "travail-business" },
        { id: "sport-usage", name: "Sport", slug: "sport-usage" },
        { id: "outdoor", name: "Outdoor", slug: "outdoor" },
        { id: "professionnels", name: "Professionale", slug: "professionnels" },
        { id: "luxe", name: "Lusso", slug: "luxe" },
        { id: "artisanal", name: "Artigianale", slug: "artisanal" },
        { id: "casual", name: "Casual", slug: "casual" },
        { id: "urban-tech", name: "Tecnologia urbana", slug: "urban-tech" }
      ]
    }
  ]
};