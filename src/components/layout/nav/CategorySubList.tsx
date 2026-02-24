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
          
            {sub.subcategories && (
              <ul className="ml-4 mt-1 space-y-1">
                {sub.subcategories.map((subSub) => {
                  // Use translation key if available
                  const translatedSubSubName = t(`categories.${subSub.slug}`) !== `categories.${subSub.slug}` 
                    ? t(`categories.${subSub.slug}`) 
                    : subSub.name;
                    
                  return (
                    <li key={subSub.id}>
                      <Link 
                        to={`/category/${parentSlug}/${sub.slug}/${subSub.slug}`}
                        className="text-black dark:text-gray-400 hover:text-red-500 dark:hover:text-red-400 text-xs font-medium transition-all duration-300 hover:underline decoration-black dark:decoration-gray-400 underline-offset-1 hover:drop-shadow-md hover:text-shadow-glow"
                      >
                        {translatedSubSubName}
                      </Link>
                    </li>
                  );
                })}
              </ul>
            )}
          </li>
        );
      })}
    </ul>
  );
};

export default CategorySubList;
