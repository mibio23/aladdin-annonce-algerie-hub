// Service local pour les catégories utilisant main28Categories.ts
// Ce service est utilisé pour le développement local quand Supabase n'est pas configuré

import { MenuCategory } from '@/data/categoryTypes';
import { getCategoryMenu } from '@/data/megaMenu/categoryMenu';

// Fonction pour transformer les catégories du fichier local en MenuCategory
const transformLocalCategory = (category: MenuCategory): MenuCategory => {
  return {
    id: String(category.id),
    slug: String(category.slug),
    name: String(category.name),
    icon: category.icon,
    description: category.description || undefined,
    attributes: category.attributes || undefined,
    subcategories: category.subcategories?.map(sub => ({
      ...sub,
      id: String(sub.id),
      slug: String(sub.slug),
      name: String(sub.name),
    })) || [],
    href: `/categories/${String(category.slug)}`,
  };
};

// Fonction pour récupérer les catégories depuis le fichier local
export const fetchCategoriesFromLocal = (language: string = 'fr'): Promise<MenuCategory[]> => {
  const data = getCategoryMenu(language).map(transformLocalCategory);
  return Promise.resolve(data);
};

// Hook pour utiliser les catégories locales
export const useLocalCategories = (language: string = 'fr') => {
  const data = getCategoryMenu(language).map(transformLocalCategory);
  return {
    data: data as MenuCategory[],
    isLoading: false,
    error: null,
    refetch: () => Promise.resolve(),
  };
};

// Export par défaut pour compatibilité
export default {
  fetchCategoriesFromLocal,
  useLocalCategories,
};
