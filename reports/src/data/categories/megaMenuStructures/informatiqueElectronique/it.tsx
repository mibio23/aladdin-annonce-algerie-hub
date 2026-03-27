import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Laptop } from "lucide-react";

export const informatiqueElectroniqueIt: MenuCategory = {
  id: "informatique-electronique",
  name: "Informatica ed Elettronica",
  slug: "informatique-electronique",
  icon: <Laptop className="w-4 h-4" />,
  subcategories: [
    {
      id: "ordinateurs-pc",
      name: "Computer & PC",
      slug: "ordinateurs-pc",
      subcategories: [
        { id: "pc-de-bureau", name: "PC Desktop", slug: "pc-de-bureau" },
        { id: "pc-gaming", name: "PC Gaming", slug: "pc-gaming" },
        { id: "pc-professionnels", name: "PC Professionali", slug: "pc-professionnels" },
        { id: "mini-pc", name: "Mini PC", slug: "mini-pc" },
        { id: "pc-tout-en-un", name: "PC All-in-One", slug: "pc-tout-en-un" },
        { id: "ordinateurs-portables", name: "Computer Portatili", slug: "ordinateurs-portables" },
        { id: "ultrabooks", name: "Ultrabook", slug: "ultrabooks" },
        { id: "laptops-professionnels", name: "Laptop Professionali", slug: "laptops-professionnels" },
        { id: "laptops-gaming", name: "Laptop Gaming", slug: "laptops-gaming" },
        { id: "laptops-etudiants", name: "Laptop per Studenti", slug: "laptops-etudiants" },
        { id: "macbook", name: "MacBook", slug: "macbook" },
        { id: "chromebook", name: "Chromebook", slug: "chromebook" },
        { id: "stations-travail-portables", name: "Workstation Portatili", slug: "stations-travail-portables" },
        { id: "pc-reconditionnes", name: "PC Ricondizionati", slug: "pc-reconditionnes" }
      ]
    },
    {
      id: "smartphones",
      name: "Smartphone",
      slug: "smartphones",
      subcategories: [
        { id: "smartphones-android", name: "Smartphone Android", slug: "smartphones-android" },
        { id: "iphone", name: "iPhone", slug: "iphone" },
        { id: "smartphones-5g", name: "Smartphone 5G", slug: "smartphones-5g" },
        { id: "smartphones-gaming", name: "Smartphone Gaming", slug: "smartphones-gaming" },
        { id: "smartphones-pliables", name: "Smartphone Pieghevoli", slug: "smartphones-pliables" },
        { id: "smartphones-entree-de-gamme", name: "Smartphone Entry Level", slug: "smartphones-entree-de-gamme" },
        { id: "smartphones-milieu-de-gamme", name: "Smartphone Fascia Media", slug: "smartphones-milieu-de-gamme" },
        { id: "smartphones-haut-de-gamme", name: "Smartphone Fascia Alta", slug: "smartphones-haut-de-gamme" },
        { id: "smartphones-reconditionnes", name: "Smartphone Ricondizionati", slug: "smartphones-reconditionnes" },
        { id: "telephones-robustes-rugged", name: "Telefoni Rugged", slug: "telephones-robustes-rugged" },
        { id: "mini-smartphones", name: "Mini Smartphone", slug: "mini-smartphones" },
        { id: "smartphones-professionnels", name: "Smartphone Professionali", slug: "smartphones-professionnels" }
      ]
    },
    {
      id: "telephones-classiques-fixes",
      name: "Telefoni Classici e Fissi",
      slug: "telephones-classiques-fixes",
      subcategories: [
        { id: "telephones-portables-classiques", name: "Cellulari Classici", slug: "telephones-portables-classiques" },
        { id: "telephones-a-clapet", name: "Telefoni a Conchiglia", slug: "telephones-a-clapet" },
        { id: "telephones-seniors", name: "Telefoni per Anziani", slug: "telephones-seniors" },
        { id: "telephones-fixes-filaires", name: "Telefoni Fissi con Filo", slug: "telephones-fixes-filaires" },
        { id: "telephones-fixes-sans-fil", name: "Telefoni Cordless", slug: "telephones-fixes-sans-fil" },
        { id: "combines-dect", name: "Portatili DECT", slug: "combines-dect" },
        { id: "telephones-voip", name: "Telefoni VoIP", slug: "telephones-voip" }
      ]
    },
    {
      id: "tablettes-appareils-mobiles",
      name: "Tablet e Dispositivi Mobili",
      slug: "tablettes-appareils-mobiles",
      subcategories: [
        { id: "tablettes-android", name: "Tablet Android", slug: "tablettes-android" },
        { id: "ipad", name: "iPad", slug: "ipad" },
        { id: "tablettes-graphiques", name: "Tavolette Grafiche", slug: "tablettes-graphiques" },
        { id: "tablettes-enfants", name: "Tablet per Bambini", slug: "tablettes-enfants" },
        { id: "liseuses-electroniques", name: "E-reader", slug: "liseuses-electroniques" },
        { id: "phablettes", name: "Phablet", slug: "phablettes" },
        { id: "mini-tablettes", name: "Mini Tablet", slug: "mini-tablettes" },
        { id: "tablettes-professionnelles", name: "Tablet Professionali", slug: "tablettes-professionnelles" }
      ]
    },
    {
      id: "accessoires-telephones",
      name: "Accessori Telefonia",
      slug: "accessoires-telephones",
      subcategories: [
        { id: "coques-protection", name: "Cover Protettive", slug: "coques-protection" },
        { id: "housses", name: "Custodie", slug: "housses" },
        { id: "etuis", name: "Astucci", slug: "etuis" },
        { id: "bumpers", name: "Bumper", slug: "bumpers" },
        { id: "vitres-protections-ecran", name: "Vetri e Pellicole Protettive", slug: "vitres-protections-ecran" },
        { id: "supports-telephones", name: "Supporti per Telefono", slug: "supports-telephones" },
        { id: "supports-voiture", name: "Supporti Auto", slug: "supports-voiture" },
        { id: "stylos-tactiles", name: "Penne Touch", slug: "stylos-tactiles" },
        { id: "anneaux-grips", name: "Anelli e Grip", slug: "anneaux-grips" },
        { id: "pochettes-impermeables", name: "Custodie Impermeabili", slug: "pochettes-impermeables" }
      ]
    },
    {
      id: "batteries-charge",
      name: "Batterie e Caricabatterie",
      slug: "batteries-charge",
      subcategories: [
        { id: "chargeurs-standard", name: "Caricabatterie Standard", slug: "chargeurs-standard" },
        { id: "chargeurs-rapides-fast-quick", name: "Caricabatterie Rapidi (Fast Charge)", slug: "chargeurs-rapides-fast-quick" },
        { id: "chargeurs-sans-fil", name: "Caricabatterie Wireless", slug: "chargeurs-sans-fil" },
        { id: "stations-recharge", name: "Stazioni di Ricarica", slug: "stations-recharge" },
        { id: "powerbanks", name: "Powerbank", slug: "powerbanks" },
        { id: "batteries-externes-haute-capacite", name: "Batterie Esterne ad Alta Capacità", slug: "batteries-externes-haute-capacite" },
        { id: "cables-usb", name: "Cavi USB (Type-C, Lightning, Micro-USB)", slug: "cables-usb" },
        { id: "adaptateurs-secteur", name: "Adattatori di Alimentazione", slug: "adaptateurs-secteur" },
        { id: "chargeurs-voiture", name: "Caricabatterie da Auto", slug: "chargeurs-voiture" },
        { id: "hubs-usb-multiprises-intelligentes", name: "Hub USB e Multiprese Smart", slug: "hubs-usb-multiprises-intelligentes" }
      ]
    },
    {
      id: "audio-mobile",
      name: "Audio Mobile",
      slug: "audio-mobile",
      subcategories: [
        { id: "ecouteurs-filaires", name: "Auricolari con Filo", slug: "ecouteurs-filaires" },
        { id: "ecouteurs-bluetooth", name: "Auricolari Bluetooth", slug: "ecouteurs-bluetooth" },
        { id: "airpods", name: "AirPods", slug: "airpods" },
        { id: "casques-sans-fil", name: "Cuffie Wireless", slug: "casques-sans-fil" },
        { id: "casques-filaires", name: "Cuffie con Filo", slug: "casques-filaires" },
        { id: "enceintes-bluetooth", name: "Altoparlanti Bluetooth", slug: "enceintes-bluetooth" },
        { id: "kits-mains-libres", name: "Kit Vivavoce", slug: "kits-mains-libres" },
        { id: "micros-mobiles", name: "Microfoni per Mobile", slug: "micros-mobiles" },
        { id: "adaptateurs-audio", name: "Adattatori Audio", slug: "adaptateurs-audio" }
      ]
    },
    {
      id: "pieces-reparation-telephone",
      name: "Parti e Riparazione Telefoni",
      slug: "pieces-reparation-telephone",
      subcategories: [
        { id: "ecrans-lcd-oled", name: "Schermi LCD e OLED", slug: "ecrans-lcd-oled" },
        { id: "batteries-internes", name: "Batterie Interne", slug: "batteries-internes" },
        { id: "connecteurs-charge", name: "Connettori di Ricarica", slug: "connecteurs-charge" },
        { id: "nappes-circuits", name: "Cavi Flat e Circuiti", slug: "nappes-circuits" },
        { id: "cameras-avant-arriere", name: "Fotocamere Anteriori/Posteriori", slug: "cameras-avant-arriere" },
        { id: "chassis-coques-arriere", name: "Telai e Scocche Posteriori", slug: "chassis-coques-arriere" },
        { id: "boutons-flex", name: "Pulsanti e Flex", slug: "boutons-flex" },
        { id: "haut-parleurs-micros", name: "Altoparlanti e Microfoni", slug: "haut-parleurs-micros" },
        { id: "vitres-arriere", name: "Vetri Posteriori", slug: "vitres-arriere" },
        { id: "kits-reparation", name: "Kit di Riparazione", slug: "kits-reparation" },
        { id: "outils-demontage", name: "Strumenti di Smontaggio", slug: "outils-demontage" },
        { id: "stations-soudure", name: "Stazioni Saldanti", slug: "stations-soudure" },
        { id: "ecrans-reconditionnes", name: "Schermi Ricondizionati", slug: "ecrans-reconditionnes" }
      ]
    },
    {
      id: "objets-connectes-mobile",
      name: "Dispositivi Connessi (Mobile)",
      slug: "objets-connectes-mobile",
      subcategories: [
        { id: "montres-connectees", name: "Smartwatch", slug: "montres-connectees" },
        { id: "bracelets-connectes", name: "Smartband", slug: "bracelets-connectes" },
        { id: "trackers-gps", name: "Tracker GPS", slug: "trackers-gps" },
        { id: "ecouteurs-intelligents", name: "Auricolari Smart", slug: "ecouteurs-intelligents" },
        { id: "lunettes-connectees", name: "Occhiali Smart", slug: "lunettes-connectees" },
        { id: "balises-bluetooth", name: "Tag Bluetooth", slug: "balises-bluetooth" },
        { id: "assistants-vocaux-portables", name: "Assistenti Vocali Portatili", slug: "assistants-vocaux-portables" }
      ]
    },
    {
      id: "reseau-communication-mobile",
      name: "Rete e Comunicazione Mobile",
      slug: "reseau-communication-mobile",
      subcategories: [
        { id: "cartes-sim", name: "Schede SIM", slug: "cartes-sim" },
        { id: "esim", name: "eSIM", slug: "esim" },
        { id: "routeurs-4g-5g", name: "Router 4G/5G", slug: "routeurs-4g-5g" },
        { id: "modems-portables", name: "Modem Portatili", slug: "modems-portables" },
        { id: "antennes-amplificateurs-reseau", name: "Antenne e Amplificatori di Segnale", slug: "antennes-amplificateurs-reseau" },
        { id: "repeteurs-gsm", name: "Ripetitori GSM", slug: "repeteurs-gsm" },
        { id: "boitiers-wifi-mobiles", name: "Hotspot Wi-Fi Mobili", slug: "boitiers-wifi-mobiles" },
        { id: "adaptateurs-reseau-telephone", name: "Adattatori di Rete Telefonica", slug: "adaptateurs-reseau-telephone" }
      ]
    },
    {
      id: "securite-protection-mobile",
      name: "Sicurezza e Protezione",
      slug: "securite-protection",
      subcategories: [
        { id: "antivols-telephone", name: "Antifurto per Telefono", slug: "antivols-telephone" },
        { id: "etuis-renforces", name: "Custodie Rinforzate", slug: "etuis-renforces" },
        { id: "coques-anti-chute", name: "Cover Anti-urto", slug: "coques-anti-chute" },
        { id: "protections-etanches-ip68", name: "Protezioni Impermeabili IP68", slug: "protections-etanches-ip68" },
        { id: "housses-anti-choc", name: "Custodie Anti-shock", slug: "housses-anti-choc" },
        { id: "verres-trempes-haute-resistance", name: "Vetri Temperati ad Alta Resistenza", slug: "verres-trempes-haute-resistance" },
        { id: "accessoires-confidentialite", name: "Accessori Privacy", slug: "accessoires-confidentialite" }
      ]
    },
    {
      id: "applications-services-mobiles",
      name: "Applicazioni e Servizi",
      slug: "applications-services",
      subcategories: [
        { id: "services-reparation-mobile", name: "Servizi di Riparazione Mobile", slug: "services-reparation-mobile" },
        { id: "debloquage-desimlockage", name: "Sblocco e Desimlock", slug: "debloquage-desimlockage" },
        { id: "transfert-donnees", name: "Trasferimento Dati", slug: "transfert-donnees" },
        { id: "diagnostics-mobiles", name: "Diagnostica Mobile", slug: "diagnostics-mobiles" },
        { id: "accessoires-sur-mesure", name: "Accessori su Misura", slug: "accessoires-sur-mesure" },
        { id: "personnalisation-mobile", name: "Personalizzazione Mobile", slug: "personnalisation-mobile" }
      ]
    },
    {
      id: "marques-populaires-mobiles",
      name: "Marchi Popolari (Mobile)",
      slug: "marques-populaires-mobiles",
      subcategories: [
        { id: "apple", name: "Apple", slug: "apple" },
        { id: "samsung", name: "Samsung", slug: "samsung" },
        { id: "xiaomi", name: "Xiaomi", slug: "xiaomi" },
        { id: "huawei", name: "Huawei", slug: "huawei" },
        { id: "oppo", name: "Oppo", slug: "oppo" },
        { id: "vivo", name: "Vivo", slug: "vivo" },
        { id: "realme", name: "Realme", slug: "realme" },
        { id: "infinix", name: "Infinix", slug: "infinix" },
        { id: "tecno", name: "Tecno", slug: "tecno" },
        { id: "oneplus", name: "OnePlus", slug: "oneplus" },
        { id: "sony", name: "Sony", slug: "sony" },
        { id: "nokia", name: "Nokia", slug: "nokia" },
        { id: "honor", name: "Honor", slug: "honor" },
        { id: "motorola", name: "Motorola", slug: "motorola" },
        { id: "lenovo", name: "Lenovo", slug: "lenovo" },
        { id: "asus", name: "Asus", slug: "asus" },
        { id: "zte", name: "ZTE", slug: "zte" },
        { id: "google-pixel", name: "Google Pixel", slug: "google-pixel" }
      ]
    },
    {
      id: "operateurs-mobiles-algerie",
      name: "Operatori Mobili in Algeria",
      slug: "operateurs-mobiles-algerie",
      subcategories: [
        { id: "djezzy", name: "Djezzy", slug: "djezzy" },
        { id: "ooredoo", name: "Ooredoo", slug: "ooredoo" },
        { id: "mobilis", name: "Mobilis", slug: "mobilis" },
        { id: "algerie-telecom", name: "Algérie Télécom", slug: "algerie-telecom" }
      ]
    },
    {
      id: "composants-informatiques",
      name: "Componenti Informatici",
      slug: "composants-informatiques",
      subcategories: [
        { id: "processeurs", name: "Processori (Intel, AMD)", slug: "processeurs" },
        { id: "cartes-graphiques", name: "Schede Video (NVIDIA, AMD)", slug: "cartes-graphiques" },
        { id: "cartes-meres", name: "Schede Madri", slug: "cartes-meres" },
        { id: "memoires-ram", name: "Memorie RAM", slug: "memoires-ram" },
        { id: "ssd", name: "SSD", slug: "ssd" },
        { id: "disques-durs-hdd", name: "Hard Disk HDD", slug: "disques-durs-hdd" },
        { id: "alimentation-pc", name: "Alimentatori PC", slug: "alimentation-pc" },
        { id: "boitiers-pc", name: "Case PC", slug: "boitiers-pc" },
        { id: "refroidissement-liquide", name: "Raffreddamento a Liquido", slug: "refroidissement-liquide" },
        { id: "ventilateurs-air", name: "Ventole e Raffreddamento ad Aria", slug: "ventilateurs-air" },
        { id: "pates-thermiques", name: "Paste Termiche", slug: "pates-thermiques" },
        { id: "cartes-son", name: "Schede Audio", slug: "cartes-son" },
        { id: "cartes-reseau", name: "Schede di Rete", slug: "cartes-reseau" },
        { id: "cartes-acquisition-video", name: "Schede di Acquisizione Video", slug: "cartes-acquisition-video" }
      ]
    },
    {
      id: "peripheriques-pc",
      name: "Periferiche PC",
      slug: "peripheriques-pc",
      subcategories: [
        { id: "ecrans-moniteurs", name: "Monitor e Schermi", slug: "ecrans-moniteurs" },
        { id: "moniteurs-gaming", name: "Monitor Gaming", slug: "moniteurs-gaming" },
        { id: "moniteurs-incurves", name: "Monitor Curvi", slug: "moniteurs-incurves" },
        {
          id: "claviers",
          name: "Tastiere",
          slug: "claviers",
          subcategories: [
            { id: "claviers-mecaniques", name: "Meccaniche", slug: "claviers-mecaniques" },
            { id: "claviers-sans-fil", name: "Wireless", slug: "claviers-sans-fil" },
            { id: "claviers-gaming", name: "Gaming", slug: "claviers-gaming" }
          ]
        },
        {
          id: "souris",
          name: "Mouse",
          slug: "souris",
          subcategories: [
            { id: "souris-filaire", name: "Con Filo", slug: "souris-filaire" },
            { id: "souris-sans-fil", name: "Wireless", slug: "souris-sans-fil" },
            { id: "souris-gaming", name: "Gaming", slug: "souris-gaming" }
          ]
        },
        { id: "tapis-souris", name: "Tappetini Mouse", slug: "tapis-souris" },
        { id: "webcams", name: "Webcam", slug: "webcams" },
        { id: "microphones", name: "Microfoni", slug: "microphones" },
        { id: "enceintes-pc", name: "Altoparlanti PC", slug: "enceintes-pc" },
        { id: "casques-audio", name: "Cuffie Audio", slug: "casques-audio" },
        { id: "disques-durs-externes", name: "Hard Disk Esterni", slug: "disques-durs-externes" },
        { id: "cles-usb", name: "Chiavette USB", slug: "cles-usb" },
        { id: "lecteurs-cartes-memoire", name: "Lettori Schede di Memoria", slug: "lecteurs-cartes-memoire" },
        { id: "stations-accueil", name: "Docking Station", slug: "stations-accueil" },
        { id: "imprimantes", name: "Stampanti", slug: "imprimantes" },
        { id: "scanners", name: "Scanner", slug: "scanners" },
        { id: "videoprojecteurs", name: "Videoproiettori", slug: "videoprojecteurs" }
      ]
    },
    {
      id: "reseau-internet",
      name: "Rete e Internet",
      slug: "reseau-internet",
      subcategories: [
        { id: "routeurs-wifi", name: "Router Wi-Fi", slug: "routeurs-wifi" },
        { id: "wifi-mesh", name: "Sistemi Wi-Fi Mesh", slug: "wifi-mesh" },
        { id: "modems", name: "Modem", slug: "modems" },
        { id: "repeteurs", name: "Ripetitori", slug: "repeteurs" },
        { id: "points-acces", name: "Access Point", slug: "points-acces" },
        { id: "switches", name: "Switch di Rete", slug: "switches" },
        { id: "cables-ethernet", name: "Cavi Ethernet", slug: "cables-ethernet" },
        { id: "fibre-optique", name: "Apparecchiature Fibra Ottica", slug: "fibre-optique" },
        { id: "routeurs-4g-5g", name: "Router 4G/5G", slug: "routeurs-4g-5g" },
        { id: "antennes-reseau", name: "Antenne di Rete", slug: "antennes-reseau" },
        { id: "adaptateurs-usb-wifi", name: "Adattatori Wi-Fi USB", slug: "adaptateurs-usb-wifi" },
        { id: "routeurs-vpn", name: "Router VPN", slug: "routeurs-vpn" }
      ]
    },
    {
      id: "equipement-bureau",
      name: "Attrezzature per Ufficio",
      slug: "equipement-bureau",
      subcategories: [
        { id: "imprimantes-laser", name: "Stampanti Laser", slug: "imprimantes-laser" },
        { id: "imprimantes-jet-encre", name: "Stampanti a Getto d'Inchiostro", slug: "imprimantes-jet-encre" },
        { id: "photocopieurs", name: "Fotocopiatrici", slug: "photocopieurs" },
        { id: "scanners-pro", name: "Scanner", slug: "scanners-pro" },
        { id: "fax", name: "Fax", slug: "fax" },
        { id: "multifonctions", name: "Stampanti Multifunzione", slug: "multifonctions" },
        { id: "cartouches-encre", name: "Cartucce d'Inchiostro", slug: "cartouches-encre" },
        { id: "toners", name: "Toner", slug: "toners" },
        { id: "plastifieuses", name: "Plastificatrici", slug: "plastifieuses" },
        { id: "destructeurs-documents", name: "Distruggidocumenti", slug: "destructeurs-documents" },
        { id: "videoprojecteurs-pro", name: "Videoproiettori Professionali", slug: "videoprojecteurs-pro" },
        { id: "tableaux-blancs", name: "Lavagne Bianche", slug: "tableaux-blancs" },
        { id: "equipements-conference", name: "Attrezzature per Conferenze", slug: "equipements-conference" }
      ]
    },
    {
      id: "electronique-gadgets",
      name: "Elettronica & Gadget",
      slug: "electronique-gadgets",
      subcategories: [
        { id: "montres-connectees", name: "Smartwatch", slug: "montres-connectees" },
        { id: "bracelets-connectes", name: "Smartband", slug: "bracelets-connectes" },
        { id: "lunettes-intelligentes", name: "Occhiali Smart", slug: "lunettes-intelligentes" },
        { id: "action-cams", name: "Action Cam", slug: "action-cams" },
        { id: "drones", name: "Droni", slug: "drones" },
        { id: "mini-projecteurs", name: "Mini Proiettori", slug: "mini-projecteurs" },
        { id: "casques-vr", name: "Visori VR", slug: "casques-vr" },
        { id: "dispositifs-ar", name: "Dispositivi AR", slug: "dispositifs-ar" },
        { id: "liseuses", name: "E-reader", slug: "liseuses" },
        { id: "radios", name: "Radio", slug: "radios" },
        { id: "talkie-walkies", name: "Ricetrasmittenti", slug: "talkie-walkies" },
        { id: "gps-portables", name: "GPS Portatili", slug: "gps-portables" },
        { id: "stylos-numeriques", name: "Penne Digitali", slug: "stylos-numeriques" }
      ]
    },
    {
      id: "maison-intelligente",
      name: "Casa Intelligente & Domotica",
      slug: "maison-intelligente",
      subcategories: [
        { id: "ampoules-connectees", name: "Lampadine Smart", slug: "ampoules-connectees" },
        { id: "bandes-led", name: "Strisce LED", slug: "bandes-led" },
        { id: "prises-intelligentes", name: "Prese Smart", slug: "prises-intelligentes" },
        { id: "cameras-securite", name: "Telecamere di Sicurezza", slug: "cameras-securite" },
        { id: "cameras-ip", name: "Telecamere IP", slug: "cameras-ip" },
        { id: "systemes-alarme", name: "Sistemi di Allarme", slug: "systemes-alarme" },
        { id: "serrures-connectees", name: "Serrature Smart", slug: "serrures-connectees" },
        { id: "thermostats", name: "Termostati", slug: "thermostats" },
        {
          id: "capteurs",
          name: "Sensori",
          slug: "capteurs",
          subcategories: [
            { id: "mouvement", name: "Movimento", slug: "mouvement" },
            { id: "fumee", name: "Fumo", slug: "fumee" },
            { id: "fuite-eau", name: "Perdite d'Acqua", slug: "fuite-eau" }
          ]
        },
        { id: "interrupteurs-intelligents", name: "Interruttori Smart", slug: "interrupteurs-intelligents" },
        { id: "assistants-vocaux", name: "Assistenti Vocali", slug: "assistants-vocaux" },
        { id: "sonnettes-video", name: "Campanelli Video", slug: "sonnettes-video" }
      ]
    },
    {
      id: "tv-divertissement",
      name: "TV & Intrattenimento",
      slug: "tv-divertissement",
      subcategories: [
        { id: "televiseurs-led", name: "TV LED", slug: "televiseurs-led" },
        { id: "televiseurs-oled", name: "TV OLED", slug: "televiseurs-oled" },
        { id: "qled", name: "QLED", slug: "qled" },
        { id: "smart-tv", name: "Smart TV", slug: "smart-tv" },
        { id: "android-tv", name: "Android TV", slug: "android-tv" },
        { id: "recepteurs-tv", name: "Ricevitori TV", slug: "recepteurs-tv" },
        { id: "decodeurs-satellites", name: "Decoder Satellitari", slug: "decodeurs-satellites" },
        { id: "box-tv-multimedia", name: "TV Box e Multimedia", slug: "box-tv-multimedia" },
        { id: "lecteurs-multimedias", name: "Lettori Multimediali", slug: "lecteurs-multimedias" },
        { id: "barres-de-son", name: "Soundbar", slug: "barres-de-son" },
        { id: "home-cinema", name: "Home Cinema", slug: "home-cinema" },
        { id: "lecteurs-blu-ray", name: "Lettori Blu-ray", slug: "lecteurs-blu-ray" }
      ]
    },
    {
      id: "accessoires-mobiles",
      name: "Accessori Mobile (Elettronica)",
      slug: "accessoires-mobiles",
      subcategories: [
        { id: "chargeurs", name: "Caricabatterie", slug: "chargeurs" },
        { id: "chargeurs-rapides", name: "Caricabatterie Rapidi", slug: "chargeurs-rapides" },
        { id: "powerbanks", name: "Powerbank", slug: "powerbanks" },
        { id: "cables-adaptateurs", name: "Cavi e Adattatori", slug: "cables-adaptateurs" },
        { id: "chargeurs-sans-fil", name: "Caricabatterie Wireless", slug: "chargeurs-sans-fil" },
        { id: "chargeurs-voiture", name: "Caricabatterie da Auto", slug: "chargeurs-voiture" },
        { id: "hubs-usb", name: "Hub USB", slug: "hubs-usb" },
        { id: "protections-ecran", name: "Protezioni Schermo", slug: "protections-ecran" },
        { id: "claviers-tablettes", name: "Tastiere per Tablet", slug: "claviers-tablettes" },
        { id: "stylets-tactiles", name: "Penne Touch", slug: "stylets-tactiles" },
        { id: "stations-accueil-mobiles", name: "Docking Station", slug: "stations-accueil-mobiles" }
      ]
    },
    {
      id: "informatique-professionnelle",
      name: "Informatica Professionale",
      slug: "informatique-professionnelle",
      subcategories: [
        { id: "serveurs", name: "Server", slug: "serveurs" },
        { id: "baies-serveurs", name: "Rack Server", slug: "baies-serveurs" },
        { id: "nas", name: "NAS", slug: "nas" },
        { id: "onduleurs-ups", name: "UPS (Gruppi di Continuità)", slug: "onduleurs-ups" },
        { id: "switches-professionnels", name: "Switch Professionali", slug: "switches-professionnels" },
        { id: "pare-feux-reseau", name: "Firewall", slug: "pare-feux-reseau" },
        { id: "equipements-cloud", name: "Apparecchiature Cloud", slug: "equipements-cloud" },
        { id: "appliances-sauvegarde", name: "Appliance di Backup", slug: "appliances-sauvegarde" },
        { id: "dispositifs-biometriques", name: "Dispositivi Biometrici", slug: "dispositifs-biometriques" },
        { id: "systemes-conference-haut-de-gamme", name: "Sistemi di Conferenza di Fascia Alta", slug: "systemes-conference-haut-de-gamme" }
      ]
    },
    {
      id: "composants-electroniques-outils",
      name: "Componenti Elettronici & Strumenti",
      slug: "composants-electroniques-outils",
      subcategories: [
        { id: "capteurs-electroniques", name: "Sensori Elettronici", slug: "capteurs-electroniques" },
        { id: "resistances", name: "Resistenze", slug: "resistances" },
        { id: "condensateurs", name: "Condensatori", slug: "condensateurs" },
        { id: "diodes", name: "Diodi", slug: "diodes" },
        { id: "transistors", name: "Transistor", slug: "transistors" },
        { id: "microcontroleurs", name: "Microcontrollori", slug: "microcontroleurs" },
        { id: "cartes-arduino", name: "Schede Arduino", slug: "cartes-arduino" },
        { id: "raspberry-pi", name: "Raspberry Pi", slug: "raspberry-pi" },
        { id: "breadboards", name: "Breadboard", slug: "breadboards" },
        { id: "stations-soudage", name: "Stazioni di Saldatura", slug: "stations-soudage" },
        { id: "multimetres", name: "Multimetri", slug: "multimetres" },
        { id: "outils-reparation", name: "Strumenti di Riparazione", slug: "outils-reparation" },
        { id: "cables-connecteurs", name: "Cavi e Connettori", slug: "cables-connecteurs" },
        { id: "testeurs-electroniques", name: "Tester Elettronici", slug: "testeurs-electroniques" },
        { id: "cameras-thermiques", name: "Termocamere", slug: "cameras-thermiques" }
      ]
    },
    {
      id: "marques-populaires",
      name: "Marche Popolari",
      slug: "marques-populaires",
      subcategories: [
        { id: "apple", name: "Apple", slug: "apple" },
        { id: "dell", name: "Dell", slug: "dell" },
        { id: "hp", name: "HP", slug: "hp" },
        { id: "lenovo", name: "Lenovo", slug: "lenovo" },
        { id: "asus", name: "Asus", slug: "asus" },
        { id: "acer", name: "Acer", slug: "acer" },
        { id: "msi", name: "MSI", slug: "msi" },
        { id: "razer", name: "Razer", slug: "razer" },
        { id: "samsung", name: "Samsung", slug: "samsung" },
        { id: "huawei", name: "Huawei", slug: "huawei" },
        { id: "xiaomi", name: "Xiaomi", slug: "xiaomi" },
        { id: "lg", name: "LG", slug: "lg" },
        { id: "toshiba", name: "Toshiba", slug: "toshiba" },
        { id: "western-digital", name: "Western Digital", slug: "western-digital" },
        { id: "seagate", name: "Seagate", slug: "seagate" },
        { id: "kingston", name: "Kingston", slug: "kingston" },
        { id: "corsair", name: "Corsair", slug: "corsair" },
        { id: "gigabyte", name: "Gigabyte", slug: "gigabyte" },
        { id: "asus-rog", name: "Asus ROG", slug: "asus-rog" },
        { id: "nvidia", name: "NVIDIA", slug: "nvidia" },
        { id: "amd", name: "AMD", slug: "amd" },
        { id: "jbl", name: "JBL", slug: "jbl" },
        { id: "logitech", name: "Logitech", slug: "logitech" },
        { id: "steelseries", name: "SteelSeries", slug: "steelseries" },
        { id: "tp-link", name: "TP‑Link", slug: "tp-link" },
        { id: "netgear", name: "Netgear", slug: "netgear" },
        { id: "ubiquiti", name: "Ubiquiti", slug: "ubiquiti" }
      ]
    }
  ]
};
