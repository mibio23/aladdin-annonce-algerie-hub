import { MenuCategory } from "../../categoryTypes";
import { Wrench, Settings, Phone, Home, Hammer, Truck, FileText, Briefcase, GraduationCap, Calendar, Heart, Users, Car, Palette } from "lucide-react";

export const servicesSupportEs: MenuCategory = {
  id: "services-support",
  name: "Servicios y Soporte",
  slug: "services-support",
  icon: <Wrench className="h-5 w-5 text-blue-600" />,
  subcategories: [
    {
      id: "services-informatiques",
      name: "Servicios Informáticos",
      slug: "services-informatiques",
      icon: <Settings className="h-4 w-4 text-purple-600" />,
      subcategories: [
        { id: "depannage-pc", name: "Reparación de PC", slug: "depannage-pc" },
        { id: "maintenance-reseau", name: "Mantenimiento de Red", slug: "maintenance-reseau" },
        { id: "installation-logiciels", name: "Instalación de Software", slug: "installation-logiciels" },
        { id: "recuperation-donnees", name: "Recuperación de Datos", slug: "recuperation-donnees" },
        { id: "securite-informatique", name: "Seguridad Informática", slug: "securite-informatique" },
        { id: "configuration-systeme", name: "Configuración del Sistema", slug: "configuration-systeme" },
        { id: "assistance-ligne", name: "Asistencia en Línea", slug: "assistance-ligne" },
        { id: "optimisation-ordinateur", name: "Optimización de Ordenador", slug: "optimisation-ordinateur" }
      ]
    },
    {
      id: "services-telecom",
      name: "Servicios de Telecomunicaciones",
      slug: "services-telecom",
      icon: <Phone className="h-4 w-4 text-green-600" />,
      subcategories: [
        { id: "installation-modem", name: "Instalación de Módem", slug: "installation-modem" },
        { id: "configuration-routeur", name: "Configuración de Router", slug: "configuration-routeur" },
        { id: "reparation-telephone", name: "Reparación de Teléfono", slug: "reparation-telephone" },
        { id: "debloquage-mobile", name: "Desbloqueo de Móvil", slug: "debloquage-mobile" },
        { id: "optimisation-internet", name: "Optimización de Internet", slug: "optimisation-internet" },
        { id: "parametrage-apn", name: "Configuración APN", slug: "parametrage-apn" }
      ]
    },
    {
      id: "services-electromenager",
      name: "Servicios de Electrodomésticos",
      slug: "services-electromenager",
      icon: <Settings className="h-4 w-4 text-orange-600" />,
      subcategories: [
        { id: "reparation-machines", name: "Reparación de Máquinas", slug: "reparation-machines" },
        { id: "installation-electromenager", name: "Instalación de Electrodomésticos", slug: "installation-electromenager" },
        { id: "maintenance-appareils", name: "Mantenimiento de Aparatos", slug: "maintenance-appareils" },
        { id: "depannage-urgent", name: "Reparación Urgente", slug: "depannage-urgent-electromenager" },
        { id: "diagnostic-panne", name: "Diagnóstico de Averías", slug: "diagnostic-panne" }
      ]
    },
    {
      id: "services-maison",
      name: "Servicios del Hogar",
      slug: "services-maison",
      icon: <Home className="h-4 w-4 text-blue-600" />,
      subcategories: [
        { id: "nettoyage-maison", name: "Limpieza del Hogar", slug: "nettoyage-maison" },
        { id: "menage-pro", name: "Limpieza Profesional", slug: "menage-pro" },
        { id: "repassage-domicile", name: "Planchado a Domicilio", slug: "repassage-domicile" },
        { id: "entretien-jardin", name: "Mantenimiento de Jardín", slug: "entretien-jardin" },
        { id: "desinfection-locaux", name: "Desinfección de Locales", slug: "desinfection-locaux" },
        { id: "gestion-dechets", name: "Gestión de Residuos", slug: "gestion-dechets" },
        { id: "maintenance-maison", name: "Mantenimiento del Hogar", slug: "maintenance-maison" }
      ]
    },
    {
      id: "services-artisanaux",
      name: "Servicios Artesanales",
      slug: "services-artisanaux",
      icon: <Hammer className="h-4 w-4 text-brown-600" />,
      subcategories: [
        { id: "plomberie-rapide", name: "Fontanería Rápida", slug: "plomberie-rapide" },
        { id: "electricite-maison", name: "Electricidad del Hogar", slug: "electricite-maison" },
        { id: "reparation-meubles", name: "Reparación de Muebles", slug: "reparation-meubles" },
        { id: "peinture-batiment", name: "Pintura de Edificios", slug: "peinture-batiment" },
        { id: "menuiserie-bois", name: "Carpintería de Madera", slug: "menuiserie-bois" },
        { id: "travaux-divers", name: "Trabajos Diversos", slug: "travaux-divers" },
        { id: "bricolage-domicile", name: "Bricolaje a Domicilio", slug: "bricolage-domicile" }
      ]
    },
    {
      id: "transport-livraison",
      name: "Transporte y Entrega",
      slug: "transport-livraison",
      icon: <Truck className="h-4 w-4 text-red-600" />,
      subcategories: [
        { id: "livraison-colis", name: "Entrega de Paquetes", slug: "livraison-colis" },
        { id: "taxi-prive", name: "Taxi Privado", slug: "taxi-prive" },
        { id: "transport-marchandises", name: "Transporte de Mercancías", slug: "transport-marchandises" },
        { id: "demenagement-rapide", name: "Mudanza Rápida", slug: "demenagement-rapide" },
        { id: "courses-express", name: "Envíos Exprés", slug: "courses-express" },
        { id: "location-utilitaire", name: "Alquiler de Vehículos Utilitarios", slug: "location-utilitaire" }
      ]
    },
    {
      id: "services-administratifs",
      name: "Servicios Administrativos",
      slug: "services-administratifs",
      icon: <FileText className="h-4 w-4 text-gray-600" />,
      subcategories: [
        { id: "redaction-documents", name: "Redacción de Documentos", slug: "redaction-documents" },
        { id: "traduction-pro", name: "Traducción Profesional", slug: "traduction-pro" },
        { id: "impression-pro", name: "Impresión Profesional", slug: "impression-pro" },
        { id: "numerisation-documents", name: "Digitalización de Documentos", slug: "numerisation-documents" },
        { id: "assistance-dossiers", name: "Asistencia en Expedientes", slug: "assistance-dossiers" },
        { id: "creation-cv", name: "Creación de CV", slug: "creation-cv" }
      ]
    },
    {
      id: "support-business",
      name: "Soporte Empresarial",
      slug: "support-business",
      icon: <Briefcase className="h-4 w-4 text-indigo-600" />,
      subcategories: [
        { id: "gestion-clients", name: "Gestión de Clientes", slug: "gestion-clients" },
        { id: "assistance-commerciale", name: "Asistencia Comercial", slug: "assistance-commerciale" },
        { id: "creation-devis", name: "Creación de Presupuestos", slug: "creation-devis" },
        { id: "service-comptable", name: "Servicio Contable", slug: "service-comptable" },
        { id: "conseils-gestion", name: "Asesoramiento de Gestión", slug: "conseils-gestion" },
        { id: "audits-internes", name: "Auditorías Internas", slug: "audits-internes" },
        { id: "support-marketing", name: "Soporte de Marketing", slug: "support-marketing" }
      ]
    },
    {
      id: "services-formation",
      name: "Servicios de Formación",
      slug: "services-formation",
      icon: <GraduationCap className="h-4 w-4 text-teal-600" />,
      subcategories: [
        { id: "cours-particuliers", name: "Clases Particulares", slug: "cours-particuliers" },
        { id: "formation-pro", name: "Formación Profesional", slug: "formation-pro" },
        { id: "soutien-scolaire", name: "Apoyo Escolar", slug: "soutien-scolaire" },
        { id: "ateliers-pratiques", name: "Talleres Prácticos", slug: "ateliers-pratiques" },
        { id: "coaching-personnel", name: "Coaching Personal", slug: "coaching-personnel" },
        { id: "developpement-personnel", name: "Desarrollo Personal", slug: "developpement-personnel" }
      ]
    },
    {
      id: "services-evenementiels",
      name: "Servicios de Eventos",
      slug: "services-evenementiels",
      icon: <Calendar className="h-4 w-4 text-pink-600" />,
      subcategories: [
        { id: "organisation-fetes", name: "Organización de Fiestas", slug: "organisation-fetes" },
        { id: "decoration-evenement", name: "Decoración de Eventos", slug: "decoration-evenement" },
        { id: "location-materiel", name: "Alquiler de Material", slug: "location-materiel" },
        { id: "animation-soiree", name: "Animación de Veladas", slug: "animation-soiree" },
        { id: "gestion-invitations", name: "Gestión de Invitaciones", slug: "gestion-invitations" }
      ]
    },
    {
      id: "services-sante-bienetre",
      name: "Servicios de Salud y Bienestar",
      slug: "services-sante-bienetre",
      icon: <Heart className="h-4 w-4 text-red-500" />,
      subcategories: [
        { id: "massage-bienetre", name: "Masaje de Bienestar", slug: "massage-bienetre" },
        { id: "soins-esthetiques", name: "Cuidados Estéticos", slug: "soins-esthetiques" },
        { id: "coaching-sportif", name: "Coaching Deportivo", slug: "coaching-sportif" },
        { id: "dietetique-personnalisee", name: "Dietética Personalizada", slug: "dietetique-personnalisee" },
        { id: "suivi-bienetre", name: "Seguimiento de Bienestar", slug: "suivi-bienetre" }
      ]
    },
    {
      id: "aide-personne",
      name: "Ayuda a la Persona",
      slug: "aide-personne",
      icon: <Users className="h-4 w-4 text-green-500" />,
      subcategories: [
        { id: "garde-enfants", name: "Cuidado de Niños", slug: "garde-enfants" },
        { id: "assistance-personnes", name: "Asistencia a Personas", slug: "assistance-personnes" },
        { id: "aide-domicile", name: "Ayuda a Domicilio", slug: "aide-domicile" },
        { id: "accompagnement-senior", name: "Acompañamiento a Mayores", slug: "accompagnement-senior" },
        { id: "soutien-mobilite", name: "Apoyo a la Movilidad", slug: "soutien-mobilite" }
      ]
    },
    {
      id: "services-automobiles",
      name: "Servicios de Automoción",
      slug: "services-automobiles",
      icon: <Car className="h-4 w-4 text-blue-500" />,
      subcategories: [
        { id: "lavage-auto", name: "Lavado de Coches", slug: "lavage-auto" },
        { id: "vidange-rapide", name: "Cambio de Aceite Rápido", slug: "vidange-rapide" },
        { id: "diagnostic-auto", name: "Diagnóstico de Automóvil", slug: "diagnostic-auto" },
        { id: "assistance-route", name: "Asistencia en Carretera", slug: "assistance-route" },
        { id: "entretien-moteur", name: "Mantenimiento del Motor", slug: "entretien-moteur" },
        { id: "reparation-pneus", name: "Reparación de Neumáticos", slug: "reparation-pneus" }
      ]
    },
    {
      id: "services-creatifs",
      name: "Servicios Creativos",
      slug: "services-creatifs",
      icon: <Palette className="h-4 w-4 text-purple-500" />,
      subcategories: [
        { id: "design-graphique", name: "Diseño Gráfico", slug: "design-graphique" },
        { id: "creation-logo", name: "Creación de Logotipo", slug: "creation-logo" },
        { id: "montage-video", name: "Edición de Video", slug: "montage-video" },
        { id: "retouche-photo", name: "Retoque Fotográfico", slug: "retouche-photo" },
        { id: "creation-contenu", name: "Creación de Contenido", slug: "creation-contenu" },
        { id: "impression-3d", name: "Impresión 3D", slug: "impression-3d" }
      ]
    }
  ]
};
