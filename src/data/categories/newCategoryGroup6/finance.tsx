import { MenuCategory } from "../../categoryTypes";
import { DollarSign, Coins, Globe, Gem, Package, HelpCircle } from "lucide-react";

export const finance: MenuCategory = {
  id: "finance",
  name: "Finance & Monnaie Fiduciaire",
  slug: "finance",
  icon: <DollarSign className="h-5 w-5 text-green-600" />,
  subcategories: [
    {
      id: "monnaie-fiduciaire",
      name: "Monnaie Fiduciaire",
      slug: "monnaie-fiduciaire",
      icon: <Coins className="h-4 w-4 text-yellow-600" />,
      subcategories: [
        { id: "billets-algeriens", name: "Billets Algériens", slug: "billets-algeriens" },
        { id: "pieces-algeriennes", name: "Pièces Algériennes", slug: "pieces-algeriennes" },
        { id: "monnaies-anciennes", name: "Monnaies Anciennes", slug: "monnaies-anciennes" },
        { id: "billets-rares", name: "Billets Rares", slug: "billets-rares" },
        { id: "pieces-commemoratives", name: "Pièces Commémoratives", slug: "pieces-commemoratives" },
        { id: "monnaies-etrangeres", name: "Monnaies Étrangères", slug: "monnaies-etrangeres" },
        { id: "monnaies-or", name: "Monnaies d'Or", slug: "monnaies-or" },
        { id: "monnaies-argent", name: "Monnaies d'Argent", slug: "monnaies-argent" },
        { id: "series-numismatiques", name: "Séries Numismatiques", slug: "series-numismatiques" },
        { id: "collections-completes", name: "Collections Complètes", slug: "collections-completes" }
      ]
    },
    {
      id: "services-financiers",
      name: "Services Financiers",
      slug: "services-financiers",
      icon: <DollarSign className="h-4 w-4 text-blue-600" />,
      subcategories: [
        { id: "change-devises", name: "Change Devises", slug: "change-devises" },
        { id: "estimation-valeur", name: "Estimation Valeur", slug: "estimation-valeur" },
        { id: "expertise-numismatique", name: "Expertise Numismatique", slug: "expertise-numismatique" },
        { id: "transfert-argent", name: "Transfert Argent", slug: "transfert-argent" },
        { id: "conseil-financier", name: "Conseil Financier", slug: "conseil-financier" },
        { id: "conversion-monnaie", name: "Conversion Monnaie", slug: "conversion-monnaie" },
        { id: "authentification-billets", name: "Authentification Billets", slug: "authentification-billets" },
        { id: "evaluation-pieces", name: "Évaluation Pièces", slug: "evaluation-pieces" }
      ]
    },
    {
      id: "monnaie-internationale",
      name: "Monnaie Internationale",
      slug: "monnaie-internationale",
      icon: <Globe className="h-4 w-4 text-purple-600" />,
      subcategories: [
        { id: "dollars-usd", name: "Dollars USD", slug: "dollars-usd" },
        { id: "euros", name: "Euros €", slug: "euros" },
        { id: "livres-gbp", name: "Livres GBP", slug: "livres-gbp" },
        { id: "dirhams-aed", name: "Dirhams AED", slug: "dirhams-aed" },
        { id: "dinars-tnd", name: "Dinars TND", slug: "dinars-tnd" },
        { id: "francs-cfa", name: "Francs CFA", slug: "francs-cfa" },
        { id: "yuan-cny", name: "Yuan CNY", slug: "yuan-cny" },
        { id: "riyals-sar", name: "Riyals SAR", slug: "riyals-sar" },
        { id: "billets-etrangers", name: "Billets Étrangers", slug: "billets-etrangers" },
        { id: "pieces-etrangeres", name: "Pièces Étrangères", slug: "pieces-etrangeres" }
      ]
    },
    {
      id: "or-métaux-précieux",
      name: "Or & Métaux Précieux",
      slug: "or-metaux-precieux",
      icon: <Gem className="h-4 w-4 text-yellow-500" />,
      subcategories: [
        { id: "lingots-or", name: "Lingots Or", slug: "lingots-or" },
        { id: "pieces-or", name: "Pièces Or", slug: "pieces-or" },
        { id: "pieces-argent", name: "Pièces Argent", slug: "pieces-argent" },
        { id: "metal-precieux", name: "Métal Précieux", slug: "metal-precieux" },
        { id: "or-investissement", name: "Or d'Investissement", slug: "or-investissement" },
        { id: "argent-pur", name: "Argent Pur", slug: "argent-pur" },
        { id: "valeurs-rares", name: "Valeurs Rares", slug: "valeurs-rares" },
        { id: "or-numismatique", name: "Or Numismatique", slug: "or-numismatique" },
        { id: "metaux-rares", name: "Métaux Rares", slug: "metaux-rares" }
      ]
    },
    {
      id: "accessoires-numismatiques",
      name: "Accessoires Numismatiques",
      slug: "accessoires-numismatiques",
      icon: <Package className="h-4 w-4 text-gray-600" />,
      subcategories: [
        { id: "albums-monnaies", name: "Albums Monnaies", slug: "albums-monnaies" },
        { id: "etuis-protection", name: "Étuis Protection", slug: "etuis-protection" },
        { id: "boites-numismatiques", name: "Boîtes Numismatiques", slug: "boites-numismatiques" },
        { id: "classeurs-pieces", name: "Classeurs Pièces", slug: "classeurs-pieces" },
        { id: "vitrines-collection", name: "Vitrines Collection", slug: "vitrines-collection" },
        { id: "gants-numismatiques", name: "Gants Numismatiques", slug: "gants-numismatiques" },
        { id: "loupes-inspection", name: "Loupes Inspection", slug: "loupes-inspection" },
        { id: "sachets-securises", name: "Sachets Sécurisés", slug: "sachets-securises" }
      ]
    },
    {
      id: "aide-collection",
      name: "Aide à la Collection",
      slug: "aide-collection",
      icon: <HelpCircle className="h-4 w-4 text-green-600" />,
      subcategories: [
        { id: "tri-monnaies", name: "Tri Monnaies", slug: "tri-monnaies" },
        { id: "nettoyage-billets", name: "Nettoyage Billets", slug: "nettoyage-billets" },
        { id: "restauration-pieces", name: "Restauration Pièces", slug: "restauration-pieces" },
        { id: "grade-etat", name: "Grade État", slug: "grade-etat" },
        { id: "conseils-achat", name: "Conseils Achat", slug: "conseils-achat" },
        { id: "conseils-vente", name: "Conseils Vente", slug: "conseils-vente" },
        { id: "organisation-collection", name: "Organisation Collection", slug: "organisation-collection" },
        { id: "certification-experts", name: "Certification Experts", slug: "certification-experts" }
      ]
    }
  ]
};