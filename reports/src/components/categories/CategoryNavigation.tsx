import React, { useState, useMemo } from 'react';
import { Link } from 'react-router-dom';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { useCategories } from './CategoryProvider';
import { ChevronDown, ChevronRight, Search, X } from 'lucide-react';
import { cn } from '@/lib/utils';
import * as LucideIcons from 'lucide-react';
import { logger } from '@/utils/silentLogger';

interface CategoryNavigationProps {
  className?: string;
  showSearch?: boolean;
  maxVisibleCategories?: number;
}

// Dynamic icon import
const IconMap: Record<string, React.ComponentType<any>> = {};

// Function to dynamically import icons
const getIcon = (iconName: string) => {
  if (!IconMap[iconName]) {
    try {
      const icon = (LucideIcons as unknown as Record<string, React.ComponentType<any>>)[iconName];
      if (icon) {
        IconMap[iconName] = icon;
      } else {
        logger.error(`Icon "${iconName}" not found in lucide-react`);
        return null;
      }
    } catch {
      logger.error(`Icon "${iconName}" not found in lucide-react`);
      return null;
    }
  }
  return IconMap[iconName];
};

export function CategoryNavigation({ 
  className, 
  showSearch = true,
  maxVisibleCategories = 12 
}: CategoryNavigationProps) {
  const { t } = useSafeI18nWithRouter();
  const { 
    language, 
    categories, 
    selectedCategory, 
    setSelectedCategory, 
    searchQuery, 
    setSearchQuery, 
    searchResults,
    isLoading 
  } = useCategories();
  
  const [expandedCategories, setExpandedCategories] = useState<Set<string>>(new Set());
  const [isSearchFocused, setIsSearchFocused] = useState(false);
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);

  // Toggle category expansion
  const toggleCategory = (categoryId: string) => {
    setExpandedCategories(prev => {
      const newSet = new Set(prev);
      if (newSet.has(categoryId)) {
        newSet.delete(categoryId);
      } else {
        newSet.add(categoryId);
      }
      return newSet;
    });
  };

  // Handle category selection
  const handleCategorySelect = (category: any) => {
    setSelectedCategory(category);
    setMobileMenuOpen(false);
  };

  // Clear search
  const clearSearch = () => {
    setSearchQuery('');
    setIsSearchFocused(false);
  };

  // Check if category is RTL (Arabic)
  const isRTL = language === 'ar';

  // Popular categories with icons
  const popularCategories = useMemo(() => {
    return categories
      .filter(cat => cat.icon)
      .slice(0, maxVisibleCategories);
  }, [categories, maxVisibleCategories]);

  // Render category icon
  const renderIcon = (icon: any) => {
    if (!icon) return null;
    
    if (typeof icon === 'string') {
      const IconComponent = getIcon(icon);
      return IconComponent ? <IconComponent className="w-5 h-5" /> : null;
    }
    
    const IconComponent = icon;
    return <IconComponent className="w-5 h-5" />;
  };

  // Render category item
  const renderCategoryItem = (category: any, level = 0) => {
    const hasSubcategories = category.subcategories && category.subcategories.length > 0;
    const isExpanded = expandedCategories.has(category.id);
    const isSelected = selectedCategory?.id === category.id;
    const displayName = (t(`categories.${category.slug}`) !== `categories.${category.slug}`) ? t(`categories.${category.slug}`) : category.name;
    
    return (
      <div key={category.id} className="w-full">
        <Link
          to={`/categories/${category.slug}`}
          className={cn(
            "flex items-center gap-2 px-3 py-2 rounded-md text-sm font-medium transition-colors hover:bg-gray-100 dark:hover:bg-gray-800",
            isSelected && "bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400",
            level > 0 && "ml-4"
          )}
          onClick={() => handleCategorySelect(category)}
        >
          {category.icon && renderIcon(category.icon)}
          <span className="flex-1">{displayName}</span>
          {hasSubcategories && (
            <button
              onClick={(e) => {
                e.preventDefault();
                toggleCategory(category.id);
              }}
              className="p-1 rounded hover:bg-gray-200 dark:hover:bg-gray-700"
            >
              {isExpanded ? (
                <ChevronDown className="w-4 h-4" />
              ) : (
                <ChevronRight className="w-4 h-4" />
              )}
            </button>
          )}
        </Link>
        
        {hasSubcategories && isExpanded && (
          <div className="mt-1">
            {category.subcategories.map((subcategory: any) => 
              renderCategoryItem(subcategory, level + 1)
            )}
          </div>
        )}
      </div>
    );
  };

  if (isLoading) {
    return (
      <div className={cn("flex flex-col gap-2 p-4", className)}>
        <div className="animate-pulse h-10 bg-gray-200 dark:bg-gray-700 rounded-md"></div>
        <div className="animate-pulse h-10 bg-gray-200 dark:bg-gray-700 rounded-md"></div>
        <div className="animate-pulse h-10 bg-gray-200 dark:bg-gray-700 rounded-md"></div>
      </div>
    );
  }

  return (
    <div className={cn("w-full", className)}>
      {/* Search Bar */}
      {showSearch && (
        <div className="relative mb-4">
          <div className="relative">
            <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400 w-4 h-4" />
            <input
              type="text"
              placeholder={isRTL ? "البحث عن فئة" : "Rechercher une catégorie"}
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              onFocus={() => setIsSearchFocused(true)}
              className={cn(
                "w-full pl-10 pr-10 py-2 border border-gray-300 dark:border-gray-600 rounded-md focus:outline-none focus:ring-2 focus:ring-blue-500 dark:bg-gray-800 dark:text-white",
                isRTL && "text-right"
              )}
            />
            {searchQuery && (
              <button
                onClick={clearSearch}
                className="absolute right-3 top-1/2 transform -translate-y-1/2 text-gray-400 hover:text-gray-600 dark:hover:text-gray-300"
              >
                <X className="w-4 h-4" />
              </button>
            )}
          </div>
          
          {/* Search Results Dropdown */}
          {isSearchFocused && searchResults.length > 0 && (
            <div className={cn(
              "absolute top-full left-0 right-0 mt-1 bg-white dark:bg-gray-800 border border-gray-200 dark:border-gray-700 rounded-md shadow-lg z-10 max-h-60 overflow-y-auto",
              isRTL && "right-0 left-auto"
            )}>
              {searchResults.map((result) => (
                <Link
                  key={result.id}
                  to={`/categories/${result.slug}`}
                  className="block px-4 py-2 text-sm hover:bg-gray-100 dark:hover:bg-gray-700"
                  onClick={() => {
                    handleCategorySelect(result);
                    setIsSearchFocused(false);
                  }}
                >
                  {(t(`categories.${result.slug}`) !== `categories.${result.slug}`) ? t(`categories.${result.slug}`) : result.name}
                </Link>
              ))}
            </div>
          )}
        </div>
      )}

      {/* Mobile Menu Toggle */}
      <div className="md:hidden mb-4">
        <button
          onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
          className="flex items-center gap-2 px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700"
        >
          {isRTL ? "الفئات" : "Catégories"}
          <ChevronDown className={cn("w-4 h-4 transition-transform", mobileMenuOpen && "rotate-180")} />
        </button>
      </div>

      {/* Categories Grid */}
      <div className={cn(
        "grid gap-4",
        mobileMenuOpen ? "block" : "hidden md:grid md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4"
      )}>
        {popularCategories.map((category) => (
          <Link
            key={category.id}
            to={`/categories/${category.slug}`}
            className={cn(
              "flex flex-col items-center gap-2 p-4 border border-gray-200 dark:border-gray-700 rounded-lg hover:bg-gray-50 dark:hover:bg-gray-800 transition-colors",
              selectedCategory?.id === category.id && "border-blue-500 bg-blue-50 dark:bg-blue-900/20"
            )}
            onClick={() => handleCategorySelect(category)}
          >
            {category.icon && renderIcon(category.icon)}
            <span className="text-sm font-medium text-center">
              {category.slug === 'education-loisirs' ? t('categories.education-loisirs') : (t(`categories.${category.slug}`) !== `categories.${category.slug}` ? t(`categories.${category.slug}`) : category.name)}
            </span>
          </Link>
        ))}
      </div>

      {/* All Categories List */}
      <div className={cn(
        "mt-8",
        mobileMenuOpen ? "block" : "hidden md:block"
      )}>
        <h3 className={cn(
          "text-lg font-semibold mb-4",
          isRTL && "text-right"
        )}>
          {isRTL ? "جميع الفئات" : "Toutes les catégories"}
        </h3>
        <div className="space-y-1">
          {categories.map((category) => renderCategoryItem(category))}
        </div>
      </div>
    </div>
  );
}