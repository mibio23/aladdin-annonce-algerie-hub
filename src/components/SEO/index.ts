// Composants SEO
export { default as SEOHead } from './SEOHead';
export { default as Breadcrumb } from './Breadcrumb';
export { useCanonicalUrl, useSEOMeta } from '@/hooks/useCanonicalUrl';

// Composants SEO spécifiques aux pages
export { default as HomePageSEO } from './HomePageSEO';
export { default as CategoryPageSEO } from './CategoryPageSEO';
export { default as SubcategoryPageSEO } from './SubcategoryPageSEO';