import { useEffect } from 'react';
import { useAuth } from '@/contexts/useAuth';
import { supabase } from '@/integrations/supabase/client';

export const usePresenceTracker = () => {
  const { user } = useAuth();

  useEffect(() => {
    if (!user) return;

    const updatePresence = async () => {
      try {
        const { error } = await supabase
          .from('user_presence' as any)
          .upsert({ 
            user_id: user.id,
            is_online: true,
            last_seen_at: new Date().toISOString()
          }, { 
            onConflict: 'user_id' 
          });

        if (error) {
          console.error('Error updating presence:', error);
        }
      } catch (err) {
        console.error('Error in presence tracker:', err);
      }
    };

    // Initial update
    updatePresence();

    // Set up interval (every 2 minutes)
    const intervalId = setInterval(updatePresence, 2 * 60 * 1000);

    // Update on visibility change
    const handleVisibilityChange = () => {
      if (document.visibilityState === 'visible') {
        updatePresence();
      }
    };

    document.addEventListener('visibilitychange', handleVisibilityChange);

    return () => {
      clearInterval(intervalId);
      document.removeEventListener('visibilitychange', handleVisibilityChange);
    };
  }, [user]);
};
