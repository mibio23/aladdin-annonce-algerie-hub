import React from 'react';
import SEOHead from '@/components/SEO/SEOHead';
import { Breadcrumb } from '@/components/SEO/Breadcrumb';

interface CategoryPageSEOProps {
  categoryName: string;
  categorySlug: string;
  categoryDescription?: string;
  announcementCount?: number;
}

export function CategoryPageSEO({ 
  categoryName, 
  categorySlug, 
  categoryDescription,
  announcementCount
}: CategoryPageSEOProps) {
  const title = `Annonces ${categoryName} en Algérie | Aladdin Annonces`;
  const description = categoryDescription || 
    `Trouvez les meilleures annonces ${categoryName.toLowerCase()} en Algérie. ${
      announcementCount ? `${announcementCount} annonces disponibles. ` : ''
    }Publiez et consultez des milliers d'annonces gratuites!`;
  
  return (
    <>
      <SEOHead 
        title={`Annonces ${categoryName}`}
        description={description}
        category={categoryName}
        image={`/images/categories/${categorySlug}.jpg`}
        url={`/fr/category/${categorySlug}`}
      />
      <Breadcrumb items={[
        { label: 'Accueil', href: '/fr' },
        { label: categoryName }
      ]} />
    </>
  );
}

export default CategoryPageSEO;