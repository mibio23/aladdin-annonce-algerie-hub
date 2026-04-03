import { Helmet } from 'react-helmet-async';

interface SEOHeadProps {
  title: string;
  description: string;
  category?: string;
  subcategory?: string;
  image?: string;
  url?: string;
  canonicalUrl?: string;
  noIndex?: boolean;
  keywords?: string[];
  breadcrumbs?: Array<{
    label: string;
    href?: string;
  }>;
  structuredData?: Record<string, unknown> | Array<Record<string, unknown>>;
}

export function SEOHead({ 
  title, 
  description, 
  category, 
  subcategory, 
  image = '/og-image.jpg',
  url,
  canonicalUrl,
  noIndex = false,
  keywords = [],
  breadcrumbs = [],
  structuredData
}: SEOHeadProps) {
  const siteName = 'Aladdin Annonces Algérie';
  const baseUrl =
    import.meta.env.VITE_PUBLIC_SITE_URL ||
    import.meta.env.VITE_SITE_URL ||
    (typeof window !== 'undefined' ? window.location.origin : 'https://www.aladdindz.com');
  const currentPath =
    url ||
    (typeof window !== 'undefined'
      ? `${window.location.pathname}${window.location.search}`
      : '/fr');
  const normalizedPath = currentPath.startsWith('http') ? currentPath : `${baseUrl}${currentPath}`;
  const canonicalHref =
    canonicalUrl
      ? canonicalUrl.startsWith('http')
        ? canonicalUrl
        : `${baseUrl}${canonicalUrl}`
      : normalizedPath;
  const lang = (() => {
    if (currentPath.includes('/ar')) return 'ar';
    if (currentPath.includes('/en')) return 'en';
    return 'fr';
  })();
  const locale = lang === 'ar' ? 'ar_DZ' : lang === 'en' ? 'en_US' : 'fr_FR';
  
  const fullTitle = category 
    ? `${title} - ${category}${subcategory ? ` - ${subcategory}` : ''} | ${siteName}`
    : `${title} | ${siteName}`;

  const ogImage = image.startsWith('http') ? image : `${baseUrl}${image}`;
  const breadcrumbStructuredData =
    breadcrumbs.length > 0
      ? {
          '@context': 'https://schema.org',
          '@type': 'BreadcrumbList',
          itemListElement: breadcrumbs.map((item, index) => ({
            '@type': 'ListItem',
            position: index + 1,
            name: item.label,
            ...(item.href
              ? {
                  item: item.href.startsWith('http') ? item.href : `${baseUrl}${item.href}`,
                }
              : {}),
          })),
        }
      : null;
  const mergedStructuredData = [
    ...(breadcrumbStructuredData ? [breadcrumbStructuredData] : []),
    ...(Array.isArray(structuredData) ? structuredData : structuredData ? [structuredData] : []),
  ];
  const resolvedKeywords = Array.from(
    new Set(
      ['annonces', 'Algérie', 'vente', 'achat', category, subcategory, ...keywords]
        .map((item) => (typeof item === 'string' ? item.trim() : ''))
        .filter(Boolean)
    )
  );

  return (
    <Helmet>
      <title>{fullTitle}</title>
      <meta name="description" content={description} />
      <meta name="keywords" content={resolvedKeywords.join(', ')} />
      <meta property="og:type" content="website" />
      <meta property="og:url" content={canonicalHref} />
      <meta property="og:title" content={fullTitle} />
      <meta property="og:description" content={description} />
      <meta property="og:image" content={ogImage} />
      <meta property="og:site_name" content={siteName} />
      <meta property="og:locale" content={locale} />
      <meta property="twitter:card" content="summary_large_image" />
      <meta property="twitter:url" content={canonicalHref} />
      <meta property="twitter:title" content={fullTitle} />
      <meta property="twitter:description" content={description} />
      <meta property="twitter:image" content={ogImage} />
      {noIndex && <meta name="robots" content="noindex, nofollow" />}
      <link rel="canonical" href={canonicalHref} />
      <html lang={lang} />
      <meta name="theme-color" content="#2563eb" />
      <meta name="msapplication-TileColor" content="#2563eb" />
      <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta name="mobile-web-app-capable" content="yes" />
      <meta name="apple-mobile-web-app-capable" content="yes" />
      <meta name="apple-mobile-web-app-status-bar-style" content="default" />
      <meta name="apple-mobile-web-app-title" content={siteName} />
      {mergedStructuredData.map((entry, index) => (
        <script key={index} type="application/ld+json">
          {JSON.stringify(entry)}
        </script>
      ))}
    </Helmet>
  );
}

export default SEOHead;
