import { MenuCategory } from "../../categoryTypes";
import { DollarSign, Coins, Globe, Gem, Package, HelpCircle } from "lucide-react";

export const financeIt: MenuCategory = {
  id: "finance",
  name: "Finanza e Valuta Fiduciaria",
  slug: "finance",
  icon: <DollarSign className="h-5 w-5 text-green-600" />,
  subcategories: [
    {
      id: "monnaie-fiduciaire",
      name: "Valuta Fiduciaria",
      slug: "monnaie-fiduciaire",
      icon: <Coins className="h-4 w-4 text-yellow-600" />,
      subcategories: [
        { id: "billets-algeriens", name: "Banconote Algerine", slug: "billets-algeriens" },
        { id: "pieces-algeriennes", name: "Monete Algerine", slug: "pieces-algeriennes" },
        { id: "monnaies-anciennes", name: "Monete Antiche", slug: "monnaies-anciennes" },
        { id: "billets-rares", name: "Banconote Rare", slug: "billets-rares" },
        { id: "pieces-commemoratives", name: "Monete Commemorative", slug: "pieces-commemoratives" },
        { id: "monnaies-etrangeres", name: "Monete Straniere", slug: "monnaies-etrangeres" },
        { id: "monnaies-or", name: "Monete d'Oro", slug: "monnaies-or" },
        { id: "monnaies-argent", name: "Monete d'Argento", slug: "monnaies-argent" },
        { id: "series-numismatiques", name: "Serie Numismatiche", slug: "series-numismatiques" },
        { id: "collections-completes", name: "Collezioni Complete", slug: "collections-completes" }
      ]
    },
    {
      id: "services-financiers",
      name: "Servizi Finanziari",
      slug: "services-financiers",
      icon: <DollarSign className="h-4 w-4 text-blue-600" />,
      subcategories: [
        { id: "change-devises", name: "Cambio Valuta", slug: "change-devises" },
        { id: "estimation-valeur", name: "Stima del Valore", slug: "estimation-valeur" },
        { id: "expertise-numismatique", name: "Perizia Numismatica", slug: "expertise-numismatique" },
        { id: "transfert-argent", name: "Trasferimento di Denaro", slug: "transfert-argent" },
        { id: "conseil-financier", name: "Consulenza Finanziaria", slug: "conseil-financier" },
        { id: "conversion-monnaie", name: "Conversione Valuta", slug: "conversion-monnaie" },
        { id: "authentification-billets", name: "Autenticazione Banconote", slug: "authentification-billets" },
        { id: "evaluation-pieces", name: "Valutazione Monete", slug: "evaluation-pieces" }
      ]
    },
    {
      id: "monnaie-internationale",
      name: "Valuta Internazionale",
      slug: "monnaie-internationale",
      icon: <Globe className="h-4 w-4 text-purple-600" />,
      subcategories: [
        { id: "dollars-usd", name: "Dollari USD", slug: "dollars-usd" },
        { id: "euros", name: "Euro €", slug: "euros" },
        { id: "livres-gbp", name: "Sterline GBP", slug: "livres-gbp" },
        { id: "dirhams-aed", name: "Dirham AED", slug: "dirhams-aed" },
        { id: "dinars-tnd", name: "Dinari TND", slug: "dinars-tnd" },
        { id: "francs-cfa", name: "Franchi CFA", slug: "francs-cfa" },
        { id: "yuan-cny", name: "Yuan CNY", slug: "yuan-cny" },
        { id: "riyals-sar", name: "Riyal SAR", slug: "riyals-sar" },
        { id: "billets-etrangers", name: "Banconote Straniere", slug: "billets-etrangers" },
        { id: "pieces-etrangeres", name: "Monete Straniere", slug: "pieces-etrangeres" }
      ]
    },
    {
      id: "or-métaux-précieux",
      name: "Oro e Metalli Preziosi",
      slug: "or-metaux-precieux",
      icon: <Gem className="h-4 w-4 text-yellow-500" />,
      subcategories: [
        { id: "lingots-or", name: "Lingotti d'Oro", slug: "lingots-or" },
        { id: "pieces-or", name: "Monete d'Oro", slug: "pieces-or" },
        { id: "pieces-argent", name: "Monete d'Argento", slug: "pieces-argent" },
        { id: "metal-precieux", name: "Metallo Prezioso", slug: "metal-precieux" },
        { id: "or-investissement", name: "Oro da Investimento", slug: "or-investissement" },
        { id: "argent-pur", name: "Argento Puro", slug: "argent-pur" },
        { id: "valeurs-rares", name: "Valori Rari", slug: "valeurs-rares" },
        { id: "or-numismatique", name: "Oro Numismatico", slug: "or-numismatique" },
        { id: "metaux-rares", name: "Metalli Rari", slug: "metaux-rares" }
      ]
    },
    {
      id: "accessoires-numismatiques",
      name: "Accessori Numismatici",
      slug: "accessoires-numismatiques",
      icon: <Package className="h-4 w-4 text-gray-600" />,
      subcategories: [
        { id: "albums-monnaies", name: "Album per Monete", slug: "albums-monnaies" },
        { id: "etuis-protection", name: "Custodie Protettive", slug: "etuis-protection" },
        { id: "boites-numismatiques", name: "Scatole Numismatiche", slug: "boites-numismatiques" },
        { id: "classeurs-pieces", name: "Raccoglitori per Monete", slug: "classeurs-pieces" },
        { id: "vitrines-collection", name: "Vetrine da Collezione", slug: "vitrines-collection" },
        { id: "gants-numismatiques", name: "Guanti Numismatici", slug: "gants-numismatiques" },
        { id: "loupes-inspection", name: "Lenti d'Ingrandimento", slug: "loupes-inspection" },
        { id: "sachets-securises", name: "Bustine di Sicurezza", slug: "sachets-securises" }
      ]
    },
    {
      id: "aide-collection",
      name: "Aiuto alla Collezione",
      slug: "aide-collection",
      icon: <HelpCircle className="h-4 w-4 text-green-600" />,
      subcategories: [
        { id: "tri-monnaies", name: "Smistamento Monete", slug: "tri-monnaies" },
        { id: "nettoyage-billets", name: "Pulizia Banconote", slug: "nettoyage-billets" },
        { id: "restauration-pieces", name: "Restauro Monete", slug: "restauration-pieces" },
        { id: "grade-etat", name: "Valutazione Stato", slug: "grade-etat" },
        { id: "conseils-achat", name: "Consigli per l'Acquisto", slug: "conseils-achat" },
        { id: "conseils-vente", name: "Consigli per la Vendita", slug: "conseils-vente" },
        { id: "organisation-collection", name: "Organizzazione Collezione", slug: "organisation-collection" },
        { id: "certification-experts", name: "Certificazione Esperti", slug: "certification-experts" }
      ]
    }
  ]
};