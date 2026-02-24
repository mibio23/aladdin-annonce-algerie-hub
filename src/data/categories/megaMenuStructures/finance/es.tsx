import { MenuCategory } from "../../categoryTypes";
import { DollarSign, Coins, Globe, Gem, Package, HelpCircle } from "lucide-react";

export const financeEs: MenuCategory = {
  id: "finance",
  name: "Finanzas y Moneda Fiduciaria",
  slug: "finance",
  icon: <DollarSign className="h-5 w-5 text-green-600" />,
  subcategories: [
    {
      id: "monnaie-fiduciaire",
      name: "Moneda Fiduciaria",
      slug: "monnaie-fiduciaire",
      icon: <Coins className="h-4 w-4 text-yellow-600" />,
      subcategories: [
        { id: "billets-algeriens", name: "Billetes Argelinos", slug: "billets-algeriens" },
        { id: "pieces-algeriennes", name: "Monedas Argelinas", slug: "pieces-algeriennes" },
        { id: "monnaies-anciennes", name: "Monedas Antiguas", slug: "monnaies-anciennes" },
        { id: "billets-rares", name: "Billetes Raros", slug: "billets-rares" },
        { id: "pieces-commemoratives", name: "Monedas Conmemorativas", slug: "pieces-commemoratives" },
        { id: "monnaies-etrangeres", name: "Monedas Extranjeras", slug: "monnaies-etrangeres" },
        { id: "monnaies-or", name: "Monedas de Oro", slug: "monnaies-or" },
        { id: "monnaies-argent", name: "Monedas de Plata", slug: "monnaies-argent" },
        { id: "series-numismatiques", name: "Series Numismáticas", slug: "series-numismatiques" },
        { id: "collections-completes", name: "Colecciones Completas", slug: "collections-completes" }
      ]
    },
    {
      id: "services-financiers",
      name: "Servicios Financieros",
      slug: "services-financiers",
      icon: <DollarSign className="h-4 w-4 text-blue-600" />,
      subcategories: [
        { id: "change-devises", name: "Cambio de Divisas", slug: "change-devises" },
        { id: "estimation-valeur", name: "Estimación de Valor", slug: "estimation-valeur" },
        { id: "expertise-numismatique", name: "Peritaje Numismático", slug: "expertise-numismatique" },
        { id: "transfert-argent", name: "Transferencia de Dinero", slug: "transfert-argent" },
        { id: "conseil-financier", name: "Asesoramiento Financiero", slug: "conseil-financier" },
        { id: "conversion-monnaie", name: "Conversión de Moneda", slug: "conversion-monnaie" },
        { id: "authentification-billets", name: "Autenticación de Billetes", slug: "authentification-billets" },
        { id: "evaluation-pieces", name: "Evaluación de Monedas", slug: "evaluation-pieces" }
      ]
    },
    {
      id: "monnaie-internationale",
      name: "Moneda Internacional",
      slug: "monnaie-internationale",
      icon: <Globe className="h-4 w-4 text-purple-600" />,
      subcategories: [
        { id: "dollars-usd", name: "Dólares USD", slug: "dollars-usd" },
        { id: "euros", name: "Euros €", slug: "euros" },
        { id: "livres-gbp", name: "Libras GBP", slug: "livres-gbp" },
        { id: "dirhams-aed", name: "Dirhams AED", slug: "dirhams-aed" },
        { id: "dinars-tnd", name: "Dinares TND", slug: "dinars-tnd" },
        { id: "francs-cfa", name: "Francos CFA", slug: "francs-cfa" },
        { id: "yuan-cny", name: "Yuan CNY", slug: "yuan-cny" },
        { id: "riyals-sar", name: "Riyals SAR", slug: "riyals-sar" },
        { id: "billets-etrangers", name: "Billetes Extranjeros", slug: "billets-etrangers" },
        { id: "pieces-etrangeres", name: "Monedas Extranjeras", slug: "pieces-etrangeres" }
      ]
    },
    {
      id: "or-métaux-précieux",
      name: "Oro y Metales Preciosos",
      slug: "or-metaux-precieux",
      icon: <Gem className="h-4 w-4 text-yellow-500" />,
      subcategories: [
        { id: "lingots-or", name: "Lingotes de Oro", slug: "lingots-or" },
        { id: "pieces-or", name: "Monedas de Oro", slug: "pieces-or" },
        { id: "pieces-argent", name: "Monedas de Plata", slug: "pieces-argent" },
        { id: "metal-precieux", name: "Metal Precioso", slug: "metal-precieux" },
        { id: "or-investissement", name: "Oro de Inversión", slug: "or-investissement" },
        { id: "argent-pur", name: "Plata Pura", slug: "argent-pur" },
        { id: "valeurs-rares", name: "Valores Raros", slug: "valeurs-rares" },
        { id: "or-numismatique", name: "Oro Numismático", slug: "or-numismatique" },
        { id: "metaux-rares", name: "Metales Raros", slug: "metaux-rares" }
      ]
    },
    {
      id: "accessoires-numismatiques",
      name: "Accesorios Numismáticos",
      slug: "accessoires-numismatiques",
      icon: <Package className="h-4 w-4 text-gray-600" />,
      subcategories: [
        { id: "albums-monnaies", name: "Álbumes de Monedas", slug: "albums-monnaies" },
        { id: "etuis-protection", name: "Estuches de Protección", slug: "etuis-protection" },
        { id: "boites-numismatiques", name: "Cajas Numismáticas", slug: "boites-numismatiques" },
        { id: "classeurs-pieces", name: "Archivadores de Monedas", slug: "classeurs-pieces" },
        { id: "vitrines-collection", name: "Vitrinas de Colección", slug: "vitrines-collection" },
        { id: "gants-numismatiques", name: "Guantes Numismáticos", slug: "gants-numismatiques" },
        { id: "loupes-inspection", name: "Lupas de Inspección", slug: "loupes-inspection" },
        { id: "sachets-securises", name: "Bolsas de Seguridad", slug: "sachets-securises" }
      ]
    },
    {
      id: "aide-collection",
      name: "Ayuda a la Colección",
      slug: "aide-collection",
      icon: <HelpCircle className="h-4 w-4 text-green-600" />,
      subcategories: [
        { id: "tri-monnaies", name: "Clasificación de Monedas", slug: "tri-monnaies" },
        { id: "nettoyage-billets", name: "Limpieza de Billetes", slug: "nettoyage-billets" },
        { id: "restauration-pieces", name: "Restauración de Monedas", slug: "restauration-pieces" },
        { id: "grade-etat", name: "Grado de Estado", slug: "grade-etat" },
        { id: "conseils-achat", name: "Consejos de Compra", slug: "conseils-achat" },
        { id: "conseils-vente", name: "Consejos de Venta", slug: "conseils-vente" },
        { id: "organisation-collection", name: "Organización de Colección", slug: "organisation-collection" },
        { id: "certification-experts", name: "Certificación de Expertos", slug: "certification-experts" }
      ]
    }
  ]
};