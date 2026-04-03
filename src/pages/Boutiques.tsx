import { useEffect, useState, useMemo } from "react";
import { Link, useParams } from "react-router-dom";
import { Store, Loader2 } from "lucide-react";
import ShopCard from "@/components/home/ShopCard";
import SmartAnnouncementsGrid from "@/components/home/SmartAnnouncementsGrid";
import { Button } from "@/components/ui/button";
import { LocalizedLink } from "@/utils/linkUtils";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { supabase } from "@/integrations/supabase/client";
import SEOHead from "@/components/SEO/SEOHead";
import { useLanguageNavigation } from "@/hooks/useLanguageNavigation";
import { Breadcrumb, BreadcrumbItem, BreadcrumbLink, BreadcrumbList, BreadcrumbPage, BreadcrumbSeparator } from "@/components/ui/breadcrumb";

type ShopRubrique =
  | "magasins"
  | "cabinets"
  | "entreprises-privees"
  | "entreprises-nationales"
  | "commerce-ambulant"
  | "associations"
  | "boutique-en-ligne";

const rubriques: Array<{ slug: ShopRubrique; labelKey: string; fallbackLabel: string }> = [
  { slug: "magasins", labelKey: "menu.shops.stores", fallbackLabel: "Magasins" },
  { slug: "cabinets", labelKey: "menu.shops.offices", fallbackLabel: "Cabinets" },
  { slug: "entreprises-privees", labelKey: "menu.shops.privateCompanies", fallbackLabel: "Entreprises privées" },
  { slug: "entreprises-nationales", labelKey: "menu.shops.nationalCompanies", fallbackLabel: "Entreprises nationales" },
  { slug: "commerce-ambulant", labelKey: "menu.shops.streetVendors", fallbackLabel: "Commerce ambulant" },
  { slug: "associations", labelKey: "menu.shops.associations", fallbackLabel: "Associations" },
  { slug: "boutique-en-ligne", labelKey: "menu.shops.onlineShop", fallbackLabel: "Boutique en ligne" },
];

const rubriqueToShopStatus: Record<Exclude<ShopRubrique, "boutique-en-ligne">, string> = {
  magasins: "shops",
  cabinets: "cabinets",
  "entreprises-privees": "privateCompanies",
  "entreprises-nationales": "nationalCompanies",
  "commerce-ambulant": "mobileCommerce",
  associations: "associations",
};

export default function Boutiques() {
  const { t } = useSafeI18nWithRouter();
  const { getLocalizedPath } = useLanguageNavigation();
  const { rubrique } = useParams<{ rubrique?: string }>();
  
  const [shops, setShops] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);

  const activeRubrique = (rubrique ?? "all") as ShopRubrique | "all";

  useEffect(() => {
    fetchShops();
  }, []);

  const fetchShops = async () => {
    try {
      setLoading(true);
      const { data, error } = await supabase
        .from('shops')
        .select('*')
        .or('shop_status.is.null,shop_status.neq.inactive')
        .order('created_at', { ascending: false });

      if (error) throw error;
      setShops(data || []);
    } catch (error) {
      console.error('Error fetching shops:', error);
    } finally {
      setLoading(false);
    }
  };

  const filteredShops = useMemo(() => {
    if (activeRubrique === "all") return shops;
    if (activeRubrique === "boutique-en-ligne") {
      return shops.filter((s) => s.shop_status === "onlineShop" || s.is_online);
    }

    const targetStatus = rubriqueToShopStatus[activeRubrique as Exclude<ShopRubrique, "boutique-en-ligne">];

    return shops.filter((s) => {
      if (targetStatus && s.shop_status === targetStatus) return true;
      if (s.main_category) return String(s.main_category).toLowerCase().includes(activeRubrique.replace("-", " "));
      return false;
    });
  }, [shops, activeRubrique]);

  const getLabel = (key: string, fallback: string) => {
    const value = t(key);
    return value && value !== key ? value : fallback;
  };

  const activeRubriqueLabel = (() => {
    if (activeRubrique === "all") {
      return getLabel("shops.listing.allShops", "Toutes les boutiques");
    }

    const rubriqueItem = rubriques.find((r) => r.slug === activeRubrique);
    const rubriqueLabel = rubriqueItem
      ? getLabel(rubriqueItem.labelKey, rubriqueItem.fallbackLabel)
      : activeRubrique;

    return `${getLabel("shops.listing.categoryPrefix", "Rubrique :")} ${rubriqueLabel}`;
  })();

  const shopsTitle = getLabel("shops.listing.title", "Boutiques");
  const shopsBaseLabel = getLabel("shops.listing.allShops", "Toutes les boutiques");
  const activeRubriqueName = (() => {
    if (activeRubrique === "all") return shopsBaseLabel;
    const rubriqueItem = rubriques.find((r) => r.slug === activeRubrique);
    return rubriqueItem ? getLabel(rubriqueItem.labelKey, rubriqueItem.fallbackLabel) : activeRubrique;
  })();
  const shopsUrl = activeRubrique === "all" ? getLocalizedPath("/boutiques") : getLocalizedPath(`/boutiques/${activeRubrique}`);
  const shopsBreadcrumbs = [
    { label: t("breadcrumb.home"), href: getLocalizedPath("/") },
    { label: shopsTitle, href: getLocalizedPath("/boutiques") },
    ...(activeRubrique !== "all" ? [{ label: activeRubriqueName, href: shopsUrl }] : []),
  ];
  const shopsSeoTitle = activeRubrique === "all" ? shopsTitle : `${shopsTitle} - ${activeRubriqueName}`;
  const shopsSeoDescription =
    activeRubrique === "all"
      ? `${shopsTitle} sur Aladdin Annonces Algérie. Découvrez les boutiques, magasins, cabinets, entreprises et associations disponibles.`
      : `${activeRubriqueName} sur Aladdin Annonces Algérie. Parcourez les boutiques et professionnels disponibles dans cette rubrique.`;
  const shopsStructuredData = {
    '@context': 'https://schema.org',
    '@type': 'ItemList',
    itemListElement: filteredShops.slice(0, 24).map((shop, index) => ({
      '@type': 'ListItem',
      position: index + 1,
      url: `${window.location.origin}${getLocalizedPath(`/boutique/${shop.id}`)}`,
      name: shop.name || `Boutique ${index + 1}`,
    })),
  };

  if (loading) {
    return (
      <>
        <SEOHead
          title={shopsSeoTitle}
          description={shopsSeoDescription}
          category={shopsTitle}
          subcategory={activeRubrique !== "all" ? activeRubriqueName : undefined}
          url={shopsUrl}
          keywords={[shopsTitle, activeRubriqueName]}
          breadcrumbs={shopsBreadcrumbs}
        />
        <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center">
          <Loader2 className="h-8 w-8 animate-spin text-primary" />
        </div>
      </>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900 py-8">
      <SEOHead
        title={shopsSeoTitle}
        description={shopsSeoDescription}
        category={shopsTitle}
        subcategory={activeRubrique !== "all" ? activeRubriqueName : undefined}
        url={shopsUrl}
        keywords={[shopsTitle, activeRubriqueName]}
        breadcrumbs={shopsBreadcrumbs}
        structuredData={filteredShops.length > 0 ? shopsStructuredData : undefined}
      />
      <div className="container mx-auto px-4">
        <div className="max-w-6xl mx-auto space-y-6">
          <Breadcrumb>
            <BreadcrumbList>
              <BreadcrumbItem>
                <BreadcrumbLink asChild>
                  <Link to={getLocalizedPath("/")}>{t("breadcrumb.home")}</Link>
                </BreadcrumbLink>
              </BreadcrumbItem>
              <BreadcrumbSeparator />
              <BreadcrumbItem>
                {activeRubrique === "all" ? (
                  <BreadcrumbPage>{shopsTitle}</BreadcrumbPage>
                ) : (
                  <BreadcrumbLink asChild>
                    <Link to={getLocalizedPath("/boutiques")}>{shopsTitle}</Link>
                  </BreadcrumbLink>
                )}
              </BreadcrumbItem>
              {activeRubrique !== "all" ? (
                <>
                  <BreadcrumbSeparator />
                  <BreadcrumbItem>
                    <BreadcrumbPage>{activeRubriqueName}</BreadcrumbPage>
                  </BreadcrumbItem>
                </>
              ) : null}
            </BreadcrumbList>
          </Breadcrumb>
          <div className="flex items-center gap-3">
            <Store className="h-8 w-8 text-primary" />
            <div>
              <h1 className="text-2xl font-bold text-foreground">
                {shopsTitle}
              </h1>
              <p className="text-muted-foreground">{activeRubriqueLabel}</p>
            </div>
          </div>

          <div className="flex flex-wrap gap-2">
            <Button variant={activeRubrique === "all" ? "default" : "outline"} size="sm" asChild>
              <LocalizedLink to="/boutiques">
                {getLabel("shops.listing.allButton", "Toutes")}
              </LocalizedLink>
            </Button>

            {rubriques.map((r) => (
              <Button key={r.slug} variant={activeRubrique === r.slug ? "default" : "outline"} size="sm" asChild>
                <LocalizedLink to={`/boutiques/${r.slug}`}>{getLabel(r.labelKey, r.fallbackLabel)}</LocalizedLink>
              </Button>
            ))}
          </div>

          {filteredShops.length === 0 ? (
            <div className="bg-white dark:bg-slate-800 border rounded-lg p-10 text-center">
              <Store className="mx-auto h-12 w-12 text-muted-foreground mb-4" />
              <h2 className="text-lg font-semibold text-foreground mb-2">
                {getLabel("shops.listing.noShopsFoundTitle", "Aucune boutique trouvée")}
              </h2>
              <p className="text-muted-foreground">
                {getLabel("shops.listing.noShopsFoundHint", "Essayez une autre rubrique.")}
              </p>
            </div>
          ) : (
            <SmartAnnouncementsGrid itemsPerRow={8}>
              {filteredShops.map((shop) => (
                <ShopCard key={shop.id} shop={shop} />
              ))}
            </SmartAnnouncementsGrid>
          )}
        </div>
      </div>
    </div>
  );
}
