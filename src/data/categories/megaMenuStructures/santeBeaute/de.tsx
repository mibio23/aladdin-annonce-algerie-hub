import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { HeartPulse, Sparkles, Droplets, Sun, Leaf, Shield, Pill, Microscope, Beaker, Package, Palette, Sprout, Heart } from "lucide-react";

export const santeBeauteDe: MenuCategory = {
  id: "sante-beaute",
  name: "Gesundheit & Schönheit",
  slug: "sante-beaute",
  icon: <HeartPulse className="w-4 h-4" />,
  subcategories: [
    {
      id: "soins-visage",
      name: "Gesichtspflege",
      slug: "soins-visage",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-hydratantes", name: "Feuchtigkeitscremes", slug: "cremes-hydratantes" },
        { id: "cremes-anti-age", name: "Anti-Aging-Cremes", slug: "cremes-anti-age" },
        { id: "serums", name: "Seren", slug: "serums" },
        { id: "soins-anti-acne", name: "Anti-Akne-Pflege", slug: "soins-anti-acne" },
        { id: "masques", name: "Masken", slug: "masques" },
        { id: "exfoliants", name: "Peelings", slug: "exfoliants" },
        { id: "nettoyants-visage", name: "Gesichtsreiniger", slug: "nettoyants-visage" },
        { id: "toniques", name: "Toner", slug: "toniques" },
        { id: "soins-anti-taches", name: "Anti-Flecken-Pflege", slug: "soins-anti-taches" },
        { id: "cremes-contour-yeux", name: "Augenkontur-Cremes", slug: "cremes-contour-yeux" },
        { id: "patchs-yeux", name: "Augenpads", slug: "patchs-yeux" }
      ]
    },
    {
      id: "soins-corps",
      name: "Körperpflege",
      slug: "soins-corps",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "laits-corporels", name: "Körperlotionen", slug: "laits-corporels" },
        { id: "cremes-nourrissantes", name: "Nährende Cremes", slug: "cremes-nourrissantes" },
        { id: "gommages-corps", name: "Körperpeelings", slug: "gommages-corps" },
        { id: "huiles-corporelles", name: "Körperöle", slug: "huiles-corporelles" },
        { id: "gels-minceur", name: "Straffungsgele", slug: "gels-minceur" },
        { id: "soins-anti-vergetures", name: "Anti-Dehnungsstreifen", slug: "soins-anti-vergetures" },
        { id: "soins-raffermissants", name: "Straffende Pflege", slug: "soins-raffermissants" },
        { id: "lotions-parfumees", name: "Parfümierte Lotionen", slug: "lotions-parfumees" }
      ]
    },
    {
      id: "hygiene-corporelle",
      name: "Körperhygiene",
      slug: "hygiene-corporelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "gels-douche", name: "Duschgels", slug: "gels-douche" },
        { id: "savons-solides", name: "Seifenstücke", slug: "savons-solides" },
        { id: "savons-liquides", name: "Flüssigseifen", slug: "savons-liquides" },
        { id: "deodorants", name: "Deodorants", slug: "deodorants" },
        { id: "lingettes", name: "Tücher", slug: "lingettes" },
        { id: "soins-intimes", name: "Intimpflege", slug: "soins-intimes" },
        { id: "bains-moussants", name: "Schaumbäder", slug: "bains-moussants" },
        { id: "sels-de-bain", name: "Badesalze", slug: "sels-de-bain" },
        { id: "huiles-de-bain", name: "Badeöle", slug: "huiles-de-bain" }
      ]
    },
    {
      id: "soins-capillaires",
      name: "Haarpflege",
      slug: "soins-capillaires",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "shampoings", name: "Shampoos", slug: "shampoings" },
        { id: "apres-shampoings", name: "Conditioner", slug: "apres-shampoings" },
        { id: "masques-capillaires", name: "Haarmasken", slug: "masques-capillaires" },
        { id: "serums-capillaires", name: "Haarseren", slug: "serums-capillaires" },
        { id: "soins-keratine", name: "Keratinpflege", slug: "soins-keratine" },
        { id: "huiles-capillaires", name: "Haaröle", slug: "huiles-capillaires" },
        { id: "soins-antichute", name: "Anti-Haarausfall", slug: "soins-antichute" },
        { id: "shampoings-medicaux", name: "Medizinische Shampoos", slug: "shampoings-medicaux" },
        { id: "produits-coiffants", name: "Stylingprodukte", slug: "produits-coiffants" }
      ]
    },
    {
      id: "coiffure-styling",
      name: "Frisieren & Styling",
      slug: "coiffure-styling",
      icon: <Palette className="w-4 h-4" />,
      subcategories: [
        { id: "fers-a-lisser", name: "Glätteisen", slug: "fers-a-lisser" },
        { id: "seche-cheveux", name: "Haartrockner", slug: "seche-cheveux" },
        { id: "tondeuses", name: "Haarschneider", slug: "tondeuses" },
        { id: "brosses-chauffantes", name: "Heizbürsten", slug: "brosses-chauffantes" },
        { id: "bigoudis", name: "Lockenwickler", slug: "bigoudis" },
        { id: "peignes", name: "Kämme", slug: "peignes" },
        { id: "brosses-professionnelles", name: "Profi-Bürsten", slug: "brosses-professionnelles" },
        { id: "sprays-coiffants", name: "Styling-Sprays", slug: "sprays-coiffants" },
        { id: "mousses-volume", name: "Volumen-Mousse", slug: "mousses-volume" },
        { id: "gels", name: "Haargels", slug: "gels" }
      ]
    },
    {
      id: "parfums-fragrances",
      name: "Parfüms & Düfte",
      slug: "parfums-fragrances",
      icon: <Sun className="w-4 h-4" />,
      subcategories: [
        { id: "parfums-homme", name: "Herrenparfüms", slug: "parfums-homme" },
        { id: "parfums-femme", name: "Damenparfüms", slug: "parfums-femme" },
        { id: "eaux-de-toilette", name: "Eaux de Toilette", slug: "eaux-de-toilette" },
        { id: "eaux-de-parfum", name: "Eaux de Parfum", slug: "eaux-de-parfum" },
        { id: "brumes-corporelles", name: "Körpernebel", slug: "brumes-corporelles" },
        { id: "parfums-orientaux", name: "Orientalische Düfte", slug: "parfums-orientaux" },
        { id: "parfums-de-luxe", name: "Luxusdüfte", slug: "parfums-de-luxe" },
        { id: "coffrets-parfum", name: "Parfümsets", slug: "coffrets-parfum" }
      ]
    },
    {
      id: "maquillage",
      name: "Make-up",
      slug: "maquillage",
      icon: <Palette className="w-4 h-4" />,
      subcategories: [
        { id: "fonds-de-teint", name: "Foundations", slug: "fonds-de-teint" },
        { id: "poudres", name: "Puder", slug: "poudres" },
        { id: "anticernes", name: "Concealer", slug: "anticernes" },
        { id: "blush", name: "Rouge", slug: "blush" },
        { id: "highlighters", name: "Highlighter", slug: "highlighters" },
        { id: "palettes-yeux", name: "Lidschatten-Paletten", slug: "palettes-yeux" },
        { id: "mascaras", name: "Mascaras", slug: "mascaras" },
        { id: "eyeliners", name: "Eyeliner", slug: "eyeliners" },
        { id: "crayons-levres", name: "Lippenkonturenstifte", slug: "crayons-levres" },
        { id: "rouges-a-levres", name: "Lippenstifte", slug: "rouges-a-levres" },
        { id: "gloss", name: "Lipgloss", slug: "gloss" },
        { id: "fixateurs-makeup", name: "Make-up-Setter", slug: "fixateurs-makeup" }
      ]
    },
    {
      id: "accessoires-beaute",
      name: "Schönheitsaccessoires",
      slug: "accessoires-beaute",
      icon: <Package className="w-4 h-4" />,
      subcategories: [
        { id: "pinceaux-maquillage", name: "Make-up-Pinsel", slug: "pinceaux-maquillage" },
        { id: "beauty-blenders", name: "Beauty-Blender", slug: "beauty-blenders" },
        { id: "miroirs", name: "Spiegel", slug: "miroirs" },
        { id: "trousses-beaute", name: "Kosmetiktaschen", slug: "trousses-beaute" },
        { id: "eponges-de-bain", name: "Badeschwämme", slug: "eponges-de-bain" },
        { id: "gants-exfoliants", name: "Peeling-Handschuhe", slug: "gants-exfoliants" },
        { id: "limes", name: "Nagelfeilen", slug: "limes" },
        { id: "coupe-ongles", name: "Nagelknipser", slug: "coupe-ongles" },
        { id: "pinces-a-epiler", name: "Pinzetten", slug: "pinces-a-epiler" }
      ]
    },
    {
      id: "manucure-pedicure",
      name: "Maniküre & Pediküre",
      slug: "manucure-pedicure",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "vernis", name: "Nagellack", slug: "vernis" },
        { id: "vernis-semi-permanent", name: "Semipermanenter Lack", slug: "vernis-semi-permanent" },
        { id: "gels-uv", name: "UV-Gele", slug: "gels-uv" },
        { id: "lampes-uv", name: "UV-Lampen", slug: "lampes-uv" },
        { id: "kits-manucure", name: "Maniküre-Sets", slug: "kits-manucure" },
        { id: "dissolvants", name: "Entferner", slug: "dissolvants" },
        { id: "soins-des-ongles", name: "Nagelpflege", slug: "soins-des-ongles" },
        { id: "faux-ongles", name: "Kunstnägel", slug: "faux-ongles" },
        { id: "colle-pour-nails", name: "Nagelkleber", slug: "colle-pour-nails" },
        { id: "outils-pro", name: "Profi-Werkzeuge", slug: "outils-pro" }
      ]
    },
    {
      id: "produits-solaires",
      name: "Sonnenschutzprodukte",
      slug: "produits-solaires",
      icon: <Sun className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-spf", name: "SPF-Cremes", slug: "cremes-spf" },
        { id: "sprays-solaires", name: "Sprays", slug: "sprays-solaires" },
        { id: "huiles-solaires", name: "Sonnenöle", slug: "huiles-solaires" },
        { id: "protections-enfants", name: "Kinder-Schutz", slug: "protections-enfants" },
        { id: "sticks-solaires", name: "Sonnenstifte", slug: "sticks-solaires" },
        { id: "apres-soleil", name: "After-Sun", slug: "apres-soleil" },
        { id: "cremes-teintees-spf", name: "Getönte SPF-Cremes", slug: "cremes-teintees-spf" }
      ]
    },
    {
      id: "beaute-naturelle-bio",
      name: "Natürliche & Bio-Schönheit",
      slug: "beaute-naturelle-bio",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "huiles-naturelles", name: "Naturöle", slug: "huiles-naturelles" },
        { id: "beurres-vegetaux", name: "Pflanzenbutter", slug: "beurres-vegetaux" },
        { id: "eau-florale", name: "Blütenwasser", slug: "eau-florale" },
        { id: "hydrolats", name: "Hydrolate", slug: "hydrolats" },
        { id: "savons-artisanaux", name: "Handgemachte Seifen", slug: "savons-artisanaux" },
        { id: "cosmetiques-bio", name: "Bio-Kosmetik", slug: "cosmetiques-bio" },
        { id: "soins-solides", name: "Feste Pflege", slug: "soins-solides" },
        { id: "produits-vegan", name: "Vegane Produkte", slug: "produits-vegan" }
      ]
    },
    {
      id: "aromatherapie",
      name: "Aromatherapie",
      slug: "aromatherapie",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "huiles-essentielles", name: "Ätherische Öle", slug: "huiles-essentielles" },
        { id: "diffuseurs", name: "Diffusoren", slug: "diffuseurs" },
        { id: "synergies-bien-etre", name: "Wellness-Synergien", slug: "synergies-bien-etre" },
        { id: "roll-on-relaxants", name: "Entspannungs-Roll-ons", slug: "roll-on-relaxants" },
        { id: "brumes-parfumees", name: "Duftnebel", slug: "brumes-parfumees" },
        { id: "huiles-massage-relaxantes", name: "Entspannende Massageöle", slug: "huiles-massage-relaxantes" }
      ]
    },
    {
      id: "phytotherapie",
      name: "Phytotherapie",
      slug: "phytotherapie",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "plantes-medicinales", name: "Heilpflanzen", slug: "plantes-medicinales" },
        { id: "extraits-naturels", name: "Natürliche Extrakte", slug: "extraits-naturels" },
        { id: "tisanes-sante", name: "Gesundheitstees", slug: "tisanes-sante" },
        { id: "complements-naturels", name: "Natürliche Nahrungsergänzung", slug: "complements-naturels" },
        { id: "poudres-de-plantes", name: "Pflanzenpulver", slug: "poudres-de-plantes" },
        { id: "gelules-phytotherapie", name: "Phytotherapie-Kapseln", slug: "gelules-phytotherapie" }
      ]
    },
    {
      id: "sante-generale",
      name: "Allgemeine Gesundheit",
      slug: "sante-generale",
      icon: <Pill className="w-4 h-4" />,
      subcategories: [
        { id: "vitamines", name: "Vitamine", slug: "vitamines" },
        { id: "complements-alimentaires", name: "Nahrungsergänzung", slug: "complements-alimentaires" },
        { id: "mineraux", name: "Mineralien", slug: "mineraux" },
        { id: "probiotiques", name: "Probiotika", slug: "probiotiques" },
        { id: "produits-immunite", name: "Immunsystem-Produkte", slug: "produits-immunite" },
        { id: "antioxydants", name: "Antioxidantien", slug: "antioxydants" },
        { id: "omega-3", name: "Omega-3", slug: "omega-3" },
        { id: "produits-detox", name: "Detox-Produkte", slug: "produits-detox" },
        { id: "supplements-sportifs", name: "Sport-Supplements", slug: "supplements-sportifs" }
      ]
    },
    {
      id: "medicaments-sans-ordonnance",
      name: "Arzneien ohne Rezept",
      slug: "medicaments-sans-ordonnance",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "antalgiques", name: "Schmerzmittel", slug: "antalgiques" },
        { id: "produits-orl", name: "HNO-Produkte", slug: "produits-orl" },
        { id: "digestifs", name: "Verdauung", slug: "digestifs" },
        { id: "anti-acides", name: "Antazida", slug: "anti-acides" },
        { id: "sirops", name: "Sirups", slug: "sirops" },
        { id: "pastilles", name: "Lutschtabletten", slug: "pastilles" },
        { id: "antihistaminiques", name: "Antihistaminika", slug: "antihistaminiques" },
        { id: "rhume", name: "Erkältung", slug: "rhume" }
      ]
    },
    {
      id: "premiers-secours",
      name: "Erste Hilfe",
      slug: "premiers-secours",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "pansements", name: "Pflaster", slug: "pansements" },
        { id: "bandes", name: "Binden", slug: "bandes" },
        { id: "compresses", name: "Kompressen", slug: "compresses" },
        { id: "antiseptiques", name: "Antiseptika", slug: "antiseptiques" },
        { id: "solutions-iodées", name: "Jodlösungen", slug: "solutions-iodees" },
        { id: "sprays-cicatrisants", name: "Heilsprays", slug: "sprays-cicatrisants" },
        { id: "trousses-premiers-secours", name: "Erste-Hilfe-Sets", slug: "trousses-premiers-secours" }
      ]
    },
    {
      id: "materiel-medical-leger",
      name: "Leichte medizinische Geräte",
      slug: "materiel-medical-leger",
      icon: <Microscope className="w-4 h-4" />,
      subcategories: [
        { id: "tensiometres", name: "Blutdruckmessgeräte", slug: "tensiometres" },
        { id: "thermometres", name: "Thermometer", slug: "thermometres" },
        { id: "glucometres", name: "Glukometer", slug: "glucometres" },
        { id: "oxymetres", name: "Oximeter", slug: "oxymetres" },
        { id: "nebuliseurs", name: "Vernebler", slug: "nebuliseurs" },
        { id: "tests-rapides", name: "Schnelltests", slug: "tests-rapides" },
        { id: "coussins-chauffants", name: "Heizkissen", slug: "coussins-chauffants" },
        { id: "ceintures-lombaires", name: "Lendenstützgürtel", slug: "ceintures-lombaires" }
      ]
    },
    {
      id: "hygiene-bucco-dentaire",
      name: "Mundhygiene",
      slug: "hygiene-bucco-dentaire",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "dentifrices", name: "Zahnpasten", slug: "dentifrices" },
        { id: "bains-de-bouche", name: "Mundspülungen", slug: "bains-de-bouche" },
        { id: "brosses-a-dents", name: "Zahnbürsten", slug: "brosses-a-dents" },
        { id: "fils-dentaires", name: "Zahnseide", slug: "fils-dentaires" },
        { id: "blanchiment-dentaire", name: "Zahnaufhellung", slug: "blanchiment-dentaire" },
        { id: "kits-orthodontiques", name: "Kieferorthopädische Kits", slug: "kits-orthodontiques" }
      ]
    },
    {
      id: "hygiene-feminine",
      name: "Damenhygiene",
      slug: "hygiene-feminine",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "serviettes", name: "Binden", slug: "serviettes" },
        { id: "tampons", name: "Tampons", slug: "tampons" },
        { id: "coupes-menstruelles", name: "Menstruationstassen", slug: "coupes-menstruelles" },
        { id: "gels-intimes", name: "Intimgels", slug: "gels-intimes" },
        { id: "soins-post-partum", name: "Wochenbettpflege", slug: "soins-post-partum" },
        { id: "protections-urinaires", name: "Urin-Schutz", slug: "protections-urinaires" }
      ]
    },
    {
      id: "hygiene-masculine",
      name: "Herrenhygiene",
      slug: "hygiene-masculine",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "soins-barbe", name: "Bartpflege", slug: "soins-barbe" },
        { id: "mousses-a-raser", name: "Rasierschäume", slug: "mousses-a-raser" },
        { id: "gels-de-rasage", name: "Rasiergele", slug: "gels-de-rasage" },
        { id: "huiles-barbe", name: "Bartöle", slug: "huiles-barbe" },
        { id: "lotions-apres-rasage", name: "Aftershave-Lotionen", slug: "lotions-apres-rasage" },
        { id: "soins-visage-homme", name: "Gesichtspflege Herren", slug: "soins-visage-homme" }
      ]
    },
    {
      id: "materiel-esthetique-pro",
      name: "Professionelle Ästhetikgeräte",
      slug: "materiel-esthetique-pro",
      icon: <Beaker className="w-4 h-4" />,
      subcategories: [
        { id: "appareils-led", name: "LED-Geräte", slug: "appareils-led" },
        { id: "appareils-massage-visage", name: "Gesichtsmassagegeräte", slug: "appareils-massage-visage" },
        { id: "microdermabrasion", name: "Mikrodermabrasion", slug: "microdermabrasion" },
        { id: "epilateurs-pro", name: "Profi-Epilierer", slug: "epilateurs-pro" },
        { id: "lits-esthetique", name: "Ästhetikliegen", slug: "lits-esthetique" },
        { id: "tabourets", name: "Hocker", slug: "tabourets" },
        { id: "sterilisateurs-uv", name: "UV-Sterilisatoren", slug: "sterilisateurs-uv" }
      ]
    },
    {
      id: "epilation",
      name: "Enthaarung",
      slug: "epilation",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "cire-chaude", name: "Heißwachs", slug: "cire-chaude" },
        { id: "cire-froide", name: "Kaltwachs", slug: "cire-froide" },
        { id: "bandes", name: "Streifen", slug: "bandes" },
        { id: "epilateurs-electriques", name: "Elektrische Epilierer", slug: "epilateurs-electriques" },
        { id: "cremes-depilatoires", name: "Enthaarungscremes", slug: "cremes-depilatoires" },
        { id: "kits-de-cire", name: "Wachssets", slug: "kits-de-cire" }
      ]
    },
    {
      id: "massage-bien-etre",
      name: "Massage & Wohlbefinden",
      slug: "massage-bien-etre",
      icon: <HeartPulse className="w-4 h-4" />,
      subcategories: [
        { id: "huiles-massage", name: "Öle", slug: "huiles-massage" },
        { id: "cremes-chauffantes", name: "Wärmende Cremes", slug: "cremes-chauffantes" },
        { id: "balles-massage", name: "Massagebälle", slug: "balles-massage" },
        { id: "appareils-anti-douleur", name: "Schmerzlindernde Geräte", slug: "appareils-anti-douleur" },
        { id: "masseurs-electriques", name: "Elektrische Massierer", slug: "masseurs-electriques" }
      ]
    },
    {
      id: "beaute-du-regard",
      name: "Augenschönheit",
      slug: "beaute-du-regard",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "extensions-de-cils", name: "Wimpernverlängerungen", slug: "extensions-de-cils" },
        { id: "colles-pour-cils", name: "Wimpernkleber", slug: "colles-pour-cils" },
        { id: "serums-cils", name: "Wimpernseren", slug: "serums-cils" },
        { id: "faux-cils", name: "Künstliche Wimpern", slug: "faux-cils" },
        { id: "kits-professionnels", name: "Professionelle Kits", slug: "kits-professionnels" }
      ]
    },
    {
      id: "produits-spa-domicile",
      name: "Home-Spa-Produkte",
      slug: "produits-spa-domicile",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "diffuseurs-huiles", name: "Öldiffusoren", slug: "diffuseurs-huiles" },
        { id: "bougies-parfumees", name: "Duftkerzen", slug: "bougies-parfumees" },
        { id: "sels-de-bain-spa", name: "Badesalze", slug: "sels-de-bain-spa" },
        { id: "gommages-spa", name: "Spa-Peelings", slug: "gommages-spa" },
        { id: "soins-relaxants", name: "Entspannende Pflege", slug: "soins-relaxants" }
      ]
    },
    {
      id: "dermatologie-specialisee",
      name: "Spezialisierte Dermatologie",
      slug: "dermatologie-specialisee",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-medicales", name: "Medizinische Cremes", slug: "cremes-medicales" },
        { id: "peaux-sensibles", name: "Empfindliche Haut", slug: "peaux-sensibles" },
        { id: "produits-hypoallergenique", name: "Hypoallergene Produkte", slug: "produits-hypoallergenique" },
        { id: "traitements-non-prescrits", name: "Nicht verschriebene Behandlungen", slug: "traitements-non-prescrits" }
      ]
    },
    {
      id: "nutrition-beaute",
      name: "Schönheitsnahrung",
      slug: "nutrition-beaute",
      icon: <Pill className="w-4 h-4" />,
      subcategories: [
        { id: "collagene", name: "Kollagen", slug: "collagene" },
        { id: "acide-hyaluronique", name: "Hyaluronsäure", slug: "acide-hyaluronique" },
        { id: "complements-peau-ongles-cheveux", name: "Haut/Nägel/Haare Supplements", slug: "complements-peau-ongles-cheveux" },
        { id: "gummies-beaute", name: "Beauty-Gummis", slug: "gummies-beaute" }
      ]
    },
    {
      id: "accessoires-salle-de-bain",
      name: "Badezimmer-Accessoires",
      slug: "accessoires-salle-de-bain",
      icon: <Package className="w-4 h-4" />,
      subcategories: [
        { id: "porte-savons", name: "Seifenhalter", slug: "porte-savons" },
        { id: "rangements-cosmetiques", name: "Kosmetikaufbewahrung", slug: "rangements-cosmetiques" },
        { id: "organisateurs", name: "Organizer", slug: "organisateurs" },
        { id: "flacons-rechargeables", name: "Nachfüllflaschen", slug: "flacons-rechargeables" },
        { id: "distributeurs", name: "Spender", slug: "distributeurs" }
      ]
    },
    {
      id: "blanchiment-dentaire",
      name: "Zahnaufhellungsprodukte",
      slug: "blanchiment-dentaire",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "strips-blanchissants", name: "Aufhellungsstrips", slug: "strips-blanchissants" },
        { id: "gels-blanchissants", name: "Aufhellungsgels", slug: "gels-blanchissants" },
        { id: "kits-led", name: "LED-Kits", slug: "kits-led" },
        { id: "mousses-blanchissantes", name: "Aufhellungsschäume", slug: "mousses-blanchissantes" }
      ]
    }
  ]
};