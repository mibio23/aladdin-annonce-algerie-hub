import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Wheat } from "lucide-react";

export const agricultureAgroalimentaireEs: MenuCategory = {
  id: "agriculture-agroalimentaire",
  name: "Agricultura y Agroalimentario",
  slug: "agriculture-agroalimentaire",
  icon: <Wheat className="w-4 h-4" />,
  description: "Categoría dedicada a la agricultura y el agroalimentario: maquinaria, insumos, ganadería, transformación y logística.",
  subcategories: [
    { id: "materiel-agricole", name: "Maquinaria agrícola", slug: "materiel-agricole", description: "Maquinaria y equipos para laboreo, siembra, cosecha y manipulación.", subcategories: [
      { id: "tracteurs-agricoles", name: "Tractores agrícolas", slug: "tracteurs-agricoles" },
      { id: "micro-tracteurs", name: "Microtractores", slug: "micro-tracteurs" },
      { id: "motoculteurs", name: "Motoazadas", slug: "motoculteurs" },
      { id: "moissonneuses-batteuses", name: "Cosechadoras", slug: "moissonneuses-batteuses" },
      { id: "charrues", name: "Arados", slug: "charrues" },
      { id: "herses", name: "Gradas", slug: "herses" },
      { id: "semoirs", name: "Sembradoras", slug: "semoirs" },
      { id: "pulverisateurs-agricoles", name: "Pulverizadores agrícolas", slug: "pulverisateurs-agricoles" },
      { id: "remorques-agricoles", name: "Remolques agrícolas", slug: "remorques-agricoles" },
      { id: "broyeurs-agricoles", name: "Trituradoras", slug: "broyeurs-agricoles" },
      { id: "epandeurs-agricoles", name: "Esparcidores", slug: "epandeurs-agricoles" },
      { id: "tarieres-mecaniques", name: "Barrenas mecánicas", slug: "tarieres-mecaniques" },
      { id: "presses-a-balles", name: "Prensas de pacas", slug: "presses-a-balles" },
      { id: "elevateurs-agricoles", name: "Elevadores agrícolas", slug: "elevateurs-agricoles" }
    ] },
    { id: "outils-equipements-de-culture", name: "Herramientas & equipos de cultivo", slug: "outils-equipements-de-culture", description: "Herramientas manuales y accesorios para el cuidado de cultivos y jardinería.", subcategories: [
      { id: "beches", name: "Palas de punta", slug: "beches" },
      { id: "pelles", name: "Palas", slug: "pelles" },
      { id: "rateaux", name: "Rastrillos", slug: "rateaux" },
      { id: "houes", name: "Azadas", slug: "houes" },
      { id: "sarcleuses", name: "Escardadoras", slug: "sarcleuses" },
      { id: "binettes", name: "Azadas manuales", slug: "binettes" },
      { id: "secateurs", name: "Tijeras de poda", slug: "secateurs" },
      { id: "cisailles", name: "Podadoras de brazo", slug: "cisailles" },
      { id: "arrosoirs", name: "Regaderas", slug: "arrosoirs" },
      { id: "pulverisateurs-manuels", name: "Pulverizadores manuales", slug: "pulverisateurs-manuels" },
      { id: "brouettes", name: "Carretillas", slug: "brouettes" },
      { id: "gants-de-jardin", name: "Guantes de jardín", slug: "gants-de-jardin" },
      { id: "lames-agricoles", name: "Cuchillas agrícolas", slug: "lames-agricoles" },
      { id: "filets-de-recolte", name: "Redes de cosecha", slug: "filets-de-recolte" }
    ] },
    { id: "systemes-irrigation", name: "Sistemas de riego", slug: "systemes-irrigation", description: "Soluciones de riego y aspersión para optimizar el aporte de agua.", subcategories: [
      { id: "tuyaux-d-arrosage", name: "Mangueras de riego", slug: "tuyaux-d-arrosage" },
      { id: "goutte-a-goutte", name: "Sistemas de goteo", slug: "goutte-a-goutte" },
      { id: "programmateurs-irrigation", name: "Programadores de riego", slug: "programmateurs-irrigation" },
      { id: "aspersions", name: "Aspersores", slug: "aspersions" },
      { id: "pompes-a-eau", name: "Bombas de agua", slug: "pompes-a-eau" },
      { id: "motopompes", name: "Motobombas", slug: "motopompes" },
      { id: "raccords-irrigation", name: "Conexiones de riego", slug: "raccords-irrigation" },
      { id: "filtres-d-eau", name: "Filtros de agua", slug: "filtres-d-eau" },
      { id: "arroseurs", name: "Rociadores", slug: "arroseurs" },
      { id: "reservoirs-d-eau", name: "Depósitos de agua", slug: "reservoirs-d-eau" }
    ] },
    { id: "semences-plants", name: "Semillas & plantones", slug: "semences-plants", description: "Semillas, plantones y bulbos para cultivos hortícolas, cereales y arborícolas.", subcategories: [
      { id: "semences-potageres", name: "Semillas de huerto", slug: "semences-potageres" },
      { id: "semences-cerealieres", name: "Semillas de cereales", slug: "semences-cerealieres" },
      { id: "semences-fourrageres", name: "Semillas forrajeras", slug: "semences-fourrageres" },
      { id: "plants-de-legumes", name: "Plantones de verduras", slug: "plants-de-legumes" },
      { id: "plants-fruitiers", name: "Plantones de frutales", slug: "plants-fruitiers" },
      { id: "plants-d-arbres", name: "Plantones de árboles", slug: "plants-d-arbres" },
      { id: "graines-biologiques", name: "Semillas orgánicas", slug: "graines-biologiques" },
      { id: "graines-hybrides", name: "Semillas híbridas", slug: "graines-hybrides" },
      { id: "bulbes", name: "Bulbos", slug: "bulbes" },
      { id: "jeunes-pousses", name: "Brotes jóvenes", slug: "jeunes-pousses" }
    ] },
    { id: "engrais-fertilisants", name: "Fertilizantes & enmiendas", slug: "engrais-fertilisants", description: "Enmiendas del suelo y nutrientes para mejorar fertilidad y crecimiento.", subcategories: [
      { id: "engrais-chimiques", name: "Fertilizantes químicos", slug: "engrais-chimiques" },
      { id: "engrais-organiques", name: "Fertilizantes orgánicos", slug: "engrais-organiques" },
      { id: "compost", name: "Compost", slug: "compost" },
      { id: "fumiers", name: "Estiércol", slug: "fumiers" },
      { id: "amendements-calcaires", name: "Enmiendas calcáreas", slug: "amendements-calcaires" },
      { id: "stimulateurs-de-croissance", name: "Estimuladores de crecimiento", slug: "stimulateurs-de-croissance" },
      { id: "terreaux", name: "Sustrato para macetas", slug: "terreaux" },
      { id: "substrats-agricoles", name: "Sustratos agrícolas", slug: "substrats-agricoles" },
      { id: "additifs-nutritifs", name: "Aditivos nutritivos", slug: "additifs-nutritifs" }
    ] },
    { id: "produits-phytosanitaires", name: "Productos fitosanitarios", slug: "produits-phytosanitaires", description: "Productos de protección de cultivos y tratamientos biológicos.", subcategories: [
      { id: "insecticides-agricoles", name: "Insecticidas agrícolas", slug: "insecticides-agricoles" },
      { id: "fongicides", name: "Fungicidas", slug: "fongicides" },
      { id: "herbicides", name: "Herbicidas", slug: "herbicides" },
      { id: "traitements-biologiques", name: "Tratamientos biológicos", slug: "traitements-biologiques" },
      { id: "repulsifs-naturels", name: "Repelentes naturales", slug: "repulsifs-naturels" },
      { id: "pieges-anti-nuisibles", name: "Trampas para plagas", slug: "pieges-anti-nuisibles" },
      { id: "protections-pour-cultures", name: "Sistemas de protección de cultivos", slug: "protections-pour-cultures" }
    ] },
    { id: "elevage-soins-animaux", name: "Ganadería & cuidado animal", slug: "elevage-soins-animaux", description: "Alimentación, cuidados y equipos para ganado.", subcategories: [
      { id: "aliments-pour-betail", name: "Alimentos para ganado", slug: "aliments-pour-betail" },
      { id: "aliments-pour-volailles", name: "Alimentos para aves", slug: "aliments-pour-volailles" },
      { id: "aliments-pour-ovins-caprins", name: "Alimentos para ovinos y caprinos", slug: "aliments-pour-ovins-caprins" },
      { id: "complements-nutritionnels", name: "Complementos nutricionales", slug: "complements-nutritionnels" },
      { id: "produits-veterinaires", name: "Productos veterinarios", slug: "produits-veterinaires" },
      { id: "mangeoires", name: "Comederos", slug: "mangeoires" },
      { id: "abreuvoirs", name: "Bebederos", slug: "abreuvoirs" },
      { id: "clotures-electriques", name: "Vallas eléctricas", slug: "clotures-electriques" },
      { id: "parcs-cages", name: "Parques y jaulas", slug: "parcs-cages" },
      { id: "couveuses", name: "Incubadoras", slug: "couveuses" },
      { id: "nichoirs", name: "Cajas nido", slug: "nichoirs" },
      { id: "equipements-de-traite", name: "Equipos de ordeño", slug: "equipements-de-traite" },
      { id: "tondeuses-animales", name: "Máquinas de esquilar", slug: "tondeuses-animales" }
    ] },
    { id: "materiel-elevage", name: "Equipos de ganadería", slug: "materiel-elevage", description: "Equipamiento especializado para ganadería, ordeño y conservación.", subcategories: [
      { id: "machines-a-traire", name: "Máquinas de ordeño", slug: "machines-a-traire" },
      { id: "tanks-a-lait", name: "Depósitos de leche", slug: "tanks-a-lait" },
      { id: "broyeurs-a-grains", name: "Molinos de grano", slug: "broyeurs-a-grains" },
      { id: "distributeurs-automatiques-d-aliments", name: "Dispensadores automáticos de alimento", slug: "distributeurs-automatiques-d-aliments" },
      { id: "enrubanneuses", name: "Enfardadoras", slug: "enrubanneuses" },
      { id: "systemes-de-ventilation-elevage", name: "Sistemas de ventilación", slug: "systemes-de-ventilation-elevage" },
      { id: "tapis-d-elevage", name: "Suelos para establos", slug: "tapis-d-elevage" },
      { id: "abris-metalliques", name: "Refugios metálicos", slug: "abris-metalliques" }
    ] },
    { id: "produits-agricoles-bruts", name: "Productos agrícolas brutos", slug: "produits-agricoles-bruts", description: "Productos agrícolas sin transformar provenientes de las cosechas.", subcategories: [
      { id: "cereales-ble-orge-mais", name: "Cereales (trigo, cebada, maíz)", slug: "cereales-ble-orge-mais" },
      { id: "legumes-frais", name: "Verduras frescas", slug: "legumes-frais" },
      { id: "fruits-de-saison", name: "Frutas de temporada", slug: "fruits-de-saison" },
      { id: "herbes-aromatiques", name: "Hierbas aromáticas", slug: "herbes-aromatiques" },
      { id: "plantes-medicinales", name: "Plantas medicinales", slug: "plantes-medicinales" },
      { id: "fourrage", name: "Forraje", slug: "fourrage" },
      { id: "foin", name: "Heno", slug: "foin" },
      { id: "luzerne", name: "Alfalfa", slug: "luzerne" },
      { id: "paille", name: "Paja", slug: "paille" }
    ] },
    { id: "produits-agroalimentaires-transformes", name: "Productos agroalimentarios procesados", slug: "produits-agroalimentaires-transformes", description: "Productos alimentarios procesados de origen agrícola.", subcategories: [
      { id: "farine", name: "Harina", slug: "farine" },
      { id: "couscous", name: "Cuscús", slug: "couscous" },
      { id: "semoule", name: "Sémola", slug: "semoule" },
      { id: "huile-d-olive", name: "Aceite de oliva", slug: "huile-d-olive" },
      { id: "huiles-vegetales", name: "Aceites vegetales", slug: "huiles-vegetales" },
      { id: "conserves", name: "Conservas", slug: "conserves" },
      { id: "confitures", name: "Mermeladas", slug: "confitures" },
      { id: "produits-laitiers", name: "Productos lácteos", slug: "produits-laitiers" },
      { id: "fromages", name: "Quesos", slug: "fromages" },
      { id: "miel", name: "Miel", slug: "miel" },
      { id: "dattes", name: "Dátiles", slug: "dattes" },
      { id: "produits-secs", name: "Productos secos", slug: "produits-secs" },
      { id: "legumineuses", name: "Legumbres", slug: "legumineuses" }
    ] },
    { id: "equipements-agroalimentaires", name: "Equipamiento agroalimentario", slug: "equipements-agroalimentaires", description: "Máquinas y equipos para procesamiento y envasado de alimentos.", subcategories: [
      { id: "moulins-agro", name: "Molinos", slug: "moulins-agro" },
      { id: "concasseurs", name: "Trituradoras", slug: "concasseurs" },
      { id: "presses-a-huile", name: "Prensas de aceite", slug: "presses-a-huile" },
      { id: "petrins", name: "Amasadoras", slug: "petrins" },
      { id: "machines-d-emballage", name: "Máquinas de envasado", slug: "machines-d-emballage" },
      { id: "pasteurisateurs", name: "Pasteurizadores", slug: "pasteurisateurs" },
      { id: "machines-de-transformation", name: "Máquinas de procesamiento de alimentos", slug: "machines-de-transformation" },
      { id: "sterilisateurs", name: "Esterilizadores", slug: "sterilisateurs" },
      { id: "broyeurs-alimentaires", name: "Molinos alimentarios", slug: "broyeurs-alimentaires" }
    ] },
    { id: "serres-solutions-de-culture", name: "Invernaderos & soluciones de cultivo", slug: "serres-solutions-de-culture", description: "Invernaderos y sistemas técnicos para cultivo controlado.", subcategories: [
      { id: "serres-tunnel", name: "Invernaderos túnel", slug: "serres-tunnel" },
      { id: "serres-metalliques", name: "Invernaderos metálicos", slug: "serres-metalliques" },
      { id: "baches-de-serre", name: "Cubiertas para invernadero", slug: "baches-de-serre" },
      { id: "systemes-hydroponiques", name: "Sistemas hidropónicos", slug: "systemes-hydroponiques" },
      { id: "systemes-aquaponiques", name: "Sistemas de acuaponía", slug: "systemes-aquaponiques" },
      { id: "lampes-horticoles", name: "Lámparas de cultivo", slug: "lampes-horticoles" },
      { id: "tables-de-culture", name: "Mesas de cultivo", slug: "tables-de-culture" },
      { id: "capteurs-d-humidite", name: "Sensores de humedad", slug: "capteurs-d-humidite" }
    ] },
    { id: "amenagement-agricole", name: "Acondicionamiento agrícola", slug: "amenagement-agricole", description: "Equipos y suministros para la infraestructura de explotaciones.", subcategories: [
      { id: "clotures-metalliques", name: "Vallas metálicas", slug: "clotures-metalliques" },
      { id: "grillages", name: "Mallas metálicas", slug: "grillages" },
      { id: "baches-agricoles", name: "Lonas agrícolas", slug: "baches-agricoles" },
      { id: "filets-d-ombrage", name: "Redes de sombreo", slug: "filets-d-ombrage" },
      { id: "paillages", name: "Acolchados", slug: "paillages" },
      { id: "tuteurs", name: "Soportes para plantas", slug: "tuteurs" },
      { id: "piquets", name: "Estacas", slug: "piquets" },
      { id: "abris-agricoles", name: "Refugios agrícolas", slug: "abris-agricoles" },
      { id: "hangars-demontables", name: "Naves desmontables", slug: "hangars-demontables" }
    ] },
    { id: "transport-logistique-agricole", name: "Transporte & logística agrícola", slug: "transport-logistique-agricole", description: "Materiales para almacenamiento, manipulación y transporte agrícola.", subcategories: [
      { id: "sacs-de-stockage", name: "Sacos de almacenamiento", slug: "sacs-de-stockage" },
      { id: "big-bags", name: "Big bags", slug: "big-bags" },
      { id: "caisses-de-recolte", name: "Cajas de cosecha", slug: "caisses-de-recolte" },
      { id: "palettes", name: "Palets", slug: "palettes" },
      { id: "conteneurs", name: "Contenedores", slug: "conteneurs" },
      { id: "charrettes-agricoles", name: "Carros agrícolas", slug: "charrettes-agricoles" },
      { id: "bennes-basculantes", name: "Cajas basculantes", slug: "bennes-basculantes" }
    ] },
    { id: "equipement-ruchers-apiculture", name: "Equipos para apicultura", slug: "equipement-ruchers-apiculture", description: "Equipos y consumibles para la práctica apícola.", subcategories: [
      { id: "ruches", name: "Colmenas", slug: "ruches" },
      { id: "cadres-de-ruche", name: "Cuadros de colmena", slug: "cadres-de-ruche" },
      { id: "cire-gaufree", name: "Cera estampada", slug: "cire-gaufree" },
      { id: "enfumoirs", name: "Ahumadores", slug: "enfumoirs" },
      { id: "extracteurs-de-miel", name: "Extractores de miel", slug: "extracteurs-de-miel" },
      { id: "equipements-apiculteurs", name: "Equipos para apicultores", slug: "equipements-apiculteurs" },
      { id: "pieges-a-essaims", name: "Trampas para enjambres", slug: "pieges-a-essaims" }
    ] },
    { id: "controle-sanitaire-outils-produits", name: "Herramientas & productos sanitarios", slug: "controle-sanitaire-outils-produits", description: "Herramientas y productos para higiene y bioseguridad de cultivos.", subcategories: [
      { id: "desinfectants-agricoles", name: "Desinfectantes agrícolas", slug: "desinfectants-agricoles" },
      { id: "pulverisateurs-sanitaires", name: "Pulverizadores sanitarios", slug: "pulverisateurs-sanitaires" },
      { id: "pieges-a-insectes", name: "Trampas para insectos", slug: "pieges-a-insectes" },
      { id: "filets-anti-oiseaux", name: "Redes anti‑pájaros", slug: "filets-anti-oiseaux" },
      { id: "systemes-protection-cultures", name: "Sistemas de protección de cultivos", slug: "systemes-protection-cultures" },
      { id: "stations-meteo-agricoles", name: "Estaciones meteorológicas agrícolas", slug: "stations-meteo-agricoles" }
    ] },
    { id: "accessoires-consommables", name: "Accesorios & consumibles", slug: "accessoires-consommables", description: "Accesorios y consumibles comunes para la actividad agrícola.", subcategories: [
      { id: "ficelles-agricoles", name: "Cuerdas agrícolas", slug: "ficelles-agricoles" },
      { id: "cordages", name: "Cuerdas", slug: "cordages" },
      { id: "sangles", name: "Correas", slug: "sangles" },
      { id: "attaches-pour-plants", name: "Bridas para plantas", slug: "attaches-pour-plants" },
      { id: "boites-d-emballage", name: "Cajas de embalaje", slug: "boites-d-emballage" },
      { id: "sacs-alimentaires", name: "Bolsas alimentarias", slug: "sacs-alimentaires" },
      { id: "etiquettes-agricoles", name: "Etiquetas agrícolas", slug: "etiquettes-agricoles" }
    ] }
  ]
};