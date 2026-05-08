import React, { useState, useRef, useEffect } from 'react';
import { LocalizedLink } from "@/utils/linkUtils";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { MenuCategory } from "@/data/categoryTypes";
import { ChevronRight, Loader2, Search, Globe, ChevronLeft } from "lucide-react";
import { mergeOfficialAndSupabaseCategories, useCategories } from "@/services/supabaseCategoriesService";


// Fonction pour obtenir la traduction d'une catégorie (sans utiliser les anciennes traductions codées en dur)
const getCategoryTranslation = (category: any, language: string, t: (key: string) => string): string => {
  // Explicit fix for "Sport, Éducation & Loisirs" category
  if (category.slug === 'education-loisirs') {
    return t('categories.education-loisirs');
  }

  const key = `categories.${category.slug}`;
  const translated = t(key);
  return translated !== key ? translated : (category.translations && category.translations[language]) || category.name || '';
};


const ModernMegaMenuCategories: React.FC = () => {
  const { t, language, isRTL } = useSafeI18nWithRouter();
  const { data: categoriesFromSupabase = [], isLoading } = useCategories(language);
  const categories = React.useMemo(
    () => mergeOfficialAndSupabaseCategories(language, categoriesFromSupabase) as MenuCategory[],
    [language, categoriesFromSupabase]
  );
  const [searchQuery, setSearchQuery] = useState('');
  const [hoveredCategory, setHoveredCategory] = useState<string | null>(null);
  // hoveredSubcategory removed — sub-subcategories hidden from menu
  // Track hovered state only
  const [currentCategoryIndex, setCurrentCategoryIndex] = useState(0);
  const menuTimeoutRef = useRef<ReturnType<typeof setTimeout> | null>(null);
  const menuRef = useRef<HTMLDivElement>(null);
  const categoriesContainerRef = useRef<HTMLDivElement>(null);

  // Filtrer les catégories selon la recherche
  const filteredCategories = categories.filter(category => {
    if (!searchQuery) return true;
    
    const translatedName = getCategoryTranslation(category, language, t);
    const searchLower = searchQuery.toLowerCase();
    
    return (
      translatedName.toLowerCase().includes(searchLower) ||
      category.name.toLowerCase().includes(searchLower) ||
      category.subcategories.some(sub =>
        sub.name.toLowerCase().includes(searchLower) ||
        sub.subcategories?.some(subSub =>
          subSub.name.toLowerCase().includes(searchLower)
        )
      )
    );
  });

  const showLoading = isLoading;
  const showEmpty = !isLoading && !categories.length;

  // Gestion du survol avec délai pour éviter les fermetures intempestives
  const handleCategoryHover = (categoryId: string | null) => {
    if (menuTimeoutRef.current) {
      clearTimeout(menuTimeoutRef.current);
    }
    setHoveredCategory(categoryId);
    // Menu open implied by hovered category
  };


  const handleMenuLeave = () => {
    menuTimeoutRef.current = setTimeout(() => {
      setHoveredCategory(null);
      // Menu closed when leaving
    }, 300);
  };

  // Gestion du clavier pour l'accessibilité
  const handleKeyDown = (e: React.KeyboardEvent) => {
    if (e.key === 'Escape') {
      setHoveredCategory(null);
    }
  };

  // Nettoyer le timeout lors du démontage
  useEffect(() => {
    return () => {
      if (menuTimeoutRef.current) {
        clearTimeout(menuTimeoutRef.current);
      }
    };
  }, []);

  // Fermer le menu lors du clic extérieur
  useEffect(() => {
    const handleClickOutside = (event: MouseEvent) => {
      if (menuRef.current && !menuRef.current.contains(event.target as Node)) {
        setHoveredCategory(null);
        setHoveredSubcategory(null);
      }
    };

    document.addEventListener('mousedown', handleClickOutside);
    return () => {
      document.removeEventListener('mousedown', handleClickOutside);
    };
  }, []);

  // Navigation entre les catégories avec les flèches
  const navigateCategories = (direction: 'prev' | 'next') => {
    if (direction === 'prev' && currentCategoryIndex > 0) {
      setCurrentCategoryIndex(currentCategoryIndex - 1);
    } else if (direction === 'next' && currentCategoryIndex < filteredCategories.length - 1) {
      setCurrentCategoryIndex(currentCategoryIndex + 1);
    }
  };

  // Défilement horizontal des catégories
  const scrollCategories = (direction: 'left' | 'right') => {
    if (categoriesContainerRef.current) {
      const scrollAmount = 200; // Largeur approximative d'une catégorie
      if (direction === 'left') {
        categoriesContainerRef.current.scrollLeft -= scrollAmount;
      } else {
        categoriesContainerRef.current.scrollLeft += scrollAmount;
      }
    }
  };

  return (
    <div
      ref={menuRef}
      className={`w-full bg-white dark:bg-slate-900 shadow-lg overflow-hidden ${isRTL ? 'rtl' : 'ltr'}`}
      onKeyDown={handleKeyDown}
      role="navigation"
      aria-label={t('megaMenu.aria.categoriesMenu')}
    >
      {/* En-tête du menu style AliExpress */}
      <div className="bg-gradient-to-r from-orange-500 to-red-500 p-4">
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <div className="w-10 h-10 bg-white rounded-full flex items-center justify-center">
              <span className="text-orange-500 font-bold text-xl">A</span>
            </div>
            <h2 className="text-white text-xl font-bold">
              {t('megaMenu.title')}
            </h2>
          </div>
          <div className="flex items-center gap-2">
            <button className="text-white hover:bg-white/20 p-2 rounded-lg transition-colors">
              <Globe className="w-5 h-5" />
            </button>
          </div>
        </div>
      </div>

      {showLoading && (
        <div className="flex items-center justify-center min-h-[400px] w-full">
          <div className="flex flex-col items-center space-y-3">
            <Loader2 className="h-8 w-8 animate-spin text-primary" />
            <p className="text-sm text-muted-foreground">{t('megaMenu.loadingCategories')}</p>
          </div>
        </div>
      )}

      {showEmpty && (
        <div className="flex items-center justify-center min-h-[400px] w-full">
          <p className="text-muted-foreground">{t('megaMenu.empty.noCategories')}</p>
        </div>
      )}

      {/* Barre de recherche style AliExpress */}
      <div className="p-4 bg-gray-50 dark:bg-slate-800 border-b border-gray-200 dark:border-slate-700">
        <div className="relative max-w-2xl mx-auto">
          <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 h-5 w-5 text-gray-400" />
          <input
            type="text"
            placeholder={t('megaMenu.search.placeholder')}
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            className={`w-full pl-12 pr-4 py-3 border border-gray-300 dark:border-gray-600 rounded-lg bg-white dark:bg-slate-700 text-gray-900 dark:text-gray-100 focus:outline-none focus:ring-2 focus:ring-orange-500 ${isRTL ? 'text-right' : 'text-left'}`}
            aria-label={t('megaMenu.search.inputAria')}
          />
          <button className="absolute right-2 top-1/2 transform -translate-y-1/2 bg-orange-500 hover:bg-orange-600 text-white px-4 py-2 rounded-md transition-colors">
            {t('megaMenu.search.button')}
          </button>
        </div>
      </div>

      {/* Menu principal avec survol style AliExpress */}
      <div className="relative" onMouseLeave={handleMenuLeave}>
        {/* Barre de navigation des catégories */}
        <div className="bg-gray-100 dark:bg-slate-800 p-2 flex items-center justify-between">
          <button
            onClick={() => navigateCategories('prev')}
            disabled={currentCategoryIndex === 0}
            className={`p-2 rounded-lg transition-colors ${
              currentCategoryIndex === 0
                ? 'text-gray-300 dark:text-gray-600 cursor-not-allowed'
                : 'text-gray-600 dark:text-gray-400 hover:bg-gray-200 dark:hover:bg-slate-700'
            }`}
            aria-label={t('megaMenu.nav.prevCategory')}
          >
            <ChevronLeft className="w-4 h-4" />
          </button>
          
          <div className="flex items-center gap-2">
            <span className="text-sm text-gray-600 dark:text-gray-400">
              {currentCategoryIndex + 1} / {filteredCategories.length}
            </span>
            <div className="w-32 bg-gray-200 dark:bg-gray-700 rounded-full h-2">
              <div
                className="bg-orange-500 h-2 rounded-full transition-all duration-300"
                style={{ width: `${((currentCategoryIndex + 1) / filteredCategories.length) * 100}%` }}
              />
            </div>
          </div>
          
          <button
            onClick={() => navigateCategories('next')}
            disabled={currentCategoryIndex === filteredCategories.length - 1}
            className={`p-2 rounded-lg transition-colors ${
              currentCategoryIndex === filteredCategories.length - 1
                ? 'text-gray-300 dark:text-gray-600 cursor-not-allowed'
                : 'text-gray-600 dark:text-gray-400 hover:bg-gray-200 dark:hover:bg-slate-700'
            }`}
            aria-label={t('megaMenu.nav.nextCategory')}
          >
            <ChevronRight className="w-4 h-4" />
          </button>
        </div>

        {/* Barre des catégories principales avec défilement */}
        <div className="bg-white dark:bg-slate-900 p-0 relative" role="menubar">
          <div className="flex items-center">
            <button
              onClick={() => scrollCategories('left')}
              className="p-2 text-gray-600 dark:text-gray-400 hover:bg-gray-100 dark:hover:bg-slate-800 rounded-l-lg transition-colors"
              aria-label={t('megaMenu.nav.scrollLeft')}
            >
              <ChevronLeft className="w-4 h-4" />
            </button>
            
            <div
              ref={categoriesContainerRef}
              className="flex overflow-x-auto scrollbar-hide scroll-smooth"
              style={{ scrollbarWidth: 'none', msOverflowStyle: 'none' }}
            >
              {filteredCategories.map((category, index) => (
                <div
                  key={category.id}
                  className={`relative flex-shrink-0 ${index === currentCategoryIndex ? 'border-b-2 border-orange-500' : ''} ${index !== filteredCategories.length - 1 ? 'border-r border-gray-200 dark:border-slate-700' : ''}`}
                  onMouseEnter={() => handleCategoryHover(category.id)}
                  style={{ minWidth: '150px' }}
                >
                  <LocalizedLink
                    to={`/category/${category.slug}`}
                    className={`flex items-center gap-2 px-6 py-4 font-medium transition-all duration-200 w-full ${
                      hoveredCategory === category.id || index === currentCategoryIndex
                        ? 'bg-orange-50 dark:bg-orange-900/20 text-orange-600 dark:text-orange-400'
                        : 'text-gray-700 dark:text-gray-300 hover:bg-gray-50 dark:hover:bg-slate-800'
                    }`}
                    onClick={() => setCurrentCategoryIndex(index)}
                    aria-expanded={hoveredCategory === category.id}
                    aria-haspopup="true"
                    role="menuitem"
                  >
                    {category.icon && React.isValidElement(category.icon) ? (
                      <span className="w-5 h-5 flex items-center justify-center" aria-hidden="true">
                        {category.icon}
                      </span>
                    ) : (
                      <div className="w-5 h-5 rounded bg-gray-200 dark:bg-gray-700 flex items-center justify-center" aria-hidden="true">
                        <span className="text-xs text-gray-500 dark:text-gray-400">•</span>
                      </div>
                    )}
                    <span className="font-semibold">{getCategoryTranslation(category, language, t)}</span>
                    {category.subcategories && category.subcategories.length > 0 && (
                      <ChevronRight className={`w-3 h-3 ml-1 transition-transform duration-200 ${
                        hoveredCategory === category.id ? 'rotate-90' : ''
                      }`} aria-hidden="true" />
                    )}
                  </LocalizedLink>
                </div>
              ))}
            </div>
            
            <button
              onClick={() => scrollCategories('right')}
              className="p-2 text-gray-600 dark:text-gray-400 hover:bg-gray-100 dark:hover:bg-slate-800 rounded-r-lg transition-colors"
              aria-label={t('megaMenu.nav.scrollRight')}
            >
              <ChevronRight className="w-4 h-4" />
            </button>
          </div>
        </div>

        {/* Fenêtre pop-up des sous-catégories style AliExpress */}
        {hoveredCategory && (
          <div
            className="absolute top-full left-0 right-0 z-50 bg-white dark:bg-slate-900 border-t border-gray-200 dark:border-slate-700 shadow-xl animate-in fade-in slide-in-from-top-2 duration-200"
            onMouseEnter={() => handleCategoryHover(hoveredCategory)}
            role="menu"
          >
            <div className="p-6">
              {(() => {
                const category = filteredCategories.find(cat => cat.id === hoveredCategory);
                if (!category) return null;

                return (
                  <div>
                    {/* Sous-catégories uniquement — sous-sous-catégories masquées (SEO uniquement) */}
                    <h3 className="text-lg font-bold text-gray-900 dark:text-white mb-4 flex items-center gap-2">
                      {category.icon && React.isValidElement(category.icon) ? (
                        <span className="w-5 h-5 flex items-center justify-center text-orange-500">
                          {category.icon}
                        </span>
                      ) : null}
                      {getCategoryTranslation(category, language, t)}
                    </h3>
                    <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5 gap-2">
                      {category.subcategories?.map((subcategory) => (
                        <LocalizedLink
                          key={subcategory.id}
                          to={`/category/${category.slug}/${subcategory.slug}`}
                          className="py-2 px-3 rounded-md cursor-pointer transition-colors block hover:bg-orange-50 dark:hover:bg-orange-900/20 text-gray-700 dark:text-gray-300 hover:text-orange-600 dark:hover:text-orange-400"
                          role="menuitem"
                        >
                          <div className="flex items-center gap-2">
                            {subcategory.icon && React.isValidElement(subcategory.icon) ? (
                              <span className="w-4 h-4 flex items-center justify-center" aria-hidden="true">
                                {subcategory.icon}
                              </span>
                            ) : (
                              <div className="w-4 h-4 rounded bg-gray-200 dark:bg-gray-700 flex items-center justify-center" aria-hidden="true">
                                <span className="text-xs text-gray-500 dark:text-gray-400">•</span>
                              </div>
                            )}
                            <span className="font-medium text-sm">{getCategoryTranslation(subcategory, language, t)}</span>
                          </div>
                        </LocalizedLink>
                      ))}
                    </div>
                  </div>
                );
              })()}
            </div>
          </div>
        )}
      </div>

      {/* Affichage des résultats de recherche si recherche active style AliExpress */}
      {searchQuery && (
        <div className="p-6 border-t border-gray-200 dark:border-slate-700 bg-gray-50 dark:bg-slate-800">
          {filteredCategories.length === 0 ? (
            <div className="text-center py-8">
              <div className="flex flex-col items-center">
                <div className="w-16 h-16 rounded-full bg-gray-200 dark:bg-gray-700 flex items-center justify-center mb-4">
                  <span className="text-2xl text-gray-400">🔍</span>
                </div>
                <p className="text-gray-500 dark:text-gray-400 text-lg">
                  {t('megaMenu.search.noResultsTitle')}
                </p>
                <p className="text-gray-400 dark:text-gray-500 mt-2">
                  {t('megaMenu.search.noResultsHint')}
                </p>
              </div>
            </div>
          ) : (
            <div>
              <div className="flex items-center justify-between mb-6">
                <h3 className="text-lg font-bold text-gray-900 dark:text-white">
                  {t('megaMenu.search.resultsTitle')}
                </h3>
                <span className="text-sm text-gray-500 dark:text-gray-400">
                  {filteredCategories.length} {t('megaMenu.search.countSuffix')}
                </span>
              </div>
              <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4">
                {filteredCategories.map((category) => (
                  <div key={category.id} className="bg-white dark:bg-slate-900 rounded-lg border border-gray-200 dark:border-slate-700 p-4 hover:shadow-md transition-shadow">
                    <LocalizedLink
                      to={category.href || `/category/${category.slug}`}
                      className="flex items-center gap-3 group"
                    >
                      {category.icon && React.isValidElement(category.icon) ? (
                        <span className="w-8 h-8 flex items-center justify-center text-orange-500">
                          {category.icon}
                        </span>
                      ) : (
                        <div className="w-8 h-8 rounded bg-gray-200 dark:bg-gray-700 flex items-center justify-center">
                          <span className="text-sm text-gray-500 dark:text-gray-400">•</span>
                        </div>
                      )}
                      <h4 className="text-lg font-bold text-gray-900 dark:text-white group-hover:text-orange-600 dark:group-hover:text-orange-400 transition-colors">
                        {getCategoryTranslation(category, language, t)}
                      </h4>
                    </LocalizedLink>
                    {category.subcategories?.filter(sub =>
                      sub.name.toLowerCase().includes(searchQuery.toLowerCase()) ||
                      sub.subcategories?.some(subSub =>
                        subSub.name.toLowerCase().includes(searchQuery.toLowerCase())
                      )
                    ).length > 0 && (
                      <div className="mt-3 pt-3 border-t border-gray-100 dark:border-slate-700">
                        <p className="text-sm text-gray-500 dark:text-gray-400 mb-2">
                          {t('megaMenu.search.matchingSubcategories')}
                        </p>
                        <div className="space-y-1">
                          {category.subcategories?.filter(sub =>
                            sub.name.toLowerCase().includes(searchQuery.toLowerCase()) ||
                            sub.subcategories?.some(subSub =>
                              subSub.name.toLowerCase().includes(searchQuery.toLowerCase())
                            )
                          ).map((subcategory) => (
                            <div key={subcategory.id} className="flex items-center gap-2 py-1">
                              {subcategory.icon && React.isValidElement(subcategory.icon) ? (
                                <span className="w-4 h-4 flex items-center justify-center text-orange-500">
                                  {subcategory.icon}
                                </span>
                              ) : (
                                <div className="w-4 h-4 rounded bg-gray-200 dark:bg-gray-700 flex items-center justify-center">
                                  <span className="text-xs text-gray-500 dark:text-gray-400">•</span>
                                </div>
                              )}
                              <span className="text-sm text-gray-700 dark:text-gray-300">
                                {getCategoryTranslation(subcategory, language, t)}
                              </span>
                            </div>
                          ))}
                        </div>
                      </div>
                    )}
                  </div>
                ))}
              </div>
            </div>
          )}
        </div>
      )}
    </div>
  );
};

export default ModernMegaMenuCategories;
