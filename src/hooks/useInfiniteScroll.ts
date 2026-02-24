import { useState, useEffect, useCallback, useRef } from 'react';
import { Announcement } from '@/hooks/useAnnouncements';
import { supabase } from '@/integrations/supabase/client';
import { logger } from '@/utils/silentLogger';

type SearchFilters = {
  search?: string;
  category?: string;
  subcategory?: string;
  specialization?: string;
  condition?: string;
  minPrice?: number;
  maxPrice?: number;
  location?: string;
  wilaya?: string;
  distance?: number;
};

interface UseInfiniteScrollProps {
  initialResults: Announcement[];
  searchFilters?: SearchFilters;
  pageSize?: number;
  enabled?: boolean;
}

export const useInfiniteScroll = ({
  initialResults,
  searchFilters,
  pageSize = 24,
  enabled = false
}: UseInfiniteScrollProps) => {
  const [allResults, setAllResults] = useState<Announcement[]>(initialResults);
  const [hasMore, setHasMore] = useState(true);
  const [loading, setLoading] = useState(false);
  const [page, setPage] = useState(1);
  const observerRef = useRef<IntersectionObserver | undefined>(undefined);
  const loadingRef = useRef<HTMLDivElement | null>(null);

  // Reset when search filters change
  const searchFiltersKey = useCallback(() => JSON.stringify(searchFilters || {}), [searchFilters]);
  useEffect(() => {
    setAllResults(initialResults);
    setPage(1);
    setHasMore(initialResults.length >= pageSize);
  }, [initialResults, pageSize, searchFiltersKey]);

  const loadMoreResults = useCallback(async () => {
    if (loading || !hasMore || !enabled) return;
    
    setLoading(true);
    try {
      const { data, error } = await supabase.functions.invoke('smart-search-engine', {
        body: {
          query: searchFilters?.search || '',
          filters: {
            category: searchFilters?.category,
            subcategory: searchFilters?.subcategory,
            specialization: searchFilters?.specialization,
            condition: searchFilters?.condition,
            priceMin: searchFilters?.minPrice,
            priceMax: searchFilters?.maxPrice,
            location: searchFilters?.location,
            wilaya: searchFilters?.wilaya,
            distance: searchFilters?.distance,
          },
          limit: pageSize,
          offset: page * pageSize
        }
      });

      if (error) throw error;

      const newResults = (data?.data || []) as Announcement[];
      
      if (newResults.length < pageSize) {
        setHasMore(false);
      }
      
      if (newResults.length > 0) {
        setAllResults(prev => [...prev, ...newResults]);
        setPage(prev => prev + 1);
      }
    } catch (error) {
      logger.error('Error loading more results:', error);
      setHasMore(false);
    } finally {
      setLoading(false);
    }
  }, [loading, hasMore, enabled, searchFilters, page, pageSize]);

  // Set up intersection observer
  useEffect(() => {
    if (!enabled) return;

    const currentRef = loadingRef.current;
    
    observerRef.current = new IntersectionObserver(
      (entries) => {
        if (entries[0].isIntersecting && hasMore && !loading) {
          loadMoreResults();
        }
      },
      { rootMargin: '100px' }
    );

    if (currentRef) {
      observerRef.current.observe(currentRef);
    }

    return () => {
      if (observerRef.current && currentRef) {
        observerRef.current.unobserve(currentRef);
      }
    };
  }, [enabled, hasMore, loading, loadMoreResults]);

  return {
    results: allResults,
    hasMore,
    loading,
    loadingRef
  };
};