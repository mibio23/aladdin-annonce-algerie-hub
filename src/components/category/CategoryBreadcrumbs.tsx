
import React from "react";
import { Link } from "react-router-dom";
import { ChevronRight } from "lucide-react";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { getCategoryMenu } from "@/data/megaMenu/categoryMenu";
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

  const menuCategories = getCategoryMenu(language);
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
    <nav className="flex items-center space-x-2 mb-6 text-sm">
      <Link to={getLocalizedPath("/")} className="text-gray-500 hover:text-orange-500 transition-colors">
        {t('breadcrumb.home')}
      </Link>
      <ChevronRight className="h-4 w-4 text-gray-400" />
      {categorySlug && displayCategoryName && (
        <>
          <Link to={getLocalizedPath(`/category/${canonicalCategorySlug || categorySlug}`)} className="text-gray-500 hover:text-orange-500 transition-colors">
            {displayCategoryName}
          </Link>
          {displaySubcategoryName && (
            <>
              <ChevronRight className="h-4 w-4 text-gray-400" />
              <span className="text-gray-800 dark:text-white font-medium">
                {displaySubcategoryName}
              </span>
            </>
          )}
        </>
      )}
      {!categorySlug && displayCategoryName && (
        <span className="text-gray-800 dark:text-white font-medium">
          {displayCategoryName}
        </span>
      )}
    </nav>
  );
};

export default CategoryBreadcrumbs;
