
import { useState, useEffect, useMemo } from 'react';
import { Search } from 'lucide-react';
import { getCategoryMenu } from '@/data/megaMenu/categoryMenu';
import { useSmartSearch } from '@/hooks/useSmartSearch';
import type { MenuCategory } from '@/data/categoryTypes';
import { logger } from '@/utils/silentLogger';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';

interface SearchSuggestionsProps {
  query: string;
  onSuggestionSelect: (suggestion: string) => void;
  isVisible: boolean;
}

const POPULAR_SUGGESTIONS = [
  'iPhone', 'Samsung Galaxy', 'Voiture occasion', 'Appartement à vendre',
  'Moto', 'Ordinateur portable', 'Meuble salon', 'Télévision',
  'Machine à laver', 'Réfrigérateur', 'Bijoux', 'Vêtements',
  'Chaussures', 'Livre', 'Jouets enfants', 'Smartphone',
  'Tablet', 'Climatiseur', 'Cuisine équipée', 'Jardin',
];

// Helper to recursively extract names from categories
const extractCategoryNames = (categories: (MenuCategory | { name: string; subcategories?: any[] })[]): string[] => {
  return categories.flatMap(category => {
    if (!category) return [];
    const subCategoryNames = category.subcategories ? extractCategoryNames(category.subcategories) : [];
    return category.name ? [category.name, ...subCategoryNames] : subCategoryNames;
  }).filter(Boolean); // filter(Boolean) will remove any null/undefined/empty strings
};

const SearchSuggestions = ({ query, onSuggestionSelect, isVisible }: SearchSuggestionsProps) => {
  const [suggestions, setSuggestions] = useState<string[]>([]);
  const [internalVisible, setInternalVisible] = useState(false);
  const { getPersonalizedSuggestions, getTrendingKeywords } = useSmartSearch();
  const { language } = useSafeI18nWithRouter();

  const allSuggestions = useMemo(() => {
    const localizedCategories = getCategoryMenu(language) as (MenuCategory | { name: string; subcategories?: any[] })[];
    const categoryNames = extractCategoryNames(localizedCategories);
    const combined = [...POPULAR_SUGGESTIONS, ...categoryNames];
    return [...new Set(combined)];
  }, [language]);

  useEffect(() => {
    const loadSuggestions = async () => {
      if (query.length > 1 && isVisible) {
        try {
          // Combiner suggestions personnalisées et tendances
          const [personalizedSuggestions, trendingKeywords] = await Promise.all([
            getPersonalizedSuggestions(query),
            getTrendingKeywords()
          ]);
          
          // Filtrer les suggestions locales
          const filtered = allSuggestions.filter(suggestion =>
            suggestion.toLowerCase().includes(query.toLowerCase())
          );
          
          // Combiner toutes les suggestions
          const combinedSuggestions = [
            ...personalizedSuggestions,
            ...filtered,
            ...trendingKeywords.filter(keyword => 
              keyword.toLowerCase().includes(query.toLowerCase())
            )
          ];
          
          // Supprimer les doublons et limiter à 10
          const uniqueSuggestions = [...new Set(combinedSuggestions)].slice(0, 10);
          
          setSuggestions(uniqueSuggestions);
          setInternalVisible(uniqueSuggestions.length > 0);
        } catch (error) {
          logger.warn('Erreur lors du chargement des suggestions intelligentes:', error);
          // Fallback vers les suggestions locales
          const filtered = allSuggestions.filter(suggestion =>
            suggestion.toLowerCase().includes(query.toLowerCase())
          );
          setSuggestions(filtered.slice(0, 10));
          setInternalVisible(filtered.length > 0);
        }
      } else {
        setSuggestions([]);
        setInternalVisible(false);
      }
    };
    
    loadSuggestions();
  }, [query, isVisible, allSuggestions, getPersonalizedSuggestions, getTrendingKeywords]);

  if (!internalVisible || suggestions.length === 0) {
    return null;
  }

  return (
    <div 
      className="absolute top-full left-0 right-0 bg-white dark:bg-slate-700 border border-gray-200 dark:border-slate-600 rounded-md shadow-lg z-50 mt-1 animate-enter"
    >
      {suggestions.map((suggestion, index) => (
        <button
          key={index}
          className="w-full px-4 py-2 text-left hover:bg-gray-50 dark:hover:bg-slate-600 flex items-center gap-2 first:rounded-t-md last:rounded-b-md text-gray-700 dark:text-slate-200"
          onClick={() => onSuggestionSelect(suggestion)}
        >
          <Search className="h-4 w-4 text-gray-400 dark:text-slate-400" />
          <span className="text-sm">{suggestion}</span>
        </button>
      ))}
    </div>
  );
};

export default SearchSuggestions;
