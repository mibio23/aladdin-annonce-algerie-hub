import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Pill, Heart, Droplets, Sparkles, Shield, Baby, HeartPulse, Microscope, Sun, Leaf, TestTube, PaintBucket, Sprout, Beaker, Package, Palette } from "lucide-react";

export const parapharmacieProduitChimiqueFr: MenuCategory = {
  id: "parapharmacie-produit-chimique",
  name: "Parapharmacie & Produit Chimique",
  slug: "parapharmacie-produit-chimique",
  icon: <Pill className="w-4 h-4" />,
  subcategories: [
    {
      id: "parapharmacie-generale",
      name: "Parapharmacie Générale",
      slug: "parapharmacie-generale",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "vitamines", name: "Vitamines", slug: "vitamines" },
        { id: "complements-alimentaires", name: "Compléments Alimentaires", slug: "complements-alimentaires" },
        { id: "produits-immunite", name: "Produits Immunité", slug: "produits-immunite" },
        { id: "supplements-sportifs", name: "Suppléments Sportifs", slug: "supplements-sportifs" },
        { id: "soins-essentiels", name: "Soins Essentiels", slug: "soins-essentiels" },
        { id: "boosters-energie", name: "Boosters d'Énergie", slug: "boosters-energie" },
        { id: "probiotiques", name: "Probiotiques", slug: "probiotiques" },
        { id: "mineraux", name: "Minéraux", slug: "mineraux" },
        { id: "omega-3", name: "Oméga-3", slug: "omega-3" },
        { id: "multivitamines", name: "Multivitamines", slug: "multivitamines" }
      ]
    },
    {
      id: "soins-visage",
      name: "Soins du Visage",
      slug: "soins-visage",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-hydratantes", name: "Crèmes Hydratantes", slug: "cremes-hydratantes" },
        { id: "cremes-anti-age", name: "Crèmes Anti-Âge", slug: "cremes-anti-age" },
        { id: "serums", name: "Sérums", slug: "serums" },
        { id: "soins-anti-acne", name: "Soins Anti-Acné", slug: "soins-anti-acne" },
        { id: "exfoliants", name: "Exfoliants", slug: "exfoliants" },
        { id: "masques-visage", name: "Masques Visage", slug: "masques-visage" },
        { id: "nettoyants-dermatologiques", name: "Nettoyants Dermatologiques", slug: "nettoyants-dermatologiques" },
        { id: "cremes-depigmentantes", name: "Crèmes Dépigmentantes", slug: "cremes-depigmentantes" },
        { id: "soins-anti-taches", name: "Soins Anti-Taches", slug: "soins-anti-taches" },
        { id: "soins-contour-yeux", name: "Soins Contour des Yeux", slug: "soins-contour-yeux" }
      ]
    },
    {
      id: "soins-corps",
      name: "Soins du Corps",
      slug: "soins-corps",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "laits-corporels", name: "Laits Corporels", slug: "laits-corporels" },
        { id: "huiles-essentielles", name: "Huiles Essentielles", slug: "huiles-essentielles" },
        { id: "huiles-massage", name: "Huiles de Massage", slug: "huiles-massage" },
        { id: "gommages-corporels", name: "Gommages Corporels", slug: "gommages-corporels" },
        { id: "soins-raffermissants", name: "Soins Raffermissants", slug: "soins-raffermissants" },
        { id: "soins-anti-vergetures", name: "Soins Anti-Vergetures", slug: "soins-anti-vergetures" },
        { id: "cremes-nourrissantes", name: "Crèmes Nourrissantes", slug: "cremes-nourrissantes" },
        { id: "gels-raffermissants", name: "Gels Raffermissants", slug: "gels-raffermissants" },
        { id: "soins-anticellulite", name: "Soins Anticellulite", slug: "soins-anticellulite" }
      ]
    },
    {
      id: "soins-capillaires",
      name: "Soins Capillaires",
      slug: "soins-capillaires",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "shampoings", name: "Shampoings", slug: "shampoings" },
        { id: "apres-shampoings", name: "Après-Shampoings", slug: "apres-shampoings" },
        { id: "masques-capillaires", name: "Masques Capillaires", slug: "masques-capillaires" },
        { id: "huiles-capillaires", name: "Huiles Capillaires", slug: "huiles-capillaires" },
        { id: "serums-capillaires", name: "Sérums Capillaires", slug: "serums-capillaires" },
        { id: "lotions-antichute", name: "Lotions Antichute", slug: "lotions-antichute" },
        { id: "soins-keratine", name: "Soins Kératine", slug: "soins-keratine" },
        { id: "traitements-cuir-chevelu", name: "Traitements Cuir Chevelu", slug: "traitements-cuir-chevelu" },
        { id: "shampoings-medicaux", name: "Shampoings Médicaux", slug: "shampoings-medicaux" },
        { id: "soins-antipelliculaires", name: "Soins Antipelliculaires", slug: "soins-antipelliculaires" }
      ]
    },
    {
      id: "hygiene-corporelle",
      name: "Hygiène Corporelle",
      slug: "hygiene-corporelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "savons", name: "Savons", slug: "savons" },
        { id: "gels-douche", name: "Gels Douche", slug: "gels-douche" },
        { id: "deodorants", name: "Déodorants", slug: "deodorants" },
        { id: "lingettes", name: "Lingettes", slug: "lingettes" },
        { id: "soins-intimes", name: "Soins Intimes", slug: "soins-intimes" },
        { id: "produits-antibacteriens", name: "Produits Antibactériens", slug: "produits-antibacteriens" },
        { id: "bains-bouche", name: "Bains de Bouche", slug: "bains-bouche" },
        { id: "dentifrices", name: "Dentifrices", slug: "dentifrices" },
        { id: "brosses-dents", name: "Brosses à Dents", slug: "brosses-dents" },
        { id: "gels-mains", name: "Gels pour les Mains", slug: "gels-mains" }
      ]
    },
    {
      id: "hygiene-feminine",
      name: "Hygiène Féminine",
      slug: "hygiene-feminine",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "serviettes", name: "Serviettes", slug: "serviettes" },
        { id: "tampons", name: "Tampons", slug: "tampons" },
        { id: "coupes-menstruelles", name: "Coupes Menstruelles", slug: "coupes-menstruelles" },
        { id: "gels-intimes", name: "Gels Intimes", slug: "gels-intimes" },
        { id: "traitements-gynecologiques", name: "Traitements Gynécologiques sans Ordonnance", slug: "traitements-gynecologiques" },
        { id: "protege-slips", name: "Protège-slips", slug: "protege-slips" },
        { id: "produits-post-partum", name: "Produits Post-partum", slug: "produits-post-partum" }
      ]
    },
    {
      id: "hygiene-masculine",
      name: "Hygiène Masculine",
      slug: "hygiene-masculine",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "soins-barbe", name: "Soins Barbe", slug: "soins-barbe" },
        { id: "mousses-raser", name: "Mousses à Raser", slug: "mousses-raser" },
        { id: "gels-rasage", name: "Gels de Rasage", slug: "gels-rasage" },
        { id: "lotions-apres-rasage", name: "Lotions Après-rasage", slug: "lotions-apres-rasage" },
        { id: "soins-visage-homme", name: "Soins Visage Homme", slug: "soins-visage-homme" },
        { id: "baumes-barbe", name: "Baumes pour Barbe", slug: "baumes-barbe" },
        { id: "huiles-barbe", name: "Huiles pour Barbe", slug: "huiles-barbe" }
      ]
    },
    {
      id: "produits-bebe",
      name: "Produits pour Bébé",
      slug: "produits-bebe",
      icon: <Baby className="w-4 h-4" />,
      subcategories: [
        { id: "laits-infantiles", name: "Laits Infantiles", slug: "laits-infantiles" },
        { id: "soins-corps-bebe", name: "Soins Corps Bébé", slug: "soins-corps-bebe" },
        { id: "lingettes-bebe", name: "Lingettes", slug: "lingettes-bebe" },
        { id: "gels-lavants-bebe", name: "Gels Lavants", slug: "gels-lavants-bebe" },
        { id: "cremes-protectrices-bebe", name: "Crèmes Protectrices", slug: "cremes-protectrices-bebe" },
        { id: "accessoires-hygiene-bebe", name: "Accessoires d'Hygiène", slug: "accessoires-hygiene-bebe" },
        { id: "huiles-bebe", name: "Huiles", slug: "huiles-bebe" },
        { id: "poudres-bebe", name: "Poudres Bébés", slug: "poudres-bebe" },
        { id: "soins-erytheme-fessier", name: "Soins Érythème Fessier", slug: "soins-erytheme-fessier" }
      ]
    },
    {
      id: "premiers-secours",
      name: "Premiers Secours",
      slug: "premiers-secours",
      icon: <HeartPulse className="w-4 h-4" />,
      subcategories: [
        { id: "pansements", name: "Pansements", slug: "pansements" },
        { id: "compresses", name: "Compresses", slug: "compresses" },
        { id: "bandes", name: "Bandes", slug: "bandes" },
        { id: "antiseptiques", name: "Antiseptiques", slug: "antiseptiques" },
        { id: "solutions-iodees", name: "Solutions Iodées", slug: "solutions-iodees" },
        { id: "desinfectants", name: "Désinfectants", slug: "desinfectants" },
        { id: "trousses-secours", name: "Trousses de Secours", slug: "trousses-secours" },
        { id: "sutures-adhesives", name: "Sutures Adhésives", slug: "sutures-adhesives" },
        { id: "sprays-cicatrisants", name: "Sprays Cicatrisants", slug: "sprays-cicatrisants" }
      ]
    },
    {
      id: "materiel-medical-leger",
      name: "Matériel Médical Léger",
      slug: "materiel-medical-leger",
      icon: <Microscope className="w-4 h-4" />,
      subcategories: [
        { id: "tensiometres", name: "Tensiomètres", slug: "tensiometres" },
        { id: "thermometres", name: "Thermomètres", slug: "thermometres" },
        { id: "oxymetres", name: "Oxymètres", slug: "oxymetres" },
        { id: "glucometres", name: "Glucomètres", slug: "glucometres" },
        { id: "nebuliseurs", name: "Nébuliseurs", slug: "nebuliseurs" },
        { id: "tests-rapides", name: "Tests Rapides (glycémie, grossesse…)", slug: "tests-rapides" },
        { id: "aerosols", name: "Aérosols", slug: "aerosols" },
        { id: "pulverisateurs-medicaux", name: "Pulvérisateurs Médicaux", slug: "pulverisateurs-medicaux" }
      ]
    },
    {
      id: "produits-solaires",
      name: "Produits Solaires",
      slug: "produits-solaires",
      icon: <Sun className="w-4 h-4" />,
      subcategories: [
        { id: "cremes-spf", name: "Crèmes SPF", slug: "cremes-spf" },
        { id: "sprays-solaires", name: "Sprays Solaires", slug: "sprays-solaires" },
        { id: "cremes-teintees", name: "Crèmes Teintées", slug: "cremes-teintees" },
        { id: "protections-enfants", name: "Protections Enfants", slug: "protections-enfants" },
        { id: "soins-apres-soleil", name: "Soins Après-soleil", slug: "soins-apres-soleil" },
        { id: "huiles-solaires", name: "Huiles Solaires", slug: "huiles-solaires" },
        { id: "sticks-spf", name: "Sticks SPF", slug: "sticks-spf" }
      ]
    },
    {
      id: "phytotherapie",
      name: "Phytothérapie",
      slug: "phytotherapie",
      icon: <Leaf className="w-4 h-4" />,
      subcategories: [
        { id: "extraits-naturels", name: "Extraits Naturels", slug: "extraits-naturels" },
        { id: "plantes-medicinales", name: "Plantes Médicinales", slug: "plantes-medicinales" },
        { id: "tisanes-therapeutiques", name: "Tisanes Thérapeutiques", slug: "tisanes-therapeutiques" },
        { id: "gelules-naturelles", name: "Gélules Naturelles", slug: "gelules-naturelles" },
        { id: "poudres-plantes", name: "Poudres de Plantes", slug: "poudres-plantes" },
        { id: "macerats", name: "Macérats", slug: "macerats" }
      ]
    },
    {
      id: "aromatherapie",
      name: "Aromathérapie",
      slug: "aromatherapie",
      icon: <TestTube className="w-4 h-4" />,
      subcategories: [
        { id: "diffuseurs", name: "Diffuseurs", slug: "diffuseurs" },
        { id: "huiles-essentielles-pures", name: "Huiles Essentielles Pures", slug: "huiles-essentielles-pures" },
        { id: "melanges-therapeutiques", name: "Mélanges Thérapeutiques", slug: "melanges-therapeutiques" },
        { id: "brumes-aromatiques", name: "Brumes Aromatiques", slug: "brumes-aromatiques" },
        { id: "synergies-huiles", name: "Synergies d'Huiles", slug: "synergies-huiles" },
        { id: "roll-on-bien-etre", name: "Roll-on Bien-être", slug: "roll-on-bien-etre" }
      ]
    },
    {
      id: "produits-dietetiques",
      name: "Produits Diététiques",
      slug: "produits-dietetiques",
      icon: <Heart className="w-4 h-4" />,
      subcategories: [
        { id: "proteines", name: "Protéines", slug: "proteines" },
        { id: "gainers", name: "Gainers", slug: "gainers" },
        { id: "bruleurs-graisse", name: "Brûleurs de Graisse", slug: "bruleurs-graisse" },
        { id: "substituts-repas", name: "Substituts de Repas", slug: "substituts-repas" },
        { id: "produits-detox", name: "Produits Détox", slug: "produits-detox" },
        { id: "boissons-energetiques", name: "Boissons Énergétiques", slug: "boissons-energetiques" },
        { id: "fibres-nutritionnelles", name: "Fibres Nutritionnelles", slug: "fibres-nutritionnelles" },
        { id: "super-aliments", name: "Super-aliments", slug: "super-aliments" }
      ]
    },
    {
      id: "desinfection-antiseptiques",
      name: "Désinfection & Antiseptiques",
      slug: "desinfection-antiseptiques",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "gels-hydroalcooliques", name: "Gels Hydroalcooliques", slug: "gels-hydroalcooliques" },
        { id: "sprays-desinfectants", name: "Sprays Désinfectants", slug: "sprays-desinfectants" },
        { id: "lingettes-virucides", name: "Lingettes Virucides", slug: "lingettes-virucides" },
        { id: "solutions-antiseptiques-pro", name: "Solutions Antiseptiques Pro", slug: "solutions-antiseptiques-pro" },
        { id: "desinfectants-surfaces", name: "Désinfectants pour Surfaces", slug: "desinfectants-surfaces" }
      ]
    },
    {
      id: "produits-menagers-chimiques",
      name: "Produits Ménagers Chimiques",
      slug: "produits-menagers-chimiques",
      icon: <PaintBucket className="w-4 h-4" />,
      subcategories: [
        { id: "detergents-multi-usages", name: "Détergents Multi-usages", slug: "detergents-multi-usages" },
        { id: "degraissants", name: "Dégraissants", slug: "degraissants" },
        { id: "desodorisants", name: "Désodorisants", slug: "desodorisants" },
        { id: "nettoyants-sanitaires", name: "Nettoyants Sanitaires", slug: "nettoyants-sanitaires" },
        { id: "nettoyants-vitres", name: "Nettoyants Vitres", slug: "nettoyants-vitres" },
        { id: "anticalcaire", name: "Anticalcaire", slug: "anticalcaire" }
      ]
    },
    {
      id: "produits-entretien-industriels",
      name: "Produits d'Entretien Industriels",
      slug: "produits-entretien-industriels",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "decapants", name: "Décapants", slug: "decapants" },
        { id: "solvants-professionnels", name: "Solvants Professionnels", slug: "solvants-professionnels" },
        { id: "agents-degraissants-puissants", name: "Agents Dégraissants Puissants", slug: "agents-degraissants-puissants" },
        { id: "nettoyants-machines", name: "Nettoyants pour Machines", slug: "nettoyants-machines" },
        { id: "detartrants-industriels", name: "Détartrants Industriels", slug: "detartrants-industriels" }
      ]
    },
    {
      id: "peintures-solvants",
      name: "Peintures & Solvants",
      slug: "peintures-solvants",
      icon: <Palette className="w-4 h-4" />,
      subcategories: [
        { id: "peintures-chimiques", name: "Peintures Chimiques", slug: "peintures-chimiques" },
        { id: "resines", name: "Résines", slug: "resines" },
        { id: "diluants", name: "Diluants", slug: "diluants" },
        { id: "acetone", name: "Acétone", slug: "acetone" },
        { id: "white-spirit", name: "White-spirit", slug: "white-spirit" },
        { id: "vernis-techniques", name: "Vernis Techniques", slug: "vernis-techniques" },
        { id: "durcisseurs", name: "Durcisseurs", slug: "durcisseurs" },
        { id: "solvants-specialises", name: "Solvants Spécialisés", slug: "solvants-specialises" }
      ]
    },
    {
      id: "produits-piscine",
      name: "Produits pour Piscine",
      slug: "produits-piscine",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "chlore", name: "Chlore", slug: "chlore" },
        { id: "ph-plus", name: "pH+", slug: "ph-plus" },
        { id: "ph-moins", name: "pH-", slug: "ph-moins" },
        { id: "floculants", name: "Floculants", slug: "floculants" },
        { id: "algicides", name: "Algicides", slug: "algicides" },
        { id: "stabilisateurs", name: "Stabilisateurs", slug: "stabilisateurs" },
        { id: "kits-analyse-eau", name: "Kits Analyse Eau", slug: "kits-analyse-eau" },
        { id: "clarifiants", name: "Clarifiants", slug: "clarifiants" },
        { id: "produits-hivernage", name: "Produits Hivernage", slug: "produits-hivernage" }
      ]
    },
    {
      id: "produits-agricoles-chimiques",
      name: "Produits Agricoles Chimiques",
      slug: "produits-agricoles-chimiques",
      icon: <Sprout className="w-4 h-4" />,
      subcategories: [
        { id: "engrais-npk", name: "Engrais NPK", slug: "engrais-npk" },
        { id: "pesticides", name: "Pesticides", slug: "pesticides" },
        { id: "herbicides", name: "Herbicides", slug: "herbicides" },
        { id: "fongicides", name: "Fongicides", slug: "fongicides" },
        { id: "stimulateurs-croissance", name: "Stimulateurs de Croissance", slug: "stimulateurs-croissance" },
        { id: "regulateurs", name: "Régulateurs", slug: "regulateurs" },
        { id: "adjuvants-agricoles", name: "Adjuvants Agricoles", slug: "adjuvants-agricoles" }
      ]
    },
    {
      id: "produits-laboratoires",
      name: "Produits pour Laboratoires",
      slug: "produits-laboratoires",
      icon: <Beaker className="w-4 h-4" />,
      subcategories: [
        { id: "reactifs-chimiques", name: "Réactifs Chimiques", slug: "reactifs-chimiques" },
        { id: "solutions-tampons", name: "Solutions Tampons", slug: "solutions-tampons" },
        { id: "alcools", name: "Alcools", slug: "alcools" },
        { id: "gels-specifiques", name: "Gels Spécifiques", slug: "gels-specifiques" },
        { id: "kits-analyse", name: "Kits d'Analyse", slug: "kits-analyse" },
        { id: "acides", name: "Acides", slug: "acides" },
        { id: "bases", name: "Bases", slug: "bases" },
        { id: "solvants-laboratoire", name: "Solvants de Laboratoire", slug: "solvants-laboratoire" }
      ]
    },
    {
      id: "equipements-securite-chimique",
      name: "Équipements de Sécurité Chimique",
      slug: "equipements-securite-chimique",
      icon: <Shield className="w-4 h-4" />,
      subcategories: [
        { id: "gants-nitrile", name: "Gants Nitrile", slug: "gants-nitrile" },
        { id: "lunettes-protection", name: "Lunettes", slug: "lunettes-protection" },
        { id: "masques-respiratoires", name: "Masques Respiratoires", slug: "masques-respiratoires" },
        { id: "combinaisons-anti-chimiques", name: "Combinaisons Anti-chimiques", slug: "combinaisons-anti-chimiques" },
        { id: "protections-faciales", name: "Protections Faciales", slug: "protections-faciales" },
        { id: "chaussures-anti-produits-corrosifs", name: "Chaussures Anti-produits Corrosifs", slug: "chaussures-anti-produits-corrosifs" }
      ]
    },
    {
      id: "emballages-chimiques",
      name: "Emballages Chimiques",
      slug: "emballages-chimiques",
      icon: <Package className="w-4 h-4" />,
      subcategories: [
        { id: "bidons", name: "Bidons", slug: "bidons" },
        { id: "flacons-resistants", name: "Flacons Résistants", slug: "flacons-resistants" },
        { id: "bouteilles-securisees", name: "Bouteilles Sécurisées", slug: "bouteilles-securisees" },
        { id: "contenants-anti-corrosifs", name: "Contenants Anti-corrosifs", slug: "contenants-anti-corrosifs" },
        { id: "cuves", name: "Cuves", slug: "cuves" },
        { id: "petits-contenants-dosage", name: "Petits Contenants Dosage", slug: "petits-contenants-dosage" }
      ]
    },
    {
      id: "hygiene-professionnelle",
      name: "Hygiène Professionnelle",
      slug: "hygiene-professionnelle",
      icon: <Droplets className="w-4 h-4" />,
      subcategories: [
        { id: "savons-industriels", name: "Savons Industriels", slug: "savons-industriels" },
        { id: "desinfectants-pro", name: "Désinfectants Pro", slug: "desinfectants-pro" },
        { id: "nettoyants-sols-hopitaux", name: "Nettoyants Sols Hôpitaux", slug: "nettoyants-sols-hopitaux" },
        { id: "produits-haccp", name: "Produits HACCP", slug: "produits-haccp" },
        { id: "detergents-alimentaires", name: "Détergents Alimentaires", slug: "detergents-alimentaires" }
      ]
    },
    {
      id: "cosmetiques-specialises",
      name: "Cosmétiques Spécialisés",
      slug: "cosmetiques-specialises",
      icon: <Sparkles className="w-4 h-4" />,
      subcategories: [
        { id: "soins-hypoallergeniques", name: "Soins Hypoallergéniques", slug: "soins-hypoallergeniques" },
        { id: "cremes-medicales", name: "Crèmes Médicales", slug: "cremes-medicales" },
        { id: "soins-dermatologiques-specialises", name: "Soins Dermatologiques Spécialisés", slug: "soins-dermatologiques-specialises" },
        { id: "cremes-cicatrisantes", name: "Crèmes Cicatrisantes", slug: "cremes-cicatrisantes" },
        { id: "protections-cutanees-medicales", name: "Protections Cutanées Médicales", slug: "protections-cutanees-medicales" }
      ]
    }
  ]
};