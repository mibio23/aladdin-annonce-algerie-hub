import React, { useState } from "react";
import { Search, Brain, Sparkles, Zap, Settings, Plus, Filter } from "lucide-react";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Card } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Switch } from "@/components/ui/switch";
import SemanticSearchEngine from "@/components/search/SemanticSearchEngine";
import ConversationalSearchAI from "@/components/search/ConversationalSearchAI";
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { useSmartSearch } from "@/hooks/useSmartSearch";
import VoiceSearchEnhanced from "@/components/search/VoiceSearchEnhanced";
import { useLocation, useNavigate } from "react-router-dom";
import { LocalizedLink } from "@/utils/linkUtils";
import { logger } from '@/utils/silentLogger';
import { AdvancedSearchFilters } from "@/components/search/AdvancedSearchFilters";
import { SearchFilters } from "@/types/search";
import { detectVehicleIntent } from "@/utils/vehicleIntentDetector";
import { coerceWilayaCode, extractWilayaCodeFromText } from "@/utils/distanceUtils";
// Dépendance aux catégories neutralisée

interface SearchSettings {
  enableAI: boolean;
  enableSemantic: boolean;
  enablePredictive: boolean;
  enableVoice: boolean;
  enableConversational: boolean;
}

const EnhancedHeaderSearchBar = () => {
  const { t, language } = useSafeI18nWithRouter();
  const [searchQuery, setSearchQuery] = useState("");
  const [showSuggestions, setShowSuggestions] = useState(false);
  const [showSettings, setShowSettings] = useState(false);
  const [showAdvancedFilters, setShowAdvancedFilters] = useState(false);
  const [activeFilters, setActiveFilters] = useState<SearchFilters>({});
  const [showConversationalAI, setShowConversationalAI] = useState(false);
  const [_semanticResults, setSemanticResults] = useState<any[]>([]);
  const [searchSettings, setSearchSettings] = useState<SearchSettings>({
    enableAI: true,
    enableSemantic: true,
    enablePredictive: true,
    enableVoice: true,
    enableConversational: true
  });
  
  const { search, isLoading, addToHistory } = useSmartSearch();
  const location = useLocation();
  const navigate = useNavigate();
  
  // Déterminer le placeholder basé sur la page actuelle
  const getCustomPlaceholder = () => {
    const pathname = location.pathname;
    
    // Les catégories étant neutralisées, on garde un placeholder générique
    if (pathname.startsWith('/category/')) {
      return searchSettings.enableAI 
        ? `${t('header.searchPlaceholder')} - IA activée`
        : t('header.searchPlaceholder');
    }
    
    return searchSettings.enableAI 
      ? `${t('header.searchPlaceholder')} - IA activée`
      : t('header.searchPlaceholder');
  };

  const handleSearch = async (e: React.FormEvent) => {
    e.preventDefault();
    const trimmedQuery = searchQuery.trim();
    if (trimmedQuery) {
      addToHistory(trimmedQuery);
      
      // Track search analytics
      await search(trimmedQuery, {
        context: 'enhanced_header',
        limit: 10,
        trackingEnabled: true
      });

      const targetLang = language || 'fr';
      const intent = detectVehicleIntent(trimmedQuery);
      if (intent.isVehicleSearch && intent.confidence >= 0.35) {
        const vehicleParams = new URLSearchParams();
        vehicleParams.set('q', trimmedQuery);

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

        if (activeFilters.distance != null) vehicleParams.set('distance', activeFilters.distance.toString());
        const extractedWilaya = extractWilayaCodeFromText(`${trimmedQuery} ${activeFilters.location || ''}`.trim());
        const selectedWilayaCode = coerceWilayaCode(activeFilters.wilaya);
        const finalWilayaCode = selectedWilayaCode || extractedWilaya;
        if (finalWilayaCode && !intent.filters.wilaya.includes(finalWilayaCode)) {
          vehicleParams.append('wilaya', finalWilayaCode);
        }
        if (activeFilters.priceRange) {
          const [minPrice, maxPrice] = activeFilters.priceRange;
          if (minPrice != null && minPrice > 0) vehicleParams.set('minPrice', minPrice.toString());
          if (maxPrice != null) vehicleParams.set('maxPrice', maxPrice.toString());
        }
        if (activeFilters.location) vehicleParams.set('location', activeFilters.location);
        if (activeFilters.condition) vehicleParams.append('condition', activeFilters.condition);
        if (activeFilters.subcategory) vehicleParams.append('type', activeFilters.subcategory);

        navigate(`/${targetLang}/search/vehicles?${vehicleParams.toString()}`);
        setShowSuggestions(false);
        return;
      }
      
      // Navigate to search results page with query parameter
      const searchParams = new URLSearchParams();
      searchParams.set('q', trimmedQuery);
      searchParams.set('searchType', 'quick');

      if (activeFilters.category) searchParams.set('category', activeFilters.category);
      if (activeFilters.subcategory) searchParams.set('subcategory', activeFilters.subcategory);
      if (activeFilters.specialization) searchParams.set('specialisation', activeFilters.specialization);
      if (activeFilters.location) searchParams.set('location', activeFilters.location);
      if (activeFilters.condition) searchParams.set('condition', activeFilters.condition);
      if (activeFilters.distance != null) searchParams.set('distance', activeFilters.distance.toString());
      if (activeFilters.wilaya) searchParams.set('wilaya', activeFilters.wilaya);
      if (activeFilters.priceRange) {
        const [minPrice, maxPrice] = activeFilters.priceRange;
        if (minPrice != null && minPrice > 0) searchParams.set('minPrice', minPrice.toString());
        if (maxPrice != null) searchParams.set('maxPrice', maxPrice.toString());
      }
      
      // Navigate to search results
      navigate(`/${targetLang}/search?${searchParams.toString()}`);
      setShowSuggestions(false);
    }
  };

  const handleVoiceResult = (transcript: string) => {
    setSearchQuery(transcript);
    setShowSuggestions(transcript.length > 1);
  };

  const handleSemanticResult = (results: any[]) => {
    setSemanticResults(results);
  };

  const handleConversationalSearch = (query: string, filters?: any) => {
    setSearchQuery(query);
    // Appliquer les filtres si nécessaire
    if (filters) {
      logger.debug('Filtres conversationnels appliqués:', filters);
    }
    handleSearch({ preventDefault: () => {} } as React.FormEvent);
  };

  const toggleSetting = (setting: keyof SearchSettings) => {
    setSearchSettings(prev => ({
      ...prev,
      [setting]: !prev[setting]
    }));
  };

  return (
    <div className="relative">
      {/* Barre de recherche principale */}
      <form onSubmit={handleSearch} className="flex items-center max-w-2xl mx-4">
        <div className="relative flex-grow">
          <Input
            type="text"
            placeholder={getCustomPlaceholder()}
            value={searchQuery}
            onChange={(e) => {
              setSearchQuery(e.target.value);
              // Suggestions désactivées
              setShowSuggestions(false);
            }}
            onFocus={() => { /* Suggestions désactivées */ }}
            onBlur={() => setTimeout(() => setShowSuggestions(false), 200)}
            className="w-full pl-12 pr-20 py-3 rounded-xl border-2 border-gray-300 dark:border-slate-600 dark:bg-slate-700 dark:text-slate-200 focus:border-primary transition-all shadow-lg"
          />
          
          {/* Icône de recherche avec indicateur IA */}
          <div className="absolute left-3 top-1/2 transform -translate-y-1/2 flex items-center gap-1">
            <Search className="h-5 w-5 text-gray-400 dark:text-slate-500" />
            {searchSettings.enableAI && (
              <Badge variant="secondary" className="text-xs bg-primary/10 text-primary border-primary/20">
                IA
              </Badge>
            )}
          </div>

          {/* Contrôles vocaux et conversationnels */}
          <div className="absolute right-3 top-1/2 transform -translate-y-1/2 flex items-center gap-2">
            {searchSettings.enableVoice && (
              <VoiceSearchEnhanced 
                onVoiceResult={handleVoiceResult}
                className=""
              />
            )}
            
            {searchSettings.enableConversational && (
              <Button
                type="button"
                size="sm"
                variant="ghost"
                onClick={() => setShowConversationalAI(true)}
                className="p-2 hover:bg-primary/10"
                title="Recherche conversationnelle IA"
              >
                <Brain className="h-4 w-4 text-primary" />
              </Button>
            )}

            <Button
              type="button"
              size="sm"
              variant="ghost"
              onClick={() => setShowAdvancedFilters(!showAdvancedFilters)}
              className={`p-2 hover:bg-gray-100 dark:hover:bg-slate-600 ${Object.keys(activeFilters).length > 0 ? 'text-primary' : ''}`}
              title="Filtres avancés"
            >
              <Filter className="h-4 w-4" />
            </Button>
            
            <Button
              type="button"
              size="sm"
              variant="ghost"
              onClick={() => setShowSettings(!showSettings)}
              className="p-2 hover:bg-gray-100 dark:hover:bg-slate-600"
              title="Paramètres de recherche"
            >
              <Settings className="h-4 w-4" />
            </Button>
          </div>

          {/* Suggestions intelligentes - DÉSACTIVÉES */}
          {/* 
          {showSuggestions && (
            <div className="absolute top-full left-0 right-0 z-50 mt-2 space-y-2">
              <SmartSearchSuggestions
                query={searchQuery}
                onSuggestionSelect={handleSuggestionSelect}
                isVisible={showSuggestions}
              />
              
              {searchSettings.enablePredictive && (
                <PredictiveSearchSuggestions
                  query={searchQuery}
                  onSuggestionSelect={handleSuggestionSelect}
                  isVisible={showSuggestions}
                  userLocation={userLocation}
                />
              )}
            </div>
          )}
          */}
        </div>
        
        <Button 
          type="submit" 
          className="ml-3 px-6 py-3 bg-primary hover:bg-primary/90 text-white rounded-xl shadow-lg transition-all hover:shadow-xl"
          disabled={isLoading}
        >
          {isLoading ? (
            <Zap className="h-5 w-5 animate-pulse" />
          ) : (
            <Search className="h-5 w-5" />
          )}
        </Button>
        
        {/* Bouton Recherche de produit */}
        <Button 
          asChild
          variant="outline"
          className="ml-2 px-4 py-3 border-2 border-primary text-primary hover:bg-primary hover:text-white rounded-xl shadow-lg transition-all hover:shadow-xl"
          title={t('navigation.productSearch')}
        >
          <LocalizedLink to="/je-recherche" className="flex items-center gap-2">
            <Plus className="h-4 w-4" />
            <span className="hidden sm:inline">{t('navigation.productSearch')}</span>
          </LocalizedLink>
        </Button>
      </form>

      {/* Filtres Avancés */}
      {showAdvancedFilters && (
        <AdvancedSearchFilters
          onFiltersChange={setActiveFilters}
          onClose={() => setShowAdvancedFilters(false)}
          initialFilters={activeFilters}
        />
      )}

      {/* Panneau de paramètres */}
      {showSettings && (
        <Card className="absolute top-full right-4 mt-2 p-4 w-80 z-50 bg-white dark:bg-slate-800 shadow-xl border border-gray-200 dark:border-slate-700">
          <h3 className="font-semibold mb-3 flex items-center gap-2">
            <Sparkles className="w-4 h-4 text-primary" />
            Paramètres de Recherche IA
          </h3>
          
          <div className="space-y-3">
            <div className="flex items-center justify-between">
              <label className="text-sm font-medium">Assistance IA</label>
              <Switch
                checked={searchSettings.enableAI}
                onCheckedChange={() => toggleSetting('enableAI')}
              />
            </div>
            
            <div className="flex items-center justify-between">
              <label className="text-sm font-medium">Recherche sémantique</label>
              <Switch
                checked={searchSettings.enableSemantic}
                onCheckedChange={() => toggleSetting('enableSemantic')}
              />
            </div>
            
            <div className="flex items-center justify-between">
              <label className="text-sm font-medium">Suggestions prédictives</label>
              <Switch
                checked={searchSettings.enablePredictive}
                onCheckedChange={() => toggleSetting('enablePredictive')}
              />
            </div>
            
            <div className="flex items-center justify-between">
              <label className="text-sm font-medium">Recherche vocale</label>
              <Switch
                checked={searchSettings.enableVoice}
                onCheckedChange={() => toggleSetting('enableVoice')}
              />
            </div>
            
            <div className="flex items-center justify-between">
              <label className="text-sm font-medium">IA conversationnelle</label>
              <Switch
                checked={searchSettings.enableConversational}
                onCheckedChange={() => toggleSetting('enableConversational')}
              />
            </div>
          </div>
          
          <div className="mt-4 pt-3 border-t border-gray-200 dark:border-slate-600">
            <p className="text-xs text-gray-500 dark:text-slate-400">
              Ces paramètres améliorent la précision et la pertinence de vos recherches.
            </p>
          </div>
        </Card>
      )}

      {/* Moteur de recherche sémantique */}
      {searchSettings.enableSemantic && showSuggestions && (
        <div className="absolute top-full left-4 right-4 z-40">
          <SemanticSearchEngine
            query={searchQuery}
            onSemanticResult={handleSemanticResult}
            isActive={searchSettings.enableSemantic && showSuggestions}
          />
        </div>
      )}

      {/* Interface conversationnelle IA */}
      {searchSettings.enableConversational && (
        <ConversationalSearchAI
          isOpen={showConversationalAI}
          onClose={() => setShowConversationalAI(false)}
          onSearchQuery={handleConversationalSearch}
          categoryContext={location.pathname.includes('/category/') ? location.pathname.split('/')[2] : undefined}
        />
      )}
    </div>
  );
};

export default EnhancedHeaderSearchBar;
