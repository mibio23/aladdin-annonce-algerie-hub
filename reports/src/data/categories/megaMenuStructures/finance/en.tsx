import { MenuCategory } from "../../categoryTypes";
import { DollarSign, Coins, Globe, Gem, Package, HelpCircle } from "lucide-react";

export const financeEn: MenuCategory = {
  id: "finance",
  name: "Finance & Fiduciary Currency",
  slug: "finance",
  icon: <DollarSign className="h-5 w-5 text-green-600" />,
  subcategories: [
    {
      id: "monnaie-fiduciaire",
      name: "Fiduciary Currency",
      slug: "monnaie-fiduciaire",
      icon: <Coins className="h-4 w-4 text-yellow-600" />,
      subcategories: [
        { id: "billets-algeriens", name: "Algerian Banknotes", slug: "billets-algeriens" },
        { id: "pieces-algeriennes", name: "Algerian Coins", slug: "pieces-algeriennes" },
        { id: "monnaies-anciennes", name: "Ancient Currencies", slug: "monnaies-anciennes" },
        { id: "billets-rares", name: "Rare Banknotes", slug: "billets-rares" },
        { id: "pieces-commemoratives", name: "Commemorative Coins", slug: "pieces-commemoratives" },
        { id: "monnaies-etrangeres", name: "Foreign Currencies", slug: "monnaies-etrangeres" },
        { id: "monnaies-or", name: "Gold Coins", slug: "monnaies-or" },
        { id: "monnaies-argent", name: "Silver Coins", slug: "monnaies-argent" },
        { id: "series-numismatiques", name: "Numismatic Series", slug: "series-numismatiques" },
        { id: "collections-completes", name: "Complete Collections", slug: "collections-completes" }
      ]
    },
    {
      id: "services-financiers",
      name: "Financial Services",
      slug: "services-financiers",
      icon: <DollarSign className="h-4 w-4 text-blue-600" />,
      subcategories: [
        { id: "change-devises", name: "Currency Exchange", slug: "change-devises" },
        { id: "estimation-valeur", name: "Value Estimation", slug: "estimation-valeur" },
        { id: "expertise-numismatique", name: "Numismatic Expertise", slug: "expertise-numismatique" },
        { id: "transfert-argent", name: "Money Transfer", slug: "transfert-argent" },
        { id: "conseil-financier", name: "Financial Advisory", slug: "conseil-financier" },
        { id: "conversion-monnaie", name: "Currency Conversion", slug: "conversion-monnaie" },
        { id: "authentification-billets", name: "Banknote Authentication", slug: "authentification-billets" },
        { id: "evaluation-pieces", name: "Coin Valuation", slug: "evaluation-pieces" }
      ]
    },
    {
      id: "monnaie-internationale",
      name: "International Currency",
      slug: "monnaie-internationale",
      icon: <Globe className="h-4 w-4 text-purple-600" />,
      subcategories: [
        { id: "dollars-usd", name: "USD Dollars", slug: "dollars-usd" },
        { id: "euros", name: "Euros €", slug: "euros" },
        { id: "livres-gbp", name: "GBP Pounds", slug: "livres-gbp" },
        { id: "dirhams-aed", name: "AED Dirhams", slug: "dirhams-aed" },
        { id: "dinars-tnd", name: "TND Dinars", slug: "dinars-tnd" },
        { id: "francs-cfa", name: "CFA Francs", slug: "francs-cfa" },
        { id: "yuan-cny", name: "CNY Yuan", slug: "yuan-cny" },
        { id: "riyals-sar", name: "SAR Riyals", slug: "riyals-sar" },
        { id: "billets-etrangers", name: "Foreign Banknotes", slug: "billets-etrangers" },
        { id: "pieces-etrangeres", name: "Foreign Coins", slug: "pieces-etrangeres" }
      ]
    },
    {
      id: "or-métaux-précieux",
      name: "Gold & Precious Metals",
      slug: "or-metaux-precieux",
      icon: <Gem className="h-4 w-4 text-yellow-500" />,
      subcategories: [
        { id: "lingots-or", name: "Gold Ingots", slug: "lingots-or" },
        { id: "pieces-or", name: "Gold Coins", slug: "pieces-or" },
        { id: "pieces-argent", name: "Silver Coins", slug: "pieces-argent" },
        { id: "metal-precieux", name: "Precious Metal", slug: "metal-precieux" },
        { id: "or-investissement", name: "Investment Gold", slug: "or-investissement" },
        { id: "argent-pur", name: "Pure Silver", slug: "argent-pur" },
        { id: "valeurs-rares", name: "Rare Values", slug: "valeurs-rares" },
        { id: "or-numismatique", name: "Numismatic Gold", slug: "or-numismatique" },
        { id: "metaux-rares", name: "Rare Metals", slug: "metaux-rares" }
      ]
    },
    {
      id: "accessoires-numismatiques",
      name: "Numismatic Accessories",
      slug: "accessoires-numismatiques",
      icon: <Package className="h-4 w-4 text-gray-600" />,
      subcategories: [
        { id: "albums-monnaies", name: "Currency Albums", slug: "albums-monnaies" },
        { id: "etuis-protection", name: "Protective Cases", slug: "etuis-protection" },
        { id: "boites-numismatiques", name: "Numismatic Boxes", slug: "boites-numismatiques" },
        { id: "classeurs-pieces", name: "Coin Binders", slug: "classeurs-pieces" },
        { id: "vitrines-collection", name: "Collection Showcases", slug: "vitrines-collection" },
        { id: "gants-numismatiques", name: "Numismatic Gloves", slug: "gants-numismatiques" },
        { id: "loupes-inspection", name: "Inspection Magnifiers", slug: "loupes-inspection" },
        { id: "sachets-securises", name: "Secure Bags", slug: "sachets-securises" }
      ]
    },
    {
      id: "aide-collection",
      name: "Collection Aid",
      slug: "aide-collection",
      icon: <HelpCircle className="h-4 w-4 text-green-600" />,
      subcategories: [
        { id: "tri-monnaies", name: "Currency Sorting", slug: "tri-monnaies" },
        { id: "nettoyage-billets", name: "Banknote Cleaning", slug: "nettoyage-billets" },
        { id: "restauration-pieces", name: "Coin Restoration", slug: "restauration-pieces" },
        { id: "grade-etat", name: "Grading Condition", slug: "grade-etat" },
        { id: "conseils-achat", name: "Buying Advice", slug: "conseils-achat" },
        { id: "conseils-vente", name: "Selling Advice", slug: "conseils-vente" },
        { id: "organisation-collection", name: "Collection Organization", slug: "organisation-collection" },
        { id: "certification-experts", name: "Expert Certification", slug: "certification-experts" }
      ]
    }
  ]
};
