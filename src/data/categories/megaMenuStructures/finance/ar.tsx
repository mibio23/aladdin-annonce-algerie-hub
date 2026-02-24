import { MenuCategory } from "../../categoryTypes";
import { DollarSign, Coins, Globe, Gem, Package, HelpCircle } from "lucide-react";

export const financeAr: MenuCategory = {
  id: "finance",
  name: "التمويل والعملات",
  slug: "finance",
  icon: <DollarSign className="h-5 w-5 text-green-600" />,
  subcategories: [
    {
      id: "monnaie-fiduciaire",
      name: "العملات الورقية والمعدنية",
      slug: "monnaie-fiduciaire",
      icon: <Coins className="h-4 w-4 text-yellow-600" />,
      subcategories: [
        { id: "billets-algeriens", name: "أوراق نقدية جزائرية", slug: "billets-algeriens" },
        { id: "pieces-algeriennes", name: "عملات معدنية جزائرية", slug: "pieces-algeriennes" },
        { id: "monnaies-anciennes", name: "عملات قديمة", slug: "monnaies-anciennes" },
        { id: "billets-rares", name: "أوراق نقدية نادرة", slug: "billets-rares" },
        { id: "pieces-commemoratives", name: "عملات تذكارية", slug: "pieces-commemoratives" },
        { id: "monnaies-etrangeres", name: "عملات أجنبية", slug: "monnaies-etrangeres" },
        { id: "monnaies-or", name: "عملات ذهبية", slug: "monnaies-or" },
        { id: "monnaies-argent", name: "عملات فضية", slug: "monnaies-argent" },
        { id: "series-numismatiques", name: "سلاسل العملات", slug: "series-numismatiques" },
        { id: "collections-completes", name: "مجموعات كاملة", slug: "collections-completes" }
      ]
    },
    {
      id: "services-financiers",
      name: "خدمات مالية",
      slug: "services-financiers",
      icon: <DollarSign className="h-4 w-4 text-blue-600" />,
      subcategories: [
        { id: "change-devises", name: "صرف العملات", slug: "change-devises" },
        { id: "estimation-valeur", name: "تقدير القيمة", slug: "estimation-valeur" },
        { id: "expertise-numismatique", name: "خبرة في العملات", slug: "expertise-numismatique" },
        { id: "transfert-argent", name: "تحويل الأموال", slug: "transfert-argent" },
        { id: "conseil-financier", name: "استشارات مالية", slug: "conseil-financier" },
        { id: "conversion-monnaie", name: "تحويل العملات", slug: "conversion-monnaie" },
        { id: "authentification-billets", name: "توثيق الأوراق نقدية", slug: "authentification-billets" },
        { id: "evaluation-pieces", name: "تقييم العملات المعدنية", slug: "evaluation-pieces" }
      ]
    },
    {
      id: "monnaie-internationale",
      name: "عملات دولية",
      slug: "monnaie-internationale",
      icon: <Globe className="h-4 w-4 text-purple-600" />,
      subcategories: [
        { id: "dollars-usd", name: "دولار أمريكي", slug: "dollars-usd" },
        { id: "euros", name: "يورو", slug: "euros" },
        { id: "livres-gbp", name: "جنيه إسترليني", slug: "livres-gbp" },
        { id: "dirhams-aed", name: "درهم إماراتي", slug: "dirhams-aed" },
        { id: "dinars-tnd", name: "دينار تونسي", slug: "dinars-tnd" },
        { id: "francs-cfa", name: "فرنك سيفا", slug: "francs-cfa" },
        { id: "yuan-cny", name: "يوان صيني", slug: "yuan-cny" },
        { id: "riyals-sar", name: "ريال سعودي", slug: "riyals-sar" },
        { id: "billets-etrangers", name: "أوراق نقدية أجنبية", slug: "billets-etrangers" },
        { id: "pieces-etrangeres", name: "عملات معدنية أجنبية", slug: "pieces-etrangeres" }
      ]
    },
    {
      id: "or-métaux-précieux",
      name: "ذهب ومعادن ثمينة",
      slug: "or-metaux-precieux",
      icon: <Gem className="h-4 w-4 text-yellow-500" />,
      subcategories: [
        { id: "lingots-or", name: "سبائك ذهب", slug: "lingots-or" },
        { id: "pieces-or", name: "عملات ذهبية", slug: "pieces-or" },
        { id: "pieces-argent", name: "عملات فضية", slug: "pieces-argent" },
        { id: "metal-precieux", name: "معادن ثمينة", slug: "metal-precieux" },
        { id: "or-investissement", name: "ذهب للاستثمار", slug: "or-investissement" },
        { id: "argent-pur", name: "فضة نقية", slug: "argent-pur" },
        { id: "valeurs-rares", name: "قيم نادرة", slug: "valeurs-rares" },
        { id: "or-numismatique", name: "ذهب للجمع", slug: "or-numismatique" },
        { id: "metaux-rares", name: "معادن نادرة", slug: "metaux-rares" }
      ]
    },
    {
      id: "accessoires-numismatiques",
      name: "ملحقات جمع العملات",
      slug: "accessoires-numismatiques",
      icon: <Package className="h-4 w-4 text-gray-600" />,
      subcategories: [
        { id: "albums-monnaies", name: "ألبومات العملات", slug: "albums-monnaies" },
        { id: "etuis-protection", name: "حافظات حماية", slug: "etuis-protection" },
        { id: "boites-numismatiques", name: "صناديق للعملات", slug: "boites-numismatiques" },
        { id: "classeurs-pieces", name: "ملفات للعملات", slug: "classeurs-pieces" },
        { id: "vitrines-collection", name: "واجهات عرض", slug: "vitrines-collection" },
        { id: "gants-numismatiques", name: "قفازات التعامل مع العملات", slug: "gants-numismatiques" },
        { id: "loupes-inspection", name: "عدسات فحص", slug: "loupes-inspection" },
        { id: "sachets-securises", name: "أكياس آمنة", slug: "sachets-securises" }
      ]
    },
    {
      id: "aide-collection",
      name: "مساعدة في الجمع",
      slug: "aide-collection",
      icon: <HelpCircle className="h-4 w-4 text-green-600" />,
      subcategories: [
        { id: "tri-monnaies", name: "فرز العملات", slug: "tri-monnaies" },
        { id: "nettoyage-billets", name: "تنظيف الأوراق النقدية", slug: "nettoyage-billets" },
        { id: "restauration-pieces", name: "ترميم العملات", slug: "restauration-pieces" },
        { id: "grade-etat", name: "تقييم الحالة", slug: "grade-etat" },
        { id: "conseils-achat", name: "نصائح الشراء", slug: "conseils-achat" },
        { id: "conseils-vente", name: "نصائح البيع", slug: "conseils-vente" },
        { id: "organisation-collection", name: "تنظيم المجموعة", slug: "organisation-collection" },
        { id: "certification-experts", name: "شهادات الخبراء", slug: "certification-experts" }
      ]
    }
  ]
};