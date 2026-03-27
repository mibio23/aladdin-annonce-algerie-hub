import { useEffect, useCallback } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { logger } from '@/utils/silentLogger';
import { invalidateCache } from './useAnnouncements';

interface RealtimeAnnouncement {
  id: string;
  title: string;
  category_id: string;
  created_at: string;
  is_active: boolean;
}

export const useRealtimeAnnouncements = () => {
  // Gestionnaire pour les nouvelles annonces
  const handleNewAnnouncement = useCallback((announcement: RealtimeAnnouncement) => {
    logger.info('Nouvelle annonce reçue via realtime:', announcement);
    
    // Invalider le cache de la catégorie concernée
    if (announcement.category_id) {
      invalidateCache(announcement.category_id);
    }
    
    // Notifier les composants de l'arrivée d'une nouvelle annonce
    window.dispatchEvent(new CustomEvent('newAnnouncementRealtime', { 
      detail: announcement 
    }));
  }, []);

  useEffect(() => {
    // S'abonner aux changements dans la table announcements
    const subscription = supabase
      .channel('announcements-realtime')
      .on('postgres_changes', 
        { 
          event: 'INSERT', 
          schema: 'public', 
          table: 'announcements' 
        }, 
        (payload) => {
          const newAnnouncement = payload.new as RealtimeAnnouncement;
          
          // Vérifier que l'annonce est active
          if (newAnnouncement.is_active) {
            handleNewAnnouncement(newAnnouncement);
          }
        }
      )
      .subscribe((status) => {
        if (status === 'SUBSCRIBED') {
          logger.info('Connecté au realtime Supabase pour les annonces');
        } else if (status === 'CHANNEL_ERROR') {
          logger.error('Erreur de connexion realtime pour les annonces');
        }
      });

    // Nettoyer à la désinscription
    return () => {
      subscription.unsubscribe();
    };
  }, [handleNewAnnouncement]);

  return null; // Ce hook ne retourne rien, il gère juste les événements realtime
};

// Hook pour écouter les nouvelles annonces dans les composants
export const useListenNewAnnouncements = (callback: (announcement: RealtimeAnnouncement) => void) => {
  useEffect(() => {
    const handleEvent = (event: CustomEvent) => {
      callback(event.detail);
    };

    window.addEventListener('newAnnouncementRealtime', handleEvent as EventListener);
    
    return () => {
      window.removeEventListener('newAnnouncementRealtime', handleEvent as EventListener);
    };
  }, [callback]);
};