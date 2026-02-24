import DynamicCategorySection from "./DynamicCategorySection";
import { usePopularCategories } from "@/hooks/usePopularCategories";
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";

const AnnouncementsByLineSection = () => {
  const { t } = useSafeI18nWithRouter();
  // Use the popular categories which are now aligned with the menu
  // Afficher toutes les catégories (SEO optimization et demande utilisateur)
  const allCategories = usePopularCategories();
  const displayedCategories = allCategories;

  return (
    <div className="space-y-8">
      {displayedCategories.map((category) => {
        return (
          <DynamicCategorySection 
            key={category.id} 
            category={category} 
          />
        );
      })}
      {displayedCategories.length === 0 && (
        <p className="text-center text-gray-500 py-8 dark:text-slate-400">
          {t('announcements.viewAll')}
        </p>
      )}
    </div>
  );
};

export default AnnouncementsByLineSection;
