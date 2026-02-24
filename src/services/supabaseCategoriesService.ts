// Service Supabase pour la gestion des catégories avec cache React Query et cache local
import { useQuery, useMutation, useQueryClient, QueryClient } from '@tanstack/react-query';
import { MenuCategory } from '@/data/categoryTypes';
import { createIcon } from '@/utils/iconMapper';
import { useExtendedCategories } from '@/services/extendedCategories/extendedCategoriesService';
import { cacheService, categoryCacheKeys } from '@/services/cacheService';

// Import du service local pour le développement
import { fetchCategoriesFromLocal } from '@/services/localCategoriesService';

// Utiliser le client Supabase déjà configuré
import { supabase } from '@/integrations/supabase/client';
import { logger } from '@/utils/silentLogger';

// Variable pour basculer entre le mode local et Supabase
const USE_LOCAL_CATEGORIES = import.meta.env.VITE_USE_LOCAL_CATEGORIES === 'true';

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
  id_uuid: string | null; // Deprecated but kept for type compatibility if needed, will be null
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

// Clés de cache pour React Query et le cache local
// Ajout d'une version pour forcer le rafraîchissement du cache après les correctifs de fusion
const CACHE_VERSION = 'v13_dynamic_attributes_update';

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

// Fonction pour récupérer les catégories depuis Supabase avec cache local optimisé
export const fetchCategoriesFromSupabase = async (language: string = 'fr'): Promise<MenuCategory[]> => {
  // Si nous sommes en mode local, utiliser le service local
  if (USE_LOCAL_CATEGORIES) {
    logger.info(`📁 Utilisation du service local pour les catégories en ${language}`);
    return fetchCategoriesFromLocal(language);
  }

  const cacheKey = `${categoryCacheKeys.categories(language)}_${CACHE_VERSION}`;
  
  // Vérifier d'abord le cache local
  const cachedData = cacheService.get<MenuCategory[]>(cacheKey);
  if (cachedData) {
    logger.info(`Catégories récupérées depuis le cache local pour ${language}`);
    return cachedData;
  }

  try {
    // Optimisation : sélectionner uniquement les champs nécessaires
    const [categoriesResult, translationsResult] = await Promise.all([
      supabase
        .from('categories')
        .select('id, parent_id, name, slug, icon, description, position_order, is_active')
        .eq('is_active', true)
        .order('position_order', { ascending: true })
        .limit(5000), // Augmenté pour couvrir toutes les catégories (actuellement ~5000)
      
      supabase
        .from('category_translations')
        .select('category_id, name, description')
        .eq('language_code', language)
        .limit(5000) // Augmenté pour couvrir toutes les traductions
    ]);

    const { data: categoriesData, error: categoriesError } = categoriesResult;
    const { data: translationsData, error: _translationsError } = translationsResult;

    if (categoriesError) {
      logger.error('Erreur lors de la récupération des catégories:', categoriesError);
      return fetchCategoriesFromLocal(language);
    }

    if (!categoriesData || categoriesData.length === 0) {
      logger.warn(`Aucune catégorie trouvée`);
      return fetchCategoriesFromLocal(language);
    }

    // Fusionner les catégories avec leurs traductions de manière optimisée
    const translationsMap = new Map<string, { name: string | null; description: string | null }>();
    if (translationsData) {
      translationsData.forEach((translation: { category_id: any; name: string | null; description: string | null }) => {
        // category_id est maintenant un string (TEXT dans la DB)
        translationsMap.set(String(translation.category_id), { name: translation.name, description: translation.description });
      });
    }

    const data: SupabaseCategoryView[] = categoriesData.map((category) => {
      const translation = translationsMap.get(String(category.id));
      return {
        id: category.id as string | null,
        id_uuid: null, // Deprecated
        parent_id: category.parent_id as string | null,
        parent_id_uuid: null, // Deprecated
        name: category.name as string | null,
        slug: category.slug as string | null,
        icon: category.icon as string | null,
        description: category.description as string | null,
        position_order: (category.position_order ?? 0) as number | null,
        is_active: (category.is_active ?? true) as boolean | null,
        translated_name: (translation?.name ?? category.name) as string | null,
        translated_description: (translation?.description ?? category.description) as string | null,
        language_code: language,
        created_at: null,
        updated_at: null,
        image_url: null,
        category_alt_text: null,
        category_image_url: null,
      };
    });

    // Transformer les données en structure hiérarchique optimisée
    const categoriesMap = new Map<string, MenuCategory>();
    const rootCategories: MenuCategory[] = [];

    // Première passe : créer toutes les catégories
    data.forEach((category) => {
      const transformedCategory = transformSupabaseCategory(category);
      const id = String(category.id);
      if (id) {
        categoriesMap.set(id, transformedCategory);
      }
    });

    // Deuxième passe : construire la hiérarchie
    data.forEach((category) => {
      const id = String(category.id);
      const transformedCategory = categoriesMap.get(id);
      
      if (!category.parent_id) {
        if (transformedCategory) {
          rootCategories.push(transformedCategory);
        }
      } else {
        const parentId = String(category.parent_id);
        if (parentId && categoriesMap.has(parentId)) {
          const parent = categoriesMap.get(parentId);
          if (parent && transformedCategory) {
            if (!parent.subcategories) {
              parent.subcategories = [];
            }
            parent.subcategories.push(transformedCategory);
          }
        }
      }
    });

    // Fonction récursive pour mettre à jour les traductions avec les données locales
    // Et surtout, pour utiliser les données locales comme structure principale
    const mergeWithLocalAsPrimary = (
      supabaseCats: MenuCategory[], 
      localCats: MenuCategory[]
    ): MenuCategory[] => {
      const supabaseMap = new Map(supabaseCats.map(c => [c.slug, c]));
      
      return localCats.map(lCat => {
        // Chercher la correspondance dans Supabase par slug
        const sCat = supabaseMap.get(lCat.slug);
        
        // Créer une nouvelle catégorie basée sur la locale (qui a la bonne traduction)
        // Mais enrichie avec l'ID de Supabase si disponible
        const mergedCat: MenuCategory = {
          ...lCat,
          id: sCat ? sCat.id : lCat.id,
          icon: lCat.icon ?? sCat?.icon,
          attributes: lCat.attributes,
          // Garder le nom et description locaux car ils sont garantis d'être dans la bonne langue
        };

        // Gérer récursivement les sous-catégories
        if (lCat.subcategories && lCat.subcategories.length > 0) {
          // Si Supabase a aussi des sous-catégories, on essaie de les matcher
          const supabaseSubcats = sCat?.subcategories || [];
          mergedCat.subcategories = mergeWithLocalAsPrimary(supabaseSubcats, lCat.subcategories);
        }

        return mergedCat;
      });
    };

    // Fusionner avec les catégories locales pour garantir la présence des ajouts locaux
    const localCategories = await fetchCategoriesFromLocal(language);
    
    // Utiliser les catégories locales comme structure de référence (source de vérité pour la langue et l'ordre)
    // Et enrichir avec les IDs de Supabase
    const finalCategories = mergeWithLocalAsPrimary(rootCategories, localCategories);
    
    // Mettre en cache le résultat pour 24 heures
    cacheService.set(cacheKey, finalCategories, 1000 * 60 * 60 * 24);

    return finalCategories;
  } catch (error) {
    logger.error('Erreur critique lors du chargement des catégories:', error);
    throw error;
  }
};

// Hook pour récupérer les catégories avec cache optimisé
export const useCategories = (language: string = 'fr') => {
  return useQuery({
    queryKey: categoriesKeys.list(language),
    queryFn: () => USE_LOCAL_CATEGORIES ? fetchCategoriesFromLocal(language) : fetchCategoriesFromSupabase(language),
    staleTime: 1000 * 60 * 60 * 24, // Cache pendant 24 heures
    gcTime: 1000 * 60 * 60 * 24 * 7, // Garde en cache pendant 7 jours
    retry: 2, // Réduire le nombre de tentatives
    retryDelay: (attemptIndex) => Math.min(1000 * 2 ** attemptIndex, 10000), // Délai plus court
    refetchOnWindowFocus: false,
    refetchOnReconnect: false, // Désactiver pour éviter les rechargements
    // Optimisations supplémentaires
    networkMode: 'online',
    refetchOnMount: false,
    enabled: !!language, // N'exécuter que si la langue est définie
  });
};

// Hook pour récupérer les catégories featured avec cache local
export const useFeaturedCategories = (language: string = 'fr') => {
  return useQuery({
    queryKey: categoriesKeys.featured(language),
    queryFn: async () => {
      const cacheKey = `${categoryCacheKeys.featuredCategories(language)}_${CACHE_VERSION}`;
      
      // Vérifier d'abord le cache local
      const cachedData = cacheService.get<MenuCategory[]>(cacheKey);
      if (cachedData) {
        logger.info(`Catégories featured récupérées depuis le cache local pour ${language}`);
        return cachedData;
      }

      // eslint-disable-next-line @typescript-eslint/no-explicit-any
      const { data, error } = await supabase
        .from('categories_with_translations')
        .select('*')
        .eq('language_code', language)
        .eq('is_active', true)
        .order('position_order', { ascending: true })
        .limit(10);

      if (error) {
        throw new Error(`Impossible de charger les catégories featured: ${error.message}`);
      }

      const result = (data as unknown as SupabaseCategoryView[] | null)?.map(transformSupabaseCategory) || [];
      
      // Mettre en cache le résultat pour 12 heures
      cacheService.set(cacheKey, result, 1000 * 60 * 60 * 12);

      return result;
    },
    staleTime: 1000 * 60 * 60 * 12, // Cache pendant 12 heures
    gcTime: 1000 * 60 * 60 * 24, // Garde en cache pendant 24 heures
    networkMode: 'online',
    refetchOnWindowFocus: false,
    refetchOnMount: false,
  });
};

// Hook pour précharger les catégories avec cache optimisé
export const usePreloadCategories = () => {
  const queryClient = useQueryClient();

  return (language: string = 'fr') => {
    queryClient.prefetchQuery({
      queryKey: categoriesKeys.list(language),
      queryFn: () => fetchCategoriesFromSupabase(language),
      staleTime: 1000 * 60 * 60 * 24, // Cache pendant 24 heures
      gcTime: 1000 * 60 * 60 * 24 * 7, // Garde en cache pendant 7 jours
    });
  };
};

// Hook pour invalider le cache des catégories (React Query + cache local)
export const useInvalidateCategories = () => {
  const queryClient = useQueryClient();

  return (language?: string) => {
    // Invalider le cache React Query
    if (language) {
      queryClient.invalidateQueries({ queryKey: categoriesKeys.list(language) });
      // Vider aussi le cache local pour cette langue (anciennes et nouvelles clés)
      cacheService.delete(categoryCacheKeys.categories(language));
      cacheService.delete(`${categoryCacheKeys.categories(language)}_${CACHE_VERSION}`);
      cacheService.delete(categoryCacheKeys.featuredCategories(language));
      cacheService.delete(`${categoryCacheKeys.featuredCategories(language)}_${CACHE_VERSION}`);
    } else {
      queryClient.invalidateQueries({ queryKey: categoriesKeys.all });
      // Vider tout le cache local des catégories
      cacheService.clear();
    }
  };
};

// Hook pour rafraîchir les catégories
export const useRefreshCategories = () => {
  const queryClient = useQueryClient();

  return (language: string = 'fr') => {
    queryClient.refetchQueries({ queryKey: categoriesKeys.list(language) });
  };
};

// Service pour les mutations (admin)
export const useCreateCategory = () => {
  const queryClient = useQueryClient();

  return useMutation({
    mutationFn: async (categoryData: Partial<MenuCategory>) => {
      const insertData = {
        id: categoryData.id || crypto.randomUUID(),
        name: categoryData.name || '',
        slug: categoryData.slug || '',
        icon: categoryData.icon ? String(categoryData.icon) : null,
        position_order: 0,
        is_active: true,
      };
      const { data, error } = await supabase
        .from('categories')
        .insert(insertData)
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
      const { error } = await supabase
        .from('categories')
        .delete()
        .eq('id', id);

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

// Export du client par défaut
export const categoriesQueryClient = createCategoriesQueryClient();


// Fonction pour récupérer les catégories étendues
export const useExtendedSupabaseCategories = (language: string = 'fr') => {
  const { extendedCategories } = useExtendedCategories();
  
  // Simuler la structure de données de Supabase
  const data = extendedCategories.map(category => ({
    id: category.id,
    id_uuid: null, // Deprecated
    name: category.name,
    slug: category.slug,
    description: category.description,
    parent_id: null,
    parent_id_uuid: null, // Deprecated
    position_order: 0,
    is_active: true,
    translated_name: category.name,
    translated_description: category.description,
    language_code: language
  }));
  
  // Transformer en structure hiérarchique
  const categoriesMap = new Map<string, MenuCategory>();
  const rootCategories: MenuCategory[] = [];
  
  // Première passe : créer toutes les catégories
  data.forEach((category) => {
    const transformedCategory = transformSupabaseCategory(category as SupabaseCategoryView);
    categoriesMap.set(String(category.id), transformedCategory);
  });
  
  // Deuxième passe : construire la hiérarchie
  data.forEach((category) => {
    const transformedCategory = categoriesMap.get(String(category.id));
    
    if (!category.parent_id) {
      if (transformedCategory) {
        rootCategories.push(transformedCategory);
      }
    }
  });
  
  return rootCategories;
};
