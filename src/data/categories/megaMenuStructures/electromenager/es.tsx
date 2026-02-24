import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Plug } from "lucide-react";

export const electromenagerEs: MenuCategory = {
  id: "electromenager",
  name: "Electrodomésticos",
  slug: "electromenager",
  icon: <Plug className="w-4 h-4" />,
  subcategories: [
    {
      id: "refrigerateurs-congelateurs",
      name: "Refrigeradores y Congeladores",
      slug: "refrigerateurs-congelateurs",
      subcategories: [
        { id: "refrigerateurs-combines", name: "Refrigeradores combinados", slug: "refrigerateurs-combines" },
        { id: "refrigerateurs-simples", name: "Refrigeradores de una puerta", slug: "refrigerateurs-simples" },
        { id: "refrigerateurs-americains", name: "Refrigeradores americanos (side-by-side)", slug: "refrigerateurs-americains" },
        { id: "refrigerateurs-multi-portes", name: "Refrigeradores multipuerta", slug: "refrigerateurs-multi-portes" },
        { id: "refrigerateurs-encastrables", name: "Refrigeradores empotrables", slug: "refrigerateurs-encastrables" },
        { id: "mini-frigos", name: "Mini refrigeradores", slug: "mini-frigos" },
        { id: "congelateurs-coffre", name: "Congeladores horizontales (cofre)", slug: "congelateurs-coffre" },
        { id: "congelateurs-armoires", name: "Congeladores verticales (armario)", slug: "congelateurs-armoires" },
        { id: "congelateurs-compacts", name: "Congeladores compactos", slug: "congelateurs-compacts" },
        { id: "refrigerateurs-boissons", name: "Refrigeradores para bebidas", slug: "refrigerateurs-boissons" },
        { id: "refrigerateurs-vitres", name: "Refrigeradores con puerta de vidrio", slug: "refrigerateurs-vitres" },
        { id: "refrigerateurs-professionnels", name: "Refrigeradores profesionales", slug: "refrigerateurs-professionnels" }
      ]
    },
    {
      id: "lavage-sechage",
      name: "Lavado y Secado",
      slug: "lavage-sechage",
      subcategories: [
        { id: "lave-linge-frontal", name: "Lavadoras de carga frontal", slug: "lave-linge-frontal" },
        { id: "lave-linge-top", name: "Lavadoras de carga superior", slug: "lave-linge-top" },
        { id: "lave-linge-grande-capacite", name: "Lavadoras de gran capacidad", slug: "lave-linge-grande-capacite" },
        { id: "lave-linge-connecte", name: "Lavadoras inteligentes", slug: "lave-linge-connecte" },
        { id: "seche-linge-condensation", name: "Secadoras de condensación", slug: "seche-linge-condensation" },
        { id: "seche-linge-pompe-a-chaleur", name: "Secadoras de bomba de calor", slug: "seche-linge-pompe-a-chaleur" },
        { id: "seche-linge-evacuation", name: "Secadoras de evacuación", slug: "seche-linge-evacuation" },
        { id: "lave-linge-sechant", name: "Lavasecadoras", slug: "lave-linge-sechant" },
        { id: "mini-lave-linge", name: "Mini lavadoras", slug: "mini-lave-linge" },
        { id: "machines-professionnelles-lavage", name: "Máquinas profesionales", slug: "machines-professionnelles-lavage" }
      ]
    },
    {
      id: "cuisson-cuisine",
      name: "Cocina y Cocción",
      slug: "cuisson-cuisine",
      subcategories: [
        {
          id: "cuisinieres",
          name: "Cocinas",
          slug: "cuisinieres",
          subcategories: [
            { id: "gaz", name: "Gas", slug: "gaz" },
            { id: "electrique", name: "Eléctrica", slug: "electrique" },
            { id: "mixte", name: "Mixta", slug: "mixte" }
          ]
        },
        {
          id: "fours-encastrables",
          name: "Hornos empotrables",
          slug: "fours-encastrables",
          subcategories: [
            { id: "pyrolyse", name: "Pirolíticos", slug: "pyrolyse" },
            { id: "catalyse", name: "Catalíticos", slug: "catalyse" },
            { id: "vapeur", name: "Vapor", slug: "vapeur" }
          ]
        },
        {
          id: "micro-ondes",
          name: "Microondas",
          slug: "micro-ondes",
          subcategories: [
            { id: "grill", name: "Grill", slug: "grill" },
            { id: "combine", name: "Combinado", slug: "combine" }
          ]
        },
        {
          id: "plaques-de-cuisson",
          name: "Placas de cocina",
          slug: "plaques-de-cuisson",
          subcategories: [
            { id: "gaz-plaques", name: "Gas", slug: "gaz-plaques" },
            { id: "induction", name: "Inducción", slug: "induction" },
            { id: "vitroceramique", name: "Vitrocerámica", slug: "vitroceramique" }
          ]
        },
        { id: "tables-de-cuisson-portatives", name: "Placas portátiles", slug: "tables-de-cuisson-portatives" },
        {
          id: "friteuses",
          name: "Freidoras",
          slug: "friteuses",
          subcategories: [
            { id: "classiques", name: "Clásicas", slug: "classiques" },
            { id: "air-fryer", name: "De aire", slug: "air-fryer" }
          ]
        },
        { id: "multicuiseurs", name: "Multicookers", slug: "multicuiseurs" },
        { id: "autocuiseurs-cocottes", name: "Ollas a presión y cocottes", slug: "autocuiseurs-cocottes" },
        { id: "machines-sous-vide", name: "Máquinas de envasado al vacío", slug: "machines-sous-vide" },
        { id: "chauffe-plats", name: "Calientaplatos", slug: "chauffe-plats" }
      ]
    },
    {
      id: "petits-appareils-cuisine",
      name: "Pequeños Electrodomésticos de Cocina",
      slug: "petits-appareils-cuisine",
      subcategories: [
        { id: "mixeurs", name: "Batidoras de mano", slug: "mixeurs" },
        { id: "blenders", name: "Licuadoras", slug: "blenders" },
        { id: "robots-cuiseurs", name: "Robots de cocina", slug: "robots-cuiseurs" },
        { id: "robots-patissier", name: "Robots pasteleros (amasadoras)", slug: "robots-patissier" },
        { id: "extracteurs-jus", name: "Extractores de jugo", slug: "extracteurs-jus" },
        { id: "centrifugeuses", name: "Centrífugas", slug: "centrifugeuses" },
        { id: "batteurs", name: "Batidores eléctricos", slug: "batteurs" },
        { id: "hachoirs", name: "Picadoras", slug: "hachoirs" },
        { id: "grill-panini", name: "Parrillas y panini makers", slug: "grill-panini" },
        { id: "gaufriers", name: "Gofreras", slug: "gaufriers" },
        { id: "crepieres", name: "Creperas", slug: "crepieres" },
        { id: "cuiseurs-vapeur", name: "Vaporeras", slug: "cuiseurs-vapeur" },
        { id: "cuiseurs-riz", name: "Arroceras", slug: "cuiseurs-riz" },
        { id: "moulins-cafe", name: "Molinillos de café", slug: "moulins-cafe" },
        {
          id: "cafetieres",
          name: "Cafeteras",
          slug: "cafetieres",
          subcategories: [
            { id: "expresso", name: "Espresso", slug: "expresso" },
            { id: "filtre", name: "Filtro", slug: "filtre" },
            { id: "capsules", name: "Cápsulas", slug: "capsules" }
          ]
        },
        { id: "bouilloires", name: "Hervidores", slug: "bouilloires" },
        { id: "grille-pain", name: "Tostadoras", slug: "grille-pain" },
        { id: "machines-sandwich", name: "Sandwicheras", slug: "machines-sandwich" },
        { id: "fondue-raclette", name: "Aparatos de fondue y raclette", slug: "fondue-raclette" }
      ]
    },
    {
      id: "entretien-maison",
      name: "Cuidado del Hogar",
      slug: "entretien-maison",
      subcategories: [
        { id: "aspirateurs-traineaux", name: "Aspiradoras de trineo", slug: "aspirateurs-traineaux" },
        { id: "aspirateurs-balais", name: "Aspiradoras escoba", slug: "aspirateurs-balais" },
        { id: "aspirateurs-robot", name: "Robots aspiradores", slug: "aspirateurs-robot" },
        { id: "aspirateurs-eau-poussiere", name: "Aspiradoras agua y polvo", slug: "aspirateurs-eau-poussiere" },
        { id: "nettoyeurs-vapeur", name: "Limpiadores a vapor", slug: "nettoyeurs-vapeur" },
        { id: "nettoyeurs-haute-pression", name: "Hidrolimpiadoras domésticas", slug: "nettoyeurs-haute-pression" },
        { id: "balais-electriques", name: "Escobas eléctricas", slug: "balais-electriques" },
        { id: "nettoyeurs-vitres", name: "Limpiadores de ventanas", slug: "nettoyeurs-vitres" },
        { id: "purificateurs-air", name: "Purificadores de aire", slug: "purificateurs-air" },
        { id: "deshumidificateurs", name: "Deshumidificadores", slug: "deshumidificateurs" },
        { id: "humidificateurs", name: "Humidificadores", slug: "humidificateurs" }
      ]
    },
    {
      id: "climatisation-chauffage",
      name: "Climatización y Calefacción",
      slug: "climatisation-chauffage",
      subcategories: [
        { id: "climatiseurs-split", name: "Aires acondicionados split", slug: "climatiseurs-split" },
        { id: "climatiseurs-mobiles", name: "Aires acondicionados portátiles", slug: "climatiseurs-mobiles" },
        {
          id: "ventilateurs",
          name: "Ventiladores",
          slug: "ventilateurs",
          subcategories: [
            { id: "tour", name: "Torre", slug: "tour" },
            { id: "mural", name: "Mural", slug: "mural" },
            { id: "de-table", name: "De mesa", slug: "de-table" }
          ]
        },
        { id: "radiateurs-electriques", name: "Radiadores eléctricos", slug: "radiateurs-electriques" },
        { id: "chauffages-soufflants", name: "Calefactores de aire", slug: "chauffages-soufflants" },
        { id: "chauffages-gaz", name: "Calefactores a gas", slug: "chauffages-gaz" },
        { id: "poeles-petrole", name: "Estufas de queroseno", slug: "poeles-petrole" },
        { id: "chauffe-eau-electriques", name: "Calentadores de agua eléctricos", slug: "chauffe-eau-electriques" },
        { id: "chauffe-eau-gaz", name: "Calentadores de agua a gas", slug: "chauffe-eau-gaz" },
        { id: "chauffage-solaire-domestique", name: "Calefacción solar doméstica", slug: "chauffage-solaire-domestique" },
        { id: "defroisseurs-vapeur", name: "Vaporizadores para ropa", slug: "defroisseurs-vapeur" }
      ]
    },
    {
      id: "electromenager-salle-de-bain",
      name: "Electrodomésticos para el Baño",
      slug: "electromenager-salle-de-bain",
      subcategories: [
        { id: "seche-cheveux", name: "Secadores de cabello", slug: "seche-cheveux" },
        { id: "lisseurs-boucleurs", name: "Planchas y rizadores", slug: "lisseurs-boucleurs" },
        { id: "tondeuses-rasoirs", name: "Recortadoras y afeitadoras eléctricas", slug: "tondeuses-rasoirs" },
        { id: "epilateurs", name: "Depiladoras", slug: "epilateurs" },
        { id: "brosse-visage", name: "Cepillo facial eléctrico", slug: "brosse-visage" },
        { id: "miroirs-lumineux", name: "Espejos iluminados", slug: "miroirs-lumineux" },
        { id: "sterilisateurs-desinfecteurs", name: "Esterilizadores y desinfectores", slug: "sterilisateurs-desinfecteurs" }
      ]
    },
    {
      id: "traitement-eau",
      name: "Tratamiento del Agua",
      slug: "traitement-eau",
      subcategories: [
        { id: "filtres-eau", name: "Filtros de agua", slug: "filtres-eau" },
        { id: "purificateurs-eau", name: "Purificadores", slug: "purificateurs-eau" },
        { id: "fontaines-eau", name: "Dispensadores de agua", slug: "fontaines-eau" },
        { id: "distributeurs-eau-chaude-froide", name: "Dispensadores de agua caliente/fría", slug: "distributeurs-eau-chaude-froide" },
        { id: "osmose-inverse", name: "Sistemas de ósmosis inversa", slug: "osmose-inverse" }
      ]
    },
    {
      id: "appareils-specialises",
      name: "Aparatos Especializados",
      slug: "appareils-specialises",
      subcategories: [
        { id: "machines-pain", name: "Máquinas de pan", slug: "machines-pain" },
        { id: "machines-pates", name: "Máquinas de pasta", slug: "machines-pates" },
        { id: "machines-glace", name: "Máquinas de helado", slug: "machines-glace" },
        { id: "hot-dog", name: "Máquinas de hot-dog", slug: "hot-dog" },
        { id: "sorbetieres", name: "Sorbeteras", slug: "sorbetieres" },
        { id: "deshydrateurs-alimentaires", name: "Deshidratadores de alimentos", slug: "deshydrateurs-alimentaires" },
        { id: "fumoir", name: "Aparatos ahumadores", slug: "fumoir" },
        { id: "plateaux-chauffants", name: "Bandejas calentadoras eléctricas", slug: "plateaux-chauffants" }
      ]
    },
    {
      id: "froid-congelation-pro",
      name: "Refrigeración y Congelación Profesional",
      slug: "froid-congelation-pro",
      subcategories: [
        { id: "armoires-refrigerees", name: "Armarios refrigerados", slug: "armoires-refrigerees" },
        { id: "congelateurs-pro", name: "Congeladores profesionales", slug: "congelateurs-pro" },
        { id: "vitrines-refrigerees", name: "Vitrinas refrigeradas", slug: "vitrines-refrigerees" },
        { id: "comptoirs-froids", name: "Mostradores fríos", slug: "comptoirs-froids" },
        { id: "machines-glacons", name: "Máquinas de hielo", slug: "machines-glacons" },
        { id: "cellules-refroidissement", name: "Enfriadores rápidos", slug: "cellules-refroidissement" }
      ]
    },
    {
      id: "cuisson-professionnelle",
      name: "Cocción Profesional",
      slug: "cuisson-professionnelle",
      subcategories: [
        {
          id: "fours-pro",
          name: "Hornos profesionales",
          slug: "fours-pro",
          subcategories: [
            { id: "pizza", name: "Pizza", slug: "pizza" },
            { id: "pain", name: "Pan", slug: "pain" },
            { id: "convection", name: "Convección", slug: "convection" }
          ]
        },
        { id: "plaques-gaz-pro", name: "Placas de gas profesionales", slug: "plaques-gaz-pro" },
        { id: "grillades-planchas", name: "Parrillas y planchas", slug: "grillades-planchas" },
        { id: "marmites-electriques", name: "Marmitas eléctricas", slug: "marmites-electriques" },
        { id: "friteuses-pro", name: "Freidoras profesionales", slug: "friteuses-pro" },
        { id: "bain-maries", name: "Baño María", slug: "bain-maries" }
      ]
    },
    {
      id: "accessoires-pieces-detachees",
      name: "Accesorios y Repuestos",
      slug: "accessoires-pieces-detachees",
      subcategories: [
        { id: "filtres-aspirateurs", name: "Filtros para aspiradoras", slug: "filtres-aspirateurs" },
        { id: "filtres-frigos", name: "Filtros para refrigeradores", slug: "filtres-frigos" },
        { id: "bacs-legumes", name: "Cajones para verduras", slug: "bacs-legumes" },
        { id: "bouteilles-cartouches-gaz", name: "Botellas y cartuchos de gas", slug: "bouteilles-cartouches-gaz" },
        { id: "tuyaux-arrivee-evacuation", name: "Mangueras de entrada y drenaje", slug: "tuyaux-arrivee-evacuation" },
        { id: "poignees-boutons", name: "Manijas y perillas", slug: "poignees-boutons" },
        { id: "plateaux-micro-ondes", name: "Bandejas de microondas", slug: "plateaux-micro-ondes" },
        { id: "batteries-cuisine-compatibles", name: "Utensilios compatibles", slug: "batteries-cuisine-compatibles" },
        { id: "grilles-plaques", name: "Rejillas y placas", slug: "grilles-plaques" },
        { id: "accessoires-robot-cuisine", name: "Accesorios para robots de cocina", slug: "accessoires-robot-cuisine" },
        { id: "lames-de-coupe", name: "Cuchillas de corte", slug: "lames-de-coupe" },
        { id: "pieces-chauffe-eau", name: "Repuestos para calentadores de agua", slug: "pieces-chauffe-eau" }
      ]
    },
    {
      id: "electromenager-nomade-mini",
      name: "Electrodomésticos Portátiles y Mini",
      slug: "electromenager-nomade-mini",
      subcategories: [
        { id: "mini-glacieres-electriques", name: "Mini neveras eléctricas", slug: "mini-glacieres-electriques" },
        { id: "mini-cuiseurs", name: "Mini cocedores", slug: "mini-cuiseurs" },
        { id: "appareils-portables-batterie", name: "Dispositivos portátiles a batería", slug: "appareils-portables-batterie" },
        { id: "mini-ventilateurs", name: "Mini ventiladores", slug: "mini-ventilateurs" },
        { id: "mini-fers-vapeur", name: "Mini planchas de vapor", slug: "mini-fers-vapeur" },
        { id: "appareils-camping", name: "Pequeños aparatos para camping", slug: "appareils-camping" }
      ]
    },
    {
      id: "securite-energie",
      name: "Seguridad y Energía",
      slug: "securite-energie",
      subcategories: [
        { id: "parafoudres", name: "Protecciones contra sobretensiones", slug: "parafoudres" },
        { id: "multiprises-intelligentes", name: "Regletas inteligentes", slug: "multiprises-intelligentes" },
        { id: "regulateurs-tension", name: "Reguladores de tensión", slug: "regulateurs-tension" },
        { id: "onduleurs-domestiques", name: "UPS domésticos", slug: "onduleurs-domestiques" }
      ]
    },
    {
      id: "marques-populaires",
      name: "Marcas Populares",
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
      name: "Segmentos de Uso",
      slug: "segments-usage",
      subcategories: [
        { id: "appareils-menagers-classiques", name: "Electrodomésticos estándar", slug: "appareils-menagers-classiques" },
        { id: "appareils-professionnels", name: "Electrodomésticos profesionales", slug: "appareils-professionnels" },
        { id: "appareils-petites-cuisines", name: "Aparatos para cocinas pequeñas", slug: "appareils-petites-cuisines" },
        { id: "appareils-energetiques-a-plus-plus", name: "Eficiencia energética A+ a A++", slug: "appareils-energetiques-a-plus-plus" },
        { id: "appareils-connectes-smart-home", name: "Aparatos conectados smart-home", slug: "appareils-connectes-smart-home" },
        { id: "appareils-economiques-compacts", name: "Aparatos económicos y compactos", slug: "appareils-economiques-compacts" }
      ]
    }
  ]
};