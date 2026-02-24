import { MenuCategory } from "../../categoryTypes";
import { Wrench, Settings, Phone, Home, Hammer, Truck, FileText, Briefcase, GraduationCap, Calendar, Heart, Users, Car, Palette } from "lucide-react";

export const servicesSupportDe: MenuCategory = {
  id: "services-support",
  name: "Dienstleistungen & Support",
  slug: "services-support",
  icon: <Wrench className="h-5 w-5 text-blue-600" />,
  subcategories: [
    {
      id: "services-informatiques",
      name: "IT-Dienstleistungen",
      slug: "services-informatiques",
      icon: <Settings className="h-4 w-4 text-purple-600" />,
      subcategories: [
        { id: "depannage-pc", name: "PC-Reparatur", slug: "depannage-pc" },
        { id: "maintenance-reseau", name: "Netzwerkwartung", slug: "maintenance-reseau" },
        { id: "installation-logiciels", name: "Software-Installation", slug: "installation-logiciels" },
        { id: "recuperation-donnees", name: "Datenrettung", slug: "recuperation-donnees" },
        { id: "securite-informatique", name: "IT-Sicherheit", slug: "securite-informatique" },
        { id: "configuration-systeme", name: "Systemkonfiguration", slug: "configuration-systeme" },
        { id: "assistance-ligne", name: "Online-Support", slug: "assistance-ligne" },
        { id: "optimisation-ordinateur", name: "Computeroptimierung", slug: "optimisation-ordinateur" }
      ]
    },
    {
      id: "services-telecom",
      name: "Telekommunikationsdienste",
      slug: "services-telecom",
      icon: <Phone className="h-4 w-4 text-green-600" />,
      subcategories: [
        { id: "installation-modem", name: "Modem-Installation", slug: "installation-modem" },
        { id: "configuration-routeur", name: "Router-Konfiguration", slug: "configuration-routeur" },
        { id: "reparation-telephone", name: "Telefonreparatur", slug: "reparation-telephone" },
        { id: "debloquage-mobile", name: "Handy-Entsperrung", slug: "debloquage-mobile" },
        { id: "optimisation-internet", name: "Internetoptimierung", slug: "optimisation-internet" },
        { id: "parametrage-apn", name: "APN-Einstellungen", slug: "parametrage-apn" }
      ]
    },
    {
      id: "services-electromenager",
      name: "Haushaltsgeräteservice",
      slug: "services-electromenager",
      icon: <Settings className="h-4 w-4 text-orange-600" />,
      subcategories: [
        { id: "reparation-machines", name: "Maschinenreparatur", slug: "reparation-machines" },
        { id: "installation-electromenager", name: "Geräteinstallation", slug: "installation-electromenager" },
        { id: "maintenance-appareils", name: "Gerätewartung", slug: "maintenance-appareils" },
        { id: "depannage-urgent", name: "Notfallreparatur", slug: "depannage-urgent-electromenager" },
        { id: "diagnostic-panne", name: "Fehlerdiagnose", slug: "diagnostic-panne" }
      ]
    },
    {
      id: "services-maison",
      name: "Haushaltsdienste",
      slug: "services-maison",
      icon: <Home className="h-4 w-4 text-blue-600" />,
      subcategories: [
        { id: "nettoyage-maison", name: "Hausreinigung", slug: "nettoyage-maison" },
        { id: "menage-pro", name: "Professionelle Reinigung", slug: "menage-pro" },
        { id: "repassage-domicile", name: "Bügeln zu Hause", slug: "repassage-domicile" },
        { id: "entretien-jardin", name: "Gartenpflege", slug: "entretien-jardin" },
        { id: "desinfection-locaux", name: "Raumdesinfektion", slug: "desinfection-locaux" },
        { id: "gestion-dechets", name: "Abfallmanagement", slug: "gestion-dechets" },
        { id: "maintenance-maison", name: "Hausinstandhaltung", slug: "maintenance-maison" }
      ]
    },
    {
      id: "services-artisanaux",
      name: "Handwerksdienste",
      slug: "services-artisanaux",
      icon: <Hammer className="h-4 w-4 text-brown-600" />,
      subcategories: [
        { id: "plomberie-rapide", name: "Schnelle Klempnerei", slug: "plomberie-rapide" },
        { id: "electricite-maison", name: "Hauselektrik", slug: "electricite-maison" },
        { id: "reparation-meubles", name: "Möbelreparatur", slug: "reparation-meubles" },
        { id: "peinture-batiment", name: "Gebäudemalerei", slug: "peinture-batiment" },
        { id: "menuiserie-bois", name: "Holzarbeiten", slug: "menuiserie-bois" },
        { id: "travaux-divers", name: "Verschiedene Arbeiten", slug: "travaux-divers" },
        { id: "bricolage-domicile", name: "Heimwerken", slug: "bricolage-domicile" }
      ]
    },
    {
      id: "transport-livraison",
      name: "Transport & Lieferung",
      slug: "transport-livraison",
      icon: <Truck className="h-4 w-4 text-red-600" />,
      subcategories: [
        { id: "livraison-colis", name: "Paketlieferung", slug: "livraison-colis" },
        { id: "taxi-prive", name: "Privattaxi", slug: "taxi-prive" },
        { id: "transport-marchandises", name: "Gütertransport", slug: "transport-marchandises" },
        { id: "demenagement-rapide", name: "Schneller Umzug", slug: "demenagement-rapide" },
        { id: "courses-express", name: "Expressfahrten", slug: "courses-express" },
        { id: "location-utilitaire", name: "Nutzfahrzeugvermietung", slug: "location-utilitaire" }
      ]
    },
    {
      id: "services-administratifs",
      name: "Verwaltungsdienste",
      slug: "services-administratifs",
      icon: <FileText className="h-4 w-4 text-gray-600" />,
      subcategories: [
        { id: "redaction-documents", name: "Dokumentenerstellung", slug: "redaction-documents" },
        { id: "traduction-pro", name: "Professionelle Übersetzung", slug: "traduction-pro" },
        { id: "impression-pro", name: "Professioneller Druck", slug: "impression-pro" },
        { id: "numerisation-documents", name: "Dokumentendigitalisierung", slug: "numerisation-documents" },
        { id: "assistance-dossiers", name: "Aktenhilfe", slug: "assistance-dossiers" },
        { id: "creation-cv", name: "Lebenslauferstellung", slug: "creation-cv" }
      ]
    },
    {
      id: "support-business",
      name: "Unternehmensunterstützung",
      slug: "support-business",
      icon: <Briefcase className="h-4 w-4 text-indigo-600" />,
      subcategories: [
        { id: "gestion-clients", name: "Kundenmanagement", slug: "gestion-clients" },
        { id: "assistance-commerciale", name: "Vertriebsunterstützung", slug: "assistance-commerciale" },
        { id: "creation-devis", name: "Angebotserstellung", slug: "creation-devis" },
        { id: "service-comptable", name: "Buchhaltungsservice", slug: "service-comptable" },
        { id: "conseils-gestion", name: "Managementberatung", slug: "conseils-gestion" },
        { id: "audits-internes", name: "Interne Audits", slug: "audits-internes" },
        { id: "support-marketing", name: "Marketingunterstützung", slug: "support-marketing" }
      ]
    },
    {
      id: "services-formation",
      name: "Bildungsdienste",
      slug: "services-formation",
      icon: <GraduationCap className="h-4 w-4 text-teal-600" />,
      subcategories: [
        { id: "cours-particuliers", name: "Privatunterricht", slug: "cours-particuliers" },
        { id: "formation-pro", name: "Berufsausbildung", slug: "formation-pro" },
        { id: "soutien-scolaire", name: "Nachhilfe", slug: "soutien-scolaire" },
        { id: "ateliers-pratiques", name: "Praktische Workshops", slug: "ateliers-pratiques" },
        { id: "coaching-personnel", name: "Personal Coaching", slug: "coaching-personnel" },
        { id: "developpement-personnel", name: "Persönlichkeitsentwicklung", slug: "developpement-personnel" }
      ]
    },
    {
      id: "services-evenementiels",
      name: "Event-Dienstleistungen",
      slug: "services-evenementiels",
      icon: <Calendar className="h-4 w-4 text-pink-600" />,
      subcategories: [
        { id: "organisation-fetes", name: "Partyorganisation", slug: "organisation-fetes" },
        { id: "decoration-evenement", name: "Eventdekoration", slug: "decoration-evenement" },
        { id: "location-materiel", name: "Materialvermietung", slug: "location-materiel" },
        { id: "animation-soiree", name: "Abendunterhaltung", slug: "animation-soiree" },
        { id: "gestion-invitations", name: "Einladungsmanagement", slug: "gestion-invitations" }
      ]
    },
    {
      id: "services-sante-bienetre",
      name: "Gesundheits- & Wellnessdienste",
      slug: "services-sante-bienetre",
      icon: <Heart className="h-4 w-4 text-red-500" />,
      subcategories: [
        { id: "massage-bienetre", name: "Wellness-Massage", slug: "massage-bienetre" },
        { id: "soins-esthetiques", name: "Ästhetische Pflege", slug: "soins-esthetiques" },
        { id: "coaching-sportif", name: "Sport-Coaching", slug: "coaching-sportif" },
        { id: "dietetique-personnalisee", name: "Personalisierte Diätetik", slug: "dietetique-personnalisee" },
        { id: "suivi-bienetre", name: "Wellness-Überwachung", slug: "suivi-bienetre" }
      ]
    },
    {
      id: "aide-personne",
      name: "Personenbetreuung",
      slug: "aide-personne",
      icon: <Users className="h-4 w-4 text-green-500" />,
      subcategories: [
        { id: "garde-enfants", name: "Kinderbetreuung", slug: "garde-enfants" },
        { id: "assistance-personnes", name: "Personenassistenz", slug: "assistance-personnes" },
        { id: "aide-domicile", name: "Haushaltshilfe", slug: "aide-domicile" },
        { id: "accompagnement-senior", name: "Seniorenbegleitung", slug: "accompagnement-senior" },
        { id: "soutien-mobilite", name: "Mobilitätsunterstützung", slug: "soutien-mobilite" }
      ]
    },
    {
      id: "services-automobiles",
      name: "Kfz-Dienstleistungen",
      slug: "services-automobiles",
      icon: <Car className="h-4 w-4 text-blue-500" />,
      subcategories: [
        { id: "lavage-auto", name: "Autowäsche", slug: "lavage-auto" },
        { id: "vidange-rapide", name: "Schneller Ölwechsel", slug: "vidange-rapide" },
        { id: "diagnostic-auto", name: "Fahrzeugdiagnose", slug: "diagnostic-auto" },
        { id: "assistance-route", name: "Pannenhilfe", slug: "assistance-route" },
        { id: "entretien-moteur", name: "Motorwartung", slug: "entretien-moteur" },
        { id: "reparation-pneus", name: "Reifenreparatur", slug: "reparation-pneus" }
      ]
    },
    {
      id: "services-creatifs",
      name: "Kreative Dienstleistungen",
      slug: "services-creatifs",
      icon: <Palette className="h-4 w-4 text-purple-500" />,
      subcategories: [
        { id: "design-graphique", name: "Grafikdesign", slug: "design-graphique" },
        { id: "creation-logo", name: "Logoerstellung", slug: "creation-logo" },
        { id: "montage-video", name: "Videoschnitt", slug: "montage-video" },
        { id: "retouche-photo", name: "Fotoretusche", slug: "retouche-photo" },
        { id: "creation-contenu", name: "Content-Erstellung", slug: "creation-contenu" },
        { id: "impression-3d", name: "3D-Druck", slug: "impression-3d" }
      ]
    }
  ]
};
