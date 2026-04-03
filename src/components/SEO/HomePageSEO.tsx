import React from 'react';
import SEOHead from '@/components/SEO/SEOHead';

interface HomePageSEOProps {
  announcementCount?: number;
}

export function HomePageSEO({ announcementCount }: HomePageSEOProps) {
  const title = 'Petites Annonces Gratuites en Algérie | Aladdin Annonces';
  const description = `Trouvez les meilleures petites annonces gratuites en Algérie. ${announcementCount ? `${announcementCount} annonces disponibles. ` : ''}Véhicules, immobilier, téléphones, et bien plus. Publiez vos annonces gratuitement!`;
  const websiteStructuredData = {
    '@context': 'https://schema.org',
    '@type': 'WebSite',
    name: 'Aladdin Annonces Algérie',
    url: 'https://www.aladdindz.com/fr',
    potentialAction: {
      '@type': 'SearchAction',
      target: 'https://www.aladdindz.com/fr/search?q={search_term_string}',
      'query-input': 'required name=search_term_string',
    },
  };
  const organizationStructuredData = {
    '@context': 'https://schema.org',
    '@type': 'Organization',
    name: 'Aladdin Annonces Algérie',
    url: 'https://www.aladdindz.com',
    logo: 'https://www.aladdindz.com/og-image.jpg',
    description,
    areaServed: 'DZ',
    sameAs: [],
  };
  
  return (
    <>
      <SEOHead 
        title={title}
        description={description}
        image="/images/home-hero.jpg"
        url="/fr"
        breadcrumbs={[{ label: 'Accueil', href: '/fr' }]}
        structuredData={[websiteStructuredData, organizationStructuredData]}
      />
    </>
  );
}

export default HomePageSEO;
