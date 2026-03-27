
import SectionHeader from "./SectionHeader";
import { usePopularCategories } from "@/hooks/usePopularCategories";
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import TrendingAnnouncementsBanner from "./TrendingAnnouncementsBanner";
import DynamicCategorySection from "./DynamicCategorySection";

const PopularSearchedAnnouncementsSection = () => {
  const { t } = useSafeI18nWithRouter();
  const sortedCategories = usePopularCategories();

  if (sortedCategories.length === 0) {
    return (
      <div className="space-y-8 mt-8">
        <SectionHeader title={t('sections.mostSearched')} viewAllLink="/annonces" showViewAll={true} />
        <p className="text-gray-500 text-center py-4 dark:text-slate-400">Aucune catégorie à afficher pour le moment.</p>
      </div>
    );
  }

  return (
    <div className="space-y-8 mt-8">
      <TrendingAnnouncementsBanner />
      {sortedCategories.map((category) => (
        <DynamicCategorySection
          key={`popular-${category.id}`}
          category={category}
        />
      ))}
    </div>
  );
};

export default PopularSearchedAnnouncementsSection;
