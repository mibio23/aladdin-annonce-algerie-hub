import { MenuCategory } from "../../categoryTypes";
import { DollarSign, Coins, Globe, Gem, Package, HelpCircle } from "lucide-react";

export const financeDe: MenuCategory = {
  id: "finance",
  name: "Finanzen & Fiat-Währung",
  slug: "finance",
  icon: <DollarSign className="h-5 w-5 text-green-600" />,
  subcategories: [
    {
      id: "monnaie-fiduciaire",
      name: "Fiat-Währung",
      slug: "monnaie-fiduciaire",
      icon: <Coins className="h-4 w-4 text-yellow-600" />,
      subcategories: [
        { id: "billets-algeriens", name: "Algerische Banknoten", slug: "billets-algeriens" },
        { id: "pieces-algeriennes", name: "Algerische Münzen", slug: "pieces-algeriennes" },
        { id: "monnaies-anciennes", name: "Alte Währungen", slug: "monnaies-anciennes" },
        { id: "billets-rares", name: "Seltene Banknoten", slug: "billets-rares" },
        { id: "pieces-commemoratives", name: "Gedenkmünzen", slug: "pieces-commemoratives" },
        { id: "monnaies-etrangeres", name: "Ausländische Währungen", slug: "monnaies-etrangeres" },
        { id: "monnaies-or", name: "Goldmünzen", slug: "monnaies-or" },
        { id: "monnaies-argent", name: "Silbermünzen", slug: "monnaies-argent" },
        { id: "series-numismatiques", name: "Numismatische Serien", slug: "series-numismatiques" },
        { id: "collections-completes", name: "Komplette Sammlungen", slug: "collections-completes" }
      ]
    },
    {
      id: "services-financiers",
      name: "Finanzdienstleistungen",
      slug: "services-financiers",
      icon: <DollarSign className="h-4 w-4 text-blue-600" />,
      subcategories: [
        { id: "change-devises", name: "Währungsumtausch", slug: "change-devises" },
        { id: "estimation-valeur", name: "Wertschätzung", slug: "estimation-valeur" },
        { id: "expertise-numismatique", name: "Numismatische Expertise", slug: "expertise-numismatique" },
        { id: "transfert-argent", name: "Geldtransfer", slug: "transfert-argent" },
        { id: "conseil-financier", name: "Finanzberatung", slug: "conseil-financier" },
        { id: "conversion-monnaie", name: "Währungsumrechnung", slug: "conversion-monnaie" },
        { id: "authentification-billets", name: "Banknotenauthentifizierung", slug: "authentification-billets" },
        { id: "evaluation-pieces", name: "Münzbewertung", slug: "evaluation-pieces" }
      ]
    },
    {
      id: "monnaie-internationale",
      name: "Internationale Währung",
      slug: "monnaie-internationale",
      icon: <Globe className="h-4 w-4 text-purple-600" />,
      subcategories: [
        { id: "dollars-usd", name: "US-Dollar", slug: "dollars-usd" },
        { id: "euros", name: "Euro €", slug: "euros" },
        { id: "livres-gbp", name: "Pfund Sterling", slug: "livres-gbp" },
        { id: "dirhams-aed", name: "Dirham AED", slug: "dirhams-aed" },
        { id: "dinars-tnd", name: "Dinar TND", slug: "dinars-tnd" },
        { id: "francs-cfa", name: "CFA-Franc", slug: "francs-cfa" },
        { id: "yuan-cny", name: "Yuan CNY", slug: "yuan-cny" },
        { id: "riyals-sar", name: "Riyal SAR", slug: "riyals-sar" },
        { id: "billets-etrangers", name: "Ausländische Banknoten", slug: "billets-etrangers" },
        { id: "pieces-etrangeres", name: "Ausländische Münzen", slug: "pieces-etrangeres" }
      ]
    },
    {
      id: "or-métaux-précieux",
      name: "Gold & Edelmetalle",
      slug: "or-metaux-precieux",
      icon: <Gem className="h-4 w-4 text-yellow-500" />,
      subcategories: [
        { id: "lingots-or", name: "Goldbarren", slug: "lingots-or" },
        { id: "pieces-or", name: "Goldmünzen", slug: "pieces-or" },
        { id: "pieces-argent", name: "Silbermünzen", slug: "pieces-argent" },
        { id: "metal-precieux", name: "Edelmetall", slug: "metal-precieux" },
        { id: "or-investissement", name: "Anlagegold", slug: "or-investissement" },
        { id: "argent-pur", name: "Reines Silber", slug: "argent-pur" },
        { id: "valeurs-rares", name: "Seltene Werte", slug: "valeurs-rares" },
        { id: "or-numismatique", name: "Numismatisches Gold", slug: "or-numismatique" },
        { id: "metaux-rares", name: "Seltene Metalle", slug: "metaux-rares" }
      ]
    },
    {
      id: "accessoires-numismatiques",
      name: "Numismatisches Zubehör",
      slug: "accessoires-numismatiques",
      icon: <Package className="h-4 w-4 text-gray-600" />,
      subcategories: [
        { id: "albums-monnaies", name: "Münzalben", slug: "albums-monnaies" },
        { id: "etuis-protection", name: "Schutzhüllen", slug: "etuis-protection" },
        { id: "boites-numismatiques", name: "Münzboxen", slug: "boites-numismatiques" },
        { id: "classeurs-pieces", name: "Münzordner", slug: "classeurs-pieces" },
        { id: "vitrines-collection", name: "Sammlervitrinen", slug: "vitrines-collection" },
        { id: "gants-numismatiques", name: "Numismatische Handschuhe", slug: "gants-numismatiques" },
        { id: "loupes-inspection", name: "Inspektionslupen", slug: "loupes-inspection" },
        { id: "sachets-securises", name: "Sicherheitsbeutel", slug: "sachets-securises" }
      ]
    },
    {
      id: "aide-collection",
      name: "Sammlungshilfe",
      slug: "aide-collection",
      icon: <HelpCircle className="h-4 w-4 text-green-600" />,
      subcategories: [
        { id: "tri-monnaies", name: "Münzsortierung", slug: "tri-monnaies" },
        { id: "nettoyage-billets", name: "Banknotenreinigung", slug: "nettoyage-billets" },
        { id: "restauration-pieces", name: "Münzrestaurierung", slug: "restauration-pieces" },
        { id: "grade-etat", name: "Zustandsbewertung", slug: "grade-etat" },
        { id: "conseils-achat", name: "Kauftipps", slug: "conseils-achat" },
        { id: "conseils-vente", name: "Verkaufstipps", slug: "conseils-vente" },
        { id: "organisation-collection", name: "Sammlungsorganisation", slug: "organisation-collection" },
        { id: "certification-experts", name: "Expertenzertifizierung", slug: "certification-experts" }
      ]
    }
  ]
};