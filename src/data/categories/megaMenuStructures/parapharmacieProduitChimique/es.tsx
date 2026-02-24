import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Pill, Heart, Droplets, Sparkles, Shield, Baby, HeartPulse, Microscope, Sun, Leaf, TestTube, PaintBucket, Sprout, Beaker, Package, Palette } from "lucide-react";

export const parapharmacieProduitChimiqueEs: MenuCategory = {
  id: "parapharmacie-produit-chimique",
  name: "Parafarmacia y Productos Químicos",
  slug: "parapharmacie-produit-chimique",
  icon: <Pill className="w-4 h-4" />,
  subcategories: [
    {
      id: "parapharmacie-generale",
      name: "Parafarmacia General",
      slug: "parapharmacie-generale",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "vitamines", name: "Vitaminas", slug: "vitamines" },
        { id: "complements-alimentaires", name: "Suplementos Alimenticios", slug: "complements-alimentaires" },
        { id: "produits-immunite", name: "Productos de Inmunidad", slug: "produits-immunite" },
        { id: "supplements-sportifs", name: "Suplementos Deportivos", slug: "supplements-sportifs" },
        { id: "soins-essentiels", name: "Cuidados Esenciales", slug: "soins-essentiels" },
        { id: "boosters-energie", name: "Potenciadores de Energía", slug: "boosters-energie" },
        { id: "probiotiques", name: "Probióticos", slug: "probiotiques" },
        { id: "mineraux", name: "Minerales", slug: "mineraux" },
        { id: "omega-3", name: "Omega-3", slug: "omega-3" },
        { id: "multivitamines", name: "Multivitaminas", slug: "multivitamines" }
      ]
    },
    {
      id: "soins-visage",
      name: "Cuidado Facial",
      slug: "soins-visage",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-hydratantes", name: "Cremas Hidratantes", slug: "cremes-hydratantes" },
        { id: "cremes-anti-age", name: "Cremas Antiedad", slug: "cremes-anti-age" },
        { id: "serums", name: "Sérums", slug: "serums" },
        { id: "soins-anti-acne", name: "Tratamientos Anti-acné", slug: "soins-anti-acne" },
        { id: "exfoliants", name: "Exfoliantes", slug: "exfoliants" },
        { id: "masques-visage", name: "Mascarillas Faciales", slug: "masques-visage" },
        { id: "nettoyants-dermatologiques", name: "Limpiadores Dermatológicos", slug: "nettoyants-dermatologiques" },
        { id: "cremes-depigmentantes", name: "Cremas Despigmentantes", slug: "cremes-depigmentantes" },
        { id: "soins-anti-taches", name: "Tratamientos Antimanchas", slug: "soins-anti-taches" },
        { id: "soins-contour-yeux", name: "Contorno de Ojos", slug: "soins-contour-yeux" }
      ]
    },
    {
      id: "soins-corps",
      name: "Cuidado Corporal",
      slug: "soins-corps",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "laits-corporels", name: "Leches Corporales", slug: "laits-corporels" },
        { id: "huiles-essentielles", name: "Aceites Esenciales", slug: "huiles-essentielles" },
        { id: "huiles-massage", name: "Aceites de Masaje", slug: "huiles-massage" },
        { id: "gommages-corporels", name: "Exfoliantes Corporales", slug: "gommages-corporels" },
        { id: "soins-raffermissants", name: "Tratamientos Reafirmantes", slug: "soins-raffermissants" },
        { id: "soins-anti-vergetures", name: "Tratamientos Antiestrías", slug: "soins-anti-vergetures" },
        { id: "cremes-nourrissantes", name: "Cremas Nutritivas", slug: "cremes-nourrissantes" },
        { id: "gels-raffermissants", name: "Geles Reafirmantes", slug: "gels-raffermissants" },
        { id: "soins-anticellulite", name: "Tratamientos Anticelulitis", slug: "soins-anticellulite" }
      ]
    },
    {
      id: "soins-capillaires",
      name: "Cuidado Capilar",
      slug: "soins-capillaires",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "shampoings", name: "Champús", slug: "shampoings" },
        { id: "apres-shampoings", name: "Acondicionadores", slug: "apres-shampoings" },
        { id: "masques-capillaires", name: "Mascarillas Capilares", slug: "masques-capillaires" },
        { id: "huiles-capillaires", name: "Aceites Capilares", slug: "huiles-capillaires" },
        { id: "serums-capillaires", name: "Sérums Capilares", slug: "serums-capillaires" },
        { id: "lotions-antichute", name: "Lociones Anticaída", slug: "lotions-antichute" },
        { id: "soins-keratine", name: "Tratamientos de Queratina", slug: "soins-keratine" },
        { id: "traitements-cuir-chevelu", name: "Tratamientos del Cuero Cabelludo", slug: "traitements-cuir-chevelu" },
        { id: "shampoings-medicaux", name: "Champús Médicos", slug: "shampoings-medicaux" },
        { id: "soins-antipelliculaires", name: "Tratamientos Anticaspa", slug: "soins-antipelliculaires" }
      ]
    },
    {
      id: "hygiene-corporelle",
      name: "Higiene Corporal",
      slug: "hygiene-corporelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "savons", name: "Jabones", slug: "savons" },
        { id: "gels-douche", name: "Geles de Ducha", slug: "gels-douche" },
        { id: "deodorants", name: "Desodorantes", slug: "deodorants" },
        { id: "lingettes", name: "Toallitas", slug: "lingettes" },
        { id: "soins-intimes", name: "Cuidado Íntimo", slug: "soins-intimes" },
        { id: "produits-antibacteriens", name: "Productos Antibacterianos", slug: "produits-antibacteriens" },
        { id: "bains-bouche", name: "Enjuagues Bucales", slug: "bains-bouche" },
        { id: "dentifrices", name: "Dentífricos", slug: "dentifrices" },
        { id: "brosses-dents", name: "Cepillos de Dientes", slug: "brosses-dents" },
        { id: "gels-mains", name: "Geles de Manos", slug: "gels-mains" }
      ]
    },
    {
      id: "hygiene-feminine",
      name: "Higiene Femenina",
      slug: "hygiene-feminine",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "serviettes", name: "Compresas", slug: "serviettes" },
        { id: "tampons", name: "Tampones", slug: "tampons" },
        { id: "coupes-menstruelles", name: "Copas Menstruales", slug: "coupes-menstruelles" },
        { id: "gels-intimes", name: "Geles Íntimos", slug: "gels-intimes" },
        { id: "traitements-gynecologiques", name: "Tratamientos Ginecológicos", slug: "traitements-gynecologiques" },
        { id: "protege-slips", name: "Protectores Diarios", slug: "protege-slips" },
        { id: "produits-post-partum", name: "Productos Postparto", slug: "produits-post-partum" }
      ]
    },
    {
      id: "hygiene-masculine",
      name: "Higiene Masculina",
      slug: "hygiene-masculine",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "soins-barbe", name: "Cuidado de la Barba", slug: "soins-barbe" },
        { id: "mousses-raser", name: "Espumas de Afeitar", slug: "mousses-raser" },
        { id: "gels-rasage", name: "Geles de Afeitar", slug: "gels-rasage" },
        { id: "lotions-apres-rasage", name: "Lociones Aftershave", slug: "lotions-apres-rasage" },
        { id: "soins-visage-homme", name: "Cuidado Facial Hombre", slug: "soins-visage-homme" },
        { id: "baumes-barbe", name: "Bálsamos para Barba", slug: "baumes-barbe" },
        { id: "huiles-barbe", name: "Aceites para Barba", slug: "huiles-barbe" }
      ]
    },
    {
      id: "produits-bebe",
      name: "Productos para Bebé",
      slug: "produits-bebe",
      icon: <Baby className="w-4 h-4" />,
      subcategories: [
        { id: "laits-infantiles", name: "Leches Infantiles", slug: "laits-infantiles" },
        { id: "soins-corps-bebe", name: "Cuidado Corporal Bebé", slug: "soins-corps-bebe" },
        { id: "lingettes-bebe", name: "Toallitas Bebé", slug: "lingettes-bebe" },
        { id: "gels-lavants-bebe", name: "Geles de Lavado", slug: "gels-lavants-bebe" },
        { id: "cremes-protectrices-bebe", name: "Cremas Protectoras", slug: "cremes-protectrices-bebe" },
        { id: "accessoires-hygiene-bebe", name: "Accesorios de Higiene", slug: "accessoires-hygiene-bebe" },
        { id: "huiles-bebe", name: "Aceites para Bebé", slug: "huiles-bebe" },
        { id: "poudres-bebe", name: "Talcos para Bebé", slug: "poudres-bebe" },
        { id: "soins-erytheme-fessier", name: "Tratamientos para la Dermatitis del Pañal", slug: "soins-erytheme-fessier" }
      ]
    },
    {
      id: "premiers-secours",
      name: "Primeros Auxilios",
      slug: "premiers-secours",
      icon: <HeartPulse className="w-4 h-4" />,
      subcategories: [
        { id: "pansements", name: "Tiritas / Apósitos", slug: "pansements" },
        { id: "compresses", name: "Compresas", slug: "compresses" },
        { id: "bandes", name: "Vendas", slug: "bandes" },
        { id: "antiseptiques", name: "Antisépticos", slug: "antiseptiques" },
        { id: "solutions-iodees", name: "Soluciones Yodadas", slug: "solutions-iodees" },
        { id: "desinfectants", name: "Desinfectantes", slug: "desinfectants" },
        { id: "trousses-secours", name: "Botiquines", slug: "trousses-secours" },
        { id: "sutures-adhesives", name: "Suturas Adhesivas", slug: "sutures-adhesives" },
        { id: "sprays-cicatrisants", name: "Sprays Cicatrizantes", slug: "sprays-cicatrisants" }
      ]
    },
    {
      id: "materiel-medical-leger",
      name: "Material Médico Ligero",
      slug: "materiel-medical-leger",
      icon: <Microscope className="w-4 h-4" />,
      subcategories: [
        { id: "tensiometres", name: "Tensiómetros", slug: "tensiometres" },
        { id: "thermometres", name: "Termómetros", slug: "thermometres" },
        { id: "oxymetres", name: "Oxímetros", slug: "oxymetres" },
        { id: "glucometres", name: "Glucómetros", slug: "glucometres" },
        { id: "nebuliseurs", name: "Nebulizadores", slug: "nebuliseurs" },
        { id: "tests-rapides", name: "Tests Rápidos", slug: "tests-rapides" },
        { id: "aerosols", name: "Aerosoles", slug: "aerosols" },
        { id: "pulverisateurs-medicaux", name: "Pulverizadores Médicos", slug: "pulverisateurs-medicaux" }
      ]
    },
    {
      id: "produits-solaires",
      name: "Productos Solares",
      slug: "produits-solaires",
      icon: <Sun className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-spf", name: "Cremas SPF", slug: "cremes-spf" },
        { id: "sprays-solaires", name: "Sprays Solares", slug: "sprays-solaires" },
        { id: "cremes-teintees", name: "Cremas con Color", slug: "cremes-teintees" },
        { id: "protections-enfants", name: "Protección Infantil", slug: "protections-enfants" },
        { id: "soins-apres-soleil", name: "Aftersun", slug: "soins-apres-soleil" },
        { id: "huiles-solaires", name: "Aceites Solares", slug: "huiles-solaires" },
        { id: "sticks-spf", name: "Sticks SPF", slug: "sticks-spf" }
      ]
    },
    {
      id: "phytotherapie",
      name: "Fitoterapia",
      slug: "phytotherapie",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "extraits-naturels", name: "Extractos Naturales", slug: "extraits-naturels" },
        { id: "plantes-medicinales", name: "Plantas Medicinales", slug: "plantes-medicinales" },
        { id: "tisanes-therapeutiques", name: "Infusiones Terapéuticas", slug: "tisanes-therapeutiques" },
        { id: "gelules-naturelles", name: "Cápsulas Naturales", slug: "gelules-naturelles" },
        { id: "poudres-plantes", name: "Polvos de Plantas", slug: "poudres-plantes" },
        { id: "macerats", name: "Macerados", slug: "macerats" }
      ]
    },
    {
      id: "aromatherapie",
      name: "Aromaterapia",
      slug: "aromatherapie",
      icon: <TestTube className="w-4 h-4" />,
      subcategories: [
        { id: "diffuseurs", name: "Difusores", slug: "diffuseurs" },
        { id: "huiles-essentielles-pures", name: "Aceites Esenciales Puros", slug: "huiles-essentielles-pures" },
        { id: "melanges-therapeutiques", name: "Mezclas Terapéuticas", slug: "melanges-therapeutiques" },
        { id: "brumes-aromatiques", name: "Brumas Aromáticas", slug: "brumes-aromatiques" },
        { id: "synergies-huiles", name: "Sinergias de Aceites", slug: "synergies-huiles" },
        { id: "roll-on-bien-etre", name: "Roll-on Bienestar", slug: "roll-on-bien-etre" }
      ]
    },
    {
      id: "produits-dietetiques",
      name: "Productos Dietéticos",
      slug: "produits-dietetiques",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "proteines", name: "Proteínas", slug: "proteines" },
        { id: "gainers", name: "Ganadores de Peso", slug: "gainers" },
        { id: "bruleurs-graisse", name: "Quemadores de Grasa", slug: "bruleurs-graisse" },
        { id: "substituts-repas", name: "Sustitutos de Comida", slug: "substituts-repas" },
        { id: "produits-detox", name: "Productos Detox", slug: "produits-detox" },
        { id: "boissons-energetiques", name: "Bebidas Energéticas", slug: "boissons-energetiques" },
        { id: "fibres-nutritionnelles", name: "Fibras Nutricionales", slug: "fibres-nutritionnelles" },
        { id: "super-aliments", name: "Superalimentos", slug: "super-aliments" }
      ]
    },
    {
      id: "desinfection-antiseptiques",
      name: "Desinfección y Antisépticos",
      slug: "desinfection-antiseptiques",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "gels-hydroalcooliques", name: "Geles Hidroalcohólicos", slug: "gels-hydroalcooliques" },
        { id: "sprays-desinfectants", name: "Sprays Desinfectantes", slug: "sprays-desinfectants" },
        { id: "lingettes-virucides", name: "Toallitas Virucidas", slug: "lingettes-virucides" },
        { id: "solutions-antiseptiques-pro", name: "Soluciones Antisépticas Pro", slug: "solutions-antiseptiques-pro" },
        { id: "desinfectants-surfaces", name: "Desinfectantes de Superficies", slug: "desinfectants-surfaces" }
      ]
    },
    {
      id: "produits-menagers-chimiques",
      name: "Productos de Limpieza Química",
      slug: "produits-menagers-chimiques",
      icon: <PaintBucket className="w-4 h-4" />,
      subcategories: [
        { id: "detergents-multi-usages", name: "Detergentes Multiusos", slug: "detergents-multi-usages" },
        { id: "degraissants", name: "Desengrasantes", slug: "degraissants" },
        { id: "desodorisants", name: "Ambientadores", slug: "desodorisants" },
        { id: "nettoyants-sanitaires", name: "Limpiadores Sanitarios", slug: "nettoyants-sanitaires" },
        { id: "nettoyants-vitres", name: "Limpiacristales", slug: "nettoyants-vitres" },
        { id: "anticalcaire", name: "Antical", slug: "anticalcaire" }
      ]
    },
    {
      id: "produits-entretien-industriels",
      name: "Productos de Limpieza Industrial",
      slug: "produits-entretien-industriels",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "decapants", name: "Decapantes", slug: "decapants" },
        { id: "solvants-professionnels", name: "Disolventes Profesionales", slug: "solvants-professionnels" },
        { id: "agents-degraissants-puissants", name: "Desengrasantes Potentes", slug: "agents-degraissants-puissants" },
        { id: "nettoyants-machines", name: "Limpiadores de Máquinas", slug: "nettoyants-machines" },
        { id: "detartrants-industriels", name: "Desincrustantes Industriales", slug: "detartrants-industriels" }
      ]
    },
    {
      id: "peintures-solvants",
      name: "Pinturas y Disolventes",
      slug: "peintures-solvants",
      icon: <Palette className="w-4 h-4" />,
      subcategories: [
        { id: "peintures-chimiques", name: "Pinturas Químicas", slug: "peintures-chimiques" },
        { id: "resines", name: "Resinas", slug: "resines" },
        { id: "diluants", name: "Diluyentes", slug: "diluants" },
        { id: "acetone", name: "Acetona", slug: "acetone" },
        { id: "white-spirit", name: "Aguarrás", slug: "white-spirit" },
        { id: "vernis-techniques", name: "Barnices Técnicos", slug: "vernis-techniques" },
        { id: "durcisseurs", name: "Endurecedores", slug: "durcisseurs" },
        { id: "solvants-specialises", name: "Disolventes Especializados", slug: "solvants-specialises" }
      ]
    },
    {
      id: "produits-piscine",
      name: "Productos para Piscina",
      slug: "produits-piscine",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "chlore", name: "Cloro", slug: "chlore" },
        { id: "ph-plus", name: "pH+", slug: "ph-plus" },
        { id: "ph-moins", name: "pH-", slug: "ph-moins" },
        { id: "floculants", name: "Floculantes", slug: "floculants" },
        { id: "algicides", name: "Algicidas", slug: "algicides" },
        { id: "stabilisateurs", name: "Estabilizadores", slug: "stabilisateurs" },
        { id: "kits-analyse-eau", name: "Kits de Análisis de Agua", slug: "kits-analyse-eau" },
        { id: "clarifiants", name: "Clarificantes", slug: "clarifiants" },
        { id: "produits-hivernage", name: "Productos de Invernaje", slug: "produits-hivernage" }
      ]
    },
    {
      id: "produits-agricoles-chimiques",
      name: "Productos Químicos Agrícolas",
      slug: "produits-agricoles-chimiques",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "engrais-npk", name: "Fertilizantes NPK", slug: "engrais-npk" },
        { id: "pesticides", name: "Pesticidas", slug: "pesticides" },
        { id: "herbicides", name: "Herbicidas", slug: "herbicides" },
        { id: "fongicides", name: "Fungicidas", slug: "fongicides" },
        { id: "stimulateurs-croissance", name: "Estimuladores de Crecimiento", slug: "stimulateurs-croissance" },
        { id: "regulateurs", name: "Reguladores", slug: "regulateurs" },
        { id: "adjuvants-agricoles", name: "Coadyuvantes Agrícolas", slug: "adjuvants-agricoles" }
      ]
    },
    {
      id: "produits-laboratoires",
      name: "Productos de Laboratorio",
      slug: "produits-laboratoires",
      icon: <Beaker className="w-4 h-4" />,
      subcategories: [
        { id: "reactifs-chimiques", name: "Reactivos Químicos", slug: "reactifs-chimiques" },
        { id: "solutions-tampons", name: "Soluciones Tampón", slug: "solutions-tampons" },
        { id: "alcools", name: "Alcoholes", slug: "alcools" },
        { id: "gels-specifiques", name: "Geles Específicos", slug: "gels-specifiques" },
        { id: "kits-analyse", name: "Kits de Análisis", slug: "kits-analyse" },
        { id: "acides", name: "Ácidos", slug: "acides" },
        { id: "bases", name: "Bases", slug: "bases" },
        { id: "solvants-laboratoire", name: "Disolventes de Laboratorio", slug: "solvants-laboratoire" }
      ]
    },
    {
      id: "equipements-securite-chimique",
      name: "Equipos de Seguridad Química",
      slug: "equipements-securite-chimique",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "gants-nitrile", name: "Guantes de Nitrilo", slug: "gants-nitrile" },
        { id: "lunettes-protection", name: "Gafas de Protección", slug: "lunettes-protection" },
        { id: "masques-respiratoires", name: "Máscaras Respiratorias", slug: "masques-respiratoires" },
        { id: "combinaisons-anti-chimiques", name: "Trajes Anti-químicos", slug: "combinaisons-anti-chimiques" },
        { id: "protections-faciales", name: "Protección Facial", slug: "protections-faciales" },
        { id: "chaussures-anti-produits-corrosifs", name: "Calzado Anti-corrosivo", slug: "chaussures-anti-produits-corrosifs" }
      ]
    },
    {
      id: "emballages-chimiques",
      name: "Envases Químicos",
      slug: "emballages-chimiques",
      icon: <Package className="w-4 h-4" />,
      subcategories: [
        { id: "bidons", name: "Bidones", slug: "bidons" },
        { id: "flacons-resistants", name: "Frascos Resistentes", slug: "flacons-resistants" },
        { id: "bouteilles-securisees", name: "Botellas de Seguridad", slug: "bouteilles-securisees" },
        { id: "contenants-anti-corrosifs", name: "Contenedores Anti-corrosivos", slug: "contenants-anti-corrosifs" },
        { id: "cuves", name: "Cubas / Tanques", slug: "cuves" },
        { id: "petits-contenants-dosage", name: "Pequeños Envases de Dosificación", slug: "petits-contenants-dosage" }
      ]
    },
    {
      id: "hygiene-professionnelle",
      name: "Higiene Profesional",
      slug: "hygiene-professionnelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "savons-industriels", name: "Jabones Industriales", slug: "savons-industriels" },
        { id: "desinfectants-pro", name: "Desinfectantes Pro", slug: "desinfectants-pro" },
        { id: "nettoyants-sols-hopitaux", name: "Limpiadores Suelos Hospitales", slug: "nettoyants-sols-hopitaux" },
        { id: "produits-haccp", name: "Productos HACCP", slug: "produits-haccp" },
        { id: "detergents-alimentaires", name: "Detergentes Alimentarios", slug: "detergents-alimentaires" }
      ]
    },
    {
      id: "cosmetiques-specialises",
      name: "Cosmética Especializada",
      slug: "cosmetiques-specialises",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "soins-hypoallergeniques", name: "Cuidados Hipoalergénicos", slug: "soins-hypoallergeniques" },
        { id: "cremes-medicales", name: "Cremas Médicas", slug: "cremes-medicales" },
        { id: "soins-dermatologiques-specialises", name: "Cuidados Dermatológicos Especializados", slug: "soins-dermatologiques-specialises" },
        { id: "cremes-cicatrisantes", name: "Cremas Cicatrizantes", slug: "cremes-cicatrisantes" },
        { id: "protections-cutanees-medicales", name: "Protección Cutánea Médica", slug: "protections-cutanees-medicales" }
      ]
    }
  ]
};
