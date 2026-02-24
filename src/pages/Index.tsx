
import React, { Suspense, useEffect, useState } from "react";
import HeroCarousel from "@/components/home/HeroCarousel";
import Hero from "@/components/home/Hero";
import ShareButtons from "@/components/shared/ShareButtons";
import Footer from "@/components/layout/Footer";
import BackToTopButton from "@/components/shared/BackToTopButton";
import { supabase } from "@/integrations/supabase/client";
import { usePopularCategories } from "@/hooks/usePopularCategories";

// Lazy load heavy components to reduce initial bundle size
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
        (supabase as any)
          .from("announcements_public")
          .select("category_id, count:id")
          .eq("status", "active"),
        (supabase as any).rpc("get_global_listing_total"),
      ]);

      if (cancelled) return;

      const nextAnnouncementsCount = announcementsResult.error ? null : (announcementsResult.count ?? 0);
      const nextJobOffersCount = jobOffersResult.error ? null : (jobOffersResult.count ?? 0);
      const nextShopsCount = shopsResult.error ? null : (shopsResult.count ?? 0);

      if (nextJobOffersCount != null) setJobOffersCount(nextJobOffersCount);
      if (nextShopsCount != null) setShopsCount(nextShopsCount);

      const totalFromRpc = Number((totalCountResult as any)?.data ?? NaN);
      if (Number.isFinite(totalFromRpc)) {
        setTotalCount(totalFromRpc);
      } else if (nextAnnouncementsCount != null || nextJobOffersCount != null || nextShopsCount != null) {
        setTotalCount((nextAnnouncementsCount ?? 0) + (nextJobOffersCount ?? 0) + (nextShopsCount ?? 0));
      }

      const aggregatedRows = (categoryCountsResult as any)?.data as any[] | null | undefined;
      const aggregatedError = (categoryCountsResult as any)?.error as any | null | undefined;

      if (!aggregatedError && Array.isArray(aggregatedRows)) {
        const next: Record<string, number> = {};
        for (const row of aggregatedRows) {
          const key = row?.category_id;
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
            .eq("category_id", categoryId);
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

  return (
    <>
      {/* Nouveaux Carrousels en plein écran (largeur fluide comme SearchBar) */}
      <div className="px-4 pt-6 pb-2">
        <HeroCarousel />
      </div>

      {/* Grande bannière avec conteneur centré - loaded immediately */}
      <div className="container mx-auto px-4 pb-6">
        <Hero />
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

      <ShareButtons />
      <Footer />
      <BackToTopButton />
    </>
  );
};

export default Index;
