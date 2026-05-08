import React from 'react';
import SEOHead from '@/components/SEO/SEOHead';

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
  const _title = `Annonces ${categoryName} en Algérie | Aladdin Annonces`;
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
        breadcrumbs={[
          { label: 'Accueil', href: '/fr' },
          { label: categoryName, href: `/fr/category/${categorySlug}` }
        ]}
      />
    </>
  );
}

export default CategoryPageSEO;
