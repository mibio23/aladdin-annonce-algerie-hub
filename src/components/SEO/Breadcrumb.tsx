import { Link } from 'react-router-dom';
import { ChevronRight } from 'lucide-react';

interface BreadcrumbItem {
  label: string;
  href?: string;
}

interface BreadcrumbProps {
  items: BreadcrumbItem[];
  className?: string;
}

export function Breadcrumb({ items, className = '' }: BreadcrumbProps) {
  if (items.length === 0) return null;

  return (
    <nav 
      aria-label="Breadcrumb" 
      className={`flex items-center space-x-2 text-sm ${className}`}
    >
      {items.map((item, index) => (
        <div key={index} className="flex items-center">
          {index > 0 && (
            <ChevronRight className="w-4 h-4 text-gray-400 mx-2" />
          )}
          {item.href ? (
            <Link 
              to={item.href} 
              className="text-blue-600 hover:text-blue-800 hover:underline transition-colors"
            >
              {item.label}
            </Link>
          ) : (
            <span className="text-gray-600 font-medium">
              {item.label}
            </span>
          )}
        </div>
      ))}
    </nav>
  );
}

// Hook utilitaire pour générer les breadcrumbs selon la page
export function useBreadcrumbs(page: string, category?: string, subcategory?: string, categorySlug?: string) {
  const baseItems = [{ label: 'Accueil', href: '/fr' }];

  switch (page) {
    case 'home':
      return [{ label: 'Accueil' }];
      
    case 'category':
      return [
        ...baseItems,
        { label: category || 'Catégorie' }
      ];
      
    case 'subcategory':
      return [
        ...baseItems,
        { label: category || 'Catégorie', href: categorySlug ? `/fr/category/${categorySlug}` : undefined },
        { label: subcategory || 'Sous-catégorie' }
      ];
      
    case 'announcement':
      return [
        ...baseItems,
        { label: category || 'Catégorie', href: categorySlug ? `/fr/category/${categorySlug}` : undefined },
        { label: 'Annonce' }
      ];
      
    default:
      return baseItems;
  }
}

export default Breadcrumb;