import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { ScrollArea } from "@/components/ui/scroll-area";
import { Loader2, Palette, Plane, Image } from "lucide-react";
import React from "react";
import { LocalizedLink } from "@/utils/linkUtils";
import { mergeOfficialAndSupabaseCategories, useCategories } from "@/services/supabaseCategoriesService";
import { getRealisticIcon } from "@/data/categories/icons/realisticIconMapping";
import { getSubcategoryEmoji } from "@/data/categories/icons/emojiMapping";
import "@/styles/modern-menu.css";

const MegaMenuCategories = () => {
  const { t, language, isRTL } = useSafeI18nWithRouter();
  const { data: categoriesFromSupabase = [], isLoading } = useCategories(language);
  const categoryMenu = React.useMemo(
    () => mergeOfficialAndSupabaseCategories(language, categoriesFromSupabase),
    [language, categoriesFromSupabase]
  );
  const [activeIndex, setActiveIndex] = React.useState(0);
  const activeCategory = categoryMenu[activeIndex];

  React.useEffect(() => {
    if (activeIndex >= categoryMenu.length) {
      setActiveIndex(0);
    }
  }, [activeIndex, categoryMenu.length]);

  if (isLoading) {
    return (
      <div className="flex items-center justify-center h-[480px] w-[620px]">
        <Loader2 className="h-8 w-8 animate-spin text-primary" />
      </div>
    );
  }

  const getIconForSlug = (slug: string) => {
    switch (slug) {
      case 'artisanat-traditionnel-algerien':
        return Palette;
      case 'voyages-tourisme':
        return Plane;
      default:
        return Image;
    }
  };

  return (
    <div className="w-[620px] h-[480px]" dir={isRTL ? 'rtl' : 'ltr'}>
      <div className="flex h-full">
        {/* Sidebar : catégories principales */}
        <div className={`w-[270px] shrink-0 ${isRTL ? 'border-l' : 'border-r'} border-gray-200 dark:border-slate-700 h-full overflow-hidden`}>
          <ScrollArea className="h-full">
            <ul className="py-2">
              {categoryMenu.map((cat, idx) => (
                <li key={cat.id}>
                  <div
                    className={`w-full flex items-center gap-2 hover:bg-gray-50 dark:hover:bg-slate-800 ${idx === activeIndex ? 'bg-gray-100 dark:bg-slate-800 font-semibold' : ''}`}
                    onMouseEnter={() => setActiveIndex(idx)}
                  >
                    <LocalizedLink
                      to={`/category/${cat.slug}`}
                      className={`flex-grow flex items-center gap-2 px-3 py-2 ${isRTL ? 'flex-row-reverse text-right' : ''}`}
                    >
                      <span className="shrink-0 w-11 h-11 flex items-center justify-center">
                        {(() => {
                          const realisticSrc = getRealisticIcon(cat.slug);
                          if (realisticSrc) {
                            return <img src={realisticSrc} alt={cat.name} className="w-11 h-11 object-contain" loading="lazy" />;
                          }
                          if (cat.icon) return cat.icon;
                          const Icon = getIconForSlug(cat.slug);
                          return <Icon className="h-4 w-4 text-gray-500" />;
                        })()}
                      </span>
                      <span className="category-link text-sm leading-tight">
                        {cat.slug === 'education-loisirs' ? t('categories.education-loisirs') : (t(`categories.${cat.slug}`) !== `categories.${cat.slug}`
                          ? t(`categories.${cat.slug}`)
                          : cat.name)}
                      </span>
                    </LocalizedLink>
                  </div>
                </li>
              ))}
            </ul>
          </ScrollArea>
        </div>

        {/* Panneau sous-catégories : liste style Chrome */}
        <div className="flex-1 h-full overflow-hidden">
          <ScrollArea className="h-full">
            {activeCategory && (
              <div className="py-2">
                {activeCategory.subcategories.length === 0 && (
                   <div className="px-4 py-8 text-center text-gray-400 text-sm">{t('megaMenu.empty.noCategories')}</div>
                )}

                {activeCategory.subcategories.map((sub) => (
                  <LocalizedLink
                    key={sub.id}
                    to={`/category/${activeCategory.slug}/${sub.slug}`}
                    className={`block px-5 py-2.5 text-sm text-gray-700 dark:text-gray-300 hover:bg-gray-100 dark:hover:bg-slate-800 transition-colors cursor-pointer ${isRTL ? 'text-right' : ''}`}
                  >
                    {t(`categories.${sub.slug}`) !== `categories.${sub.slug}`
                      ? t(`categories.${sub.slug}`)
                      : sub.name}
                  </LocalizedLink>
                ))}
              </div>
            )}
          </ScrollArea>
        </div>
      </div>
    </div>
  );
};

export default MegaMenuCategories;

