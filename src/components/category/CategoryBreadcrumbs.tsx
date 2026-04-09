
import React from "react";
import { Link } from "react-router-dom";
import { ChevronRight } from "lucide-react";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { mergeOfficialAndSupabaseCategories, useCategories } from "@/services/supabaseCategoriesService";
import { useLanguageNavigation } from "@/hooks/useLanguageNavigation";

interface CategoryBreadcrumbsProps {
  categorySlug?: string;
  categoryName?: string;
  subcategorySlug?: string;
  subcategoryName?: string;
}

const CategoryBreadcrumbs: React.FC<CategoryBreadcrumbsProps> = ({
  categorySlug,
  categoryName,
  subcategorySlug,
  subcategoryName,
}) => {
  const { t, language } = useSafeI18nWithRouter();
  const { getLocalizedPath } = useLanguageNavigation();
  const { data: categoriesFromSupabase = [] } = useCategories(language);

  const menuCategories = React.useMemo(
    () => mergeOfficialAndSupabaseCategories(language, categoriesFromSupabase),
    [language, categoriesFromSupabase]
  );
  const canonicalCategorySlug =
    categorySlug === "vehicules" || categorySlug === "vehicules-camions-motos"
      ? "vehicules-equipements"
      : categorySlug;
  const resolvedCategory = canonicalCategorySlug
    ? menuCategories.find((c) => c.slug === canonicalCategorySlug) || menuCategories.find((c) => c.slug === categorySlug)
    : undefined;

  const resolvedSubcategory = subcategorySlug
    ? resolvedCategory?.subcategories?.find((s) => s.slug === subcategorySlug) ||
      resolvedCategory?.subcategories
        ?.flatMap((s) => s.subcategories ?? [])
        .find((s) => s.slug === subcategorySlug)
    : undefined;

  const displayCategoryName = resolvedCategory?.name || categoryName || categorySlug;
  const displaySubcategoryName =
    resolvedSubcategory?.name || subcategoryName || subcategorySlug;

  return (
    <nav className="mb-6 flex items-center gap-2 border-b border-gray-200 pb-3 text-sm text-gray-600 dark:border-slate-700 dark:text-gray-300">
      <Link to={getLocalizedPath("/")} className="text-blue-600 hover:text-blue-800 hover:underline transition-colors">
        {t('breadcrumb.home')}
      </Link>
      <ChevronRight className="h-4 w-4 text-gray-400" />
      {categorySlug && displayCategoryName && (
        <>
          <Link to={getLocalizedPath(`/category/${canonicalCategorySlug || categorySlug}`)} className="text-gray-600 hover:text-blue-800 hover:underline transition-colors dark:text-gray-300">
            {displayCategoryName}
          </Link>
          {displaySubcategoryName && (
            <>
              <ChevronRight className="h-4 w-4 text-gray-400" />
              <span className="font-medium text-gray-700 dark:text-white">
                {displaySubcategoryName}
              </span>
            </>
          )}
        </>
      )}
      {!categorySlug && displayCategoryName && (
        <span className="font-medium text-gray-700 dark:text-white">
          {displayCategoryName}
        </span>
      )}
    </nav>
  );
};

export default CategoryBreadcrumbs;
