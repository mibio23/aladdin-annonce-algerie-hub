import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { HeartPulse, Sparkles, Droplets, Sun, Leaf, Shield, Pill, Microscope, Beaker, Package, Palette, Sprout, Heart } from "lucide-react";

export const santeBeauteFr: MenuCategory = {
  id: "sante-beaute",
  name: "Santé & Beauté",
  slug: "sante-beaute",
  icon: <HeartPulse className="w-4 h-4" />,
  subcategories: [
    {
      id: "soins-visage",
      name: "Soins du visage",
      slug: "soins-visage",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-hydratantes", name: "Crèmes hydratantes", slug: "cremes-hydratantes" },
        { id: "cremes-anti-age", name: "Crèmes anti-âge", slug: "cremes-anti-age" },
        { id: "serums", name: "Sérums", slug: "serums" },
        { id: "soins-anti-acne", name: "Soins anti-acné", slug: "soins-anti-acne" },
        { id: "masques", name: "Masques", slug: "masques" },
        { id: "exfoliants", name: "Exfoliants", slug: "exfoliants" },
        { id: "nettoyants-visage", name: "Nettoyants visage", slug: "nettoyants-visage" },
        { id: "toniques", name: "Toniques", slug: "toniques" },
        { id: "soins-anti-taches", name: "Soins anti-taches", slug: "soins-anti-taches" },
        { id: "cremes-contour-yeux", name: "Crèmes contour des yeux", slug: "cremes-contour-yeux" },
        { id: "patchs-yeux", name: "Patchs yeux", slug: "patchs-yeux" }
      ]
    },
    {
      id: "soins-corps",
      name: "Soins du corps",
      slug: "soins-corps",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "laits-corporels", name: "Laits corporels", slug: "laits-corporels" },
        { id: "cremes-nourrissantes", name: "Crèmes nourrissantes", slug: "cremes-nourrissantes" },
        { id: "gommages-corps", name: "Gommages corps", slug: "gommages-corps" },
        { id: "huiles-corporelles", name: "Huiles corporelles", slug: "huiles-corporelles" },
        { id: "gels-minceur", name: "Gels minceur", slug: "gels-minceur" },
        { id: "soins-anti-vergetures", name: "Soins anti-vergetures", slug: "soins-anti-vergetures" },
        { id: "soins-raffermissants", name: "Soins raffermissants", slug: "soins-raffermissants" },
        { id: "lotions-parfumees", name: "Lotions corporelles parfumées", slug: "lotions-parfumees" }
      ]
    },
    {
      id: "hygiene-corporelle",
      name: "Hygiène corporelle",
      slug: "hygiene-corporelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "gels-douche", name: "Gels douche", slug: "gels-douche" },
        { id: "savons-solides", name: "Savons solides", slug: "savons-solides" },
        { id: "savons-liquides", name: "Savons liquides", slug: "savons-liquides" },
        { id: "deodorants", name: "Déodorants", slug: "deodorants" },
        { id: "lingettes", name: "Lingettes", slug: "lingettes" },
        { id: "soins-intimes", name: "Soins intimes", slug: "soins-intimes" },
        { id: "bains-moussants", name: "Bains moussants", slug: "bains-moussants" },
        { id: "sels-de-bain", name: "Sels de bain", slug: "sels-de-bain" },
        { id: "huiles-de-bain", name: "Huiles de bain", slug: "huiles-de-bain" }
      ]
    },
    {
      id: "soins-capillaires",
      name: "Soins capillaires",
      slug: "soins-capillaires",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "shampoings", name: "Shampoings", slug: "shampoings" },
        { id: "apres-shampoings", name: "Après-shampoings", slug: "apres-shampoings" },
        { id: "masques-capillaires", name: "Masques capillaires", slug: "masques-capillaires" },
        { id: "serums-capillaires", name: "Sérums capillaires", slug: "serums-capillaires" },
        { id: "soins-keratine", name: "Soins kératine", slug: "soins-keratine" },
        { id: "huiles-capillaires", name: "Huiles capillaires", slug: "huiles-capillaires" },
        { id: "soins-antichute", name: "Soins antichute", slug: "soins-antichute" },
        { id: "shampoings-medicaux", name: "Shampoings médicaux", slug: "shampoings-medicaux" },
        { id: "produits-coiffants", name: "Produits coiffants", slug: "produits-coiffants" }
      ]
    },
    {
      id: "coiffure-styling",
      name: "Coiffure & Styling",
      slug: "coiffure-styling",
      icon: <Palette className="w-4 h-4" />,
      subcategories: [
        { id: "fers-a-lisser", name: "Fers à lisser", slug: "fers-a-lisser" },
        { id: "seche-cheveux", name: "Sèche-cheveux", slug: "seche-cheveux" },
        { id: "tondeuses", name: "Tondeuses", slug: "tondeuses" },
        { id: "brosses-chauffantes", name: "Brosses chauffantes", slug: "brosses-chauffantes" },
        { id: "bigoudis", name: "Bigoudis", slug: "bigoudis" },
        { id: "peignes", name: "Peignes", slug: "peignes" },
        { id: "brosses-professionnelles", name: "Brosses professionnelles", slug: "brosses-professionnelles" },
        { id: "sprays-coiffants", name: "Sprays coiffants", slug: "sprays-coiffants" },
        { id: "mousses-volume", name: "Mousses volume", slug: "mousses-volume" },
        { id: "gels", name: "Gels", slug: "gels" }
      ]
    },
    {
      id: "parfums-fragrances",
      name: "Parfums & fragrances",
      slug: "parfums-fragrances",
      icon: <Sun className="w-4 h-4" />,
      subcategories: [
        { id: "parfums-homme", name: "Parfums homme", slug: "parfums-homme" },
        { id: "parfums-femme", name: "Parfums femme", slug: "parfums-femme" },
        { id: "eaux-de-toilette", name: "Eaux de toilette", slug: "eaux-de-toilette" },
        { id: "eaux-de-parfum", name: "Eaux de parfum", slug: "eaux-de-parfum" },
        { id: "brumes-corporelles", name: "Brumes corporelles", slug: "brumes-corporelles" },
        { id: "parfums-orientaux", name: "Parfums orientaux", slug: "parfums-orientaux" },
        { id: "parfums-de-luxe", name: "Parfums de luxe", slug: "parfums-de-luxe" },
        { id: "coffrets-parfum", name: "Coffrets parfum", slug: "coffrets-parfum" }
      ]
    },
    {
      id: "maquillage",
      name: "Maquillage",
      slug: "maquillage",
      icon: <Palette className="w-4 h-4" />,
      subcategories: [
        { id: "fonds-de-teint", name: "Fonds de teint", slug: "fonds-de-teint" },
        { id: "poudres", name: "Poudres", slug: "poudres" },
        { id: "anticernes", name: "Anticernes", slug: "anticernes" },
        { id: "blush", name: "Blush", slug: "blush" },
        { id: "highlighters", name: "Highlighters", slug: "highlighters" },
        { id: "palettes-yeux", name: "Palettes yeux", slug: "palettes-yeux" },
        { id: "mascaras", name: "Mascaras", slug: "mascaras" },
        { id: "eyeliners", name: "Eyeliners", slug: "eyeliners" },
        { id: "crayons-levres", name: "Crayons lèvres", slug: "crayons-levres" },
        { id: "rouges-a-levres", name: "Rouges à lèvres", slug: "rouges-a-levres" },
        { id: "gloss", name: "Gloss", slug: "gloss" },
        { id: "fixateurs-makeup", name: "Fixateurs makeup", slug: "fixateurs-makeup" }
      ]
    },
    {
      id: "accessoires-beaute",
      name: "Accessoires beauté",
      slug: "accessoires-beaute",
      icon: <Package className="w-4 h-4" />,
      subcategories: [
        { id: "pinceaux-maquillage", name: "Pinceaux maquillage", slug: "pinceaux-maquillage" },
        { id: "beauty-blenders", name: "Beauty blenders", slug: "beauty-blenders" },
        { id: "miroirs", name: "Miroirs", slug: "miroirs" },
        { id: "trousses-beaute", name: "Trousses beauté", slug: "trousses-beaute" },
        { id: "eponges-de-bain", name: "Éponges de bain", slug: "eponges-de-bain" },
        { id: "gants-exfoliants", name: "Gants exfoliants", slug: "gants-exfoliants" },
        { id: "limes", name: "Limes", slug: "limes" },
        { id: "coupe-ongles", name: "Coupe-ongles", slug: "coupe-ongles" },
        { id: "pinces-a-epiler", name: "Pinces à épiler", slug: "pinces-a-epiler" }
      ]
    },
    {
      id: "manucure-pedicure",
      name: "Manucure & pédicure",
      slug: "manucure-pedicure",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "vernis", name: "Vernis", slug: "vernis" },
        { id: "vernis-semi-permanent", name: "Vernis semi-permanent", slug: "vernis-semi-permanent" },
        { id: "gels-uv", name: "Gels UV", slug: "gels-uv" },
        { id: "lampes-uv", name: "Lampes UV", slug: "lampes-uv" },
        { id: "kits-manucure", name: "Kits manucure", slug: "kits-manucure" },
        { id: "dissolvants", name: "Dissolvants", slug: "dissolvants" },
        { id: "soins-des-ongles", name: "Soins des ongles", slug: "soins-des-ongles" },
        { id: "faux-ongles", name: "Faux ongles", slug: "faux-ongles" },
        { id: "colle-pour-nails", name: "Colle pour nails", slug: "colle-pour-nails" },
        { id: "outils-pro", name: "Outils pro", slug: "outils-pro" }
      ]
    },
    {
      id: "produits-solaires",
      name: "Produits solaires",
      slug: "produits-solaires",
      icon: <Sun className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-spf", name: "Crèmes SPF", slug: "cremes-spf" },
        { id: "sprays-solaires", name: "Sprays", slug: "sprays-solaires" },
        { id: "huiles-solaires", name: "Huiles solaires", slug: "huiles-solaires" },
        { id: "protections-enfants", name: "Protections enfants", slug: "protections-enfants" },
        { id: "sticks-solaires", name: "Sticks solaires", slug: "sticks-solaires" },
        { id: "apres-soleil", name: "Après-soleil", slug: "apres-soleil" },
        { id: "cremes-teintees-spf", name: "Crèmes teintées SPF", slug: "cremes-teintees-spf" }
      ]
    },
    {
      id: "beaute-naturelle-bio",
      name: "Beauté naturelle & bio",
      slug: "beaute-naturelle-bio",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "huiles-naturelles", name: "Huiles naturelles", slug: "huiles-naturelles" },
        { id: "beurres-vegetaux", name: "Beurres végétaux", slug: "beurres-vegetaux" },
        { id: "eau-florale", name: "Eau florale", slug: "eau-florale" },
        { id: "hydrolats", name: "Hydrolats", slug: "hydrolats" },
        { id: "savons-artisanaux", name: "Savons artisanaux", slug: "savons-artisanaux" },
        { id: "cosmetiques-bio", name: "Cosmétiques bio", slug: "cosmetiques-bio" },
        { id: "soins-solides", name: "Soins solides", slug: "soins-solides" },
        { id: "produits-vegan", name: "Produits vegan", slug: "produits-vegan" }
      ]
    },
    {
      id: "aromatherapie",
      name: "Aromathérapie",
      slug: "aromatherapie",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "huiles-essentielles", name: "Huiles essentielles", slug: "huiles-essentielles" },
        { id: "diffuseurs", name: "Diffuseurs", slug: "diffuseurs" },
        { id: "synergies-bien-etre", name: "Synergies bien-être", slug: "synergies-bien-etre" },
        { id: "roll-on-relaxants", name: "Roll-on relaxants", slug: "roll-on-relaxants" },
        { id: "brumes-parfumees", name: "Brumes parfumées", slug: "brumes-parfumees" },
        { id: "huiles-massage-relaxantes", name: "Huiles de massage relaxantes", slug: "huiles-massage-relaxantes" }
      ]
    },
    {
      id: "phytotherapie",
      name: "Phytothérapie",
      slug: "phytotherapie",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "plantes-medicinales", name: "Plantes médicinales", slug: "plantes-medicinales" },
        { id: "extraits-naturels", name: "Extraits naturels", slug: "extraits-naturels" },
        { id: "tisanes-sante", name: "Tisanes santé", slug: "tisanes-sante" },
        { id: "complements-naturels", name: "Compléments naturels", slug: "complements-naturels" },
        { id: "poudres-de-plantes", name: "Poudres de plantes", slug: "poudres-de-plantes" },
        { id: "gelules-phytotherapie", name: "Gélules phytothérapie", slug: "gelules-phytotherapie" }
      ]
    },
    {
      id: "sante-generale",
      name: "Santé générale",
      slug: "sante-generale",
      icon: <Pill className="w-4 h-4" />,
      subcategories: [
        { id: "vitamines", name: "Vitamines", slug: "vitamines" },
        { id: "complements-alimentaires", name: "Compléments alimentaires", slug: "complements-alimentaires" },
        { id: "mineraux", name: "Minéraux", slug: "mineraux" },
        { id: "probiotiques", name: "Probiotiques", slug: "probiotiques" },
        { id: "produits-immunite", name: "Produits immunité", slug: "produits-immunite" },
        { id: "antioxydants", name: "Antioxydants", slug: "antioxydants" },
        { id: "omega-3", name: "Oméga-3", slug: "omega-3" },
        { id: "produits-detox", name: "Produits détox", slug: "produits-detox" },
        { id: "supplements-sportifs", name: "Suppléments sportifs", slug: "supplements-sportifs" }
      ]
    },
    {
      id: "medicaments-sans-ordonnance",
      name: "Médicaments sans ordonnance",
      slug: "medicaments-sans-ordonnance",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "antalgiques", name: "Antalgiques", slug: "antalgiques" },
        { id: "produits-orl", name: "Produits ORL", slug: "produits-orl" },
        { id: "digestifs", name: "Digestifs", slug: "digestifs" },
        { id: "anti-acides", name: "Anti-acides", slug: "anti-acides" },
        { id: "sirops", name: "Sirops", slug: "sirops" },
        { id: "pastilles", name: "Pastilles", slug: "pastilles" },
        { id: "antihistaminiques", name: "Antihistaminiques", slug: "antihistaminiques" },
        { id: "rhume", name: "Produits contre le rhume", slug: "rhume" }
      ]
    },
    {
      id: "premiers-secours",
      name: "Premiers secours",
      slug: "premiers-secours",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "pansements", name: "Pansements", slug: "pansements" },
        { id: "bandes", name: "Bandes", slug: "bandes" },
        { id: "compresses", name: "Compresses", slug: "compresses" },
        { id: "antiseptiques", name: "Antiseptiques", slug: "antiseptiques" },
        { id: "solutions-iodées", name: "Solutions iodées", slug: "solutions-iodees" },
        { id: "sprays-cicatrisants", name: "Sprays cicatrisants", slug: "sprays-cicatrisants" },
        { id: "trousses-premiers-secours", name: "Trousses de premiers secours", slug: "trousses-premiers-secours" }
      ]
    },
    {
      id: "materiel-medical-leger",
      name: "Matériel médical léger",
      slug: "materiel-medical-leger",
      icon: <Microscope className="w-4 h-4" />,
      subcategories: [
        { id: "tensiometres", name: "Tensiomètres", slug: "tensiometres" },
        { id: "thermometres", name: "Thermomètres", slug: "thermometres" },
        { id: "glucometres", name: "Glucomètres", slug: "glucometres" },
        { id: "oxymetres", name: "Oxymètres", slug: "oxymetres" },
        { id: "nebuliseurs", name: "Nébuliseurs", slug: "nebuliseurs" },
        { id: "tests-rapides", name: "Tests rapides", slug: "tests-rapides" },
        { id: "coussins-chauffants", name: "Coussins chauffants", slug: "coussins-chauffants" },
        { id: "ceintures-lombaires", name: "Ceintures lombaires", slug: "ceintures-lombaires" }
      ]
    },
    {
      id: "hygiene-bucco-dentaire",
      name: "Hygiène bucco-dentaire",
      slug: "hygiene-bucco-dentaire",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "dentifrices", name: "Dentifrices", slug: "dentifrices" },
        { id: "bains-de-bouche", name: "Bains de bouche", slug: "bains-de-bouche" },
        { id: "brosses-a-dents", name: "Brosses à dents", slug: "brosses-a-dents" },
        { id: "fils-dentaires", name: "Fils dentaires", slug: "fils-dentaires" },
        { id: "blanchiment-dentaire", name: "Blanchiment dentaire", slug: "blanchiment-dentaire" },
        { id: "kits-orthodontiques", name: "Kits orthodontiques", slug: "kits-orthodontiques" }
      ]
    },
    {
      id: "hygiene-feminine",
      name: "Hygiène féminine",
      slug: "hygiene-feminine",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "serviettes", name: "Serviettes", slug: "serviettes" },
        { id: "tampons", name: "Tampons", slug: "tampons" },
        { id: "coupes-menstruelles", name: "Coupes menstruelles", slug: "coupes-menstruelles" },
        { id: "gels-intimes", name: "Gels intimes", slug: "gels-intimes" },
        { id: "soins-post-partum", name: "Soins post-partum", slug: "soins-post-partum" },
        { id: "protections-urinaires", name: "Protections urinaires", slug: "protections-urinaires" }
      ]
    },
    {
      id: "hygiene-masculine",
      name: "Hygiène masculine",
      slug: "hygiene-masculine",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "soins-barbe", name: "Soins barbe", slug: "soins-barbe" },
        { id: "mousses-a-raser", name: "Mousses à raser", slug: "mousses-a-raser" },
        { id: "gels-de-rasage", name: "Gels de rasage", slug: "gels-de-rasage" },
        { id: "huiles-barbe", name: "Huiles barbe", slug: "huiles-barbe" },
        { id: "lotions-apres-rasage", name: "Lotions après-rasage", slug: "lotions-apres-rasage" },
        { id: "soins-visage-homme", name: "Soins visage homme", slug: "soins-visage-homme" }
      ]
    },
    {
      id: "materiel-esthetique-pro",
      name: "Matériel esthétique professionnel",
      slug: "materiel-esthetique-pro",
      icon: <Beaker className="w-4 h-4" />,
      subcategories: [
        { id: "appareils-led", name: "Appareils LED", slug: "appareils-led" },
        { id: "appareils-massage-visage", name: "Appareils massage visage", slug: "appareils-massage-visage" },
        { id: "microdermabrasion", name: "Microdermabrasion", slug: "microdermabrasion" },
        { id: "epilateurs-pro", name: "Épilateurs pro", slug: "epilateurs-pro" },
        { id: "lits-esthetique", name: "Lits esthétique", slug: "lits-esthetique" },
        { id: "tabourets", name: "Tabourets", slug: "tabourets" },
        { id: "sterilisateurs-uv", name: "Stérilisateurs UV", slug: "sterilisateurs-uv" }
      ]
    },
    {
      id: "epilation",
      name: "Épilation",
      slug: "epilation",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "cire-chaude", name: "Cire chaude", slug: "cire-chaude" },
        { id: "cire-froide", name: "Cire froide", slug: "cire-froide" },
        { id: "bandes", name: "Bandes", slug: "bandes" },
        { id: "epilateurs-electriques", name: "Épilateurs électriques", slug: "epilateurs-electriques" },
        { id: "cremes-depilatoires", name: "Crèmes dépilatoires", slug: "cremes-depilatoires" },
        { id: "kits-de-cire", name: "Kits de cire", slug: "kits-de-cire" }
      ]
    },
    {
      id: "massage-bien-etre",
      name: "Produits de massage & bien-être",
      slug: "massage-bien-etre",
      icon: <HeartPulse className="w-4 h-4" />,
      subcategories: [
        { id: "huiles-massage", name: "Huiles", slug: "huiles-massage" },
        { id: "cremes-chauffantes", name: "Crèmes chauffantes", slug: "cremes-chauffantes" },
        { id: "balles-massage", name: "Balles de massage", slug: "balles-massage" },
        { id: "appareils-anti-douleur", name: "Appareils anti-douleur", slug: "appareils-anti-douleur" },
        { id: "masseurs-electriques", name: "Masseurs électriques", slug: "masseurs-electriques" }
      ]
    },
    {
      id: "beaute-du-regard",
      name: "Beauté du regard",
      slug: "beaute-du-regard",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "extensions-de-cils", name: "Extensions de cils", slug: "extensions-de-cils" },
        { id: "colles-pour-cils", name: "Colles pour cils", slug: "colles-pour-cils" },
        { id: "serums-cils", name: "Sérums cils", slug: "serums-cils" },
        { id: "faux-cils", name: "Faux cils", slug: "faux-cils" },
        { id: "kits-professionnels", name: "Kits professionnels", slug: "kits-professionnels" }
      ]
    },
    {
      id: "produits-spa-domicile",
      name: "Produits spa à domicile",
      slug: "produits-spa-domicile",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "diffuseurs-huiles", name: "Diffuseurs huiles", slug: "diffuseurs-huiles" },
        { id: "bougies-parfumees", name: "Bougies parfumées", slug: "bougies-parfumees" },
        { id: "sels-de-bain-spa", name: "Sels de bain", slug: "sels-de-bain-spa" },
        { id: "gommages-spa", name: "Gommages spa", slug: "gommages-spa" },
        { id: "soins-relaxants", name: "Soins relaxants", slug: "soins-relaxants" }
      ]
    },
    {
      id: "dermatologie-specialisee",
      name: "Produits dermatologiques spécialisés",
      slug: "dermatologie-specialisee",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-medicales", name: "Crèmes médicales", slug: "cremes-medicales" },
        { id: "peaux-sensibles", name: "Soins pour peaux sensibles", slug: "peaux-sensibles" },
        { id: "produits-hypoallergenique", name: "Produits hypoallergéniques", slug: "produits-hypoallergenique" },
        { id: "traitements-non-prescrits", name: "Traitements dermatologiques non prescrits", slug: "traitements-non-prescrits" }
      ]
    },
    {
      id: "nutrition-beaute",
      name: "Nutrition beauté",
      slug: "nutrition-beaute",
      icon: <Pill className="w-4 h-4" />,
      subcategories: [
        { id: "collagene", name: "Collagène", slug: "collagene" },
        { id: "acide-hyaluronique", name: "Acide hyaluronique", slug: "acide-hyaluronique" },
        { id: "complements-peau-ongles-cheveux", name: "Compléments peau/ongles/cheveux", slug: "complements-peau-ongles-cheveux" },
        { id: "gummies-beaute", name: "Gummies beauté", slug: "gummies-beaute" }
      ]
    },
    {
      id: "accessoires-salle-de-bain",
      name: "Accessoires salle de bain",
      slug: "accessoires-salle-de-bain",
      icon: <Package className="w-4 h-4" />,
      subcategories: [
        { id: "porte-savons", name: "Porte-savons", slug: "porte-savons" },
        { id: "rangements-cosmetiques", name: "Rangements cosmétiques", slug: "rangements-cosmetiques" },
        { id: "organisateurs", name: "Organisateurs", slug: "organisateurs" },
        { id: "flacons-rechargeables", name: "Flacons rechargeables", slug: "flacons-rechargeables" },
        { id: "distributeurs", name: "Distributeurs", slug: "distributeurs" }
      ]
    },
    {
      id: "blanchiment-dentaire",
      name: "Produits blanchiment dentaire",
      slug: "blanchiment-dentaire",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "strips-blanchissants", name: "Strips blanchissants", slug: "strips-blanchissants" },
        { id: "gels-blanchissants", name: "Gels blanchissants", slug: "gels-blanchissants" },
        { id: "kits-led", name: "Kits LED", slug: "kits-led" },
        { id: "mousses-blanchissantes", name: "Mousses blanchissantes", slug: "mousses-blanchissantes" }
      ]
    }
  ]
};