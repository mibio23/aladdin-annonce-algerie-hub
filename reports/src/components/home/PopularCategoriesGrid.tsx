import React, { useMemo } from 'react';
import { usePopularCategories } from '@/hooks/usePopularCategories';
import { Card, CardContent } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import OptimizedImage from '@/components/common/OptimizedImage';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';

type PopularCategoriesGridProps = {
  categoryCounts?: Record<string, number>;
};

const PopularCategoriesGrid = React.memo(({ categoryCounts }: PopularCategoriesGridProps) => {
  const { t } = useSafeI18nWithRouter();
  const { navigateWithLanguage } = useLanguageNavigation();
  const categories = usePopularCategories();
  const limitedCategories = useMemo(() => categories.slice(0, 8), [categories]);

  const handleCategoryClick = (slug: string) => {
    navigateWithLanguage(`/category/${slug}`);
  };

  return (
    <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
      {limitedCategories.map((category) => (
        <Card 
          key={category.id} 
          className="group hover:shadow-lg transition-all duration-300 cursor-pointer overflow-hidden border-slate-200 dark:border-slate-700 hover:-translate-y-1"
          onClick={() => handleCategoryClick(category.slug)}
        >
          <CardContent className="p-4 text-center flex flex-col items-center">
            {/* Recessed Icon Container */}
            <div className="mb-3 p-1">
              <div className="relative w-20 h-20 overflow-hidden rounded-[20px] border-[3px] border-red-500/80 bg-white p-1 shadow-[0_6px_12px_rgba(0,0,0,0.1)] group-hover:border-red-600 group-hover:shadow-[0_10px_20px_rgba(220,38,38,0.2)] transition-all duration-300">
                <div className="w-full h-full overflow-hidden rounded-[14px] shadow-[inset_0_6px_12px_rgba(0,0,0,0.25),inset_0_-2px_4px_rgba(255,255,255,0.3)] bg-slate-50 relative flex items-center justify-center">
                  <OptimizedImage
                    src={category.imageUrl} 
                    alt={category.slug === 'education-loisirs' ? t('categories.education-loisirs') : (t(`categories.${category.slug}`) !== `categories.${category.slug}` ? t(`categories.${category.slug}`) : category.name)}
                    className="w-full h-full object-cover"
                    width={64}
                    height={64}
                  />
                </div>
              </div>
            </div>

            <h3 className="font-semibold text-sm mb-2 line-clamp-1 group-hover:text-primary transition-colors">
              {category.slug === 'education-loisirs' ? t('categories.education-loisirs') : (t(`categories.${category.slug}`) !== `categories.${category.slug}` ? t(`categories.${category.slug}`) : category.name)}
            </h3>
            <Badge variant="secondary" className="text-xs bg-slate-100 dark:bg-slate-800">
              {typeof categoryCounts?.[category.id] === "number"
                ? `${categoryCounts[category.id]} ${categoryCounts[category.id] === 1 ? t('categories.announcement') : t('categories.announcements')}`
                : `${category.subcategories?.length || 0} sous-catégories`}
            </Badge>
          </CardContent>
        </Card>
      ))}
    </div>
  );
});

PopularCategoriesGrid.displayName = 'PopularCategoriesGrid';

export default PopularCategoriesGrid;
