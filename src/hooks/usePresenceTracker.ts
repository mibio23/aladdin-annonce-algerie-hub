import { useEffect } from 'react';
import { useAuth } from '@/contexts/useAuth';
import { supabase } from '@/integrations/supabase/client';
import { logger } from '@/utils/silentLogger';

export const usePresenceTracker = () => {
  const { user } = useAuth();

  useEffect(() => {
    if (!user) return;

    // 1. Maintain database state for offline queries/history
    const updatePresence = async (isOnline = true) => {
      try {
        const { error } = await supabase
          .from('user_presence')
          .upsert({ 
            user_id: user.id,
            is_online: isOnline,
            last_seen_at: new Date().toISOString()
          }, { 
            onConflict: 'user_id' 
          });

        if (error) {
          logger.warn('Error updating presence:', error);
        }
      } catch (err) {
        logger.warn('Error in presence tracker:', err);
      }
    };

    // Initial DB update
    updatePresence(true);
    const intervalId = setInterval(() => updatePresence(true), 2 * 60 * 1000);

    // 2. Direct Realtime Connection (Supabase Channels)
    const channel = supabase.channel('global_presence', {
      config: {
        presence: {
          key: user.id,
        },
      },
    });

    channel.on('presence', { event: 'sync' }, () => {
      // Presence state is synced
    });

    channel.subscribe(async (status) => {
      if (status === 'SUBSCRIBED') {
        await channel.track({
          user_id: user.id,
          online_at: new Date().toISOString(),
        });
      }
    });

    const handleVisibilityChange = () => {
      if (document.visibilityState === 'visible') {
        updatePresence(true);
      }
    };
    document.addEventListener('visibilitychange', handleVisibilityChange);

    return () => {
      clearInterval(intervalId);
      document.removeEventListener('visibilitychange', handleVisibilityChange);
      updatePresence(false);
      supabase.removeChannel(channel);
    };
  }, [user]);
};
