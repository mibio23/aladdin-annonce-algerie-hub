import React from "react";
import { LocalizedLink } from "@/utils/linkUtils";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { SubCategory } from "@/data/categoryTypes";

export interface SubcategoryGridProps {
  subcategories: SubCategory[];
  categorySlug?: string;
  parentSlug?: string;
}

const SubcategoryGrid: React.FC<SubcategoryGridProps> = ({
  subcategories,
  categorySlug,
  parentSlug,
}) => {
  const effectiveSlug = categorySlug || parentSlug || '';
  const { t } = useSafeI18nWithRouter();

  // Mapping des images par slug de sous-catégorie
  const getImageForSubcategory = (slug: string) => {
    const imageMap: Record<string, string> = {
      'meubles': '/lovable-uploads/0e847ff3-5ad7-4093-b131-55e453a9a5d5.png', // Salon/meubles (inversé avec décoration)
      'electromenager': '/lovable-uploads/ce8f091f-a341-46cc-8905-19df51a3cb62.png', // Électroménagers
      'petit-electromenager': '/lovable-uploads/ff8af612-c477-4cdc-ab81-6a2ea4ee2efa.png', // Petit électroménager  
      'decoration': '/lovable-uploads/524a1901-8bb5-4efa-90f7-2b2e9441def1.png', // Décoration/mobilier (inversé avec meubles)
      'cuisine-ustensiles': '/lovable-uploads/4cc7c5f5-f7bc-4a72-b613-1363232b19b2.png', // Ustensiles cuisine
      'linge-maison': '/lovable-uploads/696bb752-da2e-4833-8cb4-6e9fb0479175.png', // Linge de maison
      'nettoyage-entretien': '/lovable-uploads/9b69fc7b-b995-4062-ab33-d6860e437c70.png' // Nettoyage/entretien
    };
    return imageMap[slug] || '/lovable-uploads/19a22be5-5a81-4fb9-834a-6858069184fd.png';
  };


  return (
    <section className="mb-8">
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4 px-4">
        {subcategories.map((subcategory) => {
          const translatedName = t(`categories.${subcategory.slug}`) !== `categories.${subcategory.slug}` 
            ? t(`categories.${subcategory.slug}`) 
            : subcategory.name;

          return (
            <LocalizedLink 
              key={subcategory.id}
              to={`/category/${effectiveSlug}/${subcategory.slug}`}
              className="group block"
            >
              <div className="flex items-stretch bg-white dark:bg-slate-800 rounded-2xl border border-slate-200 dark:border-slate-700 overflow-hidden hover:shadow-md transition-all duration-300 h-24">
                {/* Image Section (Left) */}
                <div className="w-24 h-full flex-shrink-0 bg-slate-100 dark:bg-slate-900">
                  <img 
                    src={getImageForSubcategory(subcategory.slug)}
                    alt={translatedName}
                    className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                    loading="lazy"
                  />
                </div>
                
                {/* Content Section (Right) */}
                <div className="flex-1 p-3 flex items-center justify-center border-l border-slate-100 dark:border-slate-700/50">
                  <h3 className="text-slate-700 dark:text-slate-200 font-bold text-sm leading-tight text-center line-clamp-2 group-hover:text-blue-600 dark:group-hover:text-blue-400 transition-colors">
                    {translatedName}
                  </h3>
                </div>
              </div>
            </LocalizedLink>
          );
        })}
      </div>
    </section>
  );
};

export default SubcategoryGrid;
