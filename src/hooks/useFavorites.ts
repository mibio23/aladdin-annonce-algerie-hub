
import React, { useEffect, useState, useCallback } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/contexts/useAuth';
import { logger } from '@/utils/silentLogger';
import { useToast } from '@/hooks/use-toast';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { Button } from '@/components/ui/button';

export interface Favorite {
  id: string;
  user_id: string;
  announcement_id: string;
  created_at: string;
}

type FavoritesStore = {
  userId: string | null;
  favorites: Favorite[];
  loaded: boolean;
  loading: boolean;
};

const favoritesStore: FavoritesStore = {
  userId: null,
  favorites: [],
  loaded: false,
  loading: false,
};

const listeners = new Set<(s: FavoritesStore) => void>();

const emit = () => {
  listeners.forEach((l) => l(favoritesStore));
};

export const useFavorites = () => {
  const { user } = useAuth();
  const { toast } = useToast();
  const { t } = useSafeI18nWithRouter();
  const [favorites, setFavorites] = useState<Favorite[]>(
    favoritesStore.userId && user?.id === favoritesStore.userId ? favoritesStore.favorites : [],
  );
  const [loading, setLoading] = useState(
    favoritesStore.userId && user?.id === favoritesStore.userId ? favoritesStore.loading : false,
  );

  useEffect(() => {
    const userId = user?.id ?? null;
    if (favoritesStore.userId !== userId) {
      favoritesStore.userId = userId;
      favoritesStore.favorites = [];
      favoritesStore.loaded = false;
      favoritesStore.loading = false;
      emit();
    }

    const listener = (s: FavoritesStore) => {
      if (s.userId !== (user?.id ?? null)) return;
      setFavorites(s.favorites);
      setLoading(s.loading);
    };

    listeners.add(listener);
    listener(favoritesStore);

    return () => {
      listeners.delete(listener);
    };
  }, [user?.id]);

  const fetchFavorites = useCallback(async () => {
    if (!user) {
      favoritesStore.userId = null;
      favoritesStore.favorites = [];
      favoritesStore.loaded = false;
      favoritesStore.loading = false;
      emit();
      return;
    }

    if (favoritesStore.userId === user.id && (favoritesStore.loading || favoritesStore.loaded)) return;

    favoritesStore.userId = user.id;
    favoritesStore.loading = true;
    emit();
    try {
      const { data, error } = await supabase
        .from('announcement_favorites')
        .select('*')
        .eq('user_id', user.id)
        .order('created_at', { ascending: false });

      if (error) throw error;

      favoritesStore.favorites = (data || []) as Favorite[];
      favoritesStore.loaded = true;
    } catch (error) {
      logger.error('Erreur lors du chargement des favoris:', error);
      toast({
        title: t('common.error'),
        description: t('mesFavoris.loadError'),
        variant: 'destructive',
      });
      favoritesStore.favorites = [];
      favoritesStore.loaded = false;
    } finally {
      favoritesStore.loading = false;
      emit();
    }
  }, [user, toast, t]);

  const addToFavorites = useCallback(
    async (announcementId: string) => {
      if (!user) return false;

      try {
        const { data, error } = await supabase
          .from('announcement_favorites')
          .insert({
            announcement_id: announcementId,
            user_id: user.id,
          })
          .select('*')
          .single();

        if (error) throw error;

        if (favoritesStore.userId !== user.id) {
          favoritesStore.userId = user.id;
          favoritesStore.favorites = [];
          favoritesStore.loaded = true;
        }
        const next = [data as Favorite, ...favoritesStore.favorites.filter((f) => f.announcement_id !== announcementId)];
        favoritesStore.favorites = next;
        emit();
        return true;
      } catch (error) {
        logger.error('Erreur lors de l\'ajout aux favoris:', error);
        return false;
      }
    },
    [user]
  );

  const removeFromFavorites = useCallback(
    async (announcementId: string) => {
      if (!user) return false;

      try {
        const { error } = await supabase
          .from('announcement_favorites')
          .delete()
          .eq('user_id', user.id)
          .eq('announcement_id', announcementId);

        if (error) throw error;

        if (favoritesStore.userId !== user.id) {
          favoritesStore.userId = user.id;
          favoritesStore.favorites = [];
          favoritesStore.loaded = true;
        }
        favoritesStore.favorites = favoritesStore.favorites.filter((f) => f.announcement_id !== announcementId);
        emit();
        return true;
      } catch (error) {
        logger.error('Erreur lors de la suppression du favori:', error);
        return false;
      }
    },
    [user]
  );

  const isFavorite = useCallback(
    (announcementId: string) => {
      return favorites.some((f) => f.announcement_id === announcementId);
    },
    [favorites]
  );

  const toggleFavorite = useCallback(
    async (announcementId: string) => {
      if (!user) {
        toast({
          title: t('favorites.loginRequired'),
          description: React.createElement(
            'div',
            { className: 'flex flex-col gap-2' },
            React.createElement('p', null, t('favorites.loginRequiredDesc')),
            React.createElement(
              'div',
              { className: 'flex gap-2 mt-2' },
              React.createElement(
                Button,
                {
                  variant: 'secondary',
                  size: 'sm',
                  onClick: () => window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'login' })),
                  className: 'w-full sm:w-auto',
                },
                t('auth.login')
              ),
              React.createElement(
                Button,
                {
                  variant: 'outline',
                  size: 'sm',
                  onClick: () => window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'register' })),
                  className:
                    'w-full sm:w-auto bg-transparent border-slate-200 dark:border-slate-700 hover:bg-slate-100 dark:hover:bg-slate-800 text-slate-900 dark:text-slate-100',
                },
                t('auth.register')
              )
            )
          ),
        });
        return false;
      }

      if (isFavorite(announcementId)) {
        return await removeFromFavorites(announcementId);
      }

      return await addToFavorites(announcementId);
    },
    [user, toast, isFavorite, addToFavorites, removeFromFavorites, t]
  );

  return {
    favorites,
    loading,
    fetchFavorites,
    addToFavorites,
    removeFromFavorites,
    toggleFavorite,
    isFavorite,
  };
};
