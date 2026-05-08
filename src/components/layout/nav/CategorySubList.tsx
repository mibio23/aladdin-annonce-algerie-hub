import { Link } from "react-router-dom";
import { SubCategory } from "@/data/categoryTypes";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";

interface CategorySubListProps {
  subcategories: SubCategory[];
  parentSlug: string;
}

const CategorySubList: React.FC<CategorySubListProps> = ({ 
  subcategories, 
  parentSlug 
}) => {
  const { t } = useSafeI18nWithRouter();

  if (!subcategories?.length) return null;

  return (
    <ul className="space-y-2 ml-6">
      {subcategories.map((sub) => {
        // Use translation key if available
        const translatedSubName = t(`categories.${sub.slug}`) !== `categories.${sub.slug}` 
          ? t(`categories.${sub.slug}`) 
          : sub.name;
          
        return (
          <li key={sub.id}>
            <Link 
              to={`/category/${parentSlug}/${sub.slug}`}
              className="text-black dark:text-gray-300 hover:text-red-600 dark:hover:text-red-400 text-sm font-semibold transition-all duration-300 hover:underline decoration-black dark:decoration-gray-300 underline-offset-2 decoration-1 hover:drop-shadow-lg hover:text-shadow-glow"
            >
              {translatedSubName}
            </Link>
            {/* Sous-sous-catégories masquées du menu — présentes uniquement pour le SEO (sitemap/meta) */}
          </li>
        );
      })}
    </ul>
  );
};

export default CategorySubList;
