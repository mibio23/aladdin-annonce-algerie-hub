import { LocalizedLink } from "@/utils/linkUtils";
import { categoryIcons } from "@/data/categories/icons/iconMapping";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import * as LucideIcons from "lucide-react";

interface CategoryFlyoutPanelProps {
  category: any;
  isRTL: boolean;
  language: string;
}

const CategoryFlyoutPanel = ({ category, isRTL, language: _language }: CategoryFlyoutPanelProps) => {
  const { t } = useSafeI18nWithRouter();

  const getCategoryName = (cat: any) => {
    // Explicit fix for "Sport, Éducation & Loisirs" category
    if (cat.slug === 'education-loisirs') {
      return t('categories.education-loisirs');
    }
    const key = `categories.${cat.slug}`;
    const translated = t(key);
    return translated !== key ? translated : cat.name;
  };

  const getIconComponent = (categoryId: string, size: string = "w-4 h-4") => {
    const iconName = categoryIcons[categoryId] || 'folder';
    const iconKey = iconName.split('-').map((word: string) => 
      word.charAt(0).toUpperCase() + word.slice(1)
    ).join('');
    
    const IconComponent = (LucideIcons as unknown as Record<string, React.ComponentType<{ className?: string }>>)[iconKey] || LucideIcons.Folder;
    return <IconComponent className={`${size} text-primary/80`} />;
  };

  return (
    <div 
      className={`absolute z-50 ${isRTL ? 'right-full mr-2' : 'left-full ml-2'} top-0
        bg-white dark:bg-slate-900 border border-gray-200 dark:border-slate-700
        rounded-lg shadow-xl p-4 min-w-[280px] max-h-[500px] overflow-y-auto
        animate-fade-in`}
    >
      <div className="space-y-1">
        {category.subcategories?.map((subcategory: any) => (
          <LocalizedLink
            key={subcategory.id}
            to={`/category/${category.slug}/${subcategory.slug}`}
            className="flex items-center gap-2 p-2 text-sm text-gray-600 dark:text-gray-300 
              hover:bg-gray-100 dark:hover:bg-slate-800 rounded-md transition-colors"
          >
            {getIconComponent(subcategory.id)}
            <span>{getCategoryName(subcategory)}</span>
          </LocalizedLink>
        ))}
      </div>
    </div>
  );
};

export default CategoryFlyoutPanel;

