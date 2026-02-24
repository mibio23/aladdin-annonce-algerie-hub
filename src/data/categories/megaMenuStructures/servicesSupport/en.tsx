import React from "react";
import { MenuCategory } from "../../categoryTypes";
import { Wrench, Settings, Phone, Home, Hammer, Truck, FileText, Briefcase, GraduationCap, Calendar, Heart, Users, Car, Palette } from "lucide-react";

export const servicesSupportEn: MenuCategory = {
  id: "services-support",
  name: "Services & Support",
  slug: "services-support",
  icon: <Wrench className="h-5 w-5 text-blue-600" />,
  subcategories: [
    {
      id: "services-informatiques",
      name: "IT Services",
      slug: "services-informatiques",
      icon: <Settings className="h-4 w-4 text-purple-600" />,
      subcategories: [
        { id: "depannage-pc", name: "PC Repair", slug: "depannage-pc" },
        { id: "maintenance-reseau", name: "Network Maintenance", slug: "maintenance-reseau" },
        { id: "installation-logiciels", name: "Software Installation", slug: "installation-logiciels" },
        { id: "recuperation-donnees", name: "Data Recovery", slug: "recuperation-donnees" },
        { id: "securite-informatique", name: "IT Security", slug: "securite-informatique" },
        { id: "configuration-systeme", name: "System Configuration", slug: "configuration-systeme" },
        { id: "assistance-ligne", name: "Online Support", slug: "assistance-ligne" },
        { id: "optimisation-ordinateur", name: "Computer Optimization", slug: "optimisation-ordinateur" }
      ]
    },
    {
      id: "services-telecom",
      name: "Telecom Services",
      slug: "services-telecom",
      icon: <Phone className="h-4 w-4 text-green-600" />,
      subcategories: [
        { id: "installation-modem", name: "Modem Installation", slug: "installation-modem" },
        { id: "configuration-routeur", name: "Router Configuration", slug: "configuration-routeur" },
        { id: "reparation-telephone", name: "Phone Repair", slug: "reparation-telephone" },
        { id: "debloquage-mobile", name: "Mobile Unlocking", slug: "debloquage-mobile" },
        { id: "optimisation-internet", name: "Internet Optimization", slug: "optimisation-internet" },
        { id: "parametrage-apn", name: "APN Settings", slug: "parametrage-apn" }
      ]
    },
    {
      id: "services-electromenager",
      name: "Appliance Services",
      slug: "services-electromenager",
      icon: <Settings className="h-4 w-4 text-orange-600" />,
      subcategories: [
        { id: "reparation-machines", name: "Machine Repair", slug: "reparation-machines" },
        { id: "installation-electromenager", name: "Appliance Installation", slug: "installation-electromenager" },
        { id: "maintenance-appareils", name: "Device Maintenance", slug: "maintenance-appareils" },
        { id: "depannage-urgent", name: "Urgent Repair", slug: "depannage-urgent-electromenager" },
        { id: "diagnostic-panne", name: "Breakdown Diagnosis", slug: "diagnostic-panne" }
      ]
    },
    {
      id: "services-maison",
      name: "Home Services",
      slug: "services-maison",
      icon: <Home className="h-4 w-4 text-blue-600" />,
      subcategories: [
        { id: "nettoyage-maison", name: "Home Cleaning", slug: "nettoyage-maison" },
        { id: "menage-pro", name: "Pro Cleaning", slug: "menage-pro" },
        { id: "repassage-domicile", name: "Home Ironing", slug: "repassage-domicile" },
        { id: "entretien-jardin", name: "Garden Maintenance", slug: "entretien-jardin" },
        { id: "desinfection-locaux", name: "Premises Disinfection", slug: "desinfection-locaux" },
        { id: "gestion-dechets", name: "Waste Management", slug: "gestion-dechets" },
        { id: "maintenance-maison", name: "Home Maintenance", slug: "maintenance-maison" }
      ]
    },
    {
      id: "services-artisanaux",
      name: "Craft Services",
      slug: "services-artisanaux",
      icon: <Hammer className="h-4 w-4 text-brown-600" />,
      subcategories: [
        { id: "plomberie-rapide", name: "Quick Plumbing", slug: "plomberie-rapide" },
        { id: "electricite-maison", name: "Home Electricity", slug: "electricite-maison" },
        { id: "reparation-meubles", name: "Furniture Repair", slug: "reparation-meubles" },
        { id: "peinture-batiment", name: "Building Painting", slug: "peinture-batiment" },
        { id: "menuiserie-bois", name: "Wood Carpentry", slug: "menuiserie-bois" },
        { id: "travaux-divers", name: "Various Works", slug: "travaux-divers" },
        { id: "bricolage-domicile", name: "Home DIY", slug: "bricolage-domicile" }
      ]
    },
    {
      id: "transport-livraison",
      name: "Transport & Delivery",
      slug: "transport-livraison",
      icon: <Truck className="h-4 w-4 text-red-600" />,
      subcategories: [
        { id: "livraison-colis", name: "Parcel Delivery", slug: "livraison-colis" },
        { id: "taxi-prive", name: "Private Taxi", slug: "taxi-prive" },
        { id: "transport-marchandises", name: "Goods Transport", slug: "transport-marchandises" },
        { id: "demenagement-rapide", name: "Quick Moving", slug: "demenagement-rapide" },
        { id: "courses-express", name: "Express Errands", slug: "courses-express" },
        { id: "location-utilitaire", name: "Utility Rental", slug: "location-utilitaire" }
      ]
    },
    {
      id: "services-administratifs",
      name: "Administrative Services",
      slug: "services-administratifs",
      icon: <FileText className="h-4 w-4 text-gray-600" />,
      subcategories: [
        { id: "redaction-documents", name: "Document Writing", slug: "redaction-documents" },
        { id: "traduction-pro", name: "Pro Translation", slug: "traduction-pro" },
        { id: "impression-pro", name: "Pro Printing", slug: "impression-pro" },
        { id: "numerisation-documents", name: "Document Digitization", slug: "numerisation-documents" },
        { id: "assistance-dossiers", name: "File Assistance", slug: "assistance-dossiers" },
        { id: "creation-cv", name: "CV Creation", slug: "creation-cv" }
      ]
    },
    {
      id: "support-business",
      name: "Business Support",
      slug: "support-business",
      icon: <Briefcase className="h-4 w-4 text-indigo-600" />,
      subcategories: [
        { id: "gestion-clients", name: "Customer Management", slug: "gestion-clients" },
        { id: "assistance-commerciale", name: "Commercial Assistance", slug: "assistance-commerciale" },
        { id: "creation-devis", name: "Quote Creation", slug: "creation-devis" },
        { id: "service-comptable", name: "Accounting Service", slug: "service-comptable" },
        { id: "conseils-gestion", name: "Management Advice", slug: "conseils-gestion" },
        { id: "audits-internes", name: "Internal Audits", slug: "audits-internes" },
        { id: "support-marketing", name: "Marketing Support", slug: "support-marketing" }
      ]
    },
    {
      id: "services-formation",
      name: "Training Services",
      slug: "services-formation",
      icon: <GraduationCap className="h-4 w-4 text-teal-600" />,
      subcategories: [
        { id: "cours-particuliers", name: "Private Lessons", slug: "cours-particuliers" },
        { id: "formation-pro", name: "Pro Training", slug: "formation-pro" },
        { id: "soutien-scolaire", name: "School Support", slug: "soutien-scolaire" },
        { id: "ateliers-pratiques", name: "Practical Workshops", slug: "ateliers-pratiques" },
        { id: "coaching-personnel", name: "Personal Coaching", slug: "coaching-personnel" },
        { id: "developpement-personnel", name: "Personal Development", slug: "developpement-personnel" }
      ]
    },
    {
      id: "services-evenementiels",
      name: "Event Services",
      slug: "services-evenementiels",
      icon: <Calendar className="h-4 w-4 text-pink-600" />,
      subcategories: [
        { id: "organisation-fetes", name: "Party Organization", slug: "organisation-fetes" },
        { id: "decoration-evenement", name: "Event Decoration", slug: "decoration-evenement" },
        { id: "location-materiel", name: "Equipment Rental", slug: "location-materiel" },
        { id: "animation-soiree", name: "Party Animation", slug: "animation-soiree" },
        { id: "gestion-invitations", name: "Invitation Management", slug: "gestion-invitations" }
      ]
    },
    {
      id: "services-sante-bienetre",
      name: "Health & Wellness Services",
      slug: "services-sante-bienetre",
      icon: <Heart className="h-4 w-4 text-red-500" />,
      subcategories: [
        { id: "massage-bienetre", name: "Wellness Massage", slug: "massage-bienetre" },
        { id: "soins-esthetiques", name: "Aesthetic Care", slug: "soins-esthetiques" },
        { id: "coaching-sportif", name: "Sports Coaching", slug: "coaching-sportif" },
        { id: "dietetique-personnalisee", name: "Personalized Dietetics", slug: "dietetique-personnalisee" },
        { id: "suivi-bienetre", name: "Wellness Monitoring", slug: "suivi-bienetre" }
      ]
    },
    {
      id: "aide-personne",
      name: "Personal Assistance",
      slug: "aide-personne",
      icon: <Users className="h-4 w-4 text-green-500" />,
      subcategories: [
        { id: "garde-enfants", name: "Childcare", slug: "garde-enfants" },
        { id: "assistance-personnes", name: "Person Assistance", slug: "assistance-personnes" },
        { id: "aide-domicile", name: "Home Help", slug: "aide-domicile" },
        { id: "accompagnement-senior", name: "Senior Accompaniment", slug: "accompagnement-senior" },
        { id: "soutien-mobilite", name: "Mobility Support", slug: "soutien-mobilite" }
      ]
    },
    {
      id: "services-automobiles",
      name: "Automotive Services",
      slug: "services-automobiles",
      icon: <Car className="h-4 w-4 text-blue-500" />,
      subcategories: [
        { id: "lavage-auto", name: "Car Wash", slug: "lavage-auto" },
        { id: "vidange-rapide", name: "Quick Oil Change", slug: "vidange-rapide" },
        { id: "diagnostic-auto", name: "Car Diagnosis", slug: "diagnostic-auto" },
        { id: "assistance-route", name: "Roadside Assistance", slug: "assistance-route" },
        { id: "entretien-moteur", name: "Engine Maintenance", slug: "entretien-moteur" },
        { id: "reparation-pneus", name: "Tire Repair", slug: "reparation-pneus" }
      ]
    },
    {
      id: "services-creatifs",
      name: "Creative Services",
      slug: "services-creatifs",
      icon: <Palette className="h-4 w-4 text-purple-500" />,
      subcategories: [
        { id: "design-graphique", name: "Graphic Design", slug: "design-graphique" },
        { id: "creation-logo", name: "Logo Creation", slug: "creation-logo" },
        { id: "montage-video", name: "Video Editing", slug: "montage-video" },
        { id: "retouche-photo", name: "Photo Retouching", slug: "retouche-photo" },
        { id: "creation-contenu", name: "Content Creation", slug: "creation-contenu" },
        { id: "impression-3d", name: "3D Printing", slug: "impression-3d" }
      ]
    }
  ]
};
