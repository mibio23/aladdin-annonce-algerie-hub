import React from 'react';
import SEOHead from '@/components/SEO/SEOHead';
import { Breadcrumb } from '@/components/SEO/Breadcrumb';

interface HomePageSEOProps {
  announcementCount?: number;
}

export function HomePageSEO({ announcementCount }: HomePageSEOProps) {
  const title = 'Petites Annonces Gratuites en Algérie | Aladdin Annonces';
  const description = `Trouvez les meilleures petites annonces gratuites en Algérie. ${announcementCount ? `${announcementCount} annonces disponibles. ` : ''}Véhicules, immobilier, téléphones, et bien plus. Publiez vos annonces gratuitement!`;
  
  return (
    <>
      <SEOHead 
        title={title}
        description={description}
        image="/images/home-hero.jpg"
        url="/fr"
      />
      <Breadcrumb items={[{ label: 'Accueil' }]} />
    </>
  );
}

export default HomePageSEO;