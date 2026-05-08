
import React, { useState, useCallback, useMemo, lazy, Suspense } from "react";
import { useNavigate } from "react-router-dom";
import { Search, LoaderCircle, ChevronDown, ChevronUp } from "lucide-react";
import searchBackground from "@/assets/search-background.webp";
import { useSmartSearch } from "@/hooks/useSmartSearch";
import { mergeOfficialAndSupabaseCategories, useCategories } from "@/services/supabaseCategoriesService";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { logger } from "@/utils/silentLogger";
import { detectVehicleIntent } from "@/utils/vehicleIntentDetector";
import { coerceWilayaCode, extractWilayaFromText } from "@/utils/distanceUtils";
import { wilayas } from "@/data/wilayaData";

const VoiceSearchEnhanced = React.lazy(() => import("@/components/search/VoiceSearchEnhanced"));
const CategoryFilters = lazy(() => import("@/components/search/CategoryFilters"));
const ActiveFiltersDisplay = lazy(() => import("@/components/search/ActiveFiltersDisplay"));
const DistanceFilter = lazy(() => import("@/components/search/DistanceFilter"));
const PriceRangeFilter = lazy(() => import("@/components/search/PriceRangeFilter"));

const AdvancedSearchBar = React.memo(() => {
  const { t, language, isRTL } = useSafeI18nWithRouter();
  const { search, isLoading, trackConversion } = useSmartSearch();
  const navigate = useNavigate();
  const [selectedCategory, setSelectedCategory] = useState("");
  const [selectedSubCategory, setSelectedSubCategory] = useState("");
  const [selectedSpecialisation, setSelectedSpecialisation] = useState("");
  const [searchQuery, setSearchQuery] = useState("");
  const [isSearching, setIsSearching] = useState(false);
  const [distance, setDistance] = useState(50);
  const [priceRange, setPriceRange] = useState<[number, number]>([0, 50000]);
  const [selectedLocation, setSelectedLocation] = useState<string>("");
  const [selectedCondition, setSelectedCondition] = useState<string>("");
  const [selectedWilaya, setSelectedWilaya] = useState("");
  const [timeoutRef, setTimeoutRef] = useState<ReturnType<typeof setTimeout> | null>(null);
  const [showFilters, setShowFilters] = useState(false);

  const { data: categoryMenuFromSupabase = [], isLoading: categoriesLoading, error: categoriesError } = useCategories(language);
  
  const uniqueCategories = useMemo(() => {
    return mergeOfficialAndSupabaseCategories(language, categoryMenuFromSupabase);
  }, [categoryMenuFromSupabase, language]);

  const selectedCategoryData = useMemo(() => 
    uniqueCategories.find(cat => cat.slug === selectedCategory), 
    [uniqueCategories, selectedCategory]
  );

  const selectedSubCategoryData = useMemo(() => 
    selectedCategoryData?.subcategories?.find(sub => sub.slug === selectedSubCategory), 
    [selectedCategoryData, selectedSubCategory]
  );

  const handleCategoryChange = useCallback((categorySlug: string) => {
    setSelectedCategory(categorySlug);
    setSelectedSubCategory("");
    setSelectedSpecialisation("");
    logger.debug('category_change', { category: categorySlug });
  }, []);

  const handleSubCategoryChange = useCallback((subCategorySlug: string) => {
    setSelectedSubCategory(subCategorySlug);
    setSelectedSpecialisation("");
    logger.debug('subcategory_change', { subcategory: subCategorySlug });
  }, []);

  const handleDistanceChange = useCallback((value: number) => {
    setDistance(value);
  }, []);

  const handlePriceRangeChange = useCallback((value: [number, number]) => {
    setPriceRange(value);
  }, []);

  const handleSearchQueryChange = useCallback((query: string) => {
    setSearchQuery(query);
  }, []);

  const handleVoiceResult = useCallback((transcript: string) => {
    setSearchQuery(transcript);
    logger.debug('voice_search', { transcript });
  }, []);

  const handleSearch = async (e: React.FormEvent) => {
    e.preventDefault();
    setIsSearching(true);
    
    try {
      const extractedWilaya = extractWilayaFromText(`${searchQuery} ${selectedLocation}`.trim());

      if (searchQuery.trim()) {
        let intent: ReturnType<typeof detectVehicleIntent> | null = null;
        try {
          intent = detectVehicleIntent(searchQuery);
        } catch {
          intent = null;
        }
        
        if (intent && intent.isVehicleSearch && intent.confidence >= 0.35) {
          logger.debug('vehicle_intent_detected', { intent });
          const vehicleParams = new URLSearchParams();
          const queryForResults = intent.remainingQuery?.trim() || '';
          if (queryForResults) vehicleParams.set('q', queryForResults);
          
          intent.filters.brand.forEach(b => vehicleParams.append('brand', b));
          intent.filters.model.forEach(m => vehicleParams.append('model', m));
          intent.filters.type.forEach(t => vehicleParams.append('type', t));
          intent.filters.fuel.forEach(f => vehicleParams.append('fuel', f));
          intent.filters.transmission.forEach(t => vehicleParams.append('transmission', t));
          intent.filters.condition.forEach(c => vehicleParams.append('condition', c));
          intent.filters.paper.forEach(p => vehicleParams.append('paper', p));
          intent.filters.years.forEach(y => vehicleParams.append('year', y.toString()));
          intent.filters.region.forEach(r => vehicleParams.append('region', r));
          intent.filters.wilaya.forEach(w => vehicleParams.append('wilaya', w));

          if (distance !== 50) vehicleParams.set('distance', distance.toString());
          const selectedWilayaCode = coerceWilayaCode(selectedWilaya);
          const fallbackWilayaCode = extractedWilaya?.code;
          const finalWilayaCode = selectedWilayaCode || fallbackWilayaCode;
          if (finalWilayaCode && !intent.filters.wilaya.includes(finalWilayaCode)) {
            vehicleParams.append('wilaya', finalWilayaCode);
          }
          if (priceRange[0] > 0) vehicleParams.set('minPrice', priceRange[0].toString());
          if (priceRange[1] < 50000) vehicleParams.set('maxPrice', priceRange[1].toString());
          if (selectedLocation) vehicleParams.set('location', selectedLocation);

          const targetLang = language || 'fr';
          navigate(`/${targetLang}/search/vehicles?${vehicleParams.toString()}`);
          return;
        }
      }

      if (selectedCategory === 'vehicules-equipements' || selectedCategory === 'vehicules') {
        const vehicleParams = new URLSearchParams();
        if (searchQuery.trim()) vehicleParams.set('q', searchQuery.trim());
        if (distance !== 50) vehicleParams.set('distance', distance.toString());
        const selectedWilayaCode = coerceWilayaCode(selectedWilaya);
        const fallbackWilayaCode = extractedWilaya?.code;
        const finalWilayaCode = selectedWilayaCode || fallbackWilayaCode;
        if (finalWilayaCode) vehicleParams.set('wilaya', finalWilayaCode);
        if (priceRange[0] > 0) vehicleParams.set('minPrice', priceRange[0].toString());
        if (priceRange[1] < 50000) vehicleParams.set('maxPrice', priceRange[1].toString());
        if (selectedLocation) vehicleParams.set('location', selectedLocation);
        if (selectedSubCategory) vehicleParams.set('type', selectedSubCategory);

        const targetLang = language || 'fr';
        navigate(`/${targetLang}/search/vehicles?${vehicleParams.toString()}`);
        return;
      }

      const searchParams = new URLSearchParams();

      if (searchQuery.trim()) {
        searchParams.set('q', searchQuery.trim());
        const searchContext = selectedCategory || 'general';
        const results = await search(searchQuery, { 
          context: searchContext,
          limit: 20,
          trackingEnabled: true,
          filters: {
            category: selectedCategory,
            subcategory: selectedSubCategory,
            specialization: selectedSpecialisation,
            location: selectedLocation,
            condition: selectedCondition,
            priceRange: priceRange,
            distance: distance
          }
        });
        
        if (results && results.results && results.results.length > 0) {
          await trackConversion();
        }
      }
      
      if (selectedCategory) searchParams.set('category', selectedCategory);
      if (selectedSubCategory) searchParams.set('subcategory', selectedSubCategory);
      if (selectedSpecialisation) searchParams.set('specialisation', selectedSpecialisation);
      if (selectedLocation) searchParams.set('location', selectedLocation);
      const finalGeneralWilaya = selectedWilaya || extractedWilaya?.name;
      if (finalGeneralWilaya) searchParams.set('wilaya', finalGeneralWilaya);
      if (selectedCondition) searchParams.set('condition', selectedCondition);
      if (distance !== 50) searchParams.set('distance', distance.toString());
      if (priceRange[0] > 0) searchParams.set('minPrice', priceRange[0].toString());
      if (priceRange[1] < 50000) searchParams.set('maxPrice', priceRange[1].toString());
      
      navigate(`/${language}/search?${searchParams.toString()}`);
      logger.debug('search_performed', { 
        query: searchQuery, 
        category: selectedCategory,
        hasResults: false
      });
      
    } catch (error) {
      logger.error('Search error', error);
    } finally {
      if (timeoutRef) clearTimeout(timeoutRef);
      const newTimeout = setTimeout(() => {
        setIsSearching(false);
      }, 500);
      setTimeoutRef(newTimeout);
    }
  };

  return (
    <div className="relative">
      {/* ═══ Ligne compacte : Titre + Recherche + Wilaya + Bouton ═══ */}
      <form onSubmit={handleSearch}>
        <div className={`flex items-center gap-2 ${isRTL ? 'flex-row-reverse' : ''}`}>
          {/* Titre à gauche */}
          <h2 className="text-xs font-bold text-slate-700 dark:text-slate-200 whitespace-nowrap uppercase tracking-wide hidden md:block">
            {t('search.advanced.title')}
          </h2>

          {/* Barre de recherche sombre */}
          <div className="flex-1 relative flex items-center">
            <div className="relative flex items-center w-full bg-slate-900 dark:bg-slate-800 rounded-full border border-gray-300 dark:border-slate-600 shadow-sm hover:border-primary/50 transition-colors">
              <div className="pl-2 flex items-center">
                <Suspense fallback={null}>
                  <VoiceSearchEnhanced onVoiceResult={handleVoiceResult} />
                </Suspense>
              </div>
              <Search className="h-4 w-4 text-gray-400 ml-1 shrink-0" />
              <input
                type="text"
                value={searchQuery}
                onChange={(e) => handleSearchQueryChange(e.target.value)}
                placeholder={selectedCategoryData 
                  ? `${t('search.advanced.searchPlaceholder')} ${selectedCategoryData.slug === 'education-loisirs' ? t('categories.education-loisirs') : (t(`categories.${selectedCategoryData.slug}`) !== `categories.${selectedCategoryData.slug}` ? t(`categories.${selectedCategoryData.slug}`) : selectedCategoryData.name)}...` 
                  : t('search.advanced.searchPlaceholder')}
                className="flex-1 bg-transparent border-none outline-none text-sm text-white dark:text-slate-100 placeholder-gray-400 px-2 py-2 min-w-0"
              />
            </div>
          </div>

          {/* Wilaya */}
          <div className="relative hidden sm:block">
            <select
              value={selectedWilaya}
              onChange={(e) => setSelectedWilaya(e.target.value)}
              className="appearance-none bg-white dark:bg-slate-800 border border-gray-300 dark:border-slate-600 rounded-full text-sm text-gray-700 dark:text-slate-200 pl-3 pr-8 py-2 cursor-pointer hover:border-primary/50 transition-colors focus:outline-none focus:ring-2 focus:ring-primary/20 shadow-sm"
            >
              <option value="">{language === 'ar' ? 'كل الولايات' : 'Wilaya'}</option>
              {wilayas.map((w) => (
                <option key={w.code} value={w.code.toString()}>
                  {w.code} - {language === 'ar' ? w.name_ar : w.name}
                </option>
              ))}
            </select>
            <div className="absolute inset-y-0 right-0 flex items-center pr-2 pointer-events-none">
              <svg className="h-4 w-4 text-gray-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor">
                <path fillRule="evenodd" d="M10 3a1 1 0 01.707.293l3 3a1 1 0 01-1.414 1.414L10 5.414 7.707 7.707a1 1 0 01-1.414-1.414l3-3A1 1 0 0110 3zm-3.707 9.293a1 1 0 011.414 0L10 14.586l2.293-2.293a1 1 0 011.414 1.414l-3 3a1 1 0 01-1.414 0l-3-3a1 1 0 010-1.414z" clipRule="evenodd" />
              </svg>
            </div>
          </div>

          {/* Bouton Rechercher */}
          <button
            type="submit"
            disabled={isSearching || isLoading}
            className="flex items-center gap-1.5 px-4 py-2 rounded-full bg-primary text-primary-foreground font-semibold text-sm shadow-sm hover:bg-primary/90 transition-colors disabled:opacity-70 disabled:cursor-not-allowed whitespace-nowrap"
          >
            {(isSearching || isLoading) ? (
              <LoaderCircle className="animate-spin h-4 w-4" />
            ) : (
              <Search className="h-4 w-4" />
            )}
            <span className="hidden sm:inline">{(isSearching || isLoading) ? t('search.advanced.searching') : t('search.advanced.searchButton')}</span>
          </button>

          {/* Bouton toggle filtres */}
          <button
            type="button"
            onClick={() => setShowFilters(!showFilters)}
            className="flex items-center gap-1 px-3 py-2 rounded-full border border-gray-300 dark:border-slate-600 text-xs font-medium text-gray-600 dark:text-slate-300 hover:bg-gray-100 dark:hover:bg-slate-700 transition-colors"
          >
            <span className="hidden sm:inline">{language === 'ar' ? 'فلاتر' : 'Filtres'}</span>
            {showFilters ? <ChevronUp className="h-3.5 w-3.5" /> : <ChevronDown className="h-3.5 w-3.5" />}
          </button>
        </div>

        {/* ═══ Panneau de filtres (déroulant) ═══ */}
        {showFilters && (
          <div 
            className="mt-3 rounded-xl p-4 border border-gray-200 dark:border-slate-700/80 relative overflow-hidden shadow-lg"
            style={{
              backgroundImage: `url(${searchBackground})`,
              backgroundSize: 'cover',
              backgroundPosition: 'center',
              backgroundRepeat: 'no-repeat'
            }}
          >
            <div className="absolute inset-0 bg-white/90 dark:bg-slate-800/90 backdrop-blur-sm"></div>
            <div className="relative z-10 space-y-4">
              {/* Catégorie / Sous-cat / Spécialisation */}
              <Suspense fallback={<div className="animate-pulse h-16 bg-muted rounded" />}>
                {categoriesLoading ? (
                  <div className="animate-pulse h-16 bg-muted rounded" />
                ) : categoriesError ? (
                  <div className="p-3 border border-red-200 bg-red-50 rounded-lg">
                    <p className="text-red-600 text-sm">Erreur lors du chargement des catégories.</p>
                  </div>
                ) : (
                  <CategoryFilters
                    uniqueCategories={uniqueCategories}
                    selectedCategory={selectedCategory}
                    selectedSubCategory={selectedSubCategory}
                    selectedSpecialisation={selectedSpecialisation}
                    handleCategoryChange={handleCategoryChange}
                    handleSubCategoryChange={handleSubCategoryChange}
                    setSelectedSpecialisation={setSelectedSpecialisation}
                    selectedCondition={selectedCondition}
                    onConditionChange={setSelectedCondition}
                    selectedCategoryData={selectedCategoryData}
                    selectedSubCategoryData={selectedSubCategoryData}
                  />
                )}
              </Suspense>

              {/* Distance & Prix */}
              <div className="grid grid-cols-1 md:grid-cols-2 gap-x-4 gap-y-3">
                <Suspense fallback={<div className="animate-pulse h-8 bg-muted rounded" />}>
                  <DistanceFilter
                    distance={distance}
                    onDistanceChange={handleDistanceChange}
                  />
                </Suspense>
                <Suspense fallback={<div className="animate-pulse h-8 bg-muted rounded" />}>
                  <PriceRangeFilter
                    priceRange={priceRange}
                    onPriceRangeChange={handlePriceRangeChange}
                  />
                </Suspense>
              </div>

              {/* Filtres actifs */}
              <Suspense fallback={<div className="animate-pulse h-6 bg-muted rounded" />}>
                <ActiveFiltersDisplay
                  selectedCategory={selectedCategory}
                  selectedSubCategory={selectedSubCategory}
                  selectedSpecialisation={selectedSpecialisation}
                  selectedCategoryData={selectedCategoryData}
                  selectedSubCategoryData={selectedSubCategoryData}
                  categoryIcons={{}}
                />
              </Suspense>
            </div>
          </div>
        )}
      </form>
    </div>
  );
});

AdvancedSearchBar.displayName = 'AdvancedSearchBar';

export default AdvancedSearchBar;
