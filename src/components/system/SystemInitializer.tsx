import React, { useEffect } from 'react';
import { useQueryClient } from '@tanstack/react-query';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { categoriesKeys } from '@/services/supabaseCategoriesService';

interface SystemInitializerProps {
  children: React.ReactNode;
}

const SystemInitializer: React.FC<SystemInitializerProps> = ({ children }) => {
  const queryClient = useQueryClient();
  const { language: _language } = useSafeI18nWithRouter();

  useEffect(() => {
    if ('serviceWorker' in navigator && import.meta.env.MODE === 'development') {
      navigator.serviceWorker.getRegistrations()
        .then((regs) => {
          if (regs.length) {
            regs.forEach((r) => r.unregister());
            setTimeout(() => {
              if (document.visibilityState === 'visible') {
                window.location.reload();
              }
            }, 200);
          }
        })
        .catch(() => {});
    }

    // Précharger les catégories pour la langue actuelle et les langues les plus communes
    const preloadCategories = async () => {
      const languagesToPreload = ['fr', 'ar', 'en']; // Langues principales uniquement
      
      for (const lang of languagesToPreload) {
        try {
          // Vérifier si les catégories sont déjà en cache
          const cachedData = queryClient.getQueryData(categoriesKeys.list(lang));
          
          if (!cachedData) {
            // Précharger en arrière-plan sans bloquer le rendu
            queryClient.prefetchQuery({
              queryKey: categoriesKeys.list(lang),
              queryFn: async () => {
                // Import dynamique pour éviter les dépendances circulaires
                const { fetchCategoriesFromSupabase } = await import('@/services/supabaseCategoriesService');
                return fetchCategoriesFromSupabase(lang);
              },
              staleTime: 1000 * 60 * 60 * 24, // 24 heures
              gcTime: 1000 * 60 * 60 * 24 * 7, // 7 jours
            });
          }
        } catch (error) {
          console.error(`Erreur lors du préchargement des catégories pour ${lang}:`, error);
        }
      }
    };

    // Démarrer le préchargement après le montage du composant
    const timeoutId = setTimeout(preloadCategories, 1000); // Délai plus long pour éviter les conflits

    return () => clearTimeout(timeoutId);
  }, [queryClient]);

  // Retourner immédiatement les enfants pour ne pas bloquer le rendu
  return <>{children}</>;
};

export default SystemInitializer;