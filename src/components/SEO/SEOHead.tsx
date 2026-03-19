import { Helmet } from 'react-helmet-async';

interface SEOHeadProps {
  title: string;
  description: string;
  category?: string;
  subcategory?: string;
  image?: string;
  url?: string;
  noIndex?: boolean;
}

export function SEOHead({ 
  title, 
  description, 
  category, 
  subcategory, 
  image = '/og-image.jpg',
  url,
  noIndex = false
}: SEOHeadProps) {
  const siteName = 'Aladdin Annonces Algérie';
  const baseUrl = 'http://localhost:8080';
  
  // Construction du titre complet
  const fullTitle = category 
    ? `${title} - ${category}${subcategory ? ` - ${subcategory}` : ''} | ${siteName}`
    : `${title} | ${siteName}`;
    
  // URL complète
  const fullUrl = url ? `${baseUrl}${url}` : `${baseUrl}${window.location.pathname}`;
  
  // Image OpenGraph
  const ogImage = image.startsWith('http') ? image : `${baseUrl}${image}`;

  return (
    <Helmet>
      {/* Meta tags de base */}
      <title>{fullTitle}</title>
      <meta name="description" content={description} />
      <meta name="keywords" content={`annonces, Algérie, ${category || ''}, ${subcategory || ''}, vente, achat`} />
      
      {/* Open Graph / Facebook */}
      <meta property="og:type" content="website" />
      <meta property="og:url" content={fullUrl} />
      <meta property="og:title" content={fullTitle} />
      <meta property="og:description" content={description} />
      <meta property="og:image" content={ogImage} />
      <meta property="og:site_name" content={siteName} />
      <meta property="og:locale" content="fr_FR" />
      
      {/* Twitter Card */}
      <meta property="twitter:card" content="summary_large_image" />
      <meta property="twitter:url" content={fullUrl} />
      <meta property="twitter:title" content={fullTitle} />
      <meta property="twitter:description" content={description} />
      <meta property="twitter:image" content={ogImage} />
      
      {/* Robots */}
      {noIndex && <meta name="robots" content="noindex, nofollow" />}
      
      {/* Canonical URL */}
      <link rel="canonical" href={fullUrl} />
      
      {/* Langue */}
      <html lang="fr" />
      
      {/* Favicon et apparence */}
      <meta name="theme-color" content="#2563eb" />
      <meta name="msapplication-TileColor" content="#2563eb" />
      
      {/* Mobile */}
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta name="mobile-web-app-capable" content="yes" />
      <meta name="apple-mobile-web-app-capable" content="yes" />
      <meta name="apple-mobile-web-app-status-bar-style" content="default" />
      <meta name="apple-mobile-web-app-title" content={siteName} />
    </Helmet>
  );
}

export default SEOHead;