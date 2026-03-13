// Service Supabase pour la gestion des catégories avec cache React Query
import { useQuery, useMutation, useQueryClient, QueryClient } from '@tanstack/react-query';
import { MenuCategory } from '@/data/categoryTypes';
import { createIcon } from '@/utils/iconMapper';
import { cacheService, categoryCacheKeys } from '@/services/cacheService';
import { supabase } from '@/integrations/supabase/client';
import { logger } from '@/utils/silentLogger';

// Types pour les données Supabase (view categories_with_translations)
export interface SupabaseCategoryView {
  id: string | null;
  parent_id: string | null;
  name: string | null;
  slug: string | null;
  created_at: string | null;
  updated_at: string | null;
  position_order: number | null;
  is_active: boolean | null;
  id_uuid: string | null; // Deprecated
  parent_id_uuid: string | null; // Deprecated
  description: string | null;
  icon: string | null;
  image_url: string | null;
  category_alt_text: string | null;
  translated_name: string | null;
  translated_description: string | null;
  language_code: string | null;
  category_image_url: string | null;
}

// Clés de cache pour React Query
const CACHE_VERSION = 'v14_pure_supabase';

export const categoriesKeys = {
  all: ['categories', CACHE_VERSION] as const,
  lists: () => [...categoriesKeys.all, 'list'] as const,
  list: (language: string) => [...categoriesKeys.lists(), language] as const,
  details: () => [...categoriesKeys.all, 'detail'] as const,
  detail: (slug: string) => [...categoriesKeys.details(), slug] as const,
  featured: (language: string) => [...categoriesKeys.all, 'featured', language] as const,
};

// Fonction pour transformer les données Supabase en MenuCategory
const transformSupabaseCategory = (category: SupabaseCategoryView): MenuCategory => {
  return {
    id: String(category.id) || '',
    slug: category.slug || '',
    name: category.translated_name || category.name || '',
    icon: category.icon ? createIcon(category.icon) : undefined,
    description: category.translated_description || category.description || undefined,
    subcategories: [], // Sera rempli plus tard dans la construction hiérarchique
    href: `/categories/${category.slug}`,
  };
};

// Fonction pour récupérer les catégories depuis Supabase (100% Distant)
export const fetchCategoriesFromSupabase = async (language: string = 'fr'): Promise<MenuCategory[]> => {
  const cacheKey = `${categoryCacheKeys.categories(language)}_${CACHE_VERSION}`;
  
  // Vérifier d'abord le cache local (Service Worker / LocalStorage via cacheService)
  const cachedData = cacheService.get<MenuCategory[]>(cacheKey);
  if (cachedData) {
    logger.info(`Catégories récupérées depuis le cache local pour ${language}`);
    return cachedData;
  }

  try {
    // 1. Récupérer les catégories actives
    const { data: categoriesData, error: categoriesError } = await supabase
      .from('categories')
      .select('id, parent_id, name, slug, icon, description, position_order, is_active')
      .eq('is_active', true)
      .order('position_order', { ascending: true })
      .limit(5000);
      
    if (categoriesError) {
      logger.error('Erreur lors de la récupération des catégories:', categoriesError);
      throw categoriesError;
    }

    if (!categoriesData || categoriesData.length === 0) {
      logger.warn(`Aucune catégorie trouvée dans la base de données.`);
      return [];
    }

    // 2. Récupérer les traductions pour la langue demandée
    const { data: translationsData, error: translationsError } = await supabase
      .from('category_translations')
      .select('category_id, name, description')
      .eq('language_code', language)
      .limit(5000);

    if (translationsError) {
      logger.warn('Erreur lors de la récupération des traductions (fallback sur défaut):', translationsError);
    }

    // 3. Préparer la map des traductions
    const translationsMap = new Map<string, { name: string | null; description: string | null }>();
    if (translationsData) {
      translationsData.forEach((translation) => {
        translationsMap.set(String(translation.category_id), { 
          name: translation.name, 
          description: translation.description 
        });
      });
    }

    // 4. Fusionner Données + Traductions
    const data: SupabaseCategoryView[] = categoriesData.map((category) => {
      const translation = translationsMap.get(String(category.id));
      return {
        id: category.id,
        id_uuid: null,
        parent_id: category.parent_id,
        parent_id_uuid: null,
        name: category.name,
        slug: category.slug,
        icon: category.icon,
        description: category.description,
        position_order: category.position_order ?? 0,
        is_active: category.is_active ?? true,
        translated_name: translation?.name ?? category.name,
        translated_description: translation?.description ?? category.description,
        language_code: language,
        created_at: null,
        updated_at: null,
        image_url: null,
        category_alt_text: null,
        category_image_url: null,
      };
    });

    // 5. Construire la hiérarchie (Arbre)
    const categoriesMap = new Map<string, MenuCategory>();
    const rootCategories: MenuCategory[] = [];

    // Passe 1 : Instancier
    data.forEach((category) => {
      const transformedCategory = transformSupabaseCategory(category);
      if (category.id) {
        categoriesMap.set(String(category.id), transformedCategory);
      }
    });

    // Passe 2 : Lier Parents/Enfants
    data.forEach((category) => {
      const id = String(category.id);
      const transformedCategory = categoriesMap.get(id);
      
      if (!category.parent_id) {
        // Racine
        if (transformedCategory) {
          rootCategories.push(transformedCategory);
        }
      } else {
        // Enfant
        const parentId = String(category.parent_id);
        const parent = categoriesMap.get(parentId);
        if (parent && transformedCategory) {
          if (!parent.subcategories) {
            parent.subcategories = [];
          }
          parent.subcategories.push(transformedCategory);
        } else if (transformedCategory) {
          // Si parent introuvable (orphelin), on le met à la racine pour ne pas le perdre
          // rootCategories.push(transformedCategory); // Optionnel : décommenter si on veut voir les orphelins
        }
      }
    });

    // Mettre en cache le résultat pour 24 heures
    cacheService.set(cacheKey, rootCategories, 1000 * 60 * 60 * 24);

    return rootCategories;
  } catch (error) {
    logger.error('Erreur critique lors du chargement des catégories:', error);
    throw error;
  }
};

// Hook pour récupérer les catégories avec cache optimisé
export const useCategories = (language: string = 'fr') => {
  return useQuery({
    queryKey: categoriesKeys.list(language),
    queryFn: () => fetchCategoriesFromSupabase(language),
    staleTime: 1000 * 60 * 60 * 24, // Cache pendant 24 heures
    gcTime: 1000 * 60 * 60 * 24 * 7, // Garde en cache pendant 7 jours
    retry: 2,
    refetchOnWindowFocus: false,
    refetchOnReconnect: false,
    networkMode: 'online',
    enabled: !!language,
  });
};

// Hook pour récupérer les catégories featured (Top 10)
export const useFeaturedCategories = (language: string = 'fr') => {
  return useQuery({
    queryKey: categoriesKeys.featured(language),
    queryFn: async () => {
      const cacheKey = `${categoryCacheKeys.featuredCategories(language)}_${CACHE_VERSION}`;
      
      const cachedData = cacheService.get<MenuCategory[]>(cacheKey);
      if (cachedData) return cachedData;

      // On utilise la vue 'categories_with_translations' si elle existe, ou on fait manuel
      // Ici on suppose que la vue existe comme dans le code original
      const { data, error } = await supabase
        .from('categories_with_translations')
        .select('*')
        .eq('language_code', language)
        .eq('is_active', true)
        .order('position_order', { ascending: true })
        .limit(10);

      if (error) {
        // Fallback si la vue n'existe pas : on prend les root categories du fetch principal
        logger.warn("Impossible de charger via la vue, fallback sur fetchCategoriesFromSupabase");
        const allCats = await fetchCategoriesFromSupabase(language);
        return allCats.slice(0, 10);
      }

      const result = (data as unknown as SupabaseCategoryView[])?.map(transformSupabaseCategory) || [];
      cacheService.set(cacheKey, result, 1000 * 60 * 60 * 12);

      return result;
    },
    staleTime: 1000 * 60 * 60 * 12,
    gcTime: 1000 * 60 * 60 * 24,
    networkMode: 'online',
    refetchOnWindowFocus: false,
  });
};

// Hook pour précharger les catégories
export const usePreloadCategories = () => {
  const queryClient = useQueryClient();

  return (language: string = 'fr') => {
    queryClient.prefetchQuery({
      queryKey: categoriesKeys.list(language),
      queryFn: () => fetchCategoriesFromSupabase(language),
      staleTime: 1000 * 60 * 60 * 24,
    });
  };
};

// Hook pour invalider le cache
export const useInvalidateCategories = () => {
  const queryClient = useQueryClient();

  return (language?: string) => {
    if (language) {
      queryClient.invalidateQueries({ queryKey: categoriesKeys.list(language) });
      cacheService.delete(categoryCacheKeys.categories(language));
      cacheService.delete(`${categoryCacheKeys.categories(language)}_${CACHE_VERSION}`);
    } else {
      queryClient.invalidateQueries({ queryKey: categoriesKeys.all });
      cacheService.clear();
    }
  };
};

// --- Mutations Admin ---

export const useCreateCategory = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async (categoryData: Partial<MenuCategory>) => {
      const { data, error } = await supabase
        .from('categories')
        .insert({
          id: categoryData.id || crypto.randomUUID(),
          name: categoryData.name || '',
          slug: categoryData.slug || '',
          icon: categoryData.icon ? String(categoryData.icon) : null,
          position_order: 0,
          is_active: true,
        })
        .select()
        .single();

      if (error) throw error;
      return data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: categoriesKeys.all });
    },
  });
};

export const useUpdateCategory = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async ({ id, ...updateData }: { id: string } & Partial<MenuCategory>) => {
      const dbUpdateData: Record<string, unknown> = {};
      if (updateData.name) dbUpdateData.name = updateData.name;
      if (updateData.slug) dbUpdateData.slug = updateData.slug;
      if (updateData.description) dbUpdateData.description = updateData.description;
      if (updateData.icon) dbUpdateData.icon = String(updateData.icon);
      
      const { data, error } = await supabase
        .from('categories')
        .update(dbUpdateData)
        .eq('id', id)
        .select()
        .single();

      if (error) throw error;
      return data;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: categoriesKeys.all });
    },
  });
};

export const useDeleteCategory = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async (id: string) => {
      const { error } = await supabase.from('categories').delete().eq('id', id);
      if (error) throw error;
      return id;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: categoriesKeys.all });
    },
  });
};

// Configuration du client React Query
export const createCategoriesQueryClient = () => {
  return new QueryClient({
    defaultOptions: {
      queries: {
        staleTime: 1000 * 60 * 5,
        retry: 2,
        refetchOnWindowFocus: false,
      },
    },
  });
};

export const categoriesQueryClient = createCategoriesQueryClient();
