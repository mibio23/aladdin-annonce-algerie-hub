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
      // Immobilier
      'ventes-immobilieres': '/images/categories/main/immobilier-maison.webp',
      'locations-immobilieres': '/images/categories/main/immobilier-maison.webp',
      'immobilier-professionnel': '/images/categories/main/immobilier-maison.webp',
      'appartements-a-vendre': '/images/categories/main/immobilier-maison.webp',
      'maisons-a-vendre': '/images/categories/main/immobilier-maison.webp',
      
      // Téléphonie
      'telephones-portables': '/images/categories/main/telephonie.webp',
      'tablettes': '/images/categories/main/telephonie.webp',
      'accessoires-telephonie': '/images/categories/main/telephonie.webp',
      
      // Informatique
      'ordinateurs-portables': '/images/categories/main/informatique-electronique.webp',
      'ordinateurs-bureau': '/images/categories/main/informatique-electronique.webp',
      'composants-informatiques': '/images/categories/main/informatique-electronique.webp',
      
      // Mode
      'vetements-homme': '/images/categories/main/mode-accessoires.webp',
      'vetements-femme': '/images/categories/main/mode-accessoires.webp',
      'chaussures': '/images/categories/main/mode-accessoires.webp',
      
      // Maison & Déco
      'meubles': '/lovable-uploads/0e847ff3-5ad7-4093-b131-55e453a9a5d5.png',
      'electromenager': '/images/categories/main/electromenager.webp',
      'decoration': '/images/categories/main/mobilier-et-decoration.webp',
      'cuisine-ustensiles': '/lovable-uploads/4cc7c5f5-f7bc-4a72-b613-1363232b19b2.png',
    };
    
    // Si on a une image spécifique dans le map, on l'utilise
    if (imageMap[slug]) return imageMap[slug];
    
    // Sinon on essaie de deviner par le slug parent ou catégorie
    if (effectiveSlug.includes('immobilier')) return '/images/categories/main/immobilier-maison.webp';
    if (effectiveSlug.includes('telephonie')) return '/images/categories/main/telephonie.webp';
    if (effectiveSlug.includes('informatique')) return '/images/categories/main/informatique-electronique.webp';
    if (effectiveSlug.includes('vehicule')) return '/images/categories/main/vehicules-equipements.webp';
    if (effectiveSlug.includes('velo')) return '/images/categories/main/velo-cyclisme-equipements.webp';
    if (effectiveSlug.includes('nautisme')) return '/images/categories/main/nautisme.webp';
    if (effectiveSlug.includes('btp')) return '/images/categories/main/btp-engins-construction.webp';
    if (effectiveSlug.includes('mode')) return '/images/categories/main/mode-accessoires.webp';
    if (effectiveSlug.includes('bebe')) return '/images/categories/main/bebe-puericulture.webp';
    if (effectiveSlug.includes('electromenager')) return '/images/categories/main/electromenager.webp';
    if (effectiveSlug.includes('mobilier')) return '/images/categories/main/mobilier-et-decoration.webp';
    if (effectiveSlug.includes('image-son')) return '/images/categories/main/image-son-equipement-musique.webp';
    if (effectiveSlug.includes('jeux-video')) return '/images/categories/main/jeux-video-consoles.webp';
    
    return '/images/categories/main/immobilier-maison.webp'; // Fallback par défaut
  };


  return (
    <section className="mb-12">
      <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4 px-4">
        {subcategories.map((subcategory) => {
          const translatedName = t(`categories.${subcategory.slug}`) !== `categories.${subcategory.slug}` 
            ? t(`categories.${subcategory.slug}`) 
            : subcategory.name;

          return (
            <LocalizedLink 
              key={subcategory.id}
              to={`/category/${effectiveSlug}/${subcategory.slug}`}
              className="group block h-full"
            >
              <div className="flex items-center bg-white dark:bg-slate-800 rounded-[20px] border border-slate-200 dark:border-slate-700 overflow-hidden shadow-sm hover:shadow-md hover:border-red-500/50 transition-all duration-300 h-[100px]">
                {/* Image Section (Left) - Exactly like image 2 */}
                <div className="w-[100px] h-full flex-shrink-0 bg-slate-50 dark:bg-slate-900 overflow-hidden">
                  <img 
                    src={getImageForSubcategory(subcategory.slug)}
                    alt={translatedName}
                    className="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500"
                    loading="lazy"
                  />
                </div>
                
                {/* Content Section (Right) - Exactly like image 2 */}
                <div className="flex-1 px-4 py-2 flex flex-col justify-center items-center text-center">
                  <h3 className="text-slate-800 dark:text-slate-100 font-extrabold text-sm leading-tight uppercase tracking-tight group-hover:text-red-600 transition-colors line-clamp-2">
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
