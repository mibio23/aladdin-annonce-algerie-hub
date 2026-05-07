
import React, { Suspense, useEffect, useState } from "react";
import { supabase } from "@/integrations/supabase/client";
import { usePopularCategories } from "@/hooks/usePopularCategories";
import type { RpcScalarResult, CategoryCountRow } from "@/integrations/supabase/types.extended";
import SEOHead from "@/components/SEO/SEOHead";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";

// HeroCarousel : lazy-load avec skeleton à hauteur fixe (meilleur pour TBT/FID)
// L'image LCP vient de Supabase DB (dynamique) → impossible de preload statiquement
const HeroCarousel = React.lazy(() => import("@/components/home/HeroCarousel"));
const Hero = React.lazy(() => import("@/components/home/Hero"));
const ShareButtons = React.lazy(() => import("@/components/shared/ShareButtons"));
const Footer = React.lazy(() => import("@/components/layout/Footer"));
const BackToTopButton = React.lazy(() => import("@/components/shared/BackToTopButton"));
const ShopByCategorySection = React.lazy(() => import("@/components/home/ShopByCategorySection"));
const PremiumAnnouncementsSection = React.lazy(() => import("@/components/home/PremiumAnnouncementsSection"));
const DiscoverShopsSection = React.lazy(() => import("@/components/home/DiscoverShopsSection"));
const TradesAndRepairersSection = React.lazy(() => import("@/components/home/TradesAndRepairersSection"));
const PopularSearchedAnnouncementsSection = React.lazy(() => import("@/components/home/PopularSearchedAnnouncementsSection"));
const AdvancedSearchBar = React.lazy(() => import("@/components/home/AdvancedSearchBar"));
const DatabaseAdvertisingCarousel = React.lazy(() => import("@/components/home/DatabaseAdvertisingCarousel"));

const LazySection: React.FC<{ children: React.ReactNode }> = ({ children }) => (
  <Suspense fallback={<div className="animate-pulse bg-muted h-32 rounded-lg mx-4" />}>
    {children}
  </Suspense>
);

const Index = () => {
  const popularCategories = usePopularCategories();
  const { t, language } = useSafeI18nWithRouter();
  const [jobOffersCount, setJobOffersCount] = useState<number | null>(null);
  const [shopsCount, setShopsCount] = useState<number | null>(null);
  const [totalCount, setTotalCount] = useState<number | null>(null);
  const [categoryCounts, setCategoryCounts] = useState<Record<string, number>>({});

  useEffect(() => {
    let cancelled = false;

    const fetchCounts = async () => {
      const [
        announcementsResult,
        jobOffersResult,
        shopsResult,
        categoryCountsResult,
        totalCountResult,
      ] = await Promise.all([
        supabase.from("announcements_public").select("id", { count: "exact", head: true }).eq("status", "active"),
        supabase.from("professional_job_offers").select("id", { count: "exact", head: true }).eq("is_active", true),
        supabase.from("shops").select("id", { count: "exact", head: true }),
        supabase
          .from("announcements_public")
          .select("category_slug, count:id")
          .eq("status", "active"),
        supabase.rpc("get_global_listing_total"),
      ]);

      if (cancelled) return;

      const nextAnnouncementsCount = announcementsResult.error ? null : (announcementsResult.count ?? 0);
      const nextJobOffersCount = jobOffersResult.error ? null : (jobOffersResult.count ?? 0);
      const nextShopsCount = shopsResult.error ? null : (shopsResult.count ?? 0);

      if (nextJobOffersCount != null) setJobOffersCount(nextJobOffersCount);
      if (nextShopsCount != null) setShopsCount(nextShopsCount);

      const totalFromRpc = Number((totalCountResult as RpcScalarResult)?.data ?? NaN);
      if (Number.isFinite(totalFromRpc)) {
        setTotalCount(totalFromRpc);
      } else if (nextAnnouncementsCount != null || nextJobOffersCount != null || nextShopsCount != null) {
        setTotalCount((nextAnnouncementsCount ?? 0) + (nextJobOffersCount ?? 0) + (nextShopsCount ?? 0));
      }

      const aggregatedRows = (categoryCountsResult as RpcScalarResult<CategoryCountRow[]>)?.data;
      const aggregatedError = (categoryCountsResult as RpcScalarResult<CategoryCountRow[]>)?.error;

      if (!aggregatedError && Array.isArray(aggregatedRows)) {
        const next: Record<string, number> = {};
        for (const row of aggregatedRows) {
          const key = row?.category_slug;
          const value = Number(row?.count ?? row?.count_id ?? row?.countId);
          if (typeof key === "string" && Number.isFinite(value)) next[key] = value;
        }
        setCategoryCounts(next);
        return;
      }

      const targetCategoryIds = popularCategories.map((c) => c.id);
      const pairs = await Promise.all(
        targetCategoryIds.map(async (categoryId) => {
          const res = await supabase
            .from("announcements_public")
            .select("id", { count: "exact", head: true })
            .eq("status", "active")
            .eq("category_slug", categoryId);
          return [categoryId, res.count ?? 0] as const;
        })
      );

      if (cancelled) return;
      setCategoryCounts(Object.fromEntries(pairs));
    };

    fetchCounts();

    return () => {
      cancelled = true;
    };
  }, [popularCategories]);

  const seoTitles: Record<string, string> = {
    fr: 'Aladdin Annonces Algérie — Petites Annonces Gratuites',
    en: 'Aladdin Algeria — Free Classifieds',
    ar: 'علاء الدين الجزائر — إعلانات مجانية',
    es: 'Aladdin Argelia — Anuncios Gratis',
    de: 'Aladdin Algerien — Kostenlose Kleinanzeigen',
    it: 'Aladdin Algeria — Annunci Gratuiti',
  };
  const seoDescs: Record<string, string> = {
    fr: 'Déposez et consultez des petites annonces gratuites en Algérie : immobilier, voitures, emploi, services, boutiques et bien plus.',
    en: 'Post and browse free classifieds in Algeria: real estate, cars, jobs, services, shops and more.',
    ar: 'انشر وتصفح إعلاناتك المجانية في الجزائر: عقارات، سيارات، وظائف، خدمات، متاجر وأكثر.',
    es: 'Publica y consulta anuncios gratis en Argelia: inmuebles, coches, empleo, servicios, tiendas y más.',
    de: 'Schalten und durchsuchen Sie kostenlose Kleinanzeigen in Algerien: Immobilien, Autos, Jobs, Dienstleistungen und mehr.',
    it: 'Pubblica e consulta annunci gratuiti in Algeria: immobili, auto, lavoro, servizi, negozi e altro.',
  };

  return (
    <>
      <SEOHead
        title={seoTitles[language] || seoTitles.fr}
        description={seoDescs[language] || seoDescs.fr}
        image="/og-image.jpg"
        url="/"
      />
      {/* Carrousel hero - lazy avec image LCP visible immédiatement (FIX 2) */}
      <div className="px-4 pt-6 pb-2">
        <Suspense fallback={
          <div
            style={{
              height: '450px',
              borderRadius: '24px',
              backgroundImage: 'url(https://images.unsplash.com/photo-1581091226825-a6a2a5aee158?w=800&q=75&auto=format&fit=crop)',
              backgroundSize: 'cover',
              backgroundPosition: 'center',
              backgroundColor: '#1e293b',
            }}
            aria-label="Chargement du carousel"
          />
        }>
          <HeroCarousel />
        </Suspense>
      </div>

      {/* Grande bannière avec conteneur centré */}
      <div className="container mx-auto px-4 pb-6">
        <LazySection>
          <Hero />
        </LazySection>
      </div>

      {/* Contenu principal en plein écran */}
      <main className="flex-grow">
        <div className="space-y-6 py-4">
          <LazySection>
            <ShopByCategorySection
              totalCount={totalCount ?? undefined}
              categoryCounts={categoryCounts}
            />
          </LazySection>

          <div className="px-4">
            <LazySection>
              <AdvancedSearchBar />
            </LazySection>
          </div>

          {/* Sections d'annonces - lazy loaded */}
          <div className="space-y-6">
            <LazySection>
              <PremiumAnnouncementsSection />
            </LazySection>
            
            <LazySection>
              <DiscoverShopsSection shopsCount={shopsCount ?? undefined} />
            </LazySection>
            
            <LazySection>
              <TradesAndRepairersSection
                jobOffersCount={jobOffersCount ?? undefined}
              />
            </LazySection>
            
            <LazySection>
              <PopularSearchedAnnouncementsSection />
            </LazySection>
          </div>
        </div>
      </main>

      {/* Carrousel publicitaire - lazy loaded */}
      <LazySection>
        <DatabaseAdvertisingCarousel />
      </LazySection>

      <LazySection>
        <ShareButtons />
      </LazySection>
      <LazySection>
        <Footer />
      </LazySection>
      <LazySection>
        <BackToTopButton />
      </LazySection>
    </>
  );
};

export default Index;
