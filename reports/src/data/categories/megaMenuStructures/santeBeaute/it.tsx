import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { HeartPulse, Sparkles, Droplets, Sun, Leaf, Shield, Pill, Microscope, Beaker, Package, Palette, Sprout, Heart } from "lucide-react";

export const santeBeauteIt: MenuCategory = {
  id: "sante-beaute",
  name: "Salute & Bellezza",
  slug: "sante-beaute",
  icon: <HeartPulse className="w-4 h-4" />,
  subcategories: [
    {
      id: "soins-visage",
      name: "Cura del viso",
      slug: "soins-visage",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-hydratantes", name: "Creme idratanti", slug: "cremes-hydratantes" },
        { id: "cremes-anti-age", name: "Creme anti-età", slug: "cremes-anti-age" },
        { id: "serums", name: "Sieri", slug: "serums" },
        { id: "soins-anti-acne", name: "Cura anti-acne", slug: "soins-anti-acne" },
        { id: "masques", name: "Maschere", slug: "masques" },
        { id: "exfoliants", name: "Esfolianti", slug: "exfoliants" },
        { id: "nettoyants-visage", name: "Detergenti viso", slug: "nettoyants-visage" },
        { id: "toniques", name: "Tonici", slug: "toniques" },
        { id: "soins-anti-taches", name: "Cura antimacchie", slug: "soins-anti-taches" },
        { id: "cremes-contour-yeux", name: "Creme contorno occhi", slug: "cremes-contour-yeux" },
        { id: "patchs-yeux", name: "Patch occhi", slug: "patchs-yeux" }
      ]
    },
    {
      id: "soins-corps",
      name: "Cura del corpo",
      slug: "soins-corps",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "laits-corporels", name: "Latti corporei", slug: "laits-corporels" },
        { id: "cremes-nourrissantes", name: "Creme nutrienti", slug: "cremes-nourrissantes" },
        { id: "gommages-corps", name: "Scrub corpo", slug: "gommages-corps" },
        { id: "huiles-corporelles", name: "Oli corpo", slug: "huiles-corporelles" },
        { id: "gels-minceur", name: "Gel snellenti", slug: "gels-minceur" },
        { id: "soins-anti-vergetures", name: "Anti-smagliature", slug: "soins-anti-vergetures" },
        { id: "soins-raffermissants", name: "Cura rassodante", slug: "soins-raffermissants" },
        { id: "lotions-parfumees", name: "Lozioni profumate", slug: "lotions-parfumees" }
      ]
    },
    {
      id: "hygiene-corporelle",
      name: "Igiene corporea",
      slug: "hygiene-corporelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "gels-douche", name: "Bagnoschiuma", slug: "gels-douche" },
        { id: "savons-solides", name: "Saponette", slug: "savons-solides" },
        { id: "savons-liquides", name: "Saponi liquidi", slug: "savons-liquides" },
        { id: "deodorants", name: "Deodoranti", slug: "deodorants" },
        { id: "lingettes", name: "Salviette", slug: "lingettes" },
        { id: "soins-intimes", name: "Cura intima", slug: "soins-intimes" },
        { id: "bains-moussants", name: "Bagni schiuma", slug: "bains-moussants" },
        { id: "sels-de-bain", name: "Sali da bagno", slug: "sels-de-bain" },
        { id: "huiles-de-bain", name: "Oli da bagno", slug: "huiles-de-bain" }
      ]
    },
    {
      id: "soins-capillaires",
      name: "Cura dei capelli",
      slug: "soins-capillaires",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "shampoings", name: "Shampoo", slug: "shampoings" },
        { id: "apres-shampoings", name: "Balsami", slug: "apres-shampoings" },
        { id: "masques-capillaires", name: "Maschere capelli", slug: "masques-capillaires" },
        { id: "serums-capillaires", name: "Sieri capelli", slug: "serums-capillaires" },
        { id: "soins-keratine", name: "Cura alla cheratina", slug: "soins-keratine" },
        { id: "huiles-capillaires", name: "Oli capelli", slug: "huiles-capillaires" },
        { id: "soins-antichute", name: "Anti-caduta", slug: "soins-antichute" },
        { id: "shampoings-medicaux", name: "Shampoo medicali", slug: "shampoings-medicaux" },
        { id: "produits-coiffants", name: "Prodotti styling", slug: "produits-coiffants" }
      ]
    },
    {
      id: "coiffure-styling",
      name: "Acconciatura & Styling",
      slug: "coiffure-styling",
      icon: <Palette className="w-4 h-4" />,
      subcategories: [
        { id: "fers-a-lisser", name: "Piastre", slug: "fers-a-lisser" },
        { id: "seche-cheveux", name: "Asciugacapelli", slug: "seche-cheveux" },
        { id: "tondeuses", name: "Tagliacapelli", slug: "tondeuses" },
        { id: "brosses-chauffantes", name: "Spazzole termiche", slug: "brosses-chauffantes" },
        { id: "bigoudis", name: "Bigodini", slug: "bigoudis" },
        { id: "peignes", name: "Pettini", slug: "peignes" },
        { id: "brosses-professionnelles", name: "Spazzole professionali", slug: "brosses-professionnelles" },
        { id: "sprays-coiffants", name: "Spray styling", slug: "sprays-coiffants" },
        { id: "mousses-volume", name: "Mousse volume", slug: "mousses-volume" },
        { id: "gels", name: "Gel", slug: "gels" }
      ]
    },
    {
      id: "parfums-fragrances",
      name: "Profumi & Fragranze",
      slug: "parfums-fragrances",
      icon: <Sun className="w-4 h-4" />,
      subcategories: [
        { id: "parfums-homme", name: "Profumi uomo", slug: "parfums-homme" },
        { id: "parfums-femme", name: "Profumi donna", slug: "parfums-femme" },
        { id: "eaux-de-toilette", name: "Eaux de toilette", slug: "eaux-de-toilette" },
        { id: "eaux-de-parfum", name: "Eaux de parfum", slug: "eaux-de-parfum" },
        { id: "brumes-corporelles", name: "Nebbie corporee", slug: "brumes-corporelles" },
        { id: "parfums-orientaux", name: "Fragranze orientali", slug: "parfums-orientaux" },
        { id: "parfums-de-luxe", name: "Profumi di lusso", slug: "parfums-de-luxe" },
        { id: "coffrets-parfum", name: "Coffanetti profumo", slug: "coffrets-parfum" }
      ]
    },
    {
      id: "maquillage",
      name: "Make-up",
      slug: "maquillage",
      icon: <Palette className="w-4 h-4" />,
      subcategories: [
        { id: "fonds-de-teint", name: "Fondotinta", slug: "fonds-de-teint" },
        { id: "poudres", name: "Ciprie", slug: "poudres" },
        { id: "anticernes", name: "Correttori", slug: "anticernes" },
        { id: "blush", name: "Blush", slug: "blush" },
        { id: "highlighters", name: "Illuminanti", slug: "highlighters" },
        { id: "palettes-yeux", name: "Palette occhi", slug: "palettes-yeux" },
        { id: "mascaras", name: "Mascara", slug: "mascaras" },
        { id: "eyeliners", name: "Eyeliner", slug: "eyeliners" },
        { id: "crayons-levres", name: "Matite labbra", slug: "crayons-levres" },
        { id: "rouges-a-levres", name: "Rossetti", slug: "rouges-a-levres" },
        { id: "gloss", name: "Gloss", slug: "gloss" },
        { id: "fixateurs-makeup", name: "Fissatori trucco", slug: "fixateurs-makeup" }
      ]
    },
    {
      id: "accessoires-beaute",
      name: "Accessori bellezza",
      slug: "accessoires-beaute",
      icon: <Package className="w-4 h-4" />,
      subcategories: [
        { id: "pinceaux-maquillage", name: "Pennelli trucco", slug: "pinceaux-maquillage" },
        { id: "beauty-blenders", name: "Spugne Beauty Blender", slug: "beauty-blenders" },
        { id: "miroirs", name: "Specchi", slug: "miroirs" },
        { id: "trousses-beaute", name: "Astucci bellezza", slug: "trousses-beaute" },
        { id: "eponges-de-bain", name: "Spugne da bagno", slug: "eponges-de-bain" },
        { id: "gants-exfoliants", name: "Guanti esfolianti", slug: "gants-exfoliants" },
        { id: "limes", name: "Lime", slug: "limes" },
        { id: "coupe-ongles", name: "Tagliaunghie", slug: "coupe-ongles" },
        { id: "pinces-a-epiler", name: "Pinzette", slug: "pinces-a-epiler" }
      ]
    },
    {
      id: "manucure-pedicure",
      name: "Manicure & Pedicure",
      slug: "manucure-pedicure",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "vernis", name: "Smalti", slug: "vernis" },
        { id: "vernis-semi-permanent", name: "Smalto semipermanente", slug: "vernis-semi-permanent" },
        { id: "gels-uv", name: "Gel UV", slug: "gels-uv" },
        { id: "lampes-uv", name: "Lampade UV", slug: "lampes-uv" },
        { id: "kits-manucure", name: "Kit manicure", slug: "kits-manucure" },
        { id: "dissolvants", name: "Solventi", slug: "dissolvants" },
        { id: "soins-des-ongles", name: "Cura unghie", slug: "soins-des-ongles" },
        { id: "faux-ongles", name: "Unghie finte", slug: "faux-ongles" },
        { id: "colle-pour-nails", name: "Colla per unghie", slug: "colle-pour-nails" },
        { id: "outils-pro", name: "Strumenti pro", slug: "outils-pro" }
      ]
    },
    {
      id: "produits-solaires",
      name: "Prodotti solari",
      slug: "produits-solaires",
      icon: <Sun className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-spf", name: "Creme SPF", slug: "cremes-spf" },
        { id: "sprays-solaires", name: "Spray", slug: "sprays-solaires" },
        { id: "huiles-solaires", name: "Oli solari", slug: "huiles-solaires" },
        { id: "protections-enfants", name: "Protezione bambini", slug: "protections-enfants" },
        { id: "sticks-solaires", name: "Stick solari", slug: "sticks-solaires" },
        { id: "apres-soleil", name: "Doposole", slug: "apres-soleil" },
        { id: "cremes-teintees-spf", name: "Creme SPF colorate", slug: "cremes-teintees-spf" }
      ]
    },
    {
      id: "beaute-naturelle-bio",
      name: "Bellezza naturale & bio",
      slug: "beaute-naturelle-bio",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "huiles-naturelles", name: "Oli naturali", slug: "huiles-naturelles" },
        { id: "beurres-vegetaux", name: "Burri vegetali", slug: "beurres-vegetaux" },
        { id: "eau-florale", name: "Acque floreali", slug: "eau-florale" },
        { id: "hydrolats", name: "Idrolati", slug: "hydrolats" },
        { id: "savons-artisanaux", name: "Saponi artigianali", slug: "savons-artisanaux" },
        { id: "cosmetiques-bio", name: "Cosmetici bio", slug: "cosmetiques-bio" },
        { id: "soins-solides", name: "Cura solida", slug: "soins-solides" },
        { id: "produits-vegan", name: "Prodotti vegani", slug: "produits-vegan" }
      ]
    },
    {
      id: "aromatherapie",
      name: "Aromaterapia",
      slug: "aromatherapie",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "huiles-essentielles", name: "Oli essenziali", slug: "huiles-essentielles" },
        { id: "diffuseurs", name: "Diffusori", slug: "diffuseurs" },
        { id: "synergies-bien-etre", name: "Sinergie benessere", slug: "synergies-bien-etre" },
        { id: "roll-on-relaxants", name: "Roll-on rilassanti", slug: "roll-on-relaxants" },
        { id: "brumes-parfumees", name: "Nebbie profumate", slug: "brumes-parfumees" },
        { id: "huiles-massage-relaxantes", name: "Oli massaggio rilassanti", slug: "huiles-massage-relaxantes" }
      ]
    },
    {
      id: "phytotherapie",
      name: "Fitoterapia",
      slug: "phytotherapie",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "plantes-medicinales", name: "Piante medicinali", slug: "plantes-medicinales" },
        { id: "extraits-naturels", name: "Estratti naturali", slug: "extraits-naturels" },
        { id: "tisanes-sante", name: "Tisane salutari", slug: "tisanes-sante" },
        { id: "complements-naturels", name: "Integratori naturali", slug: "complements-naturels" },
        { id: "poudres-de-plantes", name: "Polveri di piante", slug: "poudres-de-plantes" },
        { id: "gelules-phytotherapie", name: "Capsule di fitoterapia", slug: "gelules-phytotherapie" }
      ]
    },
    {
      id: "sante-generale",
      name: "Salute generale",
      slug: "sante-generale",
      icon: <Pill className="w-4 h-4" />,
      subcategories: [
        { id: "vitamines", name: "Vitamine", slug: "vitamines" },
        { id: "complements-alimentaires", name: "Integratori alimentari", slug: "complements-alimentaires" },
        { id: "mineraux", name: "Minerali", slug: "mineraux" },
        { id: "probiotiques", name: "Probiotici", slug: "probiotiques" },
        { id: "produits-immunite", name: "Prodotti immunità", slug: "produits-immunite" },
        { id: "antioxydants", name: "Antiossidanti", slug: "antioxydants" },
        { id: "omega-3", name: "Omega-3", slug: "omega-3" },
        { id: "produits-detox", name: "Prodotti detox", slug: "produits-detox" },
        { id: "supplements-sportifs", name: "Integratori sportivi", slug: "supplements-sportifs" }
      ]
    },
    {
      id: "medicaments-sans-ordonnance",
      name: "Farmaci senza ricetta",
      slug: "medicaments-sans-ordonnance",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "antalgiques", name: "Antalgici", slug: "antalgiques" },
        { id: "produits-orl", name: "Prodotti ORL", slug: "produits-orl" },
        { id: "digestifs", name: "Digestivi", slug: "digestifs" },
        { id: "anti-acides", name: "Antiacidi", slug: "anti-acides" },
        { id: "sirops", name: "Sciroppi", slug: "sirops" },
        { id: "pastilles", name: "Pastiglie", slug: "pastilles" },
        { id: "antihistaminiques", name: "Antistaminici", slug: "antihistaminiques" },
        { id: "rhume", name: "Raffreddore", slug: "rhume" }
      ]
    },
    {
      id: "premiers-secours",
      name: "Primo soccorso",
      slug: "premiers-secours",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "pansements", name: "Cerotti", slug: "pansements" },
        { id: "bandes", name: "Bende", slug: "bandes" },
        { id: "compresses", name: "Garze", slug: "compresses" },
        { id: "antiseptiques", name: "Antisettici", slug: "antiseptiques" },
        { id: "solutions-iodées", name: "Soluzioni iodate", slug: "solutions-iodees" },
        { id: "sprays-cicatrisants", name: "Spray cicatrizzanti", slug: "sprays-cicatrisants" },
        { id: "trousses-premiers-secours", name: "Kit primo soccorso", slug: "trousses-premiers-secours" }
      ]
    },
    {
      id: "materiel-medical-leger",
      name: "Strumentazione medica leggera",
      slug: "materiel-medical-leger",
      icon: <Microscope className="w-4 h-4" />,
      subcategories: [
        { id: "tensiometres", name: "Sfigmomanometri", slug: "tensiometres" },
        { id: "thermometres", name: "Termometri", slug: "thermometres" },
        { id: "glucometres", name: "Glucometri", slug: "glucometres" },
        { id: "oxymetres", name: "Ossimetri", slug: "oxymetres" },
        { id: "nebuliseurs", name: "Nebulizzatori", slug: "nebuliseurs" },
        { id: "tests-rapides", name: "Test rapidi", slug: "tests-rapides" },
        { id: "coussins-chauffants", name: "Cuscini riscaldanti", slug: "coussins-chauffants" },
        { id: "ceintures-lombaires", name: "Cinture lombari", slug: "ceintures-lombaires" }
      ]
    },
    {
      id: "hygiene-bucco-dentaire",
      name: "Igiene orale",
      slug: "hygiene-bucco-dentaire",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "dentifrices", name: "Dentifrici", slug: "dentifrices" },
        { id: "bains-de-bouche", name: "Collutori", slug: "bains-de-bouche" },
        { id: "brosses-a-dents", name: "Spazzolini da denti", slug: "brosses-a-dents" },
        { id: "fils-dentaires", name: "Fili interdentali", slug: "fils-dentaires" },
        { id: "blanchiment-dentaire", name: "Sbiancamento dentale", slug: "blanchiment-dentaire" },
        { id: "kits-orthodontiques", name: "Kit ortodontici", slug: "kits-orthodontiques" }
      ]
    },
    {
      id: "hygiene-feminine",
      name: "Igiene femminile",
      slug: "hygiene-feminine",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "serviettes", name: "Assorbenti", slug: "serviettes" },
        { id: "tampons", name: "Tamponi", slug: "tampons" },
        { id: "coupes-menstruelles", name: "Coppette mestruali", slug: "coupes-menstruelles" },
        { id: "gels-intimes", name: "Gel intimi", slug: "gels-intimes" },
        { id: "soins-post-partum", name: "Cura post-partum", slug: "soins-post-partum" },
        { id: "protections-urinaires", name: "Protezione urinaria", slug: "protections-urinaires" }
      ]
    },
    {
      id: "hygiene-masculine",
      name: "Igiene maschile",
      slug: "hygiene-masculine",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "soins-barbe", name: "Cura della barba", slug: "soins-barbe" },
        { id: "mousses-a-raser", name: "Schiume da barba", slug: "mousses-a-raser" },
        { id: "gels-de-rasage", name: "Gel da barba", slug: "gels-de-rasage" },
        { id: "huiles-barbe", name: "Oli per barba", slug: "huiles-barbe" },
        { id: "lotions-apres-rasage", name: "Lozioni dopobarba", slug: "lotions-apres-rasage" },
        { id: "soins-visage-homme", name: "Cura viso uomo", slug: "soins-visage-homme" }
      ]
    },
    {
      id: "materiel-esthetique-pro",
      name: "Attrezzature estetiche professionali",
      slug: "materiel-esthetique-pro",
      icon: <Beaker className="w-4 h-4" />,
      subcategories: [
        { id: "appareils-led", name: "Dispositivi LED", slug: "appareils-led" },
        { id: "appareils-massage-visage", name: "Dispositivi massaggio viso", slug: "appareils-massage-visage" },
        { id: "microdermabrasion", name: "Microdermoabrasione", slug: "microdermabrasion" },
        { id: "epilateurs-pro", name: "Epilatori pro", slug: "epilateurs-pro" },
        { id: "lits-esthetique", name: "Lettini estetici", slug: "lits-esthetique" },
        { id: "tabourets", name: "Sgabelli", slug: "tabourets" },
        { id: "sterilisateurs-uv", name: "Sterilizzatori UV", slug: "sterilisateurs-uv" }
      ]
    },
    {
      id: "epilation",
      name: "Epilazione",
      slug: "epilation",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "cire-chaude", name: "Cera calda", slug: "cire-chaude" },
        { id: "cire-froide", name: "Cera fredda", slug: "cire-froide" },
        { id: "bandes", name: "Strisce", slug: "bandes" },
        { id: "epilateurs-electriques", name: "Epilatori elettrici", slug: "epilateurs-electriques" },
        { id: "cremes-depilatoires", name: "Creme depilatorie", slug: "cremes-depilatoires" },
        { id: "kits-de-cire", name: "Kit cera", slug: "kits-de-cire" }
      ]
    },
    {
      id: "massage-bien-etre",
      name: "Massaggio & Benessere",
      slug: "massage-bien-etre",
      icon: <HeartPulse className="w-4 h-4" />,
      subcategories: [
        { id: "huiles-massage", name: "Oli", slug: "huiles-massage" },
        { id: "cremes-chauffantes", name: "Creme riscaldanti", slug: "cremes-chauffantes" },
        { id: "balles-massage", name: "Palline massaggio", slug: "balles-massage" },
        { id: "appareils-anti-douleur", name: "Dispositivi antidolore", slug: "appareils-anti-douleur" },
        { id: "masseurs-electriques", name: "Massaggiatori elettrici", slug: "masseurs-electriques" }
      ]
    },
    {
      id: "beaute-du-regard",
      name: "Bellezza dello sguardo",
      slug: "beaute-du-regard",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "extensions-de-cils", name: "Extension ciglia", slug: "extensions-de-cils" },
        { id: "colles-pour-cils", name: "Colla per ciglia", slug: "colles-pour-cils" },
        { id: "serums-cils", name: "Sieri ciglia", slug: "serums-cils" },
        { id: "faux-cils", name: "Ciglia finte", slug: "faux-cils" },
        { id: "kits-professionnels", name: "Kit professionali", slug: "kits-professionnels" }
      ]
    },
    {
      id: "produits-spa-domicile",
      name: "Prodotti spa a casa",
      slug: "produits-spa-domicile",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "diffuseurs-huiles", name: "Diffusori oli", slug: "diffuseurs-huiles" },
        { id: "bougies-parfumees", name: "Candele profumate", slug: "bougies-parfumees" },
        { id: "sels-de-bain-spa", name: "Sali da bagno", slug: "sels-de-bain-spa" },
        { id: "gommages-spa", name: "Scrub spa", slug: "gommages-spa" },
        { id: "soins-relaxants", name: "Cure rilassanti", slug: "soins-relaxants" }
      ]
    },
    {
      id: "dermatologie-specialisee",
      name: "Dermatologia specializzata",
      slug: "dermatologie-specialisee",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-medicales", name: "Creme medicali", slug: "cremes-medicales" },
        { id: "peaux-sensibles", name: "Pelli sensibili", slug: "peaux-sensibles" },
        { id: "produits-hypoallergenique", name: "Prodotti ipoallergenici", slug: "produits-hypoallergenique" },
        { id: "traitements-non-prescrits", name: "Trattamenti non prescritti", slug: "traitements-non-prescrits" }
      ]
    },
    {
      id: "nutrition-beaute",
      name: "Nutrizione bellezza",
      slug: "nutrition-beaute",
      icon: <Pill className="w-4 h-4" />,
      subcategories: [
        { id: "collagene", name: "Collagene", slug: "collagene" },
        { id: "acide-hyaluronique", name: "Acido ialuronico", slug: "acide-hyaluronique" },
        { id: "complements-peau-ongles-cheveux", name: "Integratori pelle/unghie/capelli", slug: "complements-peau-ongles-cheveux" },
        { id: "gummies-beaute", name: "Caramelle bellezza", slug: "gummies-beaute" }
      ]
    },
    {
      id: "accessoires-salle-de-bain",
      name: "Accessori bagno",
      slug: "accessoires-salle-de-bain",
      icon: <Package className="w-4 h-4" />,
      subcategories: [
        { id: "porte-savons", name: "Portasapone", slug: "porte-savons" },
        { id: "rangements-cosmetiques", name: "Organizer cosmetici", slug: "rangements-cosmetiques" },
        { id: "organisateurs", name: "Organizer", slug: "organisateurs" },
        { id: "flacons-rechargeables", name: "Flaconi ricaricabili", slug: "flacons-rechargeables" },
        { id: "distributeurs", name: "Distributori", slug: "distributeurs" }
      ]
    },
    {
      id: "blanchiment-dentaire",
      name: "Prodotti sbiancamento denti",
      slug: "blanchiment-dentaire",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "strips-blanchissants", name: "Strisce sbiancanti", slug: "strips-blanchissants" },
        { id: "gels-blanchissants", name: "Gel sbiancanti", slug: "gels-blanchissants" },
        { id: "kits-led", name: "Kit LED", slug: "kits-led" },
        { id: "mousses-blanchissantes", name: "Schiume sbiancanti", slug: "mousses-blanchissantes" }
      ]
    }
  ]
};