import React from 'react';
import SEOHead from '@/components/SEO/SEOHead';
import { Breadcrumb } from '@/components/SEO/Breadcrumb';

interface SubcategoryPageSEOProps {
  categoryName: string;
  categorySlug: string;
  subcategoryName: string;
  subcategorySlug: string;
  announcementCount?: number;
}

export function SubcategoryPageSEO({ 
  categoryName, 
  categorySlug, 
  subcategoryName, 
  subcategorySlug,
  announcementCount
}: SubcategoryPageSEOProps) {
  const title = `Annonces ${subcategoryName} ${categoryName} en Algérie | Aladdin Annonces`;
  const description = 
    `Trouvez les meilleures annonces ${subcategoryName.toLowerCase()} en ${categoryName.toLowerCase()} en Algérie. ${
      announcementCount ? `${announcementCount} annonces disponibles. ` : ''
    }Publiez et consultez des milliers d'annonces gratuites!`;
  
  return (
    <>
      <SEOHead 
        title={`Annonces ${subcategoryName} ${categoryName}`}
        description={description}
        category={categoryName}
        subcategory={subcategoryName}
        image={`/images/subcategories/${subcategorySlug}.jpg`}
        url={`/fr/category/${categorySlug}/${subcategorySlug}`}
      />
      <Breadcrumb items={[
        { label: 'Accueil', href: '/fr' },
        { label: categoryName, href: `/fr/category/${categorySlug}` },
        { label: subcategoryName }
      ]} />
    </>
  );
}

export default SubcategoryPageSEO;