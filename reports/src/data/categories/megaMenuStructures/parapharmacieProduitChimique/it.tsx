import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Pill, Heart, Droplets, Sparkles, Shield, Baby, HeartPulse, Microscope, Sun, Leaf, TestTube, PaintBucket, Sprout, Beaker, Package, Palette } from "lucide-react";

export const parapharmacieProduitChimiqueIt: MenuCategory = {
  id: "parapharmacie-produit-chimique",
  name: "Parafarmacia e Prodotti Chimici",
  slug: "parapharmacie-produit-chimique",
  icon: <Pill className="w-4 h-4" />,
  subcategories: [
    {
      id: "parapharmacie-generale",
      name: "Parafarmacia Generale",
      slug: "parapharmacie-generale",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "vitamines", name: "Vitamine", slug: "vitamines" },
        { id: "complements-alimentaires", name: "Integratori Alimentari", slug: "complements-alimentaires" },
        { id: "produits-immunite", name: "Prodotti per l'Immunità", slug: "produits-immunite" },
        { id: "supplements-sportifs", name: "Integratori Sportivi", slug: "supplements-sportifs" },
        { id: "soins-essentiels", name: "Cure Essenziali", slug: "soins-essentiels" },
        { id: "boosters-energie", name: "Booster di Energia", slug: "boosters-energie" },
        { id: "probiotiques", name: "Probiotici", slug: "probiotiques" },
        { id: "mineraux", name: "Minerali", slug: "mineraux" },
        { id: "omega-3", name: "Omega-3", slug: "omega-3" },
        { id: "multivitamines", name: "Multivitamine", slug: "multivitamines" }
      ]
    },
    {
      id: "soins-visage",
      name: "Cura del Viso",
      slug: "soins-visage",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-hydratantes", name: "Creme Idratanti", slug: "cremes-hydratantes" },
        { id: "cremes-anti-age", name: "Creme Anti-Età", slug: "cremes-anti-age" },
        { id: "serums", name: "Sieri", slug: "serums" },
        { id: "soins-anti-acne", name: "Trattamenti Anti-Acne", slug: "soins-anti-acne" },
        { id: "exfoliants", name: "Esfolianti", slug: "exfoliants" },
        { id: "masques-visage", name: "Maschere Viso", slug: "masques-visage" },
        { id: "nettoyants-dermatologiques", name: "Detergenti Dermatologici", slug: "nettoyants-dermatologiques" },
        { id: "cremes-depigmentantes", name: "Creme Depigmentanti", slug: "cremes-depigmentantes" },
        { id: "soins-anti-taches", name: "Trattamenti Anti-Macchia", slug: "soins-anti-taches" },
        { id: "soins-contour-yeux", name: "Contorno Occhi", slug: "soins-contour-yeux" }
      ]
    },
    {
      id: "soins-corps",
      name: "Cura del Corpo",
      slug: "soins-corps",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "laits-corporels", name: "Latte Corpo", slug: "laits-corporels" },
        { id: "huiles-essentielles", name: "Oli Essenziali", slug: "huiles-essentielles" },
        { id: "huiles-massage", name: "Oli da Massaggio", slug: "huiles-massage" },
        { id: "gommages-corporels", name: "Scrub Corpo", slug: "gommages-corporels" },
        { id: "soins-raffermissants", name: "Trattamenti Rassodanti", slug: "soins-raffermissants" },
        { id: "soins-anti-vergetures", name: "Trattamenti Anti-Smagliature", slug: "soins-anti-vergetures" },
        { id: "cremes-nourrissantes", name: "Creme Nutrienti", slug: "cremes-nourrissantes" },
        { id: "gels-raffermissants", name: "Gel Rassodanti", slug: "gels-raffermissants" },
        { id: "soins-anticellulite", name: "Trattamenti Anticellulite", slug: "soins-anticellulite" }
      ]
    },
    {
      id: "soins-capillaires",
      name: "Cura dei Capelli",
      slug: "soins-capillaires",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "shampoings", name: "Shampoo", slug: "shampoings" },
        { id: "apres-shampoings", name: "Balsamo", slug: "apres-shampoings" },
        { id: "masques-capillaires", name: "Maschere per Capelli", slug: "masques-capillaires" },
        { id: "huiles-capillaires", name: "Oli per Capelli", slug: "huiles-capillaires" },
        { id: "serums-capillaires", name: "Sieri per Capelli", slug: "serums-capillaires" },
        { id: "lotions-antichute", name: "Lozioni Anticaduta", slug: "lotions-antichute" },
        { id: "soins-keratine", name: "Trattamenti alla Cheratina", slug: "soins-keratine" },
        { id: "traitements-cuir-chevelu", name: "Trattamenti Cuoio Capelluto", slug: "traitements-cuir-chevelu" },
        { id: "shampoings-medicaux", name: "Shampoo Medicinali", slug: "shampoings-medicaux" },
        { id: "soins-antipelliculaires", name: "Trattamenti Antiforfora", slug: "soins-antipelliculaires" }
      ]
    },
    {
      id: "hygiene-corporelle",
      name: "Igiene del Corpo",
      slug: "hygiene-corporelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "savons", name: "Saponi", slug: "savons" },
        { id: "gels-douche", name: "Gel Doccia", slug: "gels-douche" },
        { id: "deodorants", name: "Deodoranti", slug: "deodorants" },
        { id: "lingettes", name: "Salviette", slug: "lingettes" },
        { id: "soins-intimes", name: "Igiene Intima", slug: "soins-intimes" },
        { id: "produits-antibacteriens", name: "Prodotti Antibatterici", slug: "produits-antibacteriens" },
        { id: "bains-bouche", name: "Collutori", slug: "bains-bouche" },
        { id: "dentifrices", name: "Dentifrici", slug: "dentifrices" },
        { id: "brosses-dents", name: "Spazzolini da Denti", slug: "brosses-dents" },
        { id: "gels-mains", name: "Gel Mani", slug: "gels-mains" }
      ]
    },
    {
      id: "hygiene-feminine",
      name: "Igiene Femminile",
      slug: "hygiene-feminine",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "serviettes", name: "Assorbenti", slug: "serviettes" },
        { id: "tampons", name: "Tamponi", slug: "tampons" },
        { id: "coupes-menstruelles", name: "Coppette Mestruali", slug: "coupes-menstruelles" },
        { id: "gels-intimes", name: "Gel Intimi", slug: "gels-intimes" },
        { id: "traitements-gynecologiques", name: "Trattamenti Ginecologici", slug: "traitements-gynecologiques" },
        { id: "protege-slips", name: "Proteggi-slip", slug: "protege-slips" },
        { id: "produits-post-partum", name: "Prodotti Post-partum", slug: "produits-post-partum" }
      ]
    },
    {
      id: "hygiene-masculine",
      name: "Igiene Maschile",
      slug: "hygiene-masculine",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "soins-barbe", name: "Cura della Barba", slug: "soins-barbe" },
        { id: "mousses-raser", name: "Schiume da Barba", slug: "mousses-raser" },
        { id: "gels-rasage", name: "Gel da Barba", slug: "gels-rasage" },
        { id: "lotions-apres-rasage", name: "Dopobarba", slug: "lotions-apres-rasage" },
        { id: "soins-visage-homme", name: "Cura Viso Uomo", slug: "soins-visage-homme" },
        { id: "baumes-barbe", name: "Balsami Barba", slug: "baumes-barbe" },
        { id: "huiles-barbe", name: "Oli Barba", slug: "huiles-barbe" }
      ]
    },
    {
      id: "produits-bebe",
      name: "Prodotti per Bambini",
      slug: "produits-bebe",
      icon: <Baby className="w-4 h-4" />,
      subcategories: [
        { id: "laits-infantiles", name: "Latte per Neonati", slug: "laits-infantiles" },
        { id: "soins-corps-bebe", name: "Cura Corpo Bambino", slug: "soins-corps-bebe" },
        { id: "lingettes-bebe", name: "Salviette", slug: "lingettes-bebe" },
        { id: "gels-lavants-bebe", name: "Gel Detergenti", slug: "gels-lavants-bebe" },
        { id: "cremes-protectrices-bebe", name: "Creme Protettive", slug: "cremes-protectrices-bebe" },
        { id: "accessoires-hygiene-bebe", name: "Accessori Igiene", slug: "accessoires-hygiene-bebe" },
        { id: "huiles-bebe", name: "Oli", slug: "huiles-bebe" },
        { id: "poudres-bebe", name: "Borotalco", slug: "poudres-bebe" },
        { id: "soins-erytheme-fessier", name: "Trattamenti Eritema da Pannolino", slug: "soins-erytheme-fessier" }
      ]
    },
    {
      id: "premiers-secours",
      name: "Primo Soccorso",
      slug: "premiers-secours",
      icon: <HeartPulse className="w-4 h-4" />,
      subcategories: [
        { id: "pansements", name: "Cerotti", slug: "pansements" },
        { id: "compresses", name: "Compresse", slug: "compresses" },
        { id: "bandes", name: "Bende", slug: "bandes" },
        { id: "antiseptiques", name: "Antisettici", slug: "antiseptiques" },
        { id: "solutions-iodees", name: "Soluzioni Iodate", slug: "solutions-iodees" },
        { id: "desinfectants", name: "Disinfettanti", slug: "desinfectants" },
        { id: "trousses-secours", name: "Kit di Pronto Soccorso", slug: "trousses-secours" },
        { id: "sutures-adhesives", name: "Suture Adesive", slug: "sutures-adhesives" },
        { id: "sprays-cicatrisants", name: "Spray Cicatrizzanti", slug: "sprays-cicatrisants" }
      ]
    },
    {
      id: "materiel-medical-leger",
      name: "Attrezzature Mediche Leggere",
      slug: "materiel-medical-leger",
      icon: <Microscope className="w-4 h-4" />,
      subcategories: [
        { id: "tensiometres", name: "Sfigmomanometri", slug: "tensiometres" },
        { id: "thermometres", name: "Termometri", slug: "thermometres" },
        { id: "oxymetres", name: "Ossimetri", slug: "oxymetres" },
        { id: "glucometres", name: "Glucometri", slug: "glucometres" },
        { id: "nebuliseurs", name: "Nebulizzatori", slug: "nebuliseurs" },
        { id: "tests-rapides", name: "Test Rapidi", slug: "tests-rapides" },
        { id: "aerosols", name: "Aerosol", slug: "aerosols" },
        { id: "pulverisateurs-medicaux", name: "Nebulizzatori Medici", slug: "pulverisateurs-medicaux" }
      ]
    },
    {
      id: "produits-solaires",
      name: "Prodotti Solari",
      slug: "produits-solaires",
      icon: <Sun className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-spf", name: "Creme SPF", slug: "cremes-spf" },
        { id: "sprays-solaires", name: "Spray Solari", slug: "sprays-solaires" },
        { id: "cremes-teintees", name: "Creme Colorate", slug: "cremes-teintees" },
        { id: "protections-enfants", name: "Protezione Bambini", slug: "protections-enfants" },
        { id: "soins-apres-soleil", name: "Doposole", slug: "soins-apres-soleil" },
        { id: "huiles-solaires", name: "Oli Solari", slug: "huiles-solaires" },
        { id: "sticks-spf", name: "Stick SPF", slug: "sticks-spf" }
      ]
    },
    {
      id: "phytotherapie",
      name: "Fitoterapia",
      slug: "phytotherapie",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "extraits-naturels", name: "Estratti Naturali", slug: "extraits-naturels" },
        { id: "plantes-medicinales", name: "Piante Medicinali", slug: "plantes-medicinales" },
        { id: "tisanes-therapeutiques", name: "Tisane Terapeutiche", slug: "tisanes-therapeutiques" },
        { id: "gelules-naturelles", name: "Capsule Naturali", slug: "gelules-naturelles" },
        { id: "poudres-plantes", name: "Polveri di Piante", slug: "poudres-plantes" },
        { id: "macerats", name: "Macerati", slug: "macerats" }
      ]
    },
    {
      id: "aromatherapie",
      name: "Aromaterapia",
      slug: "aromatherapie",
      icon: <TestTube className="w-4 h-4" />,
      subcategories: [
        { id: "diffuseurs", name: "Diffusori", slug: "diffuseurs" },
        { id: "huiles-essentielles-pures", name: "Oli Essenziali Puri", slug: "huiles-essentielles-pures" },
        { id: "melanges-therapeutiques", name: "Miscele Terapeutiche", slug: "melanges-therapeutiques" },
        { id: "brumes-aromatiques", name: "Nebbie Aromatiche", slug: "brumes-aromatiques" },
        { id: "synergies-huiles", name: "Sinergie di Oli", slug: "synergies-huiles" },
        { id: "roll-on-bien-etre", name: "Roll-on Benessere", slug: "roll-on-bien-etre" }
      ]
    },
    {
      id: "produits-dietetiques",
      name: "Prodotti Dietetici",
      slug: "produits-dietetiques",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "proteines", name: "Proteine", slug: "proteines" },
        { id: "gainers", name: "Gainer", slug: "gainers" },
        { id: "bruleurs-graisse", name: "Brucia Grassi", slug: "bruleurs-graisse" },
        { id: "substituts-repas", name: "Sostituti del Pasto", slug: "substituts-repas" },
        { id: "produits-detox", name: "Prodotti Detox", slug: "produits-detox" },
        { id: "boissons-energetiques", name: "Bevande Energetiche", slug: "boissons-energetiques" },
        { id: "fibres-nutritionnelles", name: "Fibre Nutrizionali", slug: "fibres-nutritionnelles" },
        { id: "super-aliments", name: "Superfood", slug: "super-aliments" }
      ]
    },
    {
      id: "desinfection-antiseptiques",
      name: "Disinfezione e Antisettici",
      slug: "desinfection-antiseptiques",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "gels-hydroalcooliques", name: "Gel Idroalcolici", slug: "gels-hydroalcooliques" },
        { id: "sprays-desinfectants", name: "Spray Disinfettanti", slug: "sprays-desinfectants" },
        { id: "lingettes-virucides", name: "Salviette Virucide", slug: "lingettes-virucides" },
        { id: "solutions-antiseptiques-pro", name: "Soluzioni Antisettiche Pro", slug: "solutions-antiseptiques-pro" },
        { id: "desinfectants-surfaces", name: "Disinfettanti per Superfici", slug: "desinfectants-surfaces" }
      ]
    },
    {
      id: "produits-menagers-chimiques",
      name: "Prodotti Chimici per la Casa",
      slug: "produits-menagers-chimiques",
      icon: <PaintBucket className="w-4 h-4" />,
      subcategories: [
        { id: "detergents-multi-usages", name: "Detergenti Multiuso", slug: "detergents-multi-usages" },
        { id: "degraissants", name: "Sgrassatori", slug: "degraissants" },
        { id: "desodorisants", name: "Deodoranti per Ambienti", slug: "desodorisants" },
        { id: "nettoyants-sanitaires", name: "Detergenti Sanitari", slug: "nettoyants-sanitaires" },
        { id: "nettoyants-vitres", name: "Detergenti Vetri", slug: "nettoyants-vitres" },
        { id: "anticalcaire", name: "Anticalcare", slug: "anticalcaire" }
      ]
    },
    {
      id: "produits-entretien-industriels",
      name: "Prodotti per la Pulizia Industriale",
      slug: "produits-entretien-industriels",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "decapants", name: "Sverniciatori", slug: "decapants" },
        { id: "solvants-professionnels", name: "Solventi Professionali", slug: "solvants-professionnels" },
        { id: "agents-degraissants-puissants", name: "Sgrassatori Potenti", slug: "agents-degraissants-puissants" },
        { id: "nettoyants-machines", name: "Detergenti per Macchinari", slug: "nettoyants-machines" },
        { id: "detartrants-industriels", name: "Disincrostanti Industriali", slug: "detartrants-industriels" }
      ]
    },
    {
      id: "peintures-solvants",
      name: "Vernici e Solventi",
      slug: "peintures-solvants",
      icon: <Palette className="w-4 h-4" />,
      subcategories: [
        { id: "peintures-chimiques", name: "Vernici Chimiche", slug: "peintures-chimiques" },
        { id: "resines", name: "Resine", slug: "resines" },
        { id: "diluants", name: "Diluenti", slug: "diluants" },
        { id: "acetone", name: "Acetone", slug: "acetone" },
        { id: "white-spirit", name: "Acquaragia", slug: "white-spirit" },
        { id: "vernis-techniques", name: "Vernici Tecniche", slug: "vernis-techniques" },
        { id: "durcisseurs", name: "Indurenti", slug: "durcisseurs" },
        { id: "solvants-specialises", name: "Solventi Specializzati", slug: "solvants-specialises" }
      ]
    },
    {
      id: "produits-piscine",
      name: "Prodotti per Piscina",
      slug: "produits-piscine",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "chlore", name: "Cloro", slug: "chlore" },
        { id: "ph-plus", name: "pH+", slug: "ph-plus" },
        { id: "ph-moins", name: "pH-", slug: "ph-moins" },
        { id: "floculants", name: "Flocculanti", slug: "floculants" },
        { id: "algicides", name: "Alghicidi", slug: "algicides" },
        { id: "stabilisateurs", name: "Stabilizzanti", slug: "stabilisateurs" },
        { id: "kits-analyse-eau", name: "Kit Analisi Acqua", slug: "kits-analyse-eau" },
        { id: "clarifiants", name: "Chiarificanti", slug: "clarifiants" },
        { id: "produits-hivernage", name: "Prodotti Svernamento", slug: "produits-hivernage" }
      ]
    },
    {
      id: "produits-agricoles-chimiques",
      name: "Prodotti Chimici Agricoli",
      slug: "produits-agricoles-chimiques",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "engrais-npk", name: "Fertilizzanti NPK", slug: "engrais-npk" },
        { id: "pesticides", name: "Pesticidi", slug: "pesticides" },
        { id: "herbicides", name: "Erbicidi", slug: "herbicides" },
        { id: "fongicides", name: "Fungicidi", slug: "fongicides" },
        { id: "stimulateurs-croissance", name: "Stimolatori di Crescita", slug: "stimulateurs-croissance" },
        { id: "regulateurs", name: "Regolatori", slug: "regulateurs" },
        { id: "adjuvants-agricoles", name: "Coadiuvanti Agricoli", slug: "adjuvants-agricoles" }
      ]
    },
    {
      id: "produits-laboratoires",
      name: "Prodotti da Laboratorio",
      slug: "produits-laboratoires",
      icon: <Beaker className="w-4 h-4" />,
      subcategories: [
        { id: "reactifs-chimiques", name: "Reagenti Chimici", slug: "reactifs-chimiques" },
        { id: "solutions-tampons", name: "Soluzioni Tampone", slug: "solutions-tampons" },
        { id: "alcools", name: "Alcoli", slug: "alcools" },
        { id: "gels-specifiques", name: "Gel Specifici", slug: "gels-specifiques" },
        { id: "kits-analyse", name: "Kit di Analisi", slug: "kits-analyse" },
        { id: "acides", name: "Acidi", slug: "acides" },
        { id: "bases", name: "Basi", slug: "bases" },
        { id: "solvants-laboratoire", name: "Solventi da Laboratorio", slug: "solvants-laboratoire" }
      ]
    },
    {
      id: "equipements-securite-chimique",
      name: "Dispositivi di Protezione Chimica",
      slug: "equipements-securite-chimique",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "gants-nitrile", name: "Guanti in Nitrile", slug: "gants-nitrile" },
        { id: "lunettes-protection", name: "Occhiali Protettivi", slug: "lunettes-protection" },
        { id: "masques-respiratoires", name: "Maschere Respiratorie", slug: "masques-respiratoires" },
        { id: "combinaisons-anti-chimiques", name: "Tute Antichimiche", slug: "combinaisons-anti-chimiques" },
        { id: "protections-faciales", name: "Protezioni Facciali", slug: "protections-faciales" },
        { id: "chaussures-anti-produits-corrosifs", name: "Calzature Anti-Corrosione", slug: "chaussures-anti-produits-corrosifs" }
      ]
    },
    {
      id: "emballages-chimiques",
      name: "Imballaggi Chimici",
      slug: "emballages-chimiques",
      icon: <Package className="w-4 h-4" />,
      subcategories: [
        { id: "bidons", name: "Taniche", slug: "bidons" },
        { id: "flacons-resistants", name: "Flaconi Resistenti", slug: "flacons-resistants" },
        { id: "bouteilles-securisees", name: "Bottiglie di Sicurezza", slug: "bouteilles-securisees" },
        { id: "contenants-anti-corrosifs", name: "Contenitori Anti-Corrosione", slug: "contenants-anti-corrosifs" },
        { id: "cuves", name: "Vasche", slug: "cuves" },
        { id: "petits-contenants-dosage", name: "Piccoli Contenitori Dosatori", slug: "petits-contenants-dosage" }
      ]
    },
    {
      id: "hygiene-professionnelle",
      name: "Igiene Professionale",
      slug: "hygiene-professionnelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "savons-industriels", name: "Saponi Industriali", slug: "savons-industriels" },
        { id: "desinfectants-pro", name: "Disinfettanti Professionali", slug: "desinfectants-pro" },
        { id: "nettoyants-sols-hopitaux", name: "Detergenti Pavimenti Ospedalieri", slug: "nettoyants-sols-hopitaux" },
        { id: "produits-haccp", name: "Prodotti HACCP", slug: "produits-haccp" },
        { id: "detergents-alimentaires", name: "Detergenti Alimentari", slug: "detergents-alimentaires" }
      ]
    },
    {
      id: "cosmetiques-specialises",
      name: "Cosmetici Specializzati",
      slug: "cosmetiques-specialises",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "soins-hypoallergeniques", name: "Trattamenti Ipoallergenici", slug: "soins-hypoallergeniques" },
        { id: "cremes-medicales", name: "Creme Mediche", slug: "cremes-medicales" },
        { id: "soins-dermatologiques-specialises", name: "Trattamenti Dermatologici Specializzati", slug: "soins-dermatologiques-specialises" },
        { id: "cremes-cicatrisantes", name: "Creme Cicatrizzanti", slug: "cremes-cicatrisantes" },
        { id: "protections-cutanees-medicales", name: "Protezioni Cutanee Mediche", slug: "protections-cutanees-medicales" }
      ]
    }
  ]
};
