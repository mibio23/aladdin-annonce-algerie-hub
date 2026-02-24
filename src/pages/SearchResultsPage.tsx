import { useState, useEffect, useCallback } from 'react';
import { useSearchParams, useNavigate } from 'react-router-dom';
import { Button } from '@/components/ui/button';
import { Settings, Download } from 'lucide-react';
import { useAnnouncements } from '@/hooks/useAnnouncements';
import { useCategories } from '@/services/supabaseCategoriesService';
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { useSavedSearches } from '@/hooks/useSavedSearches';
import { useInfiniteScroll } from '@/hooks/useInfiniteScroll';
import { logger } from '@/utils/silentLogger';
import { useRealtimeAnnouncements, useListenNewAnnouncements } from '@/hooks/useRealtimeAnnouncements';
import { extractWilayaNameFromText } from '@/utils/distanceUtils';

import SkeletonLoading from '@/components/search/SkeletonLoading';
import SearchExport from '@/components/search/SearchExport';
import SearchResultsHeader from '@/components/search/SearchResultsHeader';
import SearchSortingControls, { SortOption, ViewMode } from '@/components/search/SearchSortingControls';
import SearchResultsGrid from '@/components/search/SearchResultsGrid';
import SearchBreadcrumb from '@/components/search/SearchBreadcrumb';
import SearchPagination from '@/components/search/SearchPagination';

const SearchResultsPage: React.FC = () => {
  const [searchParams, setSearchParams] = useSearchParams();
  const navigate = useNavigate();
  const { t, language } = useSafeI18nWithRouter();
  const { announcements = [], loading, fetchAnnouncements, totalCount, isApproximate } = useAnnouncements();

  useRealtimeAnnouncements();
  
  useListenNewAnnouncements((newAnnouncement) => {
    logger.info('Nouvelle annonce détectée, rafraîchissement automatique...');
    if (!selectedCategory || selectedCategory === newAnnouncement.category_id) {
      handleSearch();
    }
  });

  const [searchQuery, setSearchQuery] = useState(searchParams.get('q') || '');
  const [selectedCategory, setSelectedCategory] = useState(searchParams.get('category') || '');
  const [selectedSubCategory, setSelectedSubCategory] = useState(searchParams.get('subcategory') || '');
  const [selectedSpecialisation, setSelectedSpecialisation] = useState(searchParams.get('specialisation') || '');
  const [selectedCondition, setSelectedCondition] = useState(searchParams.get('condition') || '');
  const [minPrice, setMinPrice] = useState<string>(searchParams.get('minPrice') || '');
  const [maxPrice, setMaxPrice] = useState<string>(searchParams.get('maxPrice') || '');
  const [location, setLocation] = useState(searchParams.get('location') || '');
  const [selectedWilaya, setSelectedWilaya] = useState(searchParams.get('wilaya') || '');
  const [distance, _setDistance] = useState(parseInt(searchParams.get('distance') || '50'));

  const [sortBy, setSortBy] = useState<SortOption>((searchParams.get('sort') as SortOption) || 'relevance');
  const [viewMode, setViewMode] = useState<ViewMode>('grid');
  const [resultsPerPage, setResultsPerPage] = useState(24);
  const [currentPage, setCurrentPage] = useState(1);
  const [searchTime, setSearchTime] = useState<number>();
  const [showExport, setShowExport] = useState(false);
  const [infiniteScrollEnabled, setInfiniteScrollEnabled] = useState(false);

  const { data: categoryMenu = [] } = useCategories(language);
  const { addToHistory } = useSavedSearches();

  // Sync state with URL params
  useEffect(() => {
    setSearchQuery(searchParams.get('q') || '');
    setSelectedCategory(searchParams.get('category') || '');
    setSelectedSubCategory(searchParams.get('subcategory') || '');
    setSelectedSpecialisation(searchParams.get('specialisation') || '');
    setSelectedCondition(searchParams.get('condition') || '');
    setMinPrice(searchParams.get('minPrice') || '');
    setMaxPrice(searchParams.get('maxPrice') || '');
    setLocation(searchParams.get('location') || '');
    setSelectedWilaya(searchParams.get('wilaya') || '');
    const distParam = searchParams.get('distance');
    if (distParam) _setDistance(parseInt(distParam));
    const sortParam = searchParams.get('sort');
    if (sortParam) setSortBy(sortParam as SortOption);
  }, [searchParams]);

  useEffect(() => {
    if (searchParams.get('wilaya')) return;
    const combined = `${searchParams.get('q') || ''} ${searchParams.get('location') || ''}`.trim();
    const resolved = extractWilayaNameFromText(combined);
    if (!resolved) return;
    const next = new URLSearchParams(searchParams);
    next.set('wilaya', resolved);
    setSearchParams(next, { replace: true });
  }, [searchParams, setSearchParams]);

  const { results: infiniteResults, hasMore, loading: _infiniteLoading, loadingRef } = useInfiniteScroll({
    initialResults: announcements,
    searchFilters: {
      search: searchQuery,
      category: selectedCategory,
      subcategory: selectedSubCategory,
      specialization: selectedSpecialisation,
      condition: selectedCondition,
      minPrice: minPrice ? parseInt(minPrice) : undefined,
      maxPrice: maxPrice ? parseInt(maxPrice) : undefined,
      location: location,
      wilaya: selectedWilaya,
      distance: distance
    },
    enabled: infiniteScrollEnabled
  });

  const handleSearch = useCallback(async () => {
    const startTime = performance.now();
    const filters = {
      search: searchQuery,
      category: selectedCategory,
      subcategory: selectedSubCategory,
      specialization: selectedSpecialisation,
      condition: selectedCondition,
      minPrice: minPrice ? parseInt(minPrice) : undefined,
      maxPrice: maxPrice ? parseInt(maxPrice) : undefined,
      location: location,
      wilaya: selectedWilaya,
      distance: distance,
      limit: resultsPerPage,
      page: currentPage,
      sortBy: sortBy,
    };
    const results = await fetchAnnouncements(filters);
    const endTime = performance.now();
    const searchDuration = endTime - startTime;
    setSearchTime(searchDuration);
    await addToHistory(searchQuery, filters, results?.length || 0, searchDuration);
  }, [searchQuery, selectedCategory, selectedSubCategory, selectedSpecialisation, selectedCondition, minPrice, maxPrice, location, selectedWilaya, distance, resultsPerPage, currentPage, sortBy, fetchAnnouncements, addToHistory]);

  useEffect(() => {
    handleSearch();
  }, [handleSearch]);

  const handleViewAnnouncement = (announcement: { id: string }) => {
    navigate(`/annonce/${announcement.id}`);
  };

  const handleContactSeller = (announcement: { id: string }) => {
    navigate(`/messages?announcement=${announcement.id}`);
  };

  const handleSaveSearch = () => {
    setShowExport(true);
  };

  const handleCreateAlert = () => {
    logger.debug('Create alert functionality to be implemented');
  };
  
  const activeFilters = {
    category: selectedCategory,
    condition: selectedCondition,
    location: location,
    wilaya: selectedWilaya,
    minPrice: minPrice,
    maxPrice: maxPrice,
  };

  const totalPages = Math.ceil((totalCount || announcements?.length || 0) / resultsPerPage);
  const displayResults = infiniteScrollEnabled ? infiniteResults : announcements;
  const paginatedResults = infiniteScrollEnabled ? infiniteResults : announcements;

  const breadcrumbItems = [
    { label: t('search.page.title'), href: '/search' },
  ];

  if (selectedCategory) {
    const category = categoryMenu.find(cat => cat.slug === selectedCategory);
    if (category) {
      breadcrumbItems.push({ 
        label: category.slug === 'education-loisirs' ? t('categories.education-loisirs') : category.name, 
        href: `/category/${category.slug}` 
      });
    }
  }

  return (
    <div className="min-h-screen bg-background py-8">
      <div className="container mx-auto px-4">
        <div className="max-w-7xl mx-auto">
          <SearchBreadcrumb items={breadcrumbItems} query={searchQuery} />

          <SearchResultsHeader
            query={searchQuery}
            totalResults={totalCount || announcements?.length || 0}
            searchTime={searchTime}
            activeFilters={activeFilters}
            onSaveSearch={handleSaveSearch}
            onCreateAlert={handleCreateAlert}
          />

          {isApproximate && !loading && (
            <div className="bg-amber-50 border-l-4 border-amber-500 p-4 mb-6 rounded-r">
              <div className="flex">
                <div className="flex-shrink-0">
                  <svg className="h-5 w-5 text-amber-400" viewBox="0 0 20 20" fill="currentColor">
                    <path fillRule="evenodd" d="M8.257 3.099c.765-1.36 2.722-1.36 3.486 0l5.58 9.92c.75 1.334-.213 2.98-1.742 2.98H4.42c-1.53 0-2.493-1.646-1.743-2.98l5.58-9.92zM11 13a1 1 0 11-2 0 1 1 0 012 0zm-1-8a1 1 0 00-1 1v3a1 1 0 002 0V6a1 1 0 00-1-1z" clipRule="evenodd" />
                  </svg>
                </div>
                <div className="ml-3">
                  <p className="text-sm text-amber-700">
                    {t('search.approximateResults') || `Aucun résultat exact pour "${searchQuery}", voici des résultats approchants :`}
                  </p>
                </div>
              </div>
            </div>
          )}

          <div className="w-full">
            {!loading && displayResults.length > 0 && (
              <SearchSortingControls
                sortBy={sortBy}
                onSortChange={setSortBy}
                viewMode={viewMode}
                onViewModeChange={setViewMode}
                resultsPerPage={resultsPerPage}
                onResultsPerPageChange={setResultsPerPage}
              >
                <Button
                  variant="outline"
                  size="sm"
                  onClick={() => setInfiniteScrollEnabled(!infiniteScrollEnabled)}
                  className="flex items-center gap-2 h-8"
                >
                  <Settings className="h-4 w-4" />
                  <span className="hidden sm:inline">
                    {infiniteScrollEnabled ? t('search.page.pagination') : t('search.page.infiniteScroll')}
                  </span>
                </Button>
                
                <Button
                  variant="outline"
                  size="sm"
                  onClick={() => setShowExport(true)}
                  className="flex items-center gap-2 h-8"
                >
                  <Download className="h-4 w-4" />
                  <span className="hidden sm:inline">{t('search.page.export')}</span>
                </Button>
              </SearchSortingControls>
            )}

            {loading && !infiniteScrollEnabled ? (
              <SkeletonLoading viewMode={viewMode} count={resultsPerPage} />
            ) : (
              <>
                {!loading && displayResults.length === 0 && (
                  <div className="text-center py-16">
                    <p className="text-xl text-muted-foreground">{t('search.noResults') || "Aucun résultat trouvé"}</p>
                    <Button onClick={() => { setSearchQuery(''); handleSearch(); }} variant="link" className="mt-2">
                       {t('search.clearSearch') || "Effacer la recherche"}
                    </Button>
                  </div>
                )}
                
                <SearchResultsGrid
                  announcements={paginatedResults}
                  viewMode={viewMode}
                  onViewAnnouncement={handleViewAnnouncement}
                  onContactSeller={handleContactSeller}
                />
                
                {infiniteScrollEnabled && hasMore && (
                  <div ref={loadingRef} className="py-8">
                    <SkeletonLoading viewMode={viewMode} count={6} />
                  </div>
                )}
                
                {infiniteScrollEnabled && !hasMore && paginatedResults.length > 0 && (
                  <div className="text-center py-8 text-muted-foreground">
                    {t('search.endOfResults')}
                  </div>
                )}
              </>
            )}

            {displayResults.length > 0 && !infiniteScrollEnabled && (
              <SearchPagination
                currentPage={currentPage}
                totalPages={totalPages}
                totalResults={displayResults.length}
                resultsPerPage={resultsPerPage}
                onPageChange={setCurrentPage}
                loading={loading}
              />
            )}
          </div>
        </div>
      </div>
      
      <SearchExport
        announcements={displayResults}
        searchQuery={searchQuery}
        isOpen={showExport}
        onClose={() => setShowExport(false)}
      />
    </div>
  );
};

export default SearchResultsPage;
