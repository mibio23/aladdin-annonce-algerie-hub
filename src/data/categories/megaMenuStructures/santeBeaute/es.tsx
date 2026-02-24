import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { HeartPulse, Sparkles, Droplets, Sun, Leaf, Shield, Pill, Microscope, Beaker, Package, Palette, Sprout, Heart } from "lucide-react";

export const santeBeauteEs: MenuCategory = {
  id: "sante-beaute",
  name: "Salud y Belleza",
  slug: "sante-beaute",
  icon: <HeartPulse className="w-4 h-4" />,
  subcategories: [
    {
      id: "soins-visage",
      name: "Cuidado del rostro",
      slug: "soins-visage",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-hydratantes", name: "Cremas hidratantes", slug: "cremes-hydratantes" },
        { id: "cremes-anti-age", name: "Cremas anti-edad", slug: "cremes-anti-age" },
        { id: "serums", name: "Sérums", slug: "serums" },
        { id: "soins-anti-acne", name: "Cuidado antiacné", slug: "soins-anti-acne" },
        { id: "masques", name: "Mascarillas", slug: "masques" },
        { id: "exfoliants", name: "Exfoliantes", slug: "exfoliants" },
        { id: "nettoyants-visage", name: "Limpiadores faciales", slug: "nettoyants-visage" },
        { id: "toniques", name: "Tónicos", slug: "toniques" },
        { id: "soins-anti-taches", name: "Cuidado anti-manchas", slug: "soins-anti-taches" },
        { id: "cremes-contour-yeux", name: "Cremas contorno de ojos", slug: "cremes-contour-yeux" },
        { id: "patchs-yeux", name: "Parches para ojos", slug: "patchs-yeux" }
      ]
    },
    {
      id: "soins-corps",
      name: "Cuidado corporal",
      slug: "soins-corps",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "laits-corporels", name: "Leches corporales", slug: "laits-corporels" },
        { id: "cremes-nourrissantes", name: "Cremas nutritivas", slug: "cremes-nourrissantes" },
        { id: "gommages-corps", name: "Exfoliantes corporales", slug: "gommages-corps" },
        { id: "huiles-corporelles", name: "Aceites corporales", slug: "huiles-corporelles" },
        { id: "gels-minceur", name: "Geles reductores", slug: "gels-minceur" },
        { id: "soins-anti-vergetures", name: "Anti-estrías", slug: "soins-anti-vergetures" },
        { id: "soins-raffermissants", name: "Cuidado reafirmante", slug: "soins-raffermissants" },
        { id: "lotions-parfumees", name: "Lociones perfumadas", slug: "lotions-parfumees" }
      ]
    },
    {
      id: "hygiene-corporelle",
      name: "Higiene corporal",
      slug: "hygiene-corporelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "gels-douche", name: "Geles de ducha", slug: "gels-douche" },
        { id: "savons-solides", name: "Jabones en barra", slug: "savons-solides" },
        { id: "savons-liquides", name: "Jabones líquidos", slug: "savons-liquides" },
        { id: "deodorants", name: "Desodorantes", slug: "deodorants" },
        { id: "lingettes", name: "Toallitas", slug: "lingettes" },
        { id: "soins-intimes", name: "Cuidado íntimo", slug: "soins-intimes" },
        { id: "bains-moussants", name: "Baños de burbujas", slug: "bains-moussants" },
        { id: "sels-de-bain", name: "Sales de baño", slug: "sels-de-bain" },
        { id: "huiles-de-bain", name: "Aceites de baño", slug: "huiles-de-bain" }
      ]
    },
    {
      id: "soins-capillaires",
      name: "Cuidado del cabello",
      slug: "soins-capillaires",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "shampoings", name: "Champús", slug: "shampoings" },
        { id: "apres-shampoings", name: "Acondicionadores", slug: "apres-shampoings" },
        { id: "masques-capillaires", name: "Mascarillas capilares", slug: "masques-capillaires" },
        { id: "serums-capillaires", name: "Sérums capilares", slug: "serums-capillaires" },
        { id: "soins-keratine", name: "Cuidado de queratina", slug: "soins-keratine" },
        { id: "huiles-capillaires", name: "Aceites capilares", slug: "huiles-capillaires" },
        { id: "soins-antichute", name: "Anti-caída", slug: "soins-antichute" },
        { id: "shampoings-medicaux", name: "Champús medicinales", slug: "shampoings-medicaux" },
        { id: "produits-coiffants", name: "Productos de peinado", slug: "produits-coiffants" }
      ]
    },
    {
      id: "coiffure-styling",
      name: "Peinado & Styling",
      slug: "coiffure-styling",
      icon: <Palette className="w-4 h-4" />,
      subcategories: [
        { id: "fers-a-lisser", name: "Planchas de pelo", slug: "fers-a-lisser" },
        { id: "seche-cheveux", name: "Secadores", slug: "seche-cheveux" },
        { id: "tondeuses", name: "Cortapelos", slug: "tondeuses" },
        { id: "brosses-chauffantes", name: "Cepillos térmicos", slug: "brosses-chauffantes" },
        { id: "bigoudis", name: "Rulos", slug: "bigoudis" },
        { id: "peignes", name: "Peines", slug: "peignes" },
        { id: "brosses-professionnelles", name: "Cepillos profesionales", slug: "brosses-professionnelles" },
        { id: "sprays-coiffants", name: "Sprays de peinado", slug: "sprays-coiffants" },
        { id: "mousses-volume", name: "Mousses de volumen", slug: "mousses-volume" },
        { id: "gels", name: "Geles", slug: "gels" }
      ]
    },
    {
      id: "parfums-fragrances",
      name: "Perfumes & Fragancias",
      slug: "parfums-fragrances",
      icon: <Sun className="w-4 h-4" />,
      subcategories: [
        { id: "parfums-homme", name: "Perfumes hombre", slug: "parfums-homme" },
        { id: "parfums-femme", name: "Perfumes mujer", slug: "parfums-femme" },
        { id: "eaux-de-toilette", name: "Eaux de toilette", slug: "eaux-de-toilette" },
        { id: "eaux-de-parfum", name: "Eaux de parfum", slug: "eaux-de-parfum" },
        { id: "brumes-corporelles", name: "Brumas corporales", slug: "brumes-corporelles" },
        { id: "parfums-orientaux", name: "Fragancias orientales", slug: "parfums-orientaux" },
        { id: "parfums-de-luxe", name: "Perfumes de lujo", slug: "parfums-de-luxe" },
        { id: "coffrets-parfum", name: "Cofres de perfume", slug: "coffrets-parfum" }
      ]
    },
    {
      id: "maquillage",
      name: "Maquillaje",
      slug: "maquillage",
      icon: <Palette className="w-4 h-4" />,
      subcategories: [
        { id: "fonds-de-teint", name: "Bases", slug: "fonds-de-teint" },
        { id: "poudres", name: "Polvos", slug: "poudres" },
        { id: "anticernes", name: "Correctores", slug: "anticernes" },
        { id: "blush", name: "Coloretes", slug: "blush" },
        { id: "highlighters", name: "Iluminadores", slug: "highlighters" },
        { id: "palettes-yeux", name: "Paletas de ojos", slug: "palettes-yeux" },
        { id: "mascaras", name: "Máscaras", slug: "mascaras" },
        { id: "eyeliners", name: "Delineadores", slug: "eyeliners" },
        { id: "crayons-levres", name: "Lápices de labios", slug: "crayons-levres" },
        { id: "rouges-a-levres", name: "Labiales", slug: "rouges-a-levres" },
        { id: "gloss", name: "Gloss", slug: "gloss" },
        { id: "fixateurs-makeup", name: "Fijadores de maquillaje", slug: "fixateurs-makeup" }
      ]
    },
    {
      id: "accessoires-beaute",
      name: "Accesorios de belleza",
      slug: "accessoires-beaute",
      icon: <Package className="w-4 h-4" />,
      subcategories: [
        { id: "pinceaux-maquillage", name: "Brochas de maquillaje", slug: "pinceaux-maquillage" },
        { id: "beauty-blenders", name: "Esponjas Beauty Blender", slug: "beauty-blenders" },
        { id: "miroirs", name: "Espejos", slug: "miroirs" },
        { id: "trousses-beaute", name: "Neceser de belleza", slug: "trousses-beaute" },
        { id: "eponges-de-bain", name: "Esponjas de baño", slug: "eponges-de-bain" },
        { id: "gants-exfoliants", name: "Guantes exfoliantes", slug: "gants-exfoliants" },
        { id: "limes", name: "Limas", slug: "limes" },
        { id: "coupe-ongles", name: "Cortaúñas", slug: "coupe-ongles" },
        { id: "pinces-a-epiler", name: "Pinzas", slug: "pinces-a-epiler" }
      ]
    },
    {
      id: "manucure-pedicure",
      name: "Manicura & Pedicura",
      slug: "manucure-pedicure",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "vernis", name: "Esmaltes", slug: "vernis" },
        { id: "vernis-semi-permanent", name: "Esmalte semipermanente", slug: "vernis-semi-permanent" },
        { id: "gels-uv", name: "Geles UV", slug: "gels-uv" },
        { id: "lampes-uv", name: "Lámparas UV", slug: "lampes-uv" },
        { id: "kits-manucure", name: "Kits de manicura", slug: "kits-manucure" },
        { id: "dissolvants", name: "Quitaesmaltes", slug: "dissolvants" },
        { id: "soins-des-ongles", name: "Cuidado de uñas", slug: "soins-des-ongles" },
        { id: "faux-ongles", name: "Uñas postizas", slug: "faux-ongles" },
        { id: "colle-pour-nails", name: "Pegamento para uñas", slug: "colle-pour-nails" },
        { id: "outils-pro", name: "Herramientas pro", slug: "outils-pro" }
      ]
    },
    {
      id: "produits-solaires",
      name: "Productos solares",
      slug: "produits-solaires",
      icon: <Sun className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-spf", name: "Cremas SPF", slug: "cremes-spf" },
        { id: "sprays-solaires", name: "Sprays", slug: "sprays-solaires" },
        { id: "huiles-solaires", name: "Aceites solares", slug: "huiles-solaires" },
        { id: "protections-enfants", name: "Protección niños", slug: "protections-enfants" },
        { id: "sticks-solaires", name: "Sticks solares", slug: "sticks-solaires" },
        { id: "apres-soleil", name: "After-sun", slug: "apres-soleil" },
        { id: "cremes-teintees-spf", name: "Cremas SPF con color", slug: "cremes-teintees-spf" }
      ]
    },
    {
      id: "beaute-naturelle-bio",
      name: "Belleza natural & orgánica",
      slug: "beaute-naturelle-bio",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "huiles-naturelles", name: "Aceites naturales", slug: "huiles-naturelles" },
        { id: "beurres-vegetaux", name: "Mantecas vegetales", slug: "beurres-vegetaux" },
        { id: "eau-florale", name: "Agua floral", slug: "eau-florale" },
        { id: "hydrolats", name: "Hidrolatos", slug: "hydrolats" },
        { id: "savons-artisanaux", name: "Jabones artesanales", slug: "savons-artisanaux" },
        { id: "cosmetiques-bio", name: "Cosmética orgánica", slug: "cosmetiques-bio" },
        { id: "soins-solides", name: "Cuidado sólido", slug: "soins-solides" },
        { id: "produits-vegan", name: "Productos veganos", slug: "produits-vegan" }
      ]
    },
    {
      id: "aromatherapie",
      name: "Aromaterapia",
      slug: "aromatherapie",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "huiles-essentielles", name: "Aceites esenciales", slug: "huiles-essentielles" },
        { id: "diffuseurs", name: "Difusores", slug: "diffuseurs" },
        { id: "synergies-bien-etre", name: "Sinergias bienestar", slug: "synergies-bien-etre" },
        { id: "roll-on-relaxants", name: "Roll-on relajantes", slug: "roll-on-relaxants" },
        { id: "brumes-parfumees", name: "Brumas aromáticas", slug: "brumes-parfumees" },
        { id: "huiles-massage-relaxantes", name: "Aceites de masaje relajantes", slug: "huiles-massage-relaxantes" }
      ]
    },
    {
      id: "phytotherapie",
      name: "Fitoterapia",
      slug: "phytotherapie",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "plantes-medicinales", name: "Plantas medicinales", slug: "plantes-medicinales" },
        { id: "extraits-naturels", name: "Extractos naturales", slug: "extraits-naturels" },
        { id: "tisanes-sante", name: "Infusiones saludables", slug: "tisanes-sante" },
        { id: "complements-naturels", name: "Complementos naturales", slug: "complements-naturels" },
        { id: "poudres-de-plantes", name: "Polvos de plantas", slug: "poudres-de-plantes" },
        { id: "gelules-phytotherapie", name: "Cápsulas de fitoterapia", slug: "gelules-phytotherapie" }
      ]
    },
    {
      id: "sante-generale",
      name: "Salud general",
      slug: "sante-generale",
      icon: <Pill className="w-4 h-4" />,
      subcategories: [
        { id: "vitamines", name: "Vitaminas", slug: "vitamines" },
        { id: "complements-alimentaires", name: "Complementos alimenticios", slug: "complements-alimentaires" },
        { id: "mineraux", name: "Minerales", slug: "mineraux" },
        { id: "probiotiques", name: "Probióticos", slug: "probiotiques" },
        { id: "produits-immunite", name: "Productos inmunidad", slug: "produits-immunite" },
        { id: "antioxydants", name: "Antioxidantes", slug: "antioxydants" },
        { id: "omega-3", name: "Omega-3", slug: "omega-3" },
        { id: "produits-detox", name: "Productos detox", slug: "produits-detox" },
        { id: "supplements-sportifs", name: "Suplementos deportivos", slug: "supplements-sportifs" }
      ]
    },
    {
      id: "medicaments-sans-ordonnance",
      name: "Medicamentos sin receta",
      slug: "medicaments-sans-ordonnance",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "antalgiques", name: "Analgésicos", slug: "antalgiques" },
        { id: "produits-orl", name: "Productos ORL", slug: "produits-orl" },
        { id: "digestifs", name: "Digestivos", slug: "digestifs" },
        { id: "anti-acides", name: "Antiácidos", slug: "anti-acides" },
        { id: "sirops", name: "Jarabes", slug: "sirops" },
        { id: "pastilles", name: "Pastillas", slug: "pastilles" },
        { id: "antihistaminiques", name: "Antihistamínicos", slug: "antihistaminiques" },
        { id: "rhume", name: "Resfriado", slug: "rhume" }
      ]
    },
    {
      id: "premiers-secours",
      name: "Primeros auxilios",
      slug: "premiers-secours",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "pansements", name: "Apósitos", slug: "pansements" },
        { id: "bandes", name: "Vendajes", slug: "bandes" },
        { id: "compresses", name: "Compresas", slug: "compresses" },
        { id: "antiseptiques", name: "Antisépticos", slug: "antiseptiques" },
        { id: "solutions-iodées", name: "Soluciones yodadas", slug: "solutions-iodees" },
        { id: "sprays-cicatrisants", name: "Sprays cicatrizantes", slug: "sprays-cicatrisants" },
        { id: "trousses-premiers-secours", name: "Kits de primeros auxilios", slug: "trousses-premiers-secours" }
      ]
    },
    {
      id: "materiel-medical-leger",
      name: "Equipo médico ligero",
      slug: "materiel-medical-leger",
      icon: <Microscope className="w-4 h-4" />,
      subcategories: [
        { id: "tensiometres", name: "Tensiómetros", slug: "tensiometres" },
        { id: "thermometres", name: "Termómetros", slug: "thermometres" },
        { id: "glucometres", name: "Glucómetros", slug: "glucometres" },
        { id: "oxymetres", name: "Oxímetros", slug: "oxymetres" },
        { id: "nebuliseurs", name: "Nebulizadores", slug: "nebuliseurs" },
        { id: "tests-rapides", name: "Pruebas rápidas", slug: "tests-rapides" },
        { id: "coussins-chauffants", name: "Cojines térmicos", slug: "coussins-chauffants" },
        { id: "ceintures-lombaires", name: "Fajas lumbares", slug: "ceintures-lombaires" }
      ]
    },
    {
      id: "hygiene-bucco-dentaire",
      name: "Higiene bucodental",
      slug: "hygiene-bucco-dentaire",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "dentifrices", name: "Dentífricos", slug: "dentifrices" },
        { id: "bains-de-bouche", name: "Enjuagues bucales", slug: "bains-de-bouche" },
        { id: "brosses-a-dents", name: "Cepillos de dientes", slug: "brosses-a-dents" },
        { id: "fils-dentaires", name: "Hilos dentales", slug: "fils-dentaires" },
        { id: "blanchiment-dentaire", name: "Blanqueamiento dental", slug: "blanchiment-dentaire" },
        { id: "kits-orthodontiques", name: "Kits de ortodoncia", slug: "kits-orthodontiques" }
      ]
    },
    {
      id: "hygiene-feminine",
      name: "Higiene femenina",
      slug: "hygiene-feminine",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "serviettes", name: "Compresas", slug: "serviettes" },
        { id: "tampons", name: "Tampones", slug: "tampons" },
        { id: "coupes-menstruelles", name: "Copas menstruales", slug: "coupes-menstruelles" },
        { id: "gels-intimes", name: "Geles íntimos", slug: "gels-intimes" },
        { id: "soins-post-partum", name: "Cuidado postparto", slug: "soins-post-partum" },
        { id: "protections-urinaires", name: "Protecciones urinarias", slug: "protections-urinaires" }
      ]
    },
    {
      id: "hygiene-masculine",
      name: "Higiene masculina",
      slug: "hygiene-masculine",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "soins-barbe", name: "Cuidado de barba", slug: "soins-barbe" },
        { id: "mousses-a-raser", name: "Espumas de afeitado", slug: "mousses-a-raser" },
        { id: "gels-de-rasage", name: "Geles de afeitado", slug: "gels-de-rasage" },
        { id: "huiles-barbe", name: "Aceites para barba", slug: "huiles-barbe" },
        { id: "lotions-apres-rasage", name: "Lociones aftershave", slug: "lotions-apres-rasage" },
        { id: "soins-visage-homme", name: "Cuidado facial hombre", slug: "soins-visage-homme" }
      ]
    },
    {
      id: "materiel-esthetique-pro",
      name: "Equipos estéticos profesionales",
      slug: "materiel-esthetique-pro",
      icon: <Beaker className="w-4 h-4" />,
      subcategories: [
        { id: "appareils-led", name: "Aparatos LED", slug: "appareils-led" },
        { id: "appareils-massage-visage", name: "Aparatos masaje facial", slug: "appareils-massage-visage" },
        { id: "microdermabrasion", name: "Microdermoabrasión", slug: "microdermabrasion" },
        { id: "epilateurs-pro", name: "Depiladoras pro", slug: "epilateurs-pro" },
        { id: "lits-esthetique", name: "Camillas estéticas", slug: "lits-esthetique" },
        { id: "tabourets", name: "Taburetes", slug: "tabourets" },
        { id: "sterilisateurs-uv", name: "Esterilizadores UV", slug: "sterilisateurs-uv" }
      ]
    },
    {
      id: "epilation",
      name: "Depilación",
      slug: "epilation",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "cire-chaude", name: "Cera caliente", slug: "cire-chaude" },
        { id: "cire-froide", name: "Cera fría", slug: "cire-froide" },
        { id: "bandes", name: "Bandas", slug: "bandes" },
        { id: "epilateurs-electriques", name: "Depiladoras eléctricas", slug: "epilateurs-electriques" },
        { id: "cremes-depilatoires", name: "Cremas depilatorias", slug: "cremes-depilatoires" },
        { id: "kits-de-cire", name: "Kits de cera", slug: "kits-de-cire" }
      ]
    },
    {
      id: "massage-bien-etre",
      name: "Masaje & Bienestar",
      slug: "massage-bien-etre",
      icon: <HeartPulse className="w-4 h-4" />,
      subcategories: [
        { id: "huiles-massage", name: "Aceites", slug: "huiles-massage" },
        { id: "cremes-chauffantes", name: "Cremas térmicas", slug: "cremes-chauffantes" },
        { id: "balles-massage", name: "Pelotas de masaje", slug: "balles-massage" },
        { id: "appareils-anti-douleur", name: "Dispositivos antidolor", slug: "appareils-anti-douleur" },
        { id: "masseurs-electriques", name: "Masajeadores eléctricos", slug: "masseurs-electriques" }
      ]
    },
    {
      id: "beaute-du-regard",
      name: "Belleza de la mirada",
      slug: "beaute-du-regard",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "extensions-de-cils", name: "Extensiones de pestañas", slug: "extensions-de-cils" },
        { id: "colles-pour-cils", name: "Pegamentos de pestañas", slug: "colles-pour-cils" },
        { id: "serums-cils", name: "Sérums de pestañas", slug: "serums-cils" },
        { id: "faux-cils", name: "Pestañas postizas", slug: "faux-cils" },
        { id: "kits-professionnels", name: "Kits profesionales", slug: "kits-professionnels" }
      ]
    },
    {
      id: "produits-spa-domicile",
      name: "Productos de spa en casa",
      slug: "produits-spa-domicile",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "diffuseurs-huiles", name: "Difusores de aceites", slug: "diffuseurs-huiles" },
        { id: "bougies-parfumees", name: "Velas perfumadas", slug: "bougies-parfumees" },
        { id: "sels-de-bain-spa", name: "Sales de baño", slug: "sels-de-bain-spa" },
        { id: "gommages-spa", name: "Exfoliantes spa", slug: "gommages-spa" },
        { id: "soins-relaxants", name: "Cuidados relajantes", slug: "soins-relaxants" }
      ]
    },
    {
      id: "dermatologie-specialisee",
      name: "Dermatología especializada",
      slug: "dermatologie-specialisee",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-medicales", name: "Cremas médicas", slug: "cremes-medicales" },
        { id: "peaux-sensibles", name: "Piel sensible", slug: "peaux-sensibles" },
        { id: "produits-hypoallergenique", name: "Productos hipoalergénicos", slug: "produits-hypoallergenique" },
        { id: "traitements-non-prescrits", name: "Tratamientos no prescritos", slug: "traitements-non-prescrits" }
      ]
    },
    {
      id: "nutrition-beaute",
      name: "Nutrición de belleza",
      slug: "nutrition-beaute",
      icon: <Pill className="w-4 h-4" />,
      subcategories: [
        { id: "collagene", name: "Colágeno", slug: "collagene" },
        { id: "acide-hyaluronique", name: "Ácido hialurónico", slug: "acide-hyaluronique" },
        { id: "complements-peau-ongles-cheveux", name: "Suplementos piel/uñas/cabello", slug: "complements-peau-ongles-cheveux" },
        { id: "gummies-beaute", name: "Gominolas de belleza", slug: "gummies-beaute" }
      ]
    },
    {
      id: "accessoires-salle-de-bain",
      name: "Accesorios de baño",
      slug: "accessoires-salle-de-bain",
      icon: <Package className="w-4 h-4" />,
      subcategories: [
        { id: "porte-savons", name: "Jaboneras", slug: "porte-savons" },
        { id: "rangements-cosmetiques", name: "Organizadores cosméticos", slug: "rangements-cosmetiques" },
        { id: "organisateurs", name: "Organizadores", slug: "organisateurs" },
        { id: "flacons-rechargeables", name: "Botellas recargables", slug: "flacons-rechargeables" },
        { id: "distributeurs", name: "Dispensadores", slug: "distributeurs" }
      ]
    },
    {
      id: "blanchiment-dentaire",
      name: "Blanqueamiento dental",
      slug: "blanchiment-dentaire",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "strips-blanchissants", name: "Tiras blanqueadoras", slug: "strips-blanchissants" },
        { id: "gels-blanchissants", name: "Geles blanqueadores", slug: "gels-blanchissants" },
        { id: "kits-led", name: "Kits LED", slug: "kits-led" },
        { id: "mousses-blanchissantes", name: "Espumas blanqueadoras", slug: "mousses-blanchissantes" }
      ]
    }
  ]
};