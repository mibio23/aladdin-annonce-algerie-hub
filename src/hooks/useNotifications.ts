
import { useState, useCallback, useEffect } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/contexts/useAuth';
import { Notification } from '@/types/notification';
import { logger } from '@/utils/silentLogger';

export const useNotifications = () => {
  const { user } = useAuth();
  const [notifications, setNotifications] = useState<Notification[]>([]);
  const [loading, setLoading] = useState(false);

  const fetchNotifications = useCallback(async () => {
    if (!user) {
      setNotifications([]);
      return;
    }

    setLoading(true);
    try {
      const { data, error } = await supabase
        .from('notifications')
        .select('id, title, message, type, read, created_at')
        .eq('user_id', user.id)
        .order('created_at', { ascending: false })
        .limit(50);

      if (error) throw error;

      const mapped: Notification[] = (data || []).map((n) => ({
        id: n.id,
        type: (n.type || 'info') as Notification['type'],
        title: n.title,
        message: n.message || '',
        timestamp: new Date(n.created_at),
        isRead: Boolean(n.read),
      }));

      setNotifications(mapped);
    } catch (error) {
      logger.error('Erreur lors du chargement des notifications:', error);
      setNotifications([]);
    } finally {
      setLoading(false);
    }
  }, [user]);

  useEffect(() => {
    fetchNotifications();

    // Subscribe to new notifications in realtime
    if (!user) return;

    const channel = supabase
      .channel(`notifications:${user.id}`)
      .on('postgres_changes', {
        event: 'INSERT',
        schema: 'public',
        table: 'notifications',
        filter: `user_id=eq.${user.id}`,
      }, (payload) => {
        const n = payload.new as any;
        const newNotif: Notification = {
          id: n.id,
          type: (n.type || 'info') as Notification['type'],
          title: n.title,
          message: n.message || '',
          timestamp: new Date(n.created_at),
          isRead: Boolean(n.read),
        };
        setNotifications((prev) => [newNotif, ...prev]);
      })
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
    };
  }, [fetchNotifications, user]);

  const markAsRead = useCallback(
    async (id: string) => {
      if (!user) return;

      setNotifications((prev) => prev.map((n) => (n.id === id ? { ...n, isRead: true } : n)));
      const { error } = await supabase
        .from('notifications')
        .update({ read: true })
        .eq('id', id)
        .eq('user_id', user.id);

      if (error) {
        logger.warn('Erreur markAsRead:', error);
      }
    },
    [user]
  );

  const markAllAsRead = useCallback(async () => {
    if (!user) return;

    setNotifications((prev) => prev.map((n) => ({ ...n, isRead: true })));

    const { error } = await supabase
      .from('notifications')
      .update({ read: true })
      .eq('user_id', user.id);

    if (error) {
      logger.warn('Erreur markAllAsRead:', error);
    }
  }, [user]);

  const deleteNotification = useCallback(
    async (id: string) => {
      if (!user) return;

      setNotifications((prev) => prev.filter((n) => n.id !== id));
      const { error } = await supabase
        .from('notifications')
        .delete()
        .eq('id', id)
        .eq('user_id', user.id);

      if (error) {
        logger.warn('Erreur deleteNotification:', error);
      }
    },
    [user]
  );

  const unreadCount = notifications.filter(n => !n.isRead).length;

  return {
    notifications,
    loading,
    unreadCount,
    markAsRead,
    markAllAsRead,
    deleteNotification,
    refetch: fetchNotifications,
  };
};
