import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { HeartPulse, Sparkles, Droplets, Sun, Leaf, Shield, Pill, Microscope, Beaker, Package, Palette, Sprout, Heart } from "lucide-react";

export const santeBeauteEn: MenuCategory = {
  id: "sante-beaute",
  name: "Health & Beauty",
  slug: "sante-beaute",
  icon: <HeartPulse className="w-4 h-4" />,
  subcategories: [
    { id: "soins-visage", name: "Face Care", slug: "soins-visage", icon: <Sparkles className="w-4 h-4" />, subcategories: [
      { id: "cremes-hydratantes", name: "Moisturizing Creams", slug: "cremes-hydratantes" },
      { id: "cremes-anti-age", name: "Anti-Aging Creams", slug: "cremes-anti-age" },
      { id: "serums", name: "Serums", slug: "serums" },
      { id: "soins-anti-acne", name: "Anti-Acne Care", slug: "soins-anti-acne" },
      { id: "masques", name: "Masks", slug: "masques" },
      { id: "exfoliants", name: "Exfoliants", slug: "exfoliants" },
      { id: "nettoyants-visage", name: "Facial Cleansers", slug: "nettoyants-visage" },
      { id: "toniques", name: "Toners", slug: "toniques" },
      { id: "soins-anti-taches", name: "Anti-Spot Care", slug: "soins-anti-taches" },
      { id: "cremes-contour-yeux", name: "Eye Contour Creams", slug: "cremes-contour-yeux" },
      { id: "patchs-yeux", name: "Eye Patches", slug: "patchs-yeux" }
    ]},
    { id: "soins-corps", name: "Body Care", slug: "soins-corps", icon: <Droplets className="w-4 h-4" />, subcategories: [
      { id: "laits-corporels", name: "Body Lotions", slug: "laits-corporels" },
      { id: "cremes-nourrissantes", name: "Nourishing Creams", slug: "cremes-nourrissantes" },
      { id: "gommages-corps", name: "Body Scrubs", slug: "gommages-corps" },
      { id: "huiles-corporelles", name: "Body Oils", slug: "huiles-corporelles" },
      { id: "gels-minceur", name: "Slimming Gels", slug: "gels-minceur" },
      { id: "soins-anti-vergetures", name: "Anti-Stretch Mark Care", slug: "soins-anti-vergetures" },
      { id: "soins-raffermissants", name: "Firming Care", slug: "soins-raffermissants" },
      { id: "lotions-parfumees", name: "Perfumed Body Lotions", slug: "lotions-parfumees" }
    ]},
    { id: "hygiene-corporelle", name: "Body Hygiene", slug: "hygiene-corporelle", icon: <Droplets className="w-4 h-4" />, subcategories: [
      { id: "gels-douche", name: "Shower Gels", slug: "gels-douche" },
      { id: "savons-solides", name: "Bar Soaps", slug: "savons-solides" },
      { id: "savons-liquides", name: "Liquid Soaps", slug: "savons-liquides" },
      { id: "deodorants", name: "Deodorants", slug: "deodorants" },
      { id: "lingettes", name: "Wipes", slug: "lingettes" },
      { id: "soins-intimes", name: "Intimate Care", slug: "soins-intimes" },
      { id: "bains-moussants", name: "Bubble Baths", slug: "bains-moussants" },
      { id: "sels-de-bain", name: "Bath Salts", slug: "sels-de-bain" },
      { id: "huiles-de-bain", name: "Bath Oils", slug: "huiles-de-bain" }
    ]},
    { id: "soins-capillaires", name: "Hair Care", slug: "soins-capillaires", icon: <Leaf className="w-4 h-4" />, subcategories: [
      { id: "shampoings", name: "Shampoos", slug: "shampoings" },
      { id: "apres-shampoings", name: "Conditioners", slug: "apres-shampoings" },
      { id: "masques-capillaires", name: "Hair Masks", slug: "masques-capillaires" },
      { id: "serums-capillaires", name: "Hair Serums", slug: "serums-capillaires" },
      { id: "soins-keratine", name: "Keratin Care", slug: "soins-keratine" },
      { id: "huiles-capillaires", name: "Hair Oils", slug: "huiles-capillaires" },
      { id: "soins-antichute", name: "Anti-Hair Loss", slug: "soins-antichute" },
      { id: "shampoings-medicaux", name: "Medical Shampoos", slug: "shampoings-medicaux" },
      { id: "produits-coiffants", name: "Styling Products", slug: "produits-coiffants" }
    ]},
    { id: "coiffure-styling", name: "Hair Styling", slug: "coiffure-styling", icon: <Palette className="w-4 h-4" />, subcategories: [
      { id: "fers-a-lisser", name: "Hair Straighteners", slug: "fers-a-lisser" },
      { id: "seche-cheveux", name: "Hair Dryers", slug: "seche-cheveux" },
      { id: "tondeuses", name: "Trimmers", slug: "tondeuses" },
      { id: "brosses-chauffantes", name: "Heated Brushes", slug: "brosses-chauffantes" },
      { id: "bigoudis", name: "Curlers", slug: "bigoudis" },
      { id: "peignes", name: "Combs", slug: "peignes" },
      { id: "brosses-professionnelles", name: "Professional Brushes", slug: "brosses-professionnelles" },
      { id: "sprays-coiffants", name: "Styling Sprays", slug: "sprays-coiffants" },
      { id: "mousses-volume", name: "Volume Mousses", slug: "mousses-volume" },
      { id: "gels", name: "Gels", slug: "gels" }
    ]},
    { id: "parfums-fragrances", name: "Perfumes & Fragrances", slug: "parfums-fragrances", icon: <Sun className="w-4 h-4" />, subcategories: [
      { id: "parfums-homme", name: "Men's Perfumes", slug: "parfums-homme" },
      { id: "parfums-femme", name: "Women's Perfumes", slug: "parfums-femme" },
      { id: "eaux-de-toilette", name: "Eaux de Toilette", slug: "eaux-de-toilette" },
      { id: "eaux-de-parfum", name: "Eaux de Parfum", slug: "eaux-de-parfum" },
      { id: "brumes-corporelles", name: "Body Mists", slug: "brumes-corporelles" },
      { id: "parfums-orientaux", name: "Oriental Perfumes", slug: "parfums-orientaux" },
      { id: "parfums-de-luxe", name: "Luxury Perfumes", slug: "parfums-de-luxe" },
      { id: "coffrets-parfum", name: "Perfume Gift Sets", slug: "coffrets-parfum" }
    ]},
    { id: "maquillage", name: "Makeup", slug: "maquillage", icon: <Palette className="w-4 h-4" />, subcategories: [
      { id: "fonds-de-teint", name: "Foundations", slug: "fonds-de-teint" },
      { id: "poudres", name: "Powders", slug: "poudres" },
      { id: "anticernes", name: "Concealers", slug: "anticernes" },
      { id: "blush", name: "Blush", slug: "blush" },
      { id: "highlighters", name: "Highlighters", slug: "highlighters" },
      { id: "palettes-yeux", name: "Eyeshadow Palettes", slug: "palettes-yeux" },
      { id: "mascaras", name: "Mascaras", slug: "mascaras" },
      { id: "eyeliners", name: "Eyeliners", slug: "eyeliners" },
      { id: "crayons-levres", name: "Lip Liners", slug: "crayons-levres" },
      { id: "rouges-a-levres", name: "Lipsticks", slug: "rouges-a-levres" },
      { id: "gloss", name: "Gloss", slug: "gloss" },
      { id: "fixateurs-makeup", name: "Makeup Fixers", slug: "fixateurs-makeup" }
    ]},
    { id: "accessoires-beaute", name: "Beauty Accessories", slug: "accessoires-beaute", icon: <Package className="w-4 h-4" />, subcategories: [
      { id: "pinceaux-maquillage", name: "Makeup Brushes", slug: "pinceaux-maquillage" },
      { id: "beauty-blenders", name: "Beauty Blenders", slug: "beauty-blenders" },
      { id: "miroirs", name: "Mirrors", slug: "miroirs" },
      { id: "trousses-beaute", name: "Beauty Bags", slug: "trousses-beaute" },
      { id: "eponges-de-bain", name: "Bath Sponges", slug: "eponges-de-bain" },
      { id: "gants-exfoliants", name: "Exfoliating Gloves", slug: "gants-exfoliants" },
      { id: "limes", name: "Nail Files", slug: "limes" },
      { id: "coupe-ongles", name: "Nail Clippers", slug: "coupe-ongles" },
      { id: "pinces-a-epiler", name: "Tweezers", slug: "pinces-a-epiler" }
    ]},
    { id: "manucure-pedicure", name: "Manicure & Pedicure", slug: "manucure-pedicure", icon: <Sparkles className="w-4 h-4" />, subcategories: [
      { id: "vernis", name: "Nail Polish", slug: "vernis" },
      { id: "vernis-semi-permanent", name: "Semi-Permanent Polish", slug: "vernis-semi-permanent" },
      { id: "gels-uv", name: "UV Gels", slug: "gels-uv" },
      { id: "lampes-uv", name: "UV Lamps", slug: "lampes-uv" },
      { id: "kits-manucure", name: "Manicure Kits", slug: "kits-manucure" },
      { id: "dissolvants", name: "Removers", slug: "dissolvants" },
      { id: "soins-des-ongles", name: "Nail Care", slug: "soins-des-ongles" },
      { id: "faux-ongles", name: "Fake Nails", slug: "faux-ongles" },
      { id: "colle-pour-nails", name: "Nail Glue", slug: "colle-pour-nails" },
      { id: "outils-pro", name: "Pro Tools", slug: "outils-pro" }
    ]},
    { id: "produits-solaires", name: "Sun Care", slug: "produits-solaires", icon: <Sun className="w-4 h-4" />, subcategories: [
      { id: "cremes-spf", name: "SPF Creams", slug: "cremes-spf" },
      { id: "sprays-solaires", name: "Sprays", slug: "sprays-solaires" },
      { id: "huiles-solaires", name: "Sun Oils", slug: "huiles-solaires" },
      { id: "protections-enfants", name: "Kids Protection", slug: "protections-enfants" },
      { id: "sticks-solaires", name: "Sun Sticks", slug: "sticks-solaires" },
      { id: "apres-soleil", name: "After Sun", slug: "apres-soleil" },
      { id: "cremes-teintees-spf", name: "Tinted SPF Creams", slug: "cremes-teintees-spf" }
    ]},
    { id: "beaute-naturelle-bio", name: "Natural & Organic Beauty", slug: "beaute-naturelle-bio", icon: <Leaf className="w-4 h-4" />, subcategories: [
      { id: "huiles-naturelles", name: "Natural Oils", slug: "huiles-naturelles" },
      { id: "beurres-vegetaux", name: "Plant Butters", slug: "beurres-vegetaux" },
      { id: "eau-florale", name: "Floral Water", slug: "eau-florale" },
      { id: "hydrolats", name: "Hydrosols", slug: "hydrolats" },
      { id: "savons-artisanaux", name: "Artisanal Soaps", slug: "savons-artisanaux" },
      { id: "cosmetiques-bio", name: "Organic Cosmetics", slug: "cosmetiques-bio" },
      { id: "soins-solides", name: "Solid Care", slug: "soins-solides" },
      { id: "produits-vegan", name: "Vegan Products", slug: "produits-vegan" }
    ]},
    { id: "aromatherapie", name: "Aromatherapy", slug: "aromatherapie", icon: <Leaf className="w-4 h-4" />, subcategories: [
      { id: "huiles-essentielles", name: "Essential Oils", slug: "huiles-essentielles" },
      { id: "diffuseurs", name: "Diffusers", slug: "diffuseurs" },
      { id: "synergies-bien-etre", name: "Well-being Blends", slug: "synergies-bien-etre" },
      { id: "roll-on-relaxants", name: "Relaxing Roll-ons", slug: "roll-on-relaxants" },
      { id: "brumes-parfumees", name: "Perfumed Mists", slug: "brumes-parfumees" },
      { id: "huiles-massage-relaxantes", name: "Relaxing Massage Oils", slug: "huiles-massage-relaxantes" }
    ]},
    { id: "phytotherapie", name: "Phytotherapy", slug: "phytotherapie", icon: <Sprout className="w-4 h-4" />, subcategories: [
      { id: "plantes-medicinales", name: "Medicinal Plants", slug: "plantes-medicinales" },
      { id: "extraits-naturels", name: "Natural Extracts", slug: "extraits-naturels" },
      { id: "tisanes-sante", name: "Health Teas", slug: "tisanes-sante" },
      { id: "complements-naturels", name: "Natural Supplements", slug: "complements-naturels" },
      { id: "poudres-de-plantes", name: "Plant Powders", slug: "poudres-de-plantes" },
      { id: "gelules-phytotherapie", name: "Phytotherapy Capsules", slug: "gelules-phytotherapie" }
    ]},
    { id: "sante-generale", name: "General Health", slug: "sante-generale", icon: <Pill className="w-4 h-4" />, subcategories: [
      { id: "vitamines", name: "Vitamins", slug: "vitamines" },
      { id: "complements-alimentaires", name: "Food Supplements", slug: "complements-alimentaires" },
      { id: "mineraux", name: "Minerals", slug: "mineraux" },
      { id: "probiotiques", name: "Probiotics", slug: "probiotiques" },
      { id: "produits-immunite", name: "Immunity Products", slug: "produits-immunite" },
      { id: "antioxydants", name: "Antioxidants", slug: "antioxydants" },
      { id: "omega-3", name: "Omega-3", slug: "omega-3" },
      { id: "produits-detox", name: "Detox Products", slug: "produits-detox" },
      { id: "supplements-sportifs", name: "Sports Supplements", slug: "supplements-sportifs" }
    ]},
    { id: "medicaments-sans-ordonnance", name: "OTC Medicines", slug: "medicaments-sans-ordonnance", icon: <Shield className="w-4 h-4" />, subcategories: [
      { id: "antalgiques", name: "Painkillers", slug: "antalgiques" },
      { id: "produits-orl", name: "ENT Products", slug: "produits-orl" },
      { id: "digestifs", name: "Digestives", slug: "digestifs" },
      { id: "anti-acides", name: "Antacids", slug: "anti-acides" },
      { id: "sirops", name: "Syrups", slug: "sirops" },
      { id: "pastilles", name: "Lozenges", slug: "pastilles" },
      { id: "antihistaminiques", name: "Antihistamines", slug: "antihistaminiques" },
      { id: "rhume", name: "Cold Relief", slug: "rhume" }
    ]},
    { id: "premiers-secours", name: "First Aid", slug: "premiers-secours", icon: <Shield className="w-4 h-4" />, subcategories: [
      { id: "pansements", name: "Bandages", slug: "pansements" },
      { id: "bandes", name: "Wraps", slug: "bandes" },
      { id: "compresses", name: "Compresses", slug: "compresses" },
      { id: "antiseptiques", name: "Antiseptics", slug: "antiseptiques" },
      { id: "solutions-iodées", name: "Iodine Solutions", slug: "solutions-iodees" },
      { id: "sprays-cicatrisants", name: "Healing Sprays", slug: "sprays-cicatrisants" },
      { id: "trousses-premiers-secours", name: "First Aid Kits", slug: "trousses-premiers-secours" }
    ]},
    { id: "materiel-medical-leger", name: "Light Medical Equipment", slug: "materiel-medical-leger", icon: <Microscope className="w-4 h-4" />, subcategories: [
      { id: "tensiometres", name: "Blood Pressure Monitors", slug: "tensiometres" },
      { id: "thermometres", name: "Thermometers", slug: "thermometres" },
      { id: "glucometres", name: "Glucometers", slug: "glucometres" },
      { id: "oxymetres", name: "Oximeters", slug: "oxymetres" },
      { id: "nebuliseurs", name: "Nebulizers", slug: "nebuliseurs" },
      { id: "tests-rapides", name: "Rapid Tests", slug: "tests-rapides" },
      { id: "coussins-chauffants", name: "Heating Pads", slug: "coussins-chauffants" },
      { id: "ceintures-lombaires", name: "Lumbar Belts", slug: "ceintures-lombaires" }
    ]},
    { id: "hygiene-bucco-dentaire", name: "Oral Hygiene", slug: "hygiene-bucco-dentaire", icon: <Droplets className="w-4 h-4" />, subcategories: [
      { id: "dentifrices", name: "Toothpastes", slug: "dentifrices" },
      { id: "bains-de-bouche", name: "Mouthwashes", slug: "bains-de-bouche" },
      { id: "brosses-a-dents", name: "Toothbrushes", slug: "brosses-a-dents" },
      { id: "fils-dentaires", name: "Dental Floss", slug: "fils-dentaires" },
      { id: "blanchiment-dentaire", name: "Teeth Whitening", slug: "blanchiment-dentaire" },
      { id: "kits-orthodontiques", name: "Orthodontic Kits", slug: "kits-orthodontiques" }
    ]},
    { id: "hygiene-feminine", name: "Feminine Hygiene", slug: "hygiene-feminine", icon: <Heart className="w-4 h-4" />, subcategories: [
      { id: "serviettes", name: "Pads", slug: "serviettes" },
      { id: "tampons", name: "Tampons", slug: "tampons" },
      { id: "coupes-menstruelles", name: "Menstrual Cups", slug: "coupes-menstruelles" },
      { id: "gels-intimes", name: "Intimate Gels", slug: "gels-intimes" },
      { id: "soins-post-partum", name: "Postpartum Care", slug: "soins-post-partum" },
      { id: "protections-urinaires", name: "Urinary Protection", slug: "protections-urinaires" }
    ]},
    { id: "hygiene-masculine", name: "Men's Hygiene", slug: "hygiene-masculine", icon: <Heart className="w-4 h-4" />, subcategories: [
      { id: "soins-barbe", name: "Beard Care", slug: "soins-barbe" },
      { id: "mousses-a-raser", name: "Shaving Foams", slug: "mousses-a-raser" },
      { id: "gels-de-rasage", name: "Shaving Gels", slug: "gels-de-rasage" },
      { id: "huiles-barbe", name: "Beard Oils", slug: "huiles-barbe" },
      { id: "lotions-apres-rasage", name: "Aftershave Lotions", slug: "lotions-apres-rasage" },
      { id: "soins-visage-homme", name: "Men's Face Care", slug: "soins-visage-homme" }
    ]},
    { id: "materiel-esthetique-pro", name: "Professional Aesthetic Equipment", slug: "materiel-esthetique-pro", icon: <Beaker className="w-4 h-4" />, subcategories: [
      { id: "appareils-led", name: "LED Devices", slug: "appareils-led" },
      { id: "appareils-massage-visage", name: "Face Massage Devices", slug: "appareils-massage-visage" },
      { id: "microdermabrasion", name: "Microdermabrasion", slug: "microdermabrasion" },
      { id: "epilateurs-pro", name: "Pro Epilators", slug: "epilateurs-pro" },
      { id: "lits-esthetique", name: "Aesthetic Beds", slug: "lits-esthetique" },
      { id: "tabourets", name: "Stools", slug: "tabourets" },
      { id: "sterilisateurs-uv", name: "UV Sterilizers", slug: "sterilisateurs-uv" }
    ]},
    { id: "epilation", name: "Hair Removal", slug: "epilation", icon: <Sparkles className="w-4 h-4" />, subcategories: [
      { id: "cire-chaude", name: "Hot Wax", slug: "cire-chaude" },
      { id: "cire-froide", name: "Cold Wax", slug: "cire-froide" },
      { id: "bandes", name: "Strips", slug: "bandes" },
      { id: "epilateurs-electriques", name: "Electric Epilators", slug: "epilateurs-electriques" },
      { id: "cremes-depilatoires", name: "Depilatory Creams", slug: "cremes-depilatoires" },
      { id: "kits-de-cire", name: "Wax Kits", slug: "kits-de-cire" }
    ]},
    { id: "massage-bien-etre", name: "Massage & Wellness", slug: "massage-bien-etre", icon: <HeartPulse className="w-4 h-4" />, subcategories: [
      { id: "huiles-massage", name: "Oils", slug: "huiles-massage" },
      { id: "cremes-chauffantes", name: "Heating Creams", slug: "cremes-chauffantes" },
      { id: "balles-massage", name: "Massage Balls", slug: "balles-massage" },
      { id: "appareils-anti-douleur", name: "Pain Relief Devices", slug: "appareils-anti-douleur" },
      { id: "masseurs-electriques", name: "Electric Massagers", slug: "masseurs-electriques" }
    ]},
    { id: "beaute-du-regard", name: "Eye Beauty", slug: "beaute-du-regard", icon: <Sparkles className="w-4 h-4" />, subcategories: [
      { id: "extensions-de-cils", name: "Eyelash Extensions", slug: "extensions-de-cils" },
      { id: "colles-pour-cils", name: "Eyelash Glues", slug: "colles-pour-cils" },
      { id: "serums-cils", name: "Eyelash Serums", slug: "serums-cils" },
      { id: "faux-cils", name: "False Lashes", slug: "faux-cils" },
      { id: "kits-professionnels", name: "Professional Kits", slug: "kits-professionnels" }
    ]},
    { id: "produits-spa-domicile", name: "Home Spa Products", slug: "produits-spa-domicile", icon: <Droplets className="w-4 h-4" />, subcategories: [
      { id: "diffuseurs-huiles", name: "Oil Diffusers", slug: "diffuseurs-huiles" },
      { id: "bougies-parfumees", name: "Scented Candles", slug: "bougies-parfumees" },
      { id: "sels-de-bain-spa", name: "Bath Salts", slug: "sels-de-bain-spa" },
      { id: "gommages-spa", name: "Spa Scrubs", slug: "gommages-spa" },
      { id: "soins-relaxants", name: "Relaxing Care", slug: "soins-relaxants" }
    ]},
    { id: "dermatologie-specialisee", name: "Specialized Dermatological Products", slug: "dermatologie-specialisee", icon: <Shield className="w-4 h-4" />, subcategories: [
      { id: "cremes-medicales", name: "Medical Creams", slug: "cremes-medicales" },
      { id: "peaux-sensibles", name: "Sensitive Skin Care", slug: "peaux-sensibles" },
      { id: "produits-hypoallergenique", name: "Hypoallergenic Products", slug: "produits-hypoallergenique" },
      { id: "traitements-non-prescrits", name: "Non-prescribed Treatments", slug: "traitements-non-prescrits" }
    ]},
    { id: "nutrition-beaute", name: "Beauty Nutrition", slug: "nutrition-beaute", icon: <Pill className="w-4 h-4" />, subcategories: [
      { id: "collagene", name: "Collagen", slug: "collagene" },
      { id: "acide-hyaluronique", name: "Hyaluronic Acid", slug: "acide-hyaluronique" },
      { id: "complements-peau-ongles-cheveux", name: "Skin/Nails/Hair Supplements", slug: "complements-peau-ongles-cheveux" },
      { id: "gummies-beaute", name: "Beauty Gummies", slug: "gummies-beaute" }
    ]},
    { id: "accessoires-salle-de-bain", name: "Bathroom Accessories", slug: "accessoires-salle-de-bain", icon: <Package className="w-4 h-4" />, subcategories: [
      { id: "porte-savons", name: "Soap Dishes", slug: "porte-savons" },
      { id: "rangements-cosmetiques", name: "Cosmetics Storage", slug: "rangements-cosmetiques" },
      { id: "organisateurs", name: "Organizers", slug: "organisateurs" },
      { id: "flacons-rechargeables", name: "Refillable Bottles", slug: "flacons-rechargeables" },
      { id: "distributeurs", name: "Dispensers", slug: "distributeurs" }
    ]},
    { id: "blanchiment-dentaire", name: "Teeth Whitening Products", slug: "blanchiment-dentaire", icon: <Sparkles className="w-4 h-4" />, subcategories: [
      { id: "strips-blanchissants", name: "Whitening Strips", slug: "strips-blanchissants" },
      { id: "gels-blanchissants", name: "Whitening Gels", slug: "gels-blanchissants" },
      { id: "kits-led", name: "LED Kits", slug: "kits-led" },
      { id: "mousses-blanchissantes", name: "Whitening Foams", slug: "mousses-blanchissantes" }
    ]}
  ]
};