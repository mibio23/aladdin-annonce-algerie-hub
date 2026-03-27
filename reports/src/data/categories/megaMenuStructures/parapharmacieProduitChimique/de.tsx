import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Pill, Heart, Droplets, Sparkles, Shield, Baby, HeartPulse, Microscope, Sun, Leaf, TestTube, PaintBucket, Sprout, Beaker, Package, Palette } from "lucide-react";

export const parapharmacieProduitChimiqueDe: MenuCategory = {
  id: "parapharmacie-produit-chimique",
  name: "Parapharmazie & Chemische Produkte",
  slug: "parapharmacie-produit-chimique",
  icon: <Pill className="w-4 h-4" />,
  subcategories: [
    {
      id: "parapharmacie-generale",
      name: "Allgemeine Parapharmazie",
      slug: "parapharmacie-generale",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "vitamines", name: "Vitamine", slug: "vitamines" },
        { id: "complements-alimentaires", name: "Nahrungsergänzungsmittel", slug: "complements-alimentaires" },
        { id: "produits-immunite", name: "Immunitätsprodukte", slug: "produits-immunite" },
        { id: "supplements-sportifs", name: "Sportnahrungsergänzungsmittel", slug: "supplements-sportifs" },
        { id: "soins-essentiels", name: "Essentielle Pflege", slug: "soins-essentiels" },
        { id: "boosters-energie", name: "Energie-Booster", slug: "boosters-energie" },
        { id: "probiotiques", name: "Probiotika", slug: "probiotiques" },
        { id: "mineraux", name: "Mineralien", slug: "mineraux" },
        { id: "omega-3", name: "Omega-3", slug: "omega-3" },
        { id: "multivitamines", name: "Multivitamine", slug: "multivitamines" }
      ]
    },
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
        { id: "exfoliants", name: "Peelings", slug: "exfoliants" },
        { id: "masques-visage", name: "Gesichtsmasken", slug: "masques-visage" },
        { id: "nettoyants-dermatologiques", name: "Dermatologische Reinigungsmittel", slug: "nettoyants-dermatologiques" },
        { id: "cremes-depigmentantes", name: "Depigmentierungscremes", slug: "cremes-depigmentantes" },
        { id: "soins-anti-taches", name: "Anti-Flecken-Pflege", slug: "soins-anti-taches" },
        { id: "soins-contour-yeux", name: "Augenpflege", slug: "soins-contour-yeux" }
      ]
    },
    {
      id: "soins-corps",
      name: "Körperpflege",
      slug: "soins-corps",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "laits-corporels", name: "Körpermilch", slug: "laits-corporels" },
        { id: "huiles-essentielles", name: "Ätherische Öle", slug: "huiles-essentielles" },
        { id: "huiles-massage", name: "Massageöle", slug: "huiles-massage" },
        { id: "gommages-corporels", name: "Körperpeelings", slug: "gommages-corporels" },
        { id: "soins-raffermissants", name: "Straffende Pflege", slug: "soins-raffermissants" },
        { id: "soins-anti-vergetures", name: "Anti-Dehnungsstreifen-Pflege", slug: "soins-anti-vergetures" },
        { id: "cremes-nourrissantes", name: "Pflegende Cremes", slug: "cremes-nourrissantes" },
        { id: "gels-raffermissants", name: "Straffende Gele", slug: "gels-raffermissants" },
        { id: "soins-anticellulite", name: "Anti-Cellulite-Pflege", slug: "soins-anticellulite" }
      ]
    },
    {
      id: "soins-capillaires",
      name: "Haarpflege",
      slug: "soins-capillaires",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "shampoings", name: "Shampoos", slug: "shampoings" },
        { id: "apres-shampoings", name: "Spülungen", slug: "apres-shampoings" },
        { id: "masques-capillaires", name: "Haarmasken", slug: "masques-capillaires" },
        { id: "huiles-capillaires", name: "Haaröle", slug: "huiles-capillaires" },
        { id: "serums-capillaires", name: "Haarseren", slug: "serums-capillaires" },
        { id: "lotions-antichute", name: "Anti-Haarausfall-Lotionen", slug: "lotions-antichute" },
        { id: "soins-keratine", name: "Keratinpflege", slug: "soins-keratine" },
        { id: "traitements-cuir-chevelu", name: "Kopfhautbehandlungen", slug: "traitements-cuir-chevelu" },
        { id: "shampoings-medicaux", name: "Medizinische Shampoos", slug: "shampoings-medicaux" },
        { id: "soins-antipelliculaires", name: "Anti-Schuppen-Pflege", slug: "soins-antipelliculaires" }
      ]
    },
    {
      id: "hygiene-corporelle",
      name: "Körperhygiene",
      slug: "hygiene-corporelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "savons", name: "Seifen", slug: "savons" },
        { id: "gels-douche", name: "Duschgele", slug: "gels-douche" },
        { id: "deodorants", name: "Deodorants", slug: "deodorants" },
        { id: "lingettes", name: "Feuchttücher", slug: "lingettes" },
        { id: "soins-intimes", name: "Intimpflege", slug: "soins-intimes" },
        { id: "produits-antibacteriens", name: "Antibakterielle Produkte", slug: "produits-antibacteriens" },
        { id: "bains-bouche", name: "Mundspülungen", slug: "bains-bouche" },
        { id: "dentifrices", name: "Zahnpasta", slug: "dentifrices" },
        { id: "brosses-dents", name: "Zahnbürsten", slug: "brosses-dents" },
        { id: "gels-mains", name: "Handgele", slug: "gels-mains" }
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
        { id: "gels-intimes", name: "Intimgele", slug: "gels-intimes" },
        { id: "traitements-gynecologiques", name: "Gynäkologische Behandlungen", slug: "traitements-gynecologiques" },
        { id: "protege-slips", name: "Slipeinlagen", slug: "protege-slips" },
        { id: "produits-post-partum", name: "Postpartale Produkte", slug: "produits-post-partum" }
      ]
    },
    {
      id: "hygiene-masculine",
      name: "Herrenhygiene",
      slug: "hygiene-masculine",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "soins-barbe", name: "Bartpflege", slug: "soins-barbe" },
        { id: "mousses-raser", name: "Rasierschaum", slug: "mousses-raser" },
        { id: "gels-rasage", name: "Rasiergele", slug: "gels-rasage" },
        { id: "lotions-apres-rasage", name: "Aftershave-Lotionen", slug: "lotions-apres-rasage" },
        { id: "soins-visage-homme", name: "Gesichtspflege für Männer", slug: "soins-visage-homme" },
        { id: "baumes-barbe", name: "Bartbalsam", slug: "baumes-barbe" },
        { id: "huiles-barbe", name: "Bartöle", slug: "huiles-barbe" }
      ]
    },
    {
      id: "produits-bebe",
      name: "Babyprodukte",
      slug: "produits-bebe",
      icon: <Baby className="w-4 h-4" />,
      subcategories: [
        { id: "laits-infantiles", name: "Säuglingsmilch", slug: "laits-infantiles" },
        { id: "soins-corps-bebe", name: "Körperpflege für Babys", slug: "soins-corps-bebe" },
        { id: "lingettes-bebe", name: "Babytücher", slug: "lingettes-bebe" },
        { id: "gels-lavants-bebe", name: "Waschgele", slug: "gels-lavants-bebe" },
        { id: "cremes-protectrices-bebe", name: "Schutzcremes", slug: "cremes-protectrices-bebe" },
        { id: "accessoires-hygiene-bebe", name: "Hygieneartikel", slug: "accessoires-hygiene-bebe" },
        { id: "huiles-bebe", name: "Babyöle", slug: "huiles-bebe" },
        { id: "poudres-bebe", name: "Babypuder", slug: "poudres-bebe" },
        { id: "soins-erytheme-fessier", name: "Windelausschlagpflege", slug: "soins-erytheme-fessier" }
      ]
    },
    {
      id: "premiers-secours",
      name: "Erste Hilfe",
      slug: "premiers-secours",
      icon: <HeartPulse className="w-4 h-4" />,
      subcategories: [
        { id: "pansements", name: "Pflaster", slug: "pansements" },
        { id: "compresses", name: "Kompressen", slug: "compresses" },
        { id: "bandes", name: "Verbände", slug: "bandes" },
        { id: "antiseptiques", name: "Antiseptika", slug: "antiseptiques" },
        { id: "solutions-iodees", name: "Jodlösungen", slug: "solutions-iodees" },
        { id: "desinfectants", name: "Desinfektionsmittel", slug: "desinfectants" },
        { id: "trousses-secours", name: "Erste-Hilfe-Sets", slug: "trousses-secours" },
        { id: "sutures-adhesives", name: "Klebestreifen", slug: "sutures-adhesives" },
        { id: "sprays-cicatrisants", name: "Wundheilsprays", slug: "sprays-cicatrisants" }
      ]
    },
    {
      id: "materiel-medical-leger",
      name: "Leichte medizinische Ausrüstung",
      slug: "materiel-medical-leger",
      icon: <Microscope className="w-4 h-4" />,
      subcategories: [
        { id: "tensiometres", name: "Blutdruckmessgeräte", slug: "tensiometres" },
        { id: "thermometres", name: "Thermometer", slug: "thermometres" },
        { id: "oxymetres", name: "Oximeter", slug: "oxymetres" },
        { id: "glucometres", name: "Blutzuckermessgeräte", slug: "glucometres" },
        { id: "nebuliseurs", name: "Vernebler", slug: "nebuliseurs" },
        { id: "tests-rapides", name: "Schnelltests", slug: "tests-rapides" },
        { id: "aerosols", name: "Aerosole", slug: "aerosols" },
        { id: "pulverisateurs-medicaux", name: "Medizinische Zerstäuber", slug: "pulverisateurs-medicaux" }
      ]
    },
    {
      id: "produits-solaires",
      name: "Sonnenschutzprodukte",
      slug: "produits-solaires",
      icon: <Sun className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-spf", name: "SPF-Cremes", slug: "cremes-spf" },
        { id: "sprays-solaires", name: "Sonnensprays", slug: "sprays-solaires" },
        { id: "cremes-teintees", name: "Getönte Cremes", slug: "cremes-teintees" },
        { id: "protections-enfants", name: "Kinderschutz", slug: "protections-enfants" },
        { id: "soins-apres-soleil", name: "After-Sun-Pflege", slug: "soins-apres-soleil" },
        { id: "huiles-solaires", name: "Sonnenöle", slug: "huiles-solaires" },
        { id: "sticks-spf", name: "SPF-Sticks", slug: "sticks-spf" }
      ]
    },
    {
      id: "phytotherapie",
      name: "Phytotherapie",
      slug: "phytotherapie",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "extraits-naturels", name: "Naturextrakte", slug: "extraits-naturels" },
        { id: "plantes-medicinales", name: "Heilpflanzen", slug: "plantes-medicinales" },
        { id: "tisanes-therapeutiques", name: "Heiltees", slug: "tisanes-therapeutiques" },
        { id: "gelules-naturelles", name: "Naturkapseln", slug: "gelules-naturelles" },
        { id: "poudres-plantes", name: "Pflanzenpulver", slug: "poudres-plantes" },
        { id: "macerats", name: "Mazerate", slug: "macerats" }
      ]
    },
    {
      id: "aromatherapie",
      name: "Aromatherapie",
      slug: "aromatherapie",
      icon: <TestTube className="w-4 h-4" />,
      subcategories: [
        { id: "diffuseurs", name: "Diffusoren", slug: "diffuseurs" },
        { id: "huiles-essentielles-pures", name: "Reine ätherische Öle", slug: "huiles-essentielles-pures" },
        { id: "melanges-therapeutiques", name: "Therapeutische Mischungen", slug: "melanges-therapeutiques" },
        { id: "brumes-aromatiques", name: "Aromasprays", slug: "brumes-aromatiques" },
        { id: "synergies-huiles", name: "Ölsynergien", slug: "synergies-huiles" },
        { id: "roll-on-bien-etre", name: "Wohlfühl-Roll-ons", slug: "roll-on-bien-etre" }
      ]
    },
    {
      id: "produits-dietetiques",
      name: "Diätprodukte",
      slug: "produits-dietetiques",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "proteines", name: "Proteine", slug: "proteines" },
        { id: "gainers", name: "Weight Gainer", slug: "gainers" },
        { id: "bruleurs-graisse", name: "Fettverbrenner", slug: "bruleurs-graisse" },
        { id: "substituts-repas", name: "Mahlzeitenersatz", slug: "substituts-repas" },
        { id: "produits-detox", name: "Detox-Produkte", slug: "produits-detox" },
        { id: "boissons-energetiques", name: "Energydrinks", slug: "boissons-energetiques" },
        { id: "fibres-nutritionnelles", name: "Ballaststoffe", slug: "fibres-nutritionnelles" },
        { id: "super-aliments", name: "Superfoods", slug: "super-aliments" }
      ]
    },
    {
      id: "desinfection-antiseptiques",
      name: "Desinfektion & Antiseptika",
      slug: "desinfection-antiseptiques",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "gels-hydroalcooliques", name: "Hydroalkoholische Gele", slug: "gels-hydroalcooliques" },
        { id: "sprays-desinfectants", name: "Desinfektionssprays", slug: "sprays-desinfectants" },
        { id: "lingettes-virucides", name: "Viruzide Tücher", slug: "lingettes-virucides" },
        { id: "solutions-antiseptiques-pro", name: "Profi-Antiseptika", slug: "solutions-antiseptiques-pro" },
        { id: "desinfectants-surfaces", name: "Flächendesinfektionsmittel", slug: "desinfectants-surfaces" }
      ]
    },
    {
      id: "produits-menagers-chimiques",
      name: "Chemische Haushaltsprodukte",
      slug: "produits-menagers-chimiques",
      icon: <PaintBucket className="w-4 h-4" />,
      subcategories: [
        { id: "detergents-multi-usages", name: "Allzweckreiniger", slug: "detergents-multi-usages" },
        { id: "degraissants", name: "Entfetter", slug: "degraissants" },
        { id: "desodorisants", name: "Lufterfrischer", slug: "desodorisants" },
        { id: "nettoyants-sanitaires", name: "Sanitärreiniger", slug: "nettoyants-sanitaires" },
        { id: "nettoyants-vitres", name: "Glasreiniger", slug: "nettoyants-vitres" },
        { id: "anticalcaire", name: "Entkalker", slug: "anticalcaire" }
      ]
    },
    {
      id: "produits-entretien-industriels",
      name: "Industrielle Reinigungsprodukte",
      slug: "produits-entretien-industriels",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "decapants", name: "Abbeizmittel", slug: "decapants" },
        { id: "solvants-professionnels", name: "Profi-Lösungsmittel", slug: "solvants-professionnels" },
        { id: "agents-degraissants-puissants", name: "Starke Entfetter", slug: "agents-degraissants-puissants" },
        { id: "nettoyants-machines", name: "Maschinenreiniger", slug: "nettoyants-machines" },
        { id: "detartrants-industriels", name: "Industrieentkalker", slug: "detartrants-industriels" }
      ]
    },
    {
      id: "peintures-solvants",
      name: "Farben & Lösungsmittel",
      slug: "peintures-solvants",
      icon: <Palette className="w-4 h-4" />,
      subcategories: [
        { id: "peintures-chimiques", name: "Chemische Farben", slug: "peintures-chimiques" },
        { id: "resines", name: "Harze", slug: "resines" },
        { id: "diluants", name: "Verdünner", slug: "diluants" },
        { id: "acetone", name: "Aceton", slug: "acetone" },
        { id: "white-spirit", name: "Testbenzin", slug: "white-spirit" },
        { id: "vernis-techniques", name: "Technische Lacke", slug: "vernis-techniques" },
        { id: "durcisseurs", name: "Härter", slug: "durcisseurs" },
        { id: "solvants-specialises", name: "Speziallösungsmittel", slug: "solvants-specialises" }
      ]
    },
    {
      id: "produits-piscine",
      name: "Poolprodukte",
      slug: "produits-piscine",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "chlore", name: "Chlor", slug: "chlore" },
        { id: "ph-plus", name: "pH-Plus", slug: "ph-plus" },
        { id: "ph-moins", name: "pH-Minus", slug: "ph-moins" },
        { id: "floculants", name: "Flockungsmittel", slug: "floculants" },
        { id: "algicides", name: "Algizide", slug: "algicides" },
        { id: "stabilisateurs", name: "Stabilisatoren", slug: "stabilisateurs" },
        { id: "kits-analyse-eau", name: "Wasseranalyse-Kits", slug: "kits-analyse-eau" },
        { id: "clarifiants", name: "Klärmittel", slug: "clarifiants" },
        { id: "produits-hivernage", name: "Überwinterungsprodukte", slug: "produits-hivernage" }
      ]
    },
    {
      id: "produits-agricoles-chimiques",
      name: "Landwirtschaftliche Chemikalien",
      slug: "produits-agricoles-chimiques",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "engrais-npk", name: "NPK-Dünger", slug: "engrais-npk" },
        { id: "pesticides", name: "Pestizide", slug: "pesticides" },
        { id: "herbicides", name: "Herbizide", slug: "herbicides" },
        { id: "fongicides", name: "Fungizide", slug: "fongicides" },
        { id: "stimulateurs-croissance", name: "Wachstumsstimulatoren", slug: "stimulateurs-croissance" },
        { id: "regulateurs", name: "Regulatoren", slug: "regulateurs" },
        { id: "adjuvants-agricoles", name: "Agrarhilfsstoffe", slug: "adjuvants-agricoles" }
      ]
    },
    {
      id: "produits-laboratoires",
      name: "Laborprodukte",
      slug: "produits-laboratoires",
      icon: <Beaker className="w-4 h-4" />,
      subcategories: [
        { id: "reactifs-chimiques", name: "Chemische Reagenzien", slug: "reactifs-chimiques" },
        { id: "solutions-tampons", name: "Pufferlösungen", slug: "solutions-tampons" },
        { id: "alcools", name: "Alkohole", slug: "alcools" },
        { id: "gels-specifiques", name: "Spezielle Gele", slug: "gels-specifiques" },
        { id: "kits-analyse", name: "Analyse-Kits", slug: "kits-analyse" },
        { id: "acides", name: "Säuren", slug: "acides" },
        { id: "bases", name: "Basen", slug: "bases" },
        { id: "solvants-laboratoire", name: "Laborlösungsmittel", slug: "solvants-laboratoire" }
      ]
    },
    {
      id: "equipements-securite-chimique",
      name: "Chemische Sicherheitsausrüstung",
      slug: "equipements-securite-chimique",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "gants-nitrile", name: "Nitrilhandschuhe", slug: "gants-nitrile" },
        { id: "lunettes-protection", name: "Schutzbrillen", slug: "lunettes-protection" },
        { id: "masques-respiratoires", name: "Atemschutzmasken", slug: "masques-respiratoires" },
        { id: "combinaisons-anti-chimiques", name: "Chemikalienschutzanzüge", slug: "combinaisons-anti-chimiques" },
        { id: "protections-faciales", name: "Gesichtsschutz", slug: "protections-faciales" },
        { id: "chaussures-anti-produits-corrosifs", name: "Säurebeständige Schuhe", slug: "chaussures-anti-produits-corrosifs" }
      ]
    },
    {
      id: "emballages-chimiques",
      name: "Chemische Verpackungen",
      slug: "emballages-chimiques",
      icon: <Package className="w-4 h-4" />,
      subcategories: [
        { id: "bidons", name: "Kanister", slug: "bidons" },
        { id: "flacons-resistants", name: "Beständige Flaschen", slug: "flacons-resistants" },
        { id: "bouteilles-securisees", name: "Sicherheitsflaschen", slug: "bouteilles-securisees" },
        { id: "contenants-anti-corrosifs", name: "Korrosionsbeständige Behälter", slug: "contenants-anti-corrosifs" },
        { id: "cuves", name: "Tanks", slug: "cuves" },
        { id: "petits-contenants-dosage", name: "Dosierbehälter", slug: "petits-contenants-dosage" }
      ]
    },
    {
      id: "hygiene-professionnelle",
      name: "Berufshygiene",
      slug: "hygiene-professionnelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "savons-industriels", name: "Industrieseifen", slug: "savons-industriels" },
        { id: "desinfectants-pro", name: "Profi-Desinfektionsmittel", slug: "desinfectants-pro" },
        { id: "nettoyants-sols-hopitaux", name: "Krankenhausbodenreiniger", slug: "nettoyants-sols-hopitaux" },
        { id: "produits-haccp", name: "HACCP-Produkte", slug: "produits-haccp" },
        { id: "detergents-alimentaires", name: "Lebensmittelreiniger", slug: "detergents-alimentaires" }
      ]
    },
    {
      id: "cosmetiques-specialises",
      name: "Spezialkosmetik",
      slug: "cosmetiques-specialises",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "soins-hypoallergeniques", name: "Hypoallergene Pflege", slug: "soins-hypoallergeniques" },
        { id: "cremes-medicales", name: "Medizinische Cremes", slug: "cremes-medicales" },
        { id: "soins-dermatologiques-specialises", name: "Dermatologische Spezialpflege", slug: "soins-dermatologiques-specialises" },
        { id: "cremes-cicatrisantes", name: "Wundheilcremes", slug: "cremes-cicatrisantes" },
        { id: "protections-cutanees-medicales", name: "Medizinischer Hautschutz", slug: "protections-cutanees-medicales" }
      ]
    }
  ]
};
