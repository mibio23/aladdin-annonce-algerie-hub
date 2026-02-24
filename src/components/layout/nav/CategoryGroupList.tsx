import { Link } from "react-router-dom";
import { MenuCategory } from "@/data/categoryTypes";
import CategorySubList from "./CategorySubList";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";

interface CategoryGroupListProps {
  categories: MenuCategory[];
}

const CategoryGroupList: React.FC<CategoryGroupListProps> = ({ 
  categories 
}) => {
  const { t } = useSafeI18nWithRouter();
  
  return (
    <div className="space-y-6">
      {categories.map((category) => {
        // Explicit fix for "Sport, Éducation & Loisirs" category
        const translatedName = category.slug === 'education-loisirs' 
          ? t('categories.education-loisirs') 
          : (t(`categories.${category.slug}`) !== `categories.${category.slug}` 
            ? t(`categories.${category.slug}`) 
            : category.name);
          
        return (
          <div key={category.id} className="group">
            <Link 
              to={`/category/${category.slug}`}
              className="flex items-center gap-2 mb-3 text-red-800 dark:text-red-700 hover:text-red-600 dark:hover:text-red-500 font-bold text-base transition-all duration-300 hover:underline decoration-red-800 dark:decoration-red-700 underline-offset-4 decoration-2 group-hover:drop-shadow-lg"
            >
              {category.icon}
              <span className="group-hover:text-shadow-red">{translatedName}</span>
            </Link>
          
            {category.subcategories && (
              <CategorySubList 
                subcategories={category.subcategories}
                parentSlug={category.slug}
              />
            )}
          </div>
        );
      })}
    </div>
  );
};

export default CategoryGroupList;
