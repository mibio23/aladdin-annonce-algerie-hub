import { MenuCategory } from "../../categoryTypes";
import { Wrench, Settings, Phone, Home, Hammer, Truck, FileText, Briefcase, GraduationCap, Calendar, Heart, Users, Car, Palette } from "lucide-react";

export const servicesSupportFr: MenuCategory = {
  id: "services-support",
  name: "Services & Support",
  slug: "services-support",
  icon: <Wrench className="h-5 w-5 text-blue-600" />,
  subcategories: [
    {
      id: "services-informatiques",
      name: "Services Informatiques",
      slug: "services-informatiques",
      icon: <Settings className="h-4 w-4 text-purple-600" />,
      subcategories: [
        { id: "depannage-pc", name: "Dépannage PC", slug: "depannage-pc" },
        { id: "maintenance-reseau", name: "Maintenance Réseau", slug: "maintenance-reseau" },
        { id: "installation-logiciels", name: "Installation Logiciels", slug: "installation-logiciels" },
        { id: "recuperation-donnees", name: "Récupération Données", slug: "recuperation-donnees" },
        { id: "securite-informatique", name: "Sécurité Informatique", slug: "securite-informatique" },
        { id: "configuration-systeme", name: "Configuration Système", slug: "configuration-systeme" },
        { id: "assistance-ligne", name: "Assistance en Ligne", slug: "assistance-ligne" },
        { id: "optimisation-ordinateur", name: "Optimisation Ordinateur", slug: "optimisation-ordinateur" }
      ]
    },
    {
      id: "services-telecom",
      name: "Services Télécom",
      slug: "services-telecom",
      icon: <Phone className="h-4 w-4 text-green-600" />,
      subcategories: [
        { id: "installation-modem", name: "Installation Modem", slug: "installation-modem" },
        { id: "configuration-routeur", name: "Configuration Routeur", slug: "configuration-routeur" },
        { id: "reparation-telephone", name: "Réparation Téléphone", slug: "reparation-telephone" },
        { id: "debloquage-mobile", name: "Déblocage Mobile", slug: "debloquage-mobile" },
        { id: "optimisation-internet", name: "Optimisation Internet", slug: "optimisation-internet" },
        { id: "parametrage-apn", name: "Paramétrage APN", slug: "parametrage-apn" }
      ]
    },
    {
      id: "services-electromenager",
      name: "Services Électroménager",
      slug: "services-electromenager",
      icon: <Settings className="h-4 w-4 text-orange-600" />,
      subcategories: [
        { id: "reparation-machines", name: "Réparation Machines", slug: "reparation-machines" },
        { id: "installation-electromenager", name: "Installation Électroménager", slug: "installation-electromenager" },
        { id: "maintenance-appareils", name: "Maintenance Appareils", slug: "maintenance-appareils" },
        { id: "depannage-urgent", name: "Dépannage Urgent", slug: "depannage-urgent-electromenager" },
        { id: "diagnostic-panne", name: "Diagnostic Panne", slug: "diagnostic-panne" }
      ]
    },
    {
      id: "services-maison",
      name: "Services Maison",
      slug: "services-maison",
      icon: <Home className="h-4 w-4 text-blue-600" />,
      subcategories: [
        { id: "nettoyage-maison", name: "Nettoyage Maison", slug: "nettoyage-maison" },
        { id: "menage-pro", name: "Ménage Pro", slug: "menage-pro" },
        { id: "repassage-domicile", name: "Repassage Domicile", slug: "repassage-domicile" },
        { id: "entretien-jardin", name: "Entretien Jardin", slug: "entretien-jardin" },
        { id: "desinfection-locaux", name: "Désinfection Locaux", slug: "desinfection-locaux" },
        { id: "gestion-dechets", name: "Gestion Déchets", slug: "gestion-dechets" },
        { id: "maintenance-maison", name: "Maintenance Maison", slug: "maintenance-maison" }
      ]
    },
    {
      id: "services-artisanaux",
      name: "Services Artisanaux",
      slug: "services-artisanaux",
      icon: <Hammer className="h-4 w-4 text-brown-600" />,
      subcategories: [
        { id: "plomberie-rapide", name: "Plomberie Rapide", slug: "plomberie-rapide" },
        { id: "electricite-maison", name: "Électricité Maison", slug: "electricite-maison" },
        { id: "reparation-meubles", name: "Réparation Meubles", slug: "reparation-meubles" },
        { id: "peinture-batiment", name: "Peinture Bâtiment", slug: "peinture-batiment" },
        { id: "menuiserie-bois", name: "Menuiserie Bois", slug: "menuiserie-bois" },
        { id: "travaux-divers", name: "Travaux Divers", slug: "travaux-divers" },
        { id: "bricolage-domicile", name: "Bricolage Domicile", slug: "bricolage-domicile" }
      ]
    },
    {
      id: "transport-livraison",
      name: "Transport & Livraison",
      slug: "transport-livraison",
      icon: <Truck className="h-4 w-4 text-red-600" />,
      subcategories: [
        { id: "livraison-colis", name: "Livraison Colis", slug: "livraison-colis" },
        { id: "taxi-prive", name: "Taxi Privé", slug: "taxi-prive" },
        { id: "transport-marchandises", name: "Transport Marchandises", slug: "transport-marchandises" },
        { id: "demenagement-rapide", name: "Déménagement Rapide", slug: "demenagement-rapide" },
        { id: "courses-express", name: "Courses Express", slug: "courses-express" },
        { id: "location-utilitaire", name: "Location Utilitaire", slug: "location-utilitaire" }
      ]
    },
    {
      id: "services-administratifs",
      name: "Services Administratifs",
      slug: "services-administratifs",
      icon: <FileText className="h-4 w-4 text-gray-600" />,
      subcategories: [
        { id: "redaction-documents", name: "Rédaction Documents", slug: "redaction-documents" },
        { id: "traduction-pro", name: "Traduction Pro", slug: "traduction-pro" },
        { id: "impression-pro", name: "Impression Pro", slug: "impression-pro" },
        { id: "numerisation-documents", name: "Numérisation Documents", slug: "numerisation-documents" },
        { id: "assistance-dossiers", name: "Assistance Dossiers", slug: "assistance-dossiers" },
        { id: "creation-cv", name: "Création CV", slug: "creation-cv" }
      ]
    },
    {
      id: "support-business",
      name: "Support Business",
      slug: "support-business",
      icon: <Briefcase className="h-4 w-4 text-indigo-600" />,
      subcategories: [
        { id: "gestion-clients", name: "Gestion Clients", slug: "gestion-clients" },
        { id: "assistance-commerciale", name: "Assistance Commerciale", slug: "assistance-commerciale" },
        { id: "creation-devis", name: "Création Devis", slug: "creation-devis" },
        { id: "service-comptable", name: "Service Comptable", slug: "service-comptable" },
        { id: "conseils-gestion", name: "Conseils Gestion", slug: "conseils-gestion" },
        { id: "audits-internes", name: "Audits Internes", slug: "audits-internes" },
        { id: "support-marketing", name: "Support Marketing", slug: "support-marketing" }
      ]
    },
    {
      id: "services-formation",
      name: "Services Formation",
      slug: "services-formation",
      icon: <GraduationCap className="h-4 w-4 text-teal-600" />,
      subcategories: [
        { id: "cours-particuliers", name: "Cours Particuliers", slug: "cours-particuliers" },
        { id: "formation-pro", name: "Formation Pro", slug: "formation-pro" },
        { id: "soutien-scolaire", name: "Soutien Scolaire", slug: "soutien-scolaire" },
        { id: "ateliers-pratiques", name: "Ateliers Pratiques", slug: "ateliers-pratiques" },
        { id: "coaching-personnel", name: "Coaching Personnel", slug: "coaching-personnel" },
        { id: "developpement-personnel", name: "Développement Personnel", slug: "developpement-personnel" }
      ]
    },
    {
      id: "services-evenementiels",
      name: "Services Événementiels",
      slug: "services-evenementiels",
      icon: <Calendar className="h-4 w-4 text-pink-600" />,
      subcategories: [
        { id: "organisation-fetes", name: "Organisation Fêtes", slug: "organisation-fetes" },
        { id: "decoration-evenement", name: "Décoration Événement", slug: "decoration-evenement" },
        { id: "location-materiel", name: "Location Matériel", slug: "location-materiel" },
        { id: "animation-soiree", name: "Animation Soirée", slug: "animation-soiree" },
        { id: "gestion-invitations", name: "Gestion Invitations", slug: "gestion-invitations" }
      ]
    },
    {
      id: "services-sante-bienetre",
      name: "Services Santé & Bien-être",
      slug: "services-sante-bienetre",
      icon: <Heart className="h-4 w-4 text-red-500" />,
      subcategories: [
        { id: "massage-bienetre", name: "Massage Bien-être", slug: "massage-bienetre" },
        { id: "soins-esthetiques", name: "Soins Esthétiques", slug: "soins-esthetiques" },
        { id: "coaching-sportif", name: "Coaching Sportif", slug: "coaching-sportif" },
        { id: "dietetique-personnalisee", name: "Diététique Personnalisée", slug: "dietetique-personnalisee" },
        { id: "suivi-bienetre", name: "Suivi Bien-être", slug: "suivi-bienetre" }
      ]
    },
    {
      id: "aide-personne",
      name: "Aide à la Personne",
      slug: "aide-personne",
      icon: <Users className="h-4 w-4 text-green-500" />,
      subcategories: [
        { id: "garde-enfants", name: "Garde Enfants", slug: "garde-enfants" },
        { id: "assistance-personnes", name: "Assistance Personnes", slug: "assistance-personnes" },
        { id: "aide-domicile", name: "Aide Domicile", slug: "aide-domicile" },
        { id: "accompagnement-senior", name: "Accompagnement Senior", slug: "accompagnement-senior" },
        { id: "soutien-mobilite", name: "Soutien Mobilité", slug: "soutien-mobilite" }
      ]
    },
    {
      id: "services-automobiles",
      name: "Services Automobiles",
      slug: "services-automobiles",
      icon: <Car className="h-4 w-4 text-blue-500" />,
      subcategories: [
        { id: "lavage-auto", name: "Lavage Auto", slug: "lavage-auto" },
        { id: "vidange-rapide", name: "Vidange Rapide", slug: "vidange-rapide" },
        { id: "diagnostic-auto", name: "Diagnostic Auto", slug: "diagnostic-auto" },
        { id: "assistance-route", name: "Assistance Route", slug: "assistance-route" },
        { id: "entretien-moteur", name: "Entretien Moteur", slug: "entretien-moteur" },
        { id: "reparation-pneus", name: "Réparation Pneus", slug: "reparation-pneus" }
      ]
    },
    {
      id: "services-creatifs",
      name: "Services Créatifs",
      slug: "services-creatifs",
      icon: <Palette className="h-4 w-4 text-purple-500" />,
      subcategories: [
        { id: "design-graphique", name: "Design Graphique", slug: "design-graphique" },
        { id: "creation-logo", name: "Création Logo", slug: "creation-logo" },
        { id: "montage-video", name: "Montage Vidéo", slug: "montage-video" },
        { id: "retouche-photo", name: "Retouche Photo", slug: "retouche-photo" },
        { id: "creation-contenu", name: "Création Contenu", slug: "creation-contenu" },
        { id: "impression-3d", name: "Impression 3D", slug: "impression-3d" }
      ]
    }
  ]
};