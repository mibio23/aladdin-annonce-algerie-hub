-- Migration: Ajout de la catégorie Parapharmacie & Produit Chimique
-- Date: 2025-11-17
-- Objectif: Ajouter la nouvelle catégorie avec ses traductions et sous-catégories

-- 1. Insérer la catégorie principale
INSERT INTO public.categories (name, slug, description, icon, sort_order) 
VALUES ('Parapharmacie & Produit Chimique', 'parapharmacie-produit-chimique', 'Produits pharmaceutiques, parapharmacie et produits chimiques', '⚗️', 18)
ON CONFLICT (slug) DO NOTHING;

-- 2. Obtenir l'ID de la catégorie principale
WITH parent_category AS (
  SELECT id FROM public.categories WHERE slug = 'parapharmacie-produit-chimique'
)

-- 3. Insérer les sous-catégories principales
INSERT INTO public.categories (name, slug, description, parent_id, sort_order) 
SELECT 
  CASE 
    WHEN slug = 'parapharmacie-generale' THEN 'Parapharmacie générale'
    WHEN slug = 'cosmetiques-specialises' THEN 'Cosmétiques spécialisés'
    WHEN slug = 'produits-dietetiques' THEN 'Produits diététiques'
    WHEN slug = 'produits-bebe' THEN 'Produits bébé'
    WHEN slug = 'hygiene-bucco-dentaire' THEN 'Hygiène bucco-dentaire'
    WHEN slug = 'soins-corps-cheveux' THEN 'Soins corps et cheveux'
    WHEN slug = 'produits-nettoyage-entretien' THEN 'Produits de nettoyage et entretien'
    WHEN slug = 'produits-desinfection' THEN 'Produits de désinfection'
    WHEN slug = 'produits-desinsectisation' THEN 'Produits de désinsectisation'
    WHEN slug = 'produits-deratisation' THEN 'Produits de dératisation'
    WHEN slug = 'produits-phytosanitaires' THEN 'Produits phytosanitaires'
    WHEN slug = 'produits-chimiques-industriels' THEN 'Produits chimiques industriels'
    WHEN slug = 'reactifs-laboratoire' THEN 'Réactifs de laboratoire'
    WHEN slug = 'produits-nettoyage-industriel' THEN 'Produits de nettoyage industriel'
    WHEN slug = 'produits-traitement-eau' THEN 'Produits de traitement de l''eau'
    WHEN slug = 'produits-entretien-vehicules' THEN 'Produits d''entretien des véhicules'
    WHEN slug = 'produits-cosmetiques-professionnels' THEN 'Produits cosmétiques professionnels'
    WHEN slug = 'produits-coiffure-professionnelle' THEN 'Produits de coiffure professionnelle'
    WHEN slug = 'produits-soins-esthetique' THEN 'Produits de soins esthétique'
    WHEN slug = 'produits-massage-therapeutique' THEN 'Produits de massage thérapeutique'
    WHEN slug = 'produits-aromatherapie' THEN 'Produits d''aromathérapie'
    WHEN slug = 'produits-homeopathie' THEN 'Produits d''homéopathie'
    WHEN slug = 'produits-phytotherapie' THEN 'Produits de phytothérapie'
    WHEN slug = 'produits-nutrition-sportive' THEN 'Produits de nutrition sportive'
    WHEN slug = 'accessoires-pharmaceutiques' THEN 'Accessoires pharmaceutiques'
    WHEN slug = 'equipements-pharmacies' THEN 'Équipements pour pharmacies'
  END,
  slug,
  CASE 
    WHEN slug = 'parapharmacie-generale' THEN 'Produits de parapharmacie courants'
    WHEN slug = 'cosmetiques-specialises' THEN 'Cosmétiques pour peaux sensibles et problèmes spécifiques'
    WHEN slug = 'produits-dietetiques' THEN 'Compléments alimentaires et produits diététiques'
    WHEN slug = 'produits-bebe' THEN 'Produits spécifiques pour bébés et enfants'
    WHEN slug = 'hygiene-bucco-dentaire' THEN 'Produits d''hygiène bucco-dentaire'
    WHEN slug = 'soins-corps-cheveux' THEN 'Soins pour le corps et les cheveux'
    WHEN slug = 'produits-nettoyage-entretien' THEN 'Produits ménagers de nettoyage et entretien'
    WHEN slug = 'produits-desinfection' THEN 'Produits de désinfection et antiseptiques'
    WHEN slug = 'produits-desinsectisation' THEN 'Produits contre les insectes'
    WHEN slug = 'produits-deratisation' THEN 'Produits contre les rongeurs'
    WHEN slug = 'produits-phytosanitaires' THEN 'Produits phytosanitaires pour agriculture'
    WHEN slug = 'produits-chimiques-industriels' THEN 'Produits chimiques pour usage industriel'
    WHEN slug = 'reactifs-laboratoire' THEN 'Réactifs et produits de laboratoire'
    WHEN slug = 'produits-nettoyage-industriel' THEN 'Produits de nettoyage pour usage industriel'
    WHEN slug = 'produits-traitement-eau' THEN 'Produits pour le traitement de l''eau'
    WHEN slug = 'produits-entretien-vehicules' THEN 'Produits d''entretien et de nettoyage pour véhicules'
    WHEN slug = 'produits-cosmetiques-professionnels' THEN 'Cosmétiques professionnels pour instituts'
    WHEN slug = 'produits-coiffure-professionnelle' THEN 'Produits professionnels pour coiffeurs'
    WHEN slug = 'produits-soins-esthetique' THEN 'Produits pour soins esthétiques professionnels'
    WHEN slug = 'produits-massage-therapeutique' THEN 'Produits pour massage thérapeutique'
    WHEN slug = 'produits-aromatherapie' THEN 'Huiles essentielles et produits d''aromathérapie'
    WHEN slug = 'produits-homeopathie' THEN 'Produits homéopathiques'
    WHEN slug = 'produits-phytotherapie' THEN 'Produits à base de plantes médicinales'
    WHEN slug = 'produits-nutrition-sportive' THEN 'Compléments alimentaires pour sportifs'
    WHEN slug = 'accessoires-pharmaceutiques' THEN 'Accessoires et petit matériel pharmaceutique'
    WHEN slug = 'equipements-pharmacies' THEN 'Équipements et mobilier pour pharmacies'
  END,
  c.id,
  CASE 
    WHEN slug = 'parapharmacie-generale' THEN 1
    WHEN slug = 'cosmetiques-specialises' THEN 2
    WHEN slug = 'produits-dietetiques' THEN 3
    WHEN slug = 'produits-bebe' THEN 4
    WHEN slug = 'hygiene-bucco-dentaire' THEN 5
    WHEN slug = 'soins-corps-cheveux' THEN 6
    WHEN slug = 'produits-nettoyage-entretien' THEN 7
    WHEN slug = 'produits-desinfection' THEN 8
    WHEN slug = 'produits-desinsectisation' THEN 9
    WHEN slug = 'produits-deratisation' THEN 10
    WHEN slug = 'produits-phytosanitaires' THEN 11
    WHEN slug = 'produits-chimiques-industriels' THEN 12
    WHEN slug = 'reactifs-laboratoire' THEN 13
    WHEN slug = 'produits-nettoyage-industriel' THEN 14
    WHEN slug = 'produits-traitement-eau' THEN 15
    WHEN slug = 'produits-entretien-vehicules' THEN 16
    WHEN slug = 'produits-cosmetiques-professionnels' THEN 17
    WHEN slug = 'produits-coiffure-professionnelle' THEN 18
    WHEN slug = 'produits-soins-esthetique' THEN 19
    WHEN slug = 'produits-massage-therapeutique' THEN 20
    WHEN slug = 'produits-aromatherapie' THEN 21
    WHEN slug = 'produits-homeopathie' THEN 22
    WHEN slug = 'produits-phytotherapie' THEN 23
    WHEN slug = 'produits-nutrition-sportive' THEN 24
    WHEN slug = 'accessoires-pharmaceutiques' THEN 25
    WHEN slug = 'equipements-pharmacies' THEN 26
  END
FROM (
  VALUES 
    ('parapharmacie-generale'),
    ('cosmetiques-specialises'),
    ('produits-dietetiques'),
    ('produits-bebe'),
    ('hygiene-bucco-dentaire'),
    ('soins-corps-cheveux'),
    ('produits-nettoyage-entretien'),
    ('produits-desinfection'),
    ('produits-desinsectisation'),
    ('produits-deratisation'),
    ('produits-phytosanitaires'),
    ('produits-chimiques-industriels'),
    ('reactifs-laboratoire'),
    ('produits-nettoyage-industriel'),
    ('produits-traitement-eau'),
    ('produits-entretien-vehicules'),
    ('produits-cosmetiques-professionnels'),
    ('produits-coiffure-professionnelle'),
    ('produits-soins-esthetique'),
    ('produits-massage-therapeutique'),
    ('produits-aromatherapie'),
    ('produits-homeopathie'),
    ('produits-phytotherapie'),
    ('produits-nutrition-sportive'),
    ('accessoires-pharmaceutiques'),
    ('equipements-pharmacies')
) AS subcategories(slug)
CROSS JOIN parent_category c
ON CONFLICT (slug) DO NOTHING;

-- 4. Ajouter les traductions en français
WITH parent_category AS (
  SELECT id FROM public.categories WHERE slug = 'parapharmacie-produit-chimique'
)
INSERT INTO public.category_translations (category_id, language_code, name, description, meta_title, meta_description)
SELECT 
  c.id,
  'fr',
  'Parapharmacie & Produit Chimique',
  'Produits pharmaceutiques, parapharmacie et produits chimiques pour particuliers et professionnels',
  'Parapharmacie & Produits Chimiques | Aladdin Annonce Algérie',
  'Découvrez nos annonces de parapharmacie, produits chimiques, cosmétiques spécialisés et équipements pharmaceutiques. Achat, vente et location en Algérie.'
FROM parent_category c
ON CONFLICT (category_id, language_code) DO NOTHING;

-- 5. Ajouter les traductions pour les sous-catégories en français
INSERT INTO public.category_translations (category_id, language_code, name, description)
SELECT 
  c.id,
  'fr',
  CASE 
    WHEN c.slug = 'parapharmacie-generale' THEN 'Parapharmacie générale'
    WHEN c.slug = 'cosmetiques-specialises' THEN 'Cosmétiques spécialisés'
    WHEN c.slug = 'produits-dietetiques' THEN 'Produits diététiques'
    WHEN c.slug = 'produits-bebe' THEN 'Produits bébé'
    WHEN c.slug = 'hygiene-bucco-dentaire' THEN 'Hygiène bucco-dentaire'
    WHEN c.slug = 'soins-corps-cheveux' THEN 'Soins corps et cheveux'
    WHEN c.slug = 'produits-nettoyage-entretien' THEN 'Produits de nettoyage et entretien'
    WHEN c.slug = 'produits-desinfection' THEN 'Produits de désinfection'
    WHEN c.slug = 'produits-desinsectisation' THEN 'Produits de désinsectisation'
    WHEN c.slug = 'produits-deratisation' THEN 'Produits de dératisation'
    WHEN c.slug = 'produits-phytosanitaires' THEN 'Produits phytosanitaires'
    WHEN c.slug = 'produits-chimiques-industriels' THEN 'Produits chimiques industriels'
    WHEN c.slug = 'reactifs-laboratoire' THEN 'Réactifs de laboratoire'
    WHEN c.slug = 'produits-nettoyage-industriel' THEN 'Produits de nettoyage industriel'
    WHEN c.slug = 'produits-traitement-eau' THEN 'Produits de traitement de l''eau'
    WHEN c.slug = 'produits-entretien-vehicules' THEN 'Produits d''entretien des véhicules'
    WHEN c.slug = 'produits-cosmetiques-professionnels' THEN 'Produits cosmétiques professionnels'
    WHEN c.slug = 'produits-coiffure-professionnelle' THEN 'Produits de coiffure professionnelle'
    WHEN c.slug = 'produits-soins-esthetique' THEN 'Produits de soins esthétique'
    WHEN c.slug = 'produits-massage-therapeutique' THEN 'Produits de massage thérapeutique'
    WHEN c.slug = 'produits-aromatherapie' THEN 'Produits d''aromathérapie'
    WHEN c.slug = 'produits-homeopathie' THEN 'Produits d''homéopathie'
    WHEN c.slug = 'produits-phytotherapie' THEN 'Produits de phytothérapie'
    WHEN c.slug = 'produits-nutrition-sportive' THEN 'Produits de nutrition sportive'
    WHEN c.slug = 'accessoires-pharmaceutiques' THEN 'Accessoires pharmaceutiques'
    WHEN c.slug = 'equipements-pharmacies' THEN 'Équipements pour pharmacies'
  END,
  CASE 
    WHEN c.slug = 'parapharmacie-generale' THEN 'Produits de parapharmacie courants'
    WHEN c.slug = 'cosmetiques-specialises' THEN 'Cosmétiques pour peaux sensibles et problèmes spécifiques'
    WHEN c.slug = 'produits-dietetiques' THEN 'Compléments alimentaires et produits diététiques'
    WHEN c.slug = 'produits-bebe' THEN 'Produits spécifiques pour bébés et enfants'
    WHEN c.slug = 'hygiene-bucco-dentaire' THEN 'Produits d''hygiène bucco-dentaire'
    WHEN c.slug = 'soins-corps-cheveux' THEN 'Soins pour le corps et les cheveux'
    WHEN c.slug = 'produits-nettoyage-entretien' THEN 'Produits ménagers de nettoyage et entretien'
    WHEN c.slug = 'produits-desinfection' THEN 'Produits de désinfection et antiseptiques'
    WHEN c.slug = 'produits-desinsectisation' THEN 'Produits contre les insectes'
    WHEN c.slug = 'produits-deratisation' THEN 'Produits contre les rongeurs'
    WHEN c.slug = 'produits-phytosanitaires' THEN 'Produits phytosanitaires pour agriculture'
    WHEN c.slug = 'produits-chimiques-industriels' THEN 'Produits chimiques pour usage industriel'
    WHEN c.slug = 'reactifs-laboratoire' THEN 'Réactifs et produits de laboratoire'
    WHEN c.slug = 'produits-nettoyage-industriel' THEN 'Produits de nettoyage pour usage industriel'
    WHEN c.slug = 'produits-traitement-eau' THEN 'Produits pour le traitement de l''eau'
    WHEN c.slug = 'produits-entretien-vehicules' THEN 'Produits d''entretien et de nettoyage pour véhicules'
    WHEN c.slug = 'produits-cosmetiques-professionnels' THEN 'Cosmétiques professionnels pour instituts'
    WHEN c.slug = 'produits-coiffure-professionnelle' THEN 'Produits professionnels pour coiffeurs'
    WHEN c.slug = 'produits-soins-esthetique' THEN 'Produits pour soins esthétiques professionnels'
    WHEN c.slug = 'produits-massage-therapeutique' THEN 'Produits pour massage thérapeutique'
    WHEN c.slug = 'produits-aromatherapie' THEN 'Huiles essentielles et produits d''aromathérapie'
    WHEN c.slug = 'produits-homeopathie' THEN 'Produits homéopathiques'
    WHEN c.slug = 'produits-phytotherapie' THEN 'Produits à base de plantes médicinales'
    WHEN c.slug = 'produits-nutrition-sportive' THEN 'Compléments alimentaires pour sportifs'
    WHEN c.slug = 'accessoires-pharmaceutiques' THEN 'Accessoires et petit matériel pharmaceutique'
    WHEN c.slug = 'equipements-pharmacies' THEN 'Équipements et mobilier pour pharmacies'
  END
FROM public.categories c
WHERE c.slug LIKE 'parapharmacie-%' OR c.slug LIKE 'cosmetiques-%' OR c.slug LIKE 'produits-%' OR c.slug LIKE 'accessoires-%' OR c.slug LIKE 'equipements-%'
ON CONFLICT (category_id, language_code) DO NOTHING;

-- 6. Ajouter les traductions en anglais
INSERT INTO public.category_translations (category_id, language_code, name, description, meta_title, meta_description)
SELECT 
  c.id,
  'en',
  'Parapharmacy & Chemical Products',
  'Pharmaceutical products, parapharmacy and chemical products for individuals and professionals',
  'Parapharmacy & Chemical Products | Aladdin Announcement Algeria',
  'Discover our ads for parapharmacy, chemical products, specialized cosmetics and pharmaceutical equipment. Buy, sell and rent in Algeria.'
FROM public.categories c WHERE c.slug = 'parapharmacie-produit-chimique'
ON CONFLICT (category_id, language_code) DO NOTHING;

-- 7. Ajouter les traductions pour les sous-catégories en anglais
INSERT INTO public.category_translations (category_id, language_code, name, description)
SELECT 
  c.id,
  'en',
  CASE 
    WHEN c.slug = 'parapharmacie-generale' THEN 'General Parapharmacy'
    WHEN c.slug = 'cosmetiques-specialises' THEN 'Specialized Cosmetics'
    WHEN c.slug = 'produits-dietetiques' THEN 'Dietary Products'
    WHEN c.slug = 'produits-bebe' THEN 'Baby Products'
    WHEN c.slug = 'hygiene-bucco-dentaire' THEN 'Oral Hygiene'
    WHEN c.slug = 'soins-corps-cheveux' THEN 'Body & Hair Care'
    WHEN c.slug = 'produits-nettoyage-entretien' THEN 'Cleaning & Maintenance Products'
    WHEN c.slug = 'produits-desinfection' THEN 'Disinfection Products'
    WHEN c.slug = 'produits-desinsectisation' THEN 'Insect Control Products'
    WHEN c.slug = 'produits-deratisation' THEN 'Rodent Control Products'
    WHEN c.slug = 'produits-phytosanitaires' THEN 'Phytosanitary Products'
    WHEN c.slug = 'produits-chimiques-industriels' THEN 'Industrial Chemical Products'
    WHEN c.slug = 'reactifs-laboratoire' THEN 'Laboratory Reagents'
    WHEN c.slug = 'produits-nettoyage-industriel' THEN 'Industrial Cleaning Products'
    WHEN c.slug = 'produits-traitement-eau' THEN 'Water Treatment Products'
    WHEN c.slug = 'produits-entretien-vehicules' THEN 'Vehicle Maintenance Products'
    WHEN c.slug = 'produits-cosmetiques-professionnels' THEN 'Professional Cosmetic Products'
    WHEN c.slug = 'produits-coiffure-professionnelle' THEN 'Professional Hairdressing Products'
    WHEN c.slug = 'produits-soins-esthetique' THEN 'Aesthetic Care Products'
    WHEN c.slug = 'produits-massage-therapeutique' THEN 'Therapeutic Massage Products'
    WHEN c.slug = 'produits-aromatherapie' THEN 'Aromatherapy Products'
    WHEN c.slug = 'produits-homeopathie' THEN 'Homeopathic Products'
    WHEN c.slug = 'produits-phytotherapie' THEN 'Phytotherapy Products'
    WHEN c.slug = 'produits-nutrition-sportive' THEN 'Sports Nutrition Products'
    WHEN c.slug = 'accessoires-pharmaceutiques' THEN 'Pharmaceutical Accessories'
    WHEN c.slug = 'equipements-pharmacies' THEN 'Pharmacy Equipment'
  END,
  CASE 
    WHEN c.slug = 'parapharmacie-generale' THEN 'Common parapharmacy products'
    WHEN c.slug = 'cosmetiques-specialises' THEN 'Cosmetics for sensitive skin and specific problems'
    WHEN c.slug = 'produits-dietetiques' THEN 'Food supplements and dietary products'
    WHEN c.slug = 'produits-bebe' THEN 'Specific products for babies and children'
    WHEN c.slug = 'hygiene-bucco-dentaire' THEN 'Oral hygiene products'
    WHEN c.slug = 'soins-corps-cheveux' THEN 'Body and hair care products'
    WHEN c.slug = 'produits-nettoyage-entretien' THEN 'Household cleaning and maintenance products'
    WHEN c.slug = 'produits-desinfection' THEN 'Disinfection and antiseptic products'
    WHEN c.slug = 'produits-desinsectisation' THEN 'Insect control products'
    WHEN c.slug = 'produits-deratisation' THEN 'Rodent control products'
    WHEN c.slug = 'produits-phytosanitaires' THEN 'Phytosanitary products for agriculture'
    WHEN c.slug = 'produits-chimiques-industriels' THEN 'Chemical products for industrial use'
    WHEN c.slug = 'reactifs-laboratoire' THEN 'Laboratory reagents and products'
    WHEN c.slug = 'produits-nettoyage-industriel' THEN 'Industrial cleaning products'
    WHEN c.slug = 'produits-traitement-eau' THEN 'Water treatment products'
    WHEN c.slug = 'produits-entretien-vehicules' THEN 'Vehicle maintenance and cleaning products'
    WHEN c.slug = 'produits-cosmetiques-professionnels' THEN 'Professional cosmetics for institutes'
    WHEN c.slug = 'produits-coiffure-professionnelle' THEN 'Professional products for hairdressers'
    WHEN c.slug = 'produits-soins-esthetique' THEN 'Products for professional aesthetic care'
    WHEN c.slug = 'produits-massage-therapeutique' THEN 'Products for therapeutic massage'
    WHEN c.slug = 'produits-aromatherapie' THEN 'Essential oils and aromatherapy products'
    WHEN c.slug = 'produits-homeopathie' THEN 'Homeopathic products'
    WHEN c.slug = 'produits-phytotherapie' THEN 'Products based on medicinal plants'
    WHEN c.slug = 'produits-nutrition-sportive' THEN 'Dietary supplements for athletes'
    WHEN c.slug = 'accessoires-pharmaceutiques' THEN 'Accessories and small pharmaceutical equipment'
    WHEN c.slug = 'equipements-pharmacies' THEN 'Equipment and furniture for pharmacies'
  END
FROM public.categories c
WHERE c.slug LIKE 'parapharmacie-%' OR c.slug LIKE 'cosmetiques-%' OR c.slug LIKE 'produits-%' OR c.slug LIKE 'accessoires-%' OR c.slug LIKE 'equipements-%'
ON CONFLICT (category_id, language_code) DO NOTHING;
