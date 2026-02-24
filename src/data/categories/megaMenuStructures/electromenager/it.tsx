import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Plug } from "lucide-react";

export const electromenagerIt: MenuCategory = {
  id: "electromenager",
  name: "Elettrodomestici",
  slug: "electromenager",
  icon: <Plug className="w-4 h-4" />,
  subcategories: [
    {
      id: "refrigerateurs-congelateurs",
      name: "Frigoriferi e Congelatori",
      slug: "refrigerateurs-congelateurs",
      subcategories: [
        { id: "refrigerateurs-combines", name: "Frigoriferi combinati", slug: "refrigerateurs-combines" },
        { id: "refrigerateurs-simples", name: "Frigoriferi monoporta", slug: "refrigerateurs-simples" },
        { id: "refrigerateurs-americains", name: "Frigoriferi americani (side-by-side)", slug: "refrigerateurs-americains" },
        { id: "refrigerateurs-multi-portes", name: "Frigoriferi multporta", slug: "refrigerateurs-multi-portes" },
        { id: "refrigerateurs-encastrables", name: "Frigoriferi da incasso", slug: "refrigerateurs-encastrables" },
        { id: "mini-frigos", name: "Mini-frigo", slug: "mini-frigos" },
        { id: "congelateurs-coffre", name: "Congelatori a pozzetto", slug: "congelateurs-coffre" },
        { id: "congelateurs-armoires", name: "Congelatori verticali", slug: "congelateurs-armoires" },
        { id: "congelateurs-compacts", name: "Congelatori compatti", slug: "congelateurs-compacts" },
        { id: "refrigerateurs-boissons", name: "Frigoriferi per bevande", slug: "refrigerateurs-boissons" },
        { id: "refrigerateurs-vitres", name: "Frigoriferi con porta in vetro", slug: "refrigerateurs-vitres" },
        { id: "refrigerateurs-professionnels", name: "Frigoriferi professionali", slug: "refrigerateurs-professionnels" }
      ]
    },
    {
      id: "lavage-sechage",
      name: "Lavaggio e Asciugatura",
      slug: "lavage-sechage",
      subcategories: [
        { id: "lave-linge-frontal", name: "Lavatrici a carico frontale", slug: "lave-linge-frontal" },
        { id: "lave-linge-top", name: "Lavatrici a carico dall'alto", slug: "lave-linge-top" },
        { id: "lave-linge-grande-capacite", name: "Lavatrici grande capacità", slug: "lave-linge-grande-capacite" },
        { id: "lave-linge-connecte", name: "Lavatrici smart", slug: "lave-linge-connecte" },
        { id: "seche-linge-condensation", name: "Asciugatrici a condensazione", slug: "seche-linge-condensation" },
        { id: "seche-linge-pompe-a-chaleur", name: "Asciugatrici a pompa di calore", slug: "seche-linge-pompe-a-chaleur" },
        { id: "seche-linge-evacuation", name: "Asciugatrici ventilate", slug: "seche-linge-evacuation" },
        { id: "lave-linge-sechant", name: "Lavasciuga", slug: "lave-linge-sechant" },
        { id: "mini-lave-linge", name: "Mini lavatrici", slug: "mini-lave-linge" },
        { id: "machines-professionnelles-lavage", name: "Macchine professionali", slug: "machines-professionnelles-lavage" }
      ]
    },
    {
      id: "cuisson-cuisine",
      name: "Cottura e Cucina",
      slug: "cuisson-cuisine",
      subcategories: [
        {
          id: "cuisinieres",
          name: "Cucine",
          slug: "cuisinieres",
          subcategories: [
            { id: "gaz", name: "Gas", slug: "gaz" },
            { id: "electrique", name: "Elettrica", slug: "electrique" },
            { id: "mixte", name: "Mista", slug: "mixte" }
          ]
        },
        {
          id: "fours-encastrables",
          name: "Forni da incasso",
          slug: "fours-encastrables",
          subcategories: [
            { id: "pyrolyse", name: "Pirolisi", slug: "pyrolyse" },
            { id: "catalyse", name: "Catalisi", slug: "catalyse" },
            { id: "vapeur", name: "Vapore", slug: "vapeur" }
          ]
        },
        {
          id: "micro-ondes",
          name: "Microonde",
          slug: "micro-ondes",
          subcategories: [
            { id: "grill", name: "Grill", slug: "grill" },
            { id: "combine", name: "Combinato", slug: "combine" }
          ]
        },
        {
          id: "plaques-de-cuisson",
          name: "Piani cottura",
          slug: "plaques-de-cuisson",
          subcategories: [
            { id: "gaz-plaques", name: "Gas", slug: "gaz-plaques" },
            { id: "induction", name: "Induzione", slug: "induction" },
            { id: "vitroceramique", name: "Vetroceramica", slug: "vitroceramique" }
          ]
        },
        { id: "tables-de-cuisson-portatives", name: "Piastre portatili", slug: "tables-de-cuisson-portatives" },
        {
          id: "friteuses",
          name: "Friggitrici",
          slug: "friteuses",
          subcategories: [
            { id: "classiques", name: "Classiche", slug: "classiques" },
            { id: "air-fryer", name: "Ad aria", slug: "air-fryer" }
          ]
        },
        { id: "multicuiseurs", name: "Multicooker", slug: "multicuiseurs" },
        { id: "autocuiseurs-cocottes", name: "Pentole a pressione e cocotte", slug: "autocuiseurs-cocottes" },
        { id: "machines-sous-vide", name: "Macchine sottovuoto", slug: "machines-sous-vide" },
        { id: "chauffe-plats", name: "Scaldavivande", slug: "chauffe-plats" }
      ]
    },
    {
      id: "petits-appareils-cuisine",
      name: "Piccoli Elettrodomestici da Cucina",
      slug: "petits-appareils-cuisine",
      subcategories: [
        { id: "mixeurs", name: "Mixer a immersione", slug: "mixeurs" },
        { id: "blenders", name: "Frullatori", slug: "blenders" },
        { id: "robots-cuiseurs", name: "Robot da cucina", slug: "robots-cuiseurs" },
        { id: "robots-patissier", name: "Planetarie", slug: "robots-patissier" },
        { id: "extracteurs-jus", name: "Estrattori di succo", slug: "extracteurs-jus" },
        { id: "centrifugeuses", name: "Centrifughe", slug: "centrifugeuses" },
        { id: "batteurs", name: "Sbattitori elettrici", slug: "batteurs" },
        { id: "hachoirs", name: "Tritatutto", slug: "hachoirs" },
        { id: "grill-panini", name: "Grill e panini maker", slug: "grill-panini" },
        { id: "gaufriers", name: "Waferiere", slug: "gaufriers" },
        { id: "crepieres", name: "Crepiere", slug: "crepieres" },
        { id: "cuiseurs-vapeur", name: "Cuocivapore", slug: "cuiseurs-vapeur" },
        { id: "cuiseurs-riz", name: "Cuociriso", slug: "cuiseurs-riz" },
        { id: "moulins-cafe", name: "Macinacaffè", slug: "moulins-cafe" },
        {
          id: "cafetieres",
          name: "Macchine da caffè",
          slug: "cafetieres",
          subcategories: [
            { id: "expresso", name: "Espresso", slug: "expresso" },
            { id: "filtre", name: "Filtro", slug: "filtre" },
            { id: "capsules", name: "Capsule", slug: "capsules" }
          ]
        },
        { id: "bouilloires", name: "Bollitori", slug: "bouilloires" },
        { id: "grille-pain", name: "Tostapane", slug: "grille-pain" },
        { id: "machines-sandwich", name: "Tostiere", slug: "machines-sandwich" },
        { id: "fondue-raclette", name: "Apparecchi per fonduta e raclette", slug: "fondue-raclette" }
      ]
    },
    {
      id: "entretien-maison",
      name: "Cura della Casa",
      slug: "entretien-maison",
      subcategories: [
        { id: "aspirateurs-traineaux", name: "Aspirapolvere a traino", slug: "aspirateurs-traineaux" },
        { id: "aspirateurs-balais", name: "Scope elettriche", slug: "aspirateurs-balais" },
        { id: "aspirateurs-robot", name: "Robot aspirapolvere", slug: "aspirateurs-robot" },
        { id: "aspirateurs-eau-poussiere", name: "Aspiratori solidi/liquidi", slug: "aspirateurs-eau-poussiere" },
        { id: "nettoyeurs-vapeur", name: "Pulitori a vapore", slug: "nettoyeurs-vapeur" },
        { id: "nettoyeurs-haute-pression", name: "Idropulitrici domestiche", slug: "nettoyeurs-haute-pression" },
        { id: "balais-electriques", name: "Scope elettriche", slug: "balais-electriques" },
        { id: "nettoyeurs-vitres", name: "Pulitori per vetri", slug: "nettoyeurs-vitres" },
        { id: "purificateurs-air", name: "Purificatori d’aria", slug: "purificateurs-air" },
        { id: "deshumidificateurs", name: "Deumidificatori", slug: "deshumidificateurs" },
        { id: "humidificateurs", name: "Umidificatori", slug: "humidificateurs" }
      ]
    },
    {
      id: "climatisation-chauffage",
      name: "Climatizzazione & Riscaldamento",
      slug: "climatisation-chauffage",
      subcategories: [
        { id: "climatiseurs-split", name: "Climatizzatori split", slug: "climatiseurs-split" },
        { id: "climatiseurs-mobiles", name: "Climatizzatori portatili", slug: "climatiseurs-mobiles" },
        {
          id: "ventilateurs",
          name: "Ventilatori",
          slug: "ventilateurs",
          subcategories: [
            { id: "tour", name: "A torre", slug: "tour" },
            { id: "mural", name: "A parete", slug: "mural" },
            { id: "de-table", name: "Da tavolo", slug: "de-table" }
          ]
        },
        { id: "radiateurs-electriques", name: "Radiatori elettrici", slug: "radiateurs-electriques" },
        { id: "chauffages-soufflants", name: "Termoventilatori", slug: "chauffages-soufflants" },
        { id: "chauffages-gaz", name: "Riscaldatori a gas", slug: "chauffages-gaz" },
        { id: "poeles-petrole", name: "Stufe a cherosene", slug: "poeles-petrole" },
        { id: "chauffe-eau-electriques", name: "Scaldacqua elettrici", slug: "chauffe-eau-electriques" },
        { id: "chauffe-eau-gaz", name: "Scaldacqua a gas", slug: "chauffe-eau-gaz" },
        { id: "chauffage-solaire-domestique", name: "Riscaldamento solare domestico", slug: "chauffage-solaire-domestique" },
        { id: "defroisseurs-vapeur", name: "Stiratori a vapore", slug: "defroisseurs-vapeur" }
      ]
    },
    {
      id: "electromenager-salle-de-bain",
      name: "Elettrodomestici per il Bagno",
      slug: "electromenager-salle-de-bain",
      subcategories: [
        { id: "seche-cheveux", name: "Asciugacapelli", slug: "seche-cheveux" },
        { id: "lisseurs-boucleurs", name: "Piastra e arricciacapelli", slug: "lisseurs-boucleurs" },
        { id: "tondeuses-rasoirs", name: "Regolatori & rasoi elettrici", slug: "tondeuses-rasoirs" },
        { id: "epilateurs", name: "Epilatori", slug: "epilateurs" },
        { id: "brosse-visage", name: "Spazzola viso elettrica", slug: "brosse-visage" },
        { id: "miroirs-lumineux", name: "Specchi illuminati", slug: "miroirs-lumineux" },
        { id: "sterilisateurs-desinfecteurs", name: "Sterilizzatori & disinfettori", slug: "sterilisateurs-desinfecteurs" }
      ]
    },
    {
      id: "traitement-eau",
      name: "Trattamento dell’Acqua",
      slug: "traitement-eau",
      subcategories: [
        { id: "filtres-eau", name: "Filtri d’acqua", slug: "filtres-eau" },
        { id: "purificateurs-eau", name: "Purificatori", slug: "purificateurs-eau" },
        { id: "fontaines-eau", name: "Distributori d’acqua", slug: "fontaines-eau" },
        { id: "distributeurs-eau-chaude-froide", name: "Distributori acqua calda/fredda", slug: "distributeurs-eau-chaude-froide" },
        { id: "osmose-inverse", name: "Sistemi ad osmosi inversa", slug: "osmose-inverse" }
      ]
    },
    {
      id: "appareils-specialises",
      name: "Apparecchi Specializzati",
      slug: "appareils-specialises",
      subcategories: [
        { id: "machines-pain", name: "Macchine per il pane", slug: "machines-pain" },
        { id: "machines-pates", name: "Macchine per la pasta", slug: "machines-pates" },
        { id: "machines-glace", name: "Macchine per gelato", slug: "machines-glace" },
        { id: "hot-dog", name: "Macchine hot-dog", slug: "hot-dog" },
        { id: "sorbetieres", name: "Sorbettiere", slug: "sorbetieres" },
        { id: "deshydrateurs-alimentaires", name: "Essiccatori alimentari", slug: "deshydrateurs-alimentaires" },
        { id: "fumoir", name: "Affumicatori", slug: "fumoir" },
        { id: "plateaux-chauffants", name: "Piastre/scaldavivande elettriche", slug: "plateaux-chauffants" }
      ]
    },
    {
      id: "froid-congelation-pro",
      name: "Refrigerazione e Congelamento Professionale",
      slug: "froid-congelation-pro",
      subcategories: [
        { id: "armoires-refrigerees", name: "Armadi refrigerati", slug: "armoires-refrigerees" },
        { id: "congelateurs-pro", name: "Congelatori professionali", slug: "congelateurs-pro" },
        { id: "vitrines-refrigerees", name: "Vetrine refrigerate", slug: "vitrines-refrigerees" },
        { id: "comptoirs-froids", name: "Banchi frigo", slug: "comptoirs-froids" },
        { id: "machines-glacons", name: "Fabbricatori di ghiaccio", slug: "machines-glacons" },
        { id: "cellules-refroidissement", name: "Abbattitori di temperatura", slug: "cellules-refroidissement" }
      ]
    },
    {
      id: "cuisson-professionnelle",
      name: "Cottura Professionale",
      slug: "cuisson-professionnelle",
      subcategories: [
        {
          id: "fours-pro",
          name: "Forni professionali",
          slug: "fours-pro",
          subcategories: [
            { id: "pizza", name: "Pizza", slug: "pizza" },
            { id: "pain", name: "Pane", slug: "pain" },
            { id: "convection", name: "Convezione", slug: "convection" }
          ]
        },
        { id: "plaques-gaz-pro", name: "Piani gas professionali", slug: "plaques-gaz-pro" },
        { id: "grillades-planchas", name: "Griglie & plancha", slug: "grillades-planchas" },
        { id: "marmites-electriques", name: "Bollitori/pentole elettriche", slug: "marmites-electriques" },
        { id: "friteuses-pro", name: "Friggitrici professionali", slug: "friteuses-pro" },
        { id: "bain-maries", name: "Bagnomaria", slug: "bain-maries" }
      ]
    },
    {
      id: "accessoires-pieces-detachees",
      name: "Accessori & Ricambi",
      slug: "accessoires-pieces-detachees",
      subcategories: [
        { id: "filtres-aspirateurs", name: "Filtri aspirapolvere", slug: "filtres-aspirateurs" },
        { id: "filtres-frigos", name: "Filtri frigorifero", slug: "filtres-frigos" },
        { id: "bacs-legumes", name: "Cassetti verdura", slug: "bacs-legumes" },
        { id: "bouteilles-cartouches-gaz", name: "Bombole e cartucce gas", slug: "bouteilles-cartouches-gaz" },
        { id: "tuyaux-arrivee-evacuation", name: "Tubi di ingresso e scarico", slug: "tuyaux-arrivee-evacuation" },
        { id: "poignees-boutons", name: "Maniglie & manopole", slug: "poignees-boutons" },
        { id: "plateaux-micro-ondes", name: "Piatti microonde", slug: "plateaux-micro-ondes" },
        { id: "batteries-cuisine-compatibles", name: "Pentolame compatibile", slug: "batteries-cuisine-compatibles" },
        { id: "grilles-plaques", name: "Griglie & teglie", slug: "grilles-plaques" },
        { id: "accessoires-robot-cuisine", name: "Accessori robot cucina", slug: "accessoires-robot-cuisine" },
        { id: "lames-de-coupe", name: "Lame di taglio", slug: "lames-de-coupe" },
        { id: "pieces-chauffe-eau", name: "Ricambi scaldacqua", slug: "pieces-chauffe-eau" }
      ]
    },
    {
      id: "electromenager-nomade-mini",
      name: "Elettrodomestici Portatili & Mini",
      slug: "electromenager-nomade-mini",
      subcategories: [
        { id: "mini-glacieres-electriques", name: "Mini frigoriferi elettrici", slug: "mini-glacieres-electriques" },
        { id: "mini-cuiseurs", name: "Mini cuocitori", slug: "mini-cuiseurs" },
        { id: "appareils-portables-batterie", name: "Dispositivi portatili a batteria", slug: "appareils-portables-batterie" },
        { id: "mini-ventilateurs", name: "Mini ventilatori", slug: "mini-ventilateurs" },
        { id: "mini-fers-vapeur", name: "Mini ferri a vapore", slug: "mini-fers-vapeur" },
        { id: "appareils-camping", name: "Piccoli apparecchi da campeggio", slug: "appareils-camping" }
      ]
    },
    {
      id: "securite-energie",
      name: "Sicurezza & Energia",
      slug: "securite-energie",
      subcategories: [
        { id: "parafoudres", name: "Protezione da sovratensioni", slug: "parafoudres" },
        { id: "multiprises-intelligentes", name: "Ciabatte intelligenti", slug: "multiprises-intelligentes" },
        { id: "regulateurs-tension", name: "Regolatori di tensione", slug: "regulateurs-tension" },
        { id: "onduleurs-domestiques", name: "UPS domestici", slug: "onduleurs-domestiques" }
      ]
    },
    {
      id: "marques-populaires",
      name: "Marche Popolari",
      slug: "marques-populaires",
      subcategories: [
        { id: "samsung", name: "Samsung", slug: "samsung" },
        { id: "lg", name: "LG", slug: "lg" },
        { id: "beko", name: "Beko", slug: "beko" },
        { id: "bosch", name: "Bosch", slug: "bosch" },
        { id: "siemens", name: "Siemens", slug: "siemens" },
        { id: "whirlpool", name: "Whirlpool", slug: "whirlpool" },
        { id: "brandt", name: "Brandt", slug: "brandt" },
        { id: "kenwood", name: "Kenwood", slug: "kenwood" },
        { id: "moulinex", name: "Moulinex", slug: "moulinex" },
        { id: "philips", name: "Philips", slug: "philips" },
        { id: "hisense", name: "Hisense", slug: "hisense" },
        { id: "haier", name: "Haier", slug: "haier" },
        { id: "candy", name: "Candy", slug: "candy" },
        { id: "indesit", name: "Indesit", slug: "indesit" },
        { id: "midea", name: "Midea", slug: "midea" },
        { id: "delonghi", name: "Delonghi", slug: "delonghi" },
        { id: "severin", name: "Severin", slug: "severin" },
        { id: "rowenta", name: "Rowenta", slug: "rowenta" }
      ]
    },
    {
      id: "segments-usage",
      name: "Segmenti d’Uso",
      slug: "segments-usage",
      subcategories: [
        { id: "appareils-menagers-classiques", name: "Elettrodomestici standard", slug: "appareils-menagers-classiques" },
        { id: "appareils-professionnels", name: "Elettrodomestici professionali", slug: "appareils-professionnels" },
        { id: "appareils-petites-cuisines", name: "Apparecchi per cucine piccole", slug: "appareils-petites-cuisines" },
        { id: "appareils-energetiques-a-plus-plus", name: "Efficienza energetica A+ a A++", slug: "appareils-energetiques-a-plus-plus" },
        { id: "appareils-connectes-smart-home", name: "Apparecchi smart-home connessi", slug: "appareils-connectes-smart-home" },
        { id: "appareils-economiques-compacts", name: "Apparecchi economici & compatti", slug: "appareils-economiques-compacts" }
      ]
    }
  ]
};