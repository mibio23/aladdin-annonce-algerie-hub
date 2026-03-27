import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Pill, Heart, Droplets, Sparkles, Shield, Baby, HeartPulse, Microscope, Sun, Leaf, TestTube, PaintBucket, Sprout, Beaker, Package, Palette } from "lucide-react";

export const parapharmacieProduitChimiqueEn: MenuCategory = {
  id: "parapharmacie-produit-chimique",
  name: "Parapharmacy & Chemical Products",
  slug: "parapharmacie-produit-chimique",
  icon: <Pill className="w-4 h-4" />,
  subcategories: [
    {
      id: "parapharmacie-generale",
      name: "General Parapharmacy",
      slug: "parapharmacie-generale",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "vitamines", name: "Vitamins", slug: "vitamines" },
        { id: "complements-alimentaires", name: "Food Supplements", slug: "complements-alimentaires" },
        { id: "produits-immunite", name: "Immunity Products", slug: "produits-immunite" },
        { id: "supplements-sportifs", name: "Sports Supplements", slug: "supplements-sportifs" },
        { id: "soins-essentiels", name: "Essential Care", slug: "soins-essentiels" },
        { id: "boosters-energie", name: "Energy Boosters", slug: "boosters-energie" },
        { id: "probiotiques", name: "Probiotiques", slug: "probiotiques" },
        { id: "mineraux", name: "Minerals", slug: "mineraux" },
        { id: "omega-3", name: "Omega-3", slug: "omega-3" },
        { id: "multivitamines", name: "Multivitamins", slug: "multivitamines" }
      ]
    },
    {
      id: "soins-visage",
      name: "Face Care",
      slug: "soins-visage",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-hydratantes", name: "Moisturizing Creams", slug: "cremes-hydratantes" },
        { id: "cremes-anti-age", name: "Anti-Aging Creams", slug: "cremes-anti-age" },
        { id: "serums", name: "Serums", slug: "serums" },
        { id: "soins-anti-acne", name: "Anti-Acne Care", slug: "soins-anti-acne" },
        { id: "exfoliants", name: "Exfoliants", slug: "exfoliants" },
        { id: "masques-visage", name: "Face Masks", slug: "masques-visage" },
        { id: "nettoyants-dermatologiques", name: "Dermatological Cleansers", slug: "nettoyants-dermatologiques" },
        { id: "cremes-depigmentantes", name: "Depigmenting Creams", slug: "cremes-depigmentantes" },
        { id: "soins-anti-taches", name: "Anti-Spot Care", slug: "soins-anti-taches" },
        { id: "soins-contour-yeux", name: "Eye Contour Care", slug: "soins-contour-yeux" }
      ]
    },
    {
      id: "soins-corps",
      name: "Body Care",
      slug: "soins-corps",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "laits-corporels", name: "Body Lotions", slug: "laits-corporels" },
        { id: "huiles-essentielles", name: "Essential Oils", slug: "huiles-essentielles" },
        { id: "huiles-massage", name: "Massage Oils", slug: "huiles-massage" },
        { id: "gommages-corporels", name: "Body Scrubs", slug: "gommages-corporels" },
        { id: "soins-raffermissants", name: "Firming Care", slug: "soins-raffermissants" },
        { id: "soins-anti-vergetures", name: "Anti-Stretch Mark Care", slug: "soins-anti-vergetures" },
        { id: "cremes-nourrissantes", name: "Nourishing Creams", slug: "cremes-nourrissantes" },
        { id: "gels-raffermissants", name: "Firming Gels", slug: "gels-raffermissants" },
        { id: "soins-anticellulite", name: "Anti-Cellulite Care", slug: "soins-anticellulite" }
      ]
    },
    {
      id: "soins-capillaires",
      name: "Hair Care",
      slug: "soins-capillaires",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "shampoings", name: "Shampoos", slug: "shampoings" },
        { id: "apres-shampoings", name: "Conditioners", slug: "apres-shampoings" },
        { id: "masques-capillaires", name: "Hair Masks", slug: "masques-capillaires" },
        { id: "huiles-capillaires", name: "Hair Oils", slug: "huiles-capillaires" },
        { id: "serums-capillaires", name: "Hair Serums", slug: "serums-capillaires" },
        { id: "lotions-antichute", name: "Anti-Hair Loss Lotions", slug: "lotions-antichute" },
        { id: "soins-keratine", name: "Keratin Care", slug: "soins-keratine" },
        { id: "traitements-cuir-chevelu", name: "Scalp Treatments", slug: "traitements-cuir-chevelu" },
        { id: "shampoings-medicaux", name: "Medical Shampoos", slug: "shampoings-medicaux" },
        { id: "soins-antipelliculaires", name: "Anti-Dandruff Care", slug: "soins-antipelliculaires" }
      ]
    },
    {
      id: "hygiene-corporelle",
      name: "Body Hygiene",
      slug: "hygiene-corporelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "savons", name: "Soaps", slug: "savons" },
        { id: "gels-douche", name: "Shower Gels", slug: "gels-douche" },
        { id: "deodorants", name: "Deodorants", slug: "deodorants" },
        { id: "lingettes", name: "Wipes", slug: "lingettes" },
        { id: "soins-intimes", name: "Intimate Care", slug: "soins-intimes" },
        { id: "produits-antibacteriens", name: "Antibacterial Products", slug: "produits-antibacteriens" },
        { id: "bains-bouche", name: "Mouthwashes", slug: "bains-bouche" },
        { id: "dentifrices", name: "Toothpastes", slug: "dentifrices" },
        { id: "brosses-dents", name: "Toothbrushes", slug: "brosses-dents" },
        { id: "gels-mains", name: "Hand Gels", slug: "gels-mains" }
      ]
    },
    {
      id: "hygiene-feminine",
      name: "Feminine Hygiene",
      slug: "hygiene-feminine",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "serviettes", name: "Sanitary Napkins", slug: "serviettes" },
        { id: "tampons", name: "Tampons", slug: "tampons" },
        { id: "coupes-menstruelles", name: "Menstrual Cups", slug: "coupes-menstruelles" },
        { id: "gels-intimes", name: "Intimate Gels", slug: "gels-intimes" },
        { id: "traitements-gynecologiques", name: "OTC Gynecological Treatments", slug: "traitements-gynecologiques" },
        { id: "protege-slips", name: "Panty Liners", slug: "protege-slips" },
        { id: "produits-post-partum", name: "Postpartum Products", slug: "produits-post-partum" }
      ]
    },
    {
      id: "hygiene-masculine",
      name: "Masculine Hygiene",
      slug: "hygiene-masculine",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "soins-barbe", name: "Beard Care", slug: "soins-barbe" },
        { id: "mousses-raser", name: "Shaving Foams", slug: "mousses-raser" },
        { id: "gels-rasage", name: "Shaving Gels", slug: "gels-rasage" },
        { id: "lotions-apres-rasage", name: "Aftershave Lotions", slug: "lotions-apres-rasage" },
        { id: "soins-visage-homme", name: "Men's Face Care", slug: "soins-visage-homme" },
        { id: "baumes-barbe", name: "Beard Balms", slug: "baumes-barbe" },
        { id: "huiles-barbe", name: "Beard Oils", slug: "huiles-barbe" }
      ]
    },
    {
      id: "produits-bebe",
      name: "Baby Products",
      slug: "produits-bebe",
      icon: <Baby className="w-4 h-4" />,
      subcategories: [
        { id: "laits-infantiles", name: "Infant Formula", slug: "laits-infantiles" },
        { id: "soins-corps-bebe", name: "Baby Body Care", slug: "soins-corps-bebe" },
        { id: "lingettes-bebe", name: "Baby Wipes", slug: "lingettes-bebe" },
        { id: "gels-lavants-bebe", name: "Washing Gels", slug: "gels-lavants-bebe" },
        { id: "cremes-protectrices-bebe", name: "Protective Creams", slug: "cremes-protectrices-bebe" },
        { id: "accessoires-hygiene-bebe", name: "Hygiene Accessories", slug: "accessoires-hygiene-bebe" },
        { id: "huiles-bebe", name: "Oils", slug: "huiles-bebe" },
        { id: "poudres-bebe", name: "Baby Powders", slug: "poudres-bebe" },
        { id: "soins-erytheme-fessier", name: "Diaper Rash Care", slug: "soins-erytheme-fessier" }
      ]
    },
    {
      id: "premiers-secours",
      name: "First Aid",
      slug: "premiers-secours",
      icon: <HeartPulse className="w-4 h-4" />,
      subcategories: [
        { id: "pansements", name: "Bandages", slug: "pansements" },
        { id: "compresses", name: "Compresses", slug: "compresses" },
        { id: "bandes", name: "Wraps", slug: "bandes" },
        { id: "antiseptiques", name: "Antiseptics", slug: "antiseptiques" },
        { id: "solutions-iodees", name: "Iodine Solutions", slug: "solutions-iodees" },
        { id: "desinfectants", name: "Disinfectants", slug: "desinfectants" },
        { id: "trousses-secours", name: "First Aid Kits", slug: "trousses-secours" },
        { id: "sutures-adhesives", name: "Adhesive Sutures", slug: "sutures-adhesives" },
        { id: "sprays-cicatrisants", name: "Healing Sprays", slug: "sprays-cicatrisants" }
      ]
    },
    {
      id: "materiel-medical-leger",
      name: "Light Medical Equipment",
      slug: "materiel-medical-leger",
      icon: <Microscope className="w-4 h-4" />,
      subcategories: [
        { id: "tensiometres", name: "Blood Pressure Monitors", slug: "tensiometres" },
        { id: "thermometres", name: "Thermometers", slug: "thermometres" },
        { id: "oxymetres", name: "Oximeters", slug: "oxymetres" },
        { id: "glucometres", name: "Glucometers", slug: "glucometres" },
        { id: "nebuliseurs", name: "Nebulizers", slug: "nebuliseurs" },
        { id: "tests-rapides", name: "Rapid Tests", slug: "tests-rapides" },
        { id: "aerosols", name: "Aerosols", slug: "aerosols" },
        { id: "pulverisateurs-medicaux", name: "Medical Sprayers", slug: "pulverisateurs-medicaux" }
      ]
    },
    {
      id: "produits-solaires",
      name: "Sun Products",
      slug: "produits-solaires",
      icon: <Sun className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-spf", name: "SPF Creams", slug: "cremes-spf" },
        { id: "sprays-solaires", name: "Sun Sprays", slug: "sprays-solaires" },
        { id: "cremes-teintees", name: "Tinted Creams", slug: "cremes-teintees" },
        { id: "protections-enfants", name: "Child Protection", slug: "protections-enfants" },
        { id: "soins-apres-soleil", name: "After-Sun Care", slug: "soins-apres-soleil" },
        { id: "huiles-solaires", name: "Sun Oils", slug: "huiles-solaires" },
        { id: "sticks-spf", name: "SPF Sticks", slug: "sticks-spf" }
      ]
    },
    {
      id: "phytotherapie",
      name: "Phytotherapy",
      slug: "phytotherapie",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "extraits-naturels", name: "Natural Extracts", slug: "extraits-naturels" },
        { id: "plantes-medicinales", name: "Medicinal Plants", slug: "plantes-medicinales" },
        { id: "tisanes-therapeutiques", name: "Therapeutic Teas", slug: "tisanes-therapeutiques" },
        { id: "gelules-naturelles", name: "Natural Capsules", slug: "gelules-naturelles" },
        { id: "poudres-plantes", name: "Plant Powders", slug: "poudres-plantes" },
        { id: "macerats", name: "Macerates", slug: "macerats" }
      ]
    },
    {
      id: "aromatherapie",
      name: "Aromatherapy",
      slug: "aromatherapie",
      icon: <TestTube className="w-4 h-4" />,
      subcategories: [
        { id: "diffuseurs", name: "Diffusers", slug: "diffuseurs" },
        { id: "huiles-essentielles-pures", name: "Pure Essential Oils", slug: "huiles-essentielles-pures" },
        { id: "melanges-therapeutiques", name: "Therapeutic Blends", slug: "melanges-therapeutiques" },
        { id: "brumes-aromatiques", name: "Aromatic Mists", slug: "brumes-aromatiques" },
        { id: "synergies-huiles", name: "Oil Synergies", slug: "synergies-huiles" },
        { id: "roll-on-bien-etre", name: "Wellness Roll-ons", slug: "roll-on-bien-etre" }
      ]
    },
    {
      id: "produits-dietetiques",
      name: "Dietetic Products",
      slug: "produits-dietetiques",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "proteines", name: "Proteins", slug: "proteines" },
        { id: "gainers", name: "Gainers", slug: "gainers" },
        { id: "bruleurs-graisse", name: "Fat Burners", slug: "bruleurs-graisse" },
        { id: "substituts-repas", name: "Meal Replacements", slug: "substituts-repas" },
        { id: "produits-detox", name: "Detox Products", slug: "produits-detox" },
        { id: "boissons-energetiques", name: "Energy Drinks", slug: "boissons-energetiques" },
        { id: "fibres-nutritionnelles", name: "Nutritional Fibers", slug: "fibres-nutritionnelles" },
        { id: "super-aliments", name: "Superfoods", slug: "super-aliments" }
      ]
    },
    {
      id: "desinfection-antiseptiques",
      name: "Disinfection & Antiseptics",
      slug: "desinfection-antiseptiques",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "gels-hydroalcooliques", name: "Hydroalcoholic Gels", slug: "gels-hydroalcooliques" },
        { id: "sprays-desinfectants", name: "Disinfectant Sprays", slug: "sprays-desinfectants" },
        { id: "lingettes-virucides", name: "Virucidal Wipes", slug: "lingettes-virucides" },
        { id: "solutions-antiseptiques-pro", name: "Pro Antiseptic Solutions", slug: "solutions-antiseptiques-pro" },
        { id: "desinfectants-surfaces", name: "Surface Disinfectants", slug: "desinfectants-surfaces" }
      ]
    },
    {
      id: "produits-menagers-chimiques",
      name: "Chemical Household Products",
      slug: "produits-menagers-chimiques",
      icon: <PaintBucket className="w-4 h-4" />,
      subcategories: [
        { id: "detergents-multi-usages", name: "Multi-purpose Detergents", slug: "detergents-multi-usages" },
        { id: "degraissants", name: "Degreasers", slug: "degraissants" },
        { id: "desodorisants", name: "Air Fresheners", slug: "desodorisants" },
        { id: "nettoyants-sanitaires", name: "Sanitary Cleaners", slug: "nettoyants-sanitaires" },
        { id: "nettoyants-vitres", name: "Glass Cleaners", slug: "nettoyants-vitres" },
        { id: "anticalcaire", name: "Limescale Removers", slug: "anticalcaire" }
      ]
    },
    {
      id: "produits-entretien-industriels",
      name: "Industrial Cleaning Products",
      slug: "produits-entretien-industriels",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "decapants", name: "Strippers", slug: "decapants" },
        { id: "solvants-professionnels", name: "Professional Solvents", slug: "solvants-professionnels" },
        { id: "agents-degraissants-puissants", name: "Powerful Degreasing Agents", slug: "agents-degraissants-puissants" },
        { id: "nettoyants-machines", name: "Machine Cleaners", slug: "nettoyants-machines" },
        { id: "detartrants-industriels", name: "Industrial Descalers", slug: "detartrants-industriels" }
      ]
    },
    {
      id: "peintures-solvants",
      name: "Paints & Solvents",
      slug: "peintures-solvants",
      icon: <Palette className="w-4 h-4" />,
      subcategories: [
        { id: "peintures-chimiques", name: "Chemical Paints", slug: "peintures-chimiques" },
        { id: "resines", name: "Resins", slug: "resines" },
        { id: "diluants", name: "Thinners", slug: "diluants" },
        { id: "acetone", name: "Acetone", slug: "acetone" },
        { id: "white-spirit", name: "White Spirit", slug: "white-spirit" },
        { id: "vernis-techniques", name: "Technical Varnishes", slug: "vernis-techniques" },
        { id: "durcisseurs", name: "Hardeners", slug: "durcisseurs" },
        { id: "solvants-specialises", name: "Specialized Solvents", slug: "solvants-specialises" }
      ]
    },
    {
      id: "produits-piscine",
      name: "Pool Products",
      slug: "produits-piscine",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "chlore", name: "Chlorine", slug: "chlore" },
        { id: "ph-plus", name: "pH+", slug: "ph-plus" },
        { id: "ph-moins", name: "pH-", slug: "ph-moins" },
        { id: "floculants", name: "Flocculants", slug: "floculants" },
        { id: "algicides", name: "Algaecides", slug: "algicides" },
        { id: "stabilisateurs", name: "Stabilizers", slug: "stabilisateurs" },
        { id: "kits-analyse-eau", name: "Water Analysis Kits", slug: "kits-analyse-eau" },
        { id: "clarifiants", name: "Clarifiers", slug: "clarifiants" },
        { id: "produits-hivernage", name: "Winterizing Products", slug: "produits-hivernage" }
      ]
    },
    {
      id: "produits-agricoles-chimiques",
      name: "Chemical Agricultural Products",
      slug: "produits-agricoles-chimiques",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "engrais-npk", name: "NPK Fertilizers", slug: "engrais-npk" },
        { id: "pesticides", name: "Pesticides", slug: "pesticides" },
        { id: "herbicides", name: "Herbicides", slug: "herbicides" },
        { id: "fongicides", name: "Fungicides", slug: "fongicides" },
        { id: "stimulateurs-croissance", name: "Growth Stimulators", slug: "stimulateurs-croissance" },
        { id: "regulateurs", name: "Regulators", slug: "regulateurs" },
        { id: "adjuvants-agricoles", name: "Agricultural Adjuvants", slug: "adjuvants-agricoles" }
      ]
    },
    {
      id: "produits-laboratoires",
      name: "Laboratory Products",
      slug: "produits-laboratoires",
      icon: <Beaker className="w-4 h-4" />,
      subcategories: [
        { id: "reactifs-chimiques", name: "Chemical Reagents", slug: "reactifs-chimiques" },
        { id: "solutions-tampons", name: "Buffer Solutions", slug: "solutions-tampons" },
        { id: "alcools", name: "Alcohols", slug: "alcools" },
        { id: "gels-specifiques", name: "Specific Gels", slug: "gels-specifiques" },
        { id: "kits-analyse", name: "Analysis Kits", slug: "kits-analyse" },
        { id: "acides", name: "Acids", slug: "acides" },
        { id: "bases", name: "Bases", slug: "bases" },
        { id: "solvants-laboratoire", name: "Laboratory Solvents", slug: "solvants-laboratoire" }
      ]
    },
    {
      id: "equipements-securite-chimique",
      name: "Chemical Safety Equipment",
      slug: "equipements-securite-chimique",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "gants-nitrile", name: "Nitrile Gloves", slug: "gants-nitrile" },
        { id: "lunettes-protection", name: "Goggles", slug: "lunettes-protection" },
        { id: "masques-respiratoires", name: "Respirators", slug: "masques-respiratoires" },
        { id: "combinaisons-anti-chimiques", name: "Chemical Suits", slug: "combinaisons-anti-chimiques" },
        { id: "protections-faciales", name: "Face Shields", slug: "protections-faciales" },
        { id: "chaussures-anti-produits-corrosifs", name: "Corrosive Resistant Shoes", slug: "chaussures-anti-produits-corrosifs" }
      ]
    },
    {
      id: "emballages-chimiques",
      name: "Chemical Packaging",
      slug: "emballages-chimiques",
      icon: <Package className="w-4 h-4" />,
      subcategories: [
        { id: "bidons", name: "Canisters", slug: "bidons" },
        { id: "flacons-resistants", name: "Resistant Bottles", slug: "flacons-resistants" },
        { id: "bouteilles-securisees", name: "Secure Bottles", slug: "bouteilles-securisees" },
        { id: "contenants-anti-corrosifs", name: "Anti-Corrosive Containers", slug: "contenants-anti-corrosifs" },
        { id: "cuves", name: "Tanks", slug: "cuves" },
        { id: "petits-contenants-dosage", name: "Small Dosing Containers", slug: "petits-contenants-dosage" }
      ]
    },
    {
      id: "hygiene-professionnelle",
      name: "Professional Hygiene",
      slug: "hygiene-professionnelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "savons-industriels", name: "Industrial Soaps", slug: "savons-industriels" },
        { id: "desinfectants-pro", name: "Pro Disinfectants", slug: "desinfectants-pro" },
        { id: "nettoyants-sols-hopitaux", name: "Hospital Floor Cleaners", slug: "nettoyants-sols-hopitaux" },
        { id: "produits-haccp", name: "HACCP Products", slug: "produits-haccp" },
        { id: "detergents-alimentaires", name: "Food Detergents", slug: "detergents-alimentaires" }
      ]
    },
    {
      id: "cosmetiques-specialises",
      name: "Specialized Cosmetics",
      slug: "cosmetiques-specialises",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "soins-hypoallergeniques", name: "Hypoallergenic Care", slug: "soins-hypoallergeniques" },
        { id: "cremes-medicales", name: "Medical Creams", slug: "cremes-medicales" },
        { id: "soins-dermatologiques-specialises", name: "Specialized Dermatological Care", slug: "soins-dermatologiques-specialises" },
        { id: "cremes-cicatrisantes", name: "Healing Creams", slug: "cremes-cicatrisantes" },
        { id: "protections-cutanees-medicales", name: "Medical Skin Protections", slug: "protections-cutanees-medicales" }
      ]
    }
  ]
};
