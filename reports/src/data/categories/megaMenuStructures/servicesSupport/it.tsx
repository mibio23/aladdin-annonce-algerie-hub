import { MenuCategory } from "../../categoryTypes";
import { Wrench, Settings, Phone, Home, Hammer, Truck, FileText, Briefcase, GraduationCap, Calendar, Heart, Users, Car, Palette } from "lucide-react";

export const servicesSupportIt: MenuCategory = {
  id: "services-support",
  name: "Servizi e Supporto",
  slug: "services-support",
  icon: <Wrench className="h-5 w-5 text-blue-600" />,
  subcategories: [
    {
      id: "services-informatiques",
      name: "Servizi Informatici",
      slug: "services-informatiques",
      icon: <Settings className="h-4 w-4 text-purple-600" />,
      subcategories: [
        { id: "depannage-pc", name: "Riparazione PC", slug: "depannage-pc" },
        { id: "maintenance-reseau", name: "Manutenzione Rete", slug: "maintenance-reseau" },
        { id: "installation-logiciels", name: "Installazione Software", slug: "installation-logiciels" },
        { id: "recuperation-donnees", name: "Recupero Dati", slug: "recuperation-donnees" },
        { id: "securite-informatique", name: "Sicurezza Informatica", slug: "securite-informatique" },
        { id: "configuration-systeme", name: "Configurazione Sistema", slug: "configuration-systeme" },
        { id: "assistance-ligne", name: "Assistenza Online", slug: "assistance-ligne" },
        { id: "optimisation-ordinateur", name: "Ottimizzazione Computer", slug: "optimisation-ordinateur" }
      ]
    },
    {
      id: "services-telecom",
      name: "Servizi Telecom",
      slug: "services-telecom",
      icon: <Phone className="h-4 w-4 text-green-600" />,
      subcategories: [
        { id: "installation-modem", name: "Installazione Modem", slug: "installation-modem" },
        { id: "configuration-routeur", name: "Configurazione Router", slug: "configuration-routeur" },
        { id: "reparation-telephone", name: "Riparazione Telefono", slug: "reparation-telephone" },
        { id: "debloquage-mobile", name: "Sblocco Cellulare", slug: "debloquage-mobile" },
        { id: "optimisation-internet", name: "Ottimizzazione Internet", slug: "optimisation-internet" },
        { id: "parametrage-apn", name: "Configurazione APN", slug: "parametrage-apn" }
      ]
    },
    {
      id: "services-electromenager",
      name: "Servizi Elettrodomestici",
      slug: "services-electromenager",
      icon: <Settings className="h-4 w-4 text-orange-600" />,
      subcategories: [
        { id: "reparation-machines", name: "Riparazione Macchine", slug: "reparation-machines" },
        { id: "installation-electromenager", name: "Installazione Elettrodomestici", slug: "installation-electromenager" },
        { id: "maintenance-appareils", name: "Manutenzione Dispositivi", slug: "maintenance-appareils" },
        { id: "depannage-urgent", name: "Riparazione Urgente", slug: "depannage-urgent-electromenager" },
        { id: "diagnostic-panne", name: "Diagnostica Guasti", slug: "diagnostic-panne" }
      ]
    },
    {
      id: "services-maison",
      name: "Servizi Domestici",
      slug: "services-maison",
      icon: <Home className="h-4 w-4 text-blue-600" />,
      subcategories: [
        { id: "nettoyage-maison", name: "Pulizia Casa", slug: "nettoyage-maison" },
        { id: "menage-pro", name: "Pulizie Professionali", slug: "menage-pro" },
        { id: "repassage-domicile", name: "Stiratura a Domicilio", slug: "repassage-domicile" },
        { id: "entretien-jardin", name: "Giardinaggio", slug: "entretien-jardin" },
        { id: "desinfection-locaux", name: "Disinfezione Locali", slug: "desinfection-locaux" },
        { id: "gestion-dechets", name: "Gestione Rifiuti", slug: "gestion-dechets" },
        { id: "maintenance-maison", name: "Manutenzione Casa", slug: "maintenance-maison" }
      ]
    },
    {
      id: "services-artisanaux",
      name: "Servizi Artigianali",
      slug: "services-artisanaux",
      icon: <Hammer className="h-4 w-4 text-brown-600" />,
      subcategories: [
        { id: "plomberie-rapide", name: "Idraulica Rapida", slug: "plomberie-rapide" },
        { id: "electricite-maison", name: "Elettricità Casa", slug: "electricite-maison" },
        { id: "reparation-meubles", name: "Riparazione Mobili", slug: "reparation-meubles" },
        { id: "peinture-batiment", name: "Tinteggiatura Edifici", slug: "peinture-batiment" },
        { id: "menuiserie-bois", name: "Falegnameria", slug: "menuiserie-bois" },
        { id: "travaux-divers", name: "Lavori Vari", slug: "travaux-divers" },
        { id: "bricolage-domicile", name: "Fai da Te a Domicilio", slug: "bricolage-domicile" }
      ]
    },
    {
      id: "transport-livraison",
      name: "Trasporti e Consegne",
      slug: "transport-livraison",
      icon: <Truck className="h-4 w-4 text-red-600" />,
      subcategories: [
        { id: "livraison-colis", name: "Consegna Pacchi", slug: "livraison-colis" },
        { id: "taxi-prive", name: "Taxi Privato", slug: "taxi-prive" },
        { id: "transport-marchandises", name: "Trasporto Merci", slug: "transport-marchandises" },
        { id: "demenagement-rapide", name: "Trasloco Rapido", slug: "demenagement-rapide" },
        { id: "courses-express", name: "Commissioni Veloci", slug: "courses-express" },
        { id: "location-utilitaire", name: "Noleggio Furgoni", slug: "location-utilitaire" }
      ]
    },
    {
      id: "services-administratifs",
      name: "Servizi Amministrativi",
      slug: "services-administratifs",
      icon: <FileText className="h-4 w-4 text-gray-600" />,
      subcategories: [
        { id: "redaction-documents", name: "Redazione Documenti", slug: "redaction-documents" },
        { id: "traduction-pro", name: "Traduzione Professionale", slug: "traduction-pro" },
        { id: "impression-pro", name: "Stampa Professionale", slug: "impression-pro" },
        { id: "numerisation-documents", name: "Digitalizzazione Documenti", slug: "numerisation-documents" },
        { id: "assistance-dossiers", name: "Assistenza Pratiche", slug: "assistance-dossiers" },
        { id: "creation-cv", name: "Creazione CV", slug: "creation-cv" }
      ]
    },
    {
      id: "support-business",
      name: "Supporto Aziendale",
      slug: "support-business",
      icon: <Briefcase className="h-4 w-4 text-indigo-600" />,
      subcategories: [
        { id: "gestion-clients", name: "Gestione Clienti", slug: "gestion-clients" },
        { id: "assistance-commerciale", name: "Assistenza Commerciale", slug: "assistance-commerciale" },
        { id: "creation-devis", name: "Creazione Preventivi", slug: "creation-devis" },
        { id: "service-comptable", name: "Servizio Contabilità", slug: "service-comptable" },
        { id: "conseils-gestion", name: "Consulenza Gestionale", slug: "conseils-gestion" },
        { id: "audits-internes", name: "Audit Interni", slug: "audits-internes" },
        { id: "support-marketing", name: "Supporto Marketing", slug: "support-marketing" }
      ]
    },
    {
      id: "services-formation",
      name: "Servizi Formazione",
      slug: "services-formation",
      icon: <GraduationCap className="h-4 w-4 text-teal-600" />,
      subcategories: [
        { id: "cours-particuliers", name: "Lezioni Private", slug: "cours-particuliers" },
        { id: "formation-pro", name: "Formazione Professionale", slug: "formation-pro" },
        { id: "soutien-scolaire", name: "Ripetizioni Scolastiche", slug: "soutien-scolaire" },
        { id: "ateliers-pratiques", name: "Workshop Pratici", slug: "ateliers-pratiques" },
        { id: "coaching-personnel", name: "Coaching Personale", slug: "coaching-personnel" },
        { id: "developpement-personnel", name: "Sviluppo Personale", slug: "developpement-personnel" }
      ]
    },
    {
      id: "services-evenementiels",
      name: "Servizi Eventi",
      slug: "services-evenementiels",
      icon: <Calendar className="h-4 w-4 text-pink-600" />,
      subcategories: [
        { id: "organisation-fetes", name: "Organizzazione Feste", slug: "organisation-fetes" },
        { id: "decoration-evenement", name: "Decorazione Eventi", slug: "decoration-evenement" },
        { id: "location-materiel", name: "Noleggio Attrezzature", slug: "location-materiel" },
        { id: "animation-soiree", name: "Animazione Serate", slug: "animation-soiree" },
        { id: "gestion-invitations", name: "Gestione Inviti", slug: "gestion-invitations" }
      ]
    },
    {
      id: "services-sante-bienetre",
      name: "Servizi Salute e Benessere",
      slug: "services-sante-bienetre",
      icon: <Heart className="h-4 w-4 text-red-500" />,
      subcategories: [
        { id: "massage-bienetre", name: "Massaggio Benessere", slug: "massage-bienetre" },
        { id: "soins-esthetiques", name: "Trattamenti Estetici", slug: "soins-esthetiques" },
        { id: "coaching-sportif", name: "Personal Trainer", slug: "coaching-sportif" },
        { id: "dietetique-personnalisee", name: "Dietetica Personalizzata", slug: "dietetique-personnalisee" },
        { id: "suivi-bienetre", name: "Monitoraggio Benessere", slug: "suivi-bienetre" }
      ]
    },
    {
      id: "aide-personne",
      name: "Assistenza alla Persona",
      slug: "aide-personne",
      icon: <Users className="h-4 w-4 text-green-500" />,
      subcategories: [
        { id: "garde-enfants", name: "Baby Sitter", slug: "garde-enfants" },
        { id: "assistance-personnes", name: "Assistenza Persone", slug: "assistance-personnes" },
        { id: "aide-domicile", name: "Aiuto Domestico", slug: "aide-domicile" },
        { id: "accompagnement-senior", name: "Accompagnamento Anziani", slug: "accompagnement-senior" },
        { id: "soutien-mobilite", name: "Supporto Mobilità", slug: "soutien-mobilite" }
      ]
    },
    {
      id: "services-automobiles",
      name: "Servizi Automobilistici",
      slug: "services-automobiles",
      icon: <Car className="h-4 w-4 text-blue-500" />,
      subcategories: [
        { id: "lavage-auto", name: "Lavaggio Auto", slug: "lavage-auto" },
        { id: "vidange-rapide", name: "Cambio Olio Rapido", slug: "vidange-rapide" },
        { id: "diagnostic-auto", name: "Diagnosi Auto", slug: "diagnostic-auto" },
        { id: "assistance-route", name: "Soccorso Stradale", slug: "assistance-route" },
        { id: "entretien-moteur", name: "Manutenzione Motore", slug: "entretien-moteur" },
        { id: "reparation-pneus", name: "Riparazione Pneumatici", slug: "reparation-pneus" }
      ]
    },
    {
      id: "services-creatifs",
      name: "Servizi Creativi",
      slug: "services-creatifs",
      icon: <Palette className="h-4 w-4 text-purple-500" />,
      subcategories: [
        { id: "design-graphique", name: "Graphic Design", slug: "design-graphique" },
        { id: "creation-logo", name: "Creazione Logo", slug: "creation-logo" },
        { id: "montage-video", name: "Montaggio Video", slug: "montage-video" },
        { id: "retouche-photo", name: "Fotoritocco", slug: "retouche-photo" },
        { id: "creation-contenu", name: "Creazione Contenuti", slug: "creation-contenu" },
        { id: "impression-3d", name: "Stampa 3D", slug: "impression-3d" }
      ]
    }
  ]
};
