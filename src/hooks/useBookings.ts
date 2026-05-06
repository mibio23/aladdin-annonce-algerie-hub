import { useState, useCallback, useEffect } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/contexts/useAuth';
import { useToast } from '@/hooks/use-toast';

// Types
export interface Booking {
  id: string;
  user_id: string;
  announcement_id: string;
  booking_date: string;
  start_time: string;
  end_time: string;
  status: 'pending' | 'confirmed' | 'cancelled' | 'completed';
  guest_count: number | null;
  special_requests: string | null;
  contact_phone: string | null;
  contact_email: string | null;
  booking_reference: string;
  total_amount: number | null;
  currency: string | null;
  payment_status: string | null;
  created_at: string;
  updated_at: string;
  cancelled_at: string | null;
  cancellation_reason: string | null;
  // Joined data
  announcement?: {
    title: string;
    image_url: string | null;
    price: number | null;
    user_id: string;
  };
}

export interface AvailabilitySlot {
  id: string;
  announcement_id: string;
  user_id: string;
  day_of_week: number; // 0=Sun, 1=Mon, ..., 6=Sat
  start_time: string;
  end_time: string;
  slot_duration_minutes: number;
  is_active: boolean;
  max_bookings_per_slot: number;
  price_override: number | null;
}

export interface BlockedDate {
  id: string;
  announcement_id: string;
  user_id: string;
  blocked_date: string;
  reason: string | null;
}

export interface CreateBookingInput {
  announcement_id: string;
  booking_date: string;
  start_time: string;
  end_time: string;
  guest_count?: number;
  special_requests?: string;
  contact_phone?: string;
  contact_email?: string;
  total_amount?: number;
}

export interface CreateSlotInput {
  announcement_id: string;
  day_of_week: number;
  start_time: string;
  end_time: string;
  slot_duration_minutes?: number;
  max_bookings_per_slot?: number;
  price_override?: number;
}

// ─────────────────────────────────────────────────────
// Hook: useMyBookings — Client sees their own bookings
// ─────────────────────────────────────────────────────
export function useMyBookings() {
  const { user } = useAuth();
  const { toast } = useToast();
  const [bookings, setBookings] = useState<Booking[]>([]);
  const [loading, setLoading] = useState(true);

  const fetchBookings = useCallback(async () => {
    if (!user) { setBookings([]); setLoading(false); return; }
    setLoading(true);
    try {
      const { data, error } = await supabase
        .from('bookings')
        .select('*, announcements:announcement_id(title, image_url, price, user_id)')
        .eq('user_id', user.id)
        .order('booking_date', { ascending: false });

      if (error) throw error;

      const mapped = (data || []).map((row: Record<string, unknown>) => ({
        ...row,
        announcement: Array.isArray(row.announcements) ? row.announcements[0] : row.announcements,
      })) as Booking[];

      setBookings(mapped);
    } catch (err) {
      console.error('Error fetching bookings:', err);
      toast({ title: 'Erreur', description: 'Impossible de charger les réservations', variant: 'destructive' });
    } finally {
      setLoading(false);
    }
  }, [user, toast]);

  useEffect(() => { fetchBookings(); }, [fetchBookings]);

  return { bookings, loading, refetch: fetchBookings };
}

// ──────────────────────────────────────────────────────────
// Hook: useVendorBookings — Vendor sees bookings for their ads
// ──────────────────────────────────────────────────────────
export function useVendorBookings() {
  const { user } = useAuth();
  const { toast } = useToast();
  const [bookings, setBookings] = useState<Booking[]>([]);
  const [loading, setLoading] = useState(true);

  const fetchVendorBookings = useCallback(async () => {
    if (!user) { setBookings([]); setLoading(false); return; }
    setLoading(true);
    try {
      // Get announcements owned by this user
      const { data: myAnnouncements, error: annError } = await supabase
        .from('announcements')
        .select('id')
        .eq('user_id', user.id)
        .eq('booking_enabled', true);

      if (annError) throw annError;
      if (!myAnnouncements || myAnnouncements.length === 0) {
        setBookings([]);
        setLoading(false);
        return;
      }

      const annIds = myAnnouncements.map(a => a.id);

      const { data, error } = await supabase
        .from('bookings')
        .select('*, announcements:announcement_id(title, image_url, price, user_id)')
        .in('announcement_id', annIds)
        .order('booking_date', { ascending: false });

      if (error) throw error;

      const mapped = (data || []).map((row: Record<string, unknown>) => ({
        ...row,
        announcement: Array.isArray(row.announcements) ? row.announcements[0] : row.announcements,
      })) as Booking[];

      setBookings(mapped);
    } catch (err) {
      console.error('Error fetching vendor bookings:', err);
      toast({ title: 'Erreur', description: 'Impossible de charger les réservations reçues', variant: 'destructive' });
    } finally {
      setLoading(false);
    }
  }, [user, toast]);

  useEffect(() => { fetchVendorBookings(); }, [fetchVendorBookings]);

  return { bookings, loading, refetch: fetchVendorBookings };
}

// ─────────────────────────────────────────────
// Hook: useBookingActions — Create/Update/Cancel
// ─────────────────────────────────────────────
export function useBookingActions() {
  const { user } = useAuth();
  const { toast } = useToast();
  const [loading, setLoading] = useState(false);

  const createBooking = useCallback(async (input: CreateBookingInput) => {
    if (!user) { toast({ title: 'Erreur', description: 'Vous devez être connecté', variant: 'destructive' }); return null; }
    setLoading(true);
    try {
      const { data, error } = await supabase
        .from('bookings')
        .insert({
          ...input,
          user_id: user.id,
          status: 'pending',
          payment_status: 'pending',
          currency: 'DZD',
        })
        .select()
        .single();

      if (error) throw error;
      toast({ title: '✅ Réservation envoyée', description: `Référence: ${data.booking_reference}` });
      return data;
    } catch (err) {
      console.error('Error creating booking:', err);
      toast({ title: 'Erreur', description: 'Impossible de créer la réservation', variant: 'destructive' });
      return null;
    } finally {
      setLoading(false);
    }
  }, [user, toast]);

  const updateBookingStatus = useCallback(async (bookingId: string, status: 'confirmed' | 'cancelled' | 'completed', reason?: string) => {
    setLoading(true);
    try {
      const updateData: Record<string, unknown> = { status };
      if (status === 'cancelled') {
        updateData.cancelled_at = new Date().toISOString();
        if (reason) updateData.cancellation_reason = reason;
      }

      const { error } = await supabase
        .from('bookings')
        .update(updateData)
        .eq('id', bookingId);

      if (error) throw error;

      const statusLabels: Record<string, string> = {
        confirmed: '✅ Réservation confirmée',
        cancelled: '❌ Réservation annulée',
        completed: '🏁 Réservation terminée',
      };
      toast({ title: statusLabels[status] || 'Statut mis à jour' });
      return true;
    } catch (err) {
      console.error('Error updating booking:', err);
      toast({ title: 'Erreur', description: 'Impossible de modifier la réservation', variant: 'destructive' });
      return false;
    } finally {
      setLoading(false);
    }
  }, [toast]);

  return { createBooking, updateBookingStatus, loading };
}

// ────────────────────────────────────────────────────
// Hook: useAvailabilitySlots — Vendor manages schedule
// ────────────────────────────────────────────────────
export function useAvailabilitySlots(announcementId?: string) {
  const { user } = useAuth();
  const { toast } = useToast();
  const [slots, setSlots] = useState<AvailabilitySlot[]>([]);
  const [blockedDates, setBlockedDates] = useState<BlockedDate[]>([]);
  const [loading, setLoading] = useState(true);

  const fetchSlots = useCallback(async () => {
    if (!announcementId) { setSlots([]); setLoading(false); return; }
    setLoading(true);
    try {
      const { data, error } = await supabase
        .from('availability_slots')
        .select('*')
        .eq('announcement_id', announcementId)
        .order('day_of_week')
        .order('start_time');

      if (error) throw error;
      setSlots((data || []) as AvailabilitySlot[]);

      // Also fetch blocked dates
      const { data: blocked } = await supabase
        .from('blocked_dates')
        .select('*')
        .eq('announcement_id', announcementId)
        .gte('blocked_date', new Date().toISOString().split('T')[0]);

      setBlockedDates((blocked || []) as BlockedDate[]);
    } catch (err) {
      console.error('Error fetching slots:', err);
    } finally {
      setLoading(false);
    }
  }, [announcementId]);

  useEffect(() => { fetchSlots(); }, [fetchSlots]);

  const addSlot = useCallback(async (input: CreateSlotInput) => {
    if (!user) return null;
    try {
      const { data, error } = await supabase
        .from('availability_slots')
        .insert({ ...input, user_id: user.id })
        .select()
        .single();

      if (error) throw error;
      toast({ title: '✅ Créneau ajouté' });
      fetchSlots();
      return data;
    } catch (err) {
      console.error('Error adding slot:', err);
      toast({ title: 'Erreur', description: 'Impossible d\'ajouter le créneau', variant: 'destructive' });
      return null;
    }
  }, [user, toast, fetchSlots]);

  const removeSlot = useCallback(async (slotId: string) => {
    try {
      const { error } = await supabase
        .from('availability_slots')
        .delete()
        .eq('id', slotId);

      if (error) throw error;
      toast({ title: 'Créneau supprimé' });
      fetchSlots();
      return true;
    } catch (err) {
      console.error('Error removing slot:', err);
      return false;
    }
  }, [toast, fetchSlots]);

  const toggleSlotActive = useCallback(async (slotId: string, isActive: boolean) => {
    try {
      const { error } = await supabase
        .from('availability_slots')
        .update({ is_active: isActive })
        .eq('id', slotId);

      if (error) throw error;
      fetchSlots();
      return true;
    } catch (err) {
      console.error('Error toggling slot:', err);
      return false;
    }
  }, [fetchSlots]);

  const blockDate = useCallback(async (date: string, reason?: string) => {
    if (!user || !announcementId) return null;
    try {
      const { data, error } = await supabase
        .from('blocked_dates')
        .insert({
          announcement_id: announcementId,
          user_id: user.id,
          blocked_date: date,
          reason: reason || null,
        })
        .select()
        .single();

      if (error) throw error;
      fetchSlots();
      return data;
    } catch (err) {
      console.error('Error blocking date:', err);
      return null;
    }
  }, [user, announcementId, fetchSlots]);

  const unblockDate = useCallback(async (blockedDateId: string) => {
    try {
      const { error } = await supabase
        .from('blocked_dates')
        .delete()
        .eq('id', blockedDateId);

      if (error) throw error;
      fetchSlots();
      return true;
    } catch (err) {
      console.error('Error unblocking date:', err);
      return false;
    }
  }, [fetchSlots]);

  // Get available time slots for a specific date
  const getAvailableTimesForDate = useCallback(async (date: string) => {
    if (!announcementId) return [];

    const dateObj = new Date(date);
    const dayOfWeek = dateObj.getDay();

    // Check if date is blocked
    const isBlocked = blockedDates.some(bd => bd.blocked_date === date);
    if (isBlocked) return [];

    // Get slots for this day
    const daySlots = slots.filter(s => s.day_of_week === dayOfWeek && s.is_active);
    if (daySlots.length === 0) return [];

    // Get existing bookings for this date
    const { data: existingBookings } = await supabase
      .from('bookings')
      .select('start_time, end_time')
      .eq('announcement_id', announcementId)
      .eq('booking_date', date)
      .in('status', ['pending', 'confirmed']);

    // Generate time slots
    const availableTimes: { start_time: string; end_time: string; available: boolean }[] = [];

    for (const slot of daySlots) {
      const duration = slot.slot_duration_minutes;
      const [startH, startM] = slot.start_time.split(':').map(Number);
      const [endH, endM] = slot.end_time.split(':').map(Number);
      const startMinutes = startH * 60 + startM;
      const endMinutes = endH * 60 + endM;

      for (let time = startMinutes; time + duration <= endMinutes; time += duration) {
        const slotStart = `${Math.floor(time / 60).toString().padStart(2, '0')}:${(time % 60).toString().padStart(2, '0')}`;
        const slotEnd = `${Math.floor((time + duration) / 60).toString().padStart(2, '0')}:${((time + duration) % 60).toString().padStart(2, '0')}`;

        const isBooked = (existingBookings || []).some(
          (b: { start_time: string; end_time: string }) => b.start_time === slotStart || (b.start_time < slotEnd && b.end_time > slotStart)
        );

        availableTimes.push({
          start_time: slotStart,
          end_time: slotEnd,
          available: !isBooked,
        });
      }
    }

    return availableTimes;
  }, [announcementId, slots, blockedDates]);

  return {
    slots,
    blockedDates,
    loading,
    addSlot,
    removeSlot,
    toggleSlotActive,
    blockDate,
    unblockDate,
    getAvailableTimesForDate,
    refetch: fetchSlots,
  };
}
