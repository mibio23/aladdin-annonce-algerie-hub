
import { useCallback, useEffect, useMemo, useState } from 'react';
import { supabase } from '@/integrations/supabase/client';

export interface MetierAnnouncement {
  id: string;
  title: string;
  description: string | null;
  location: string | null;
  price: number | null;
  images: string[] | null;
  contact_phone: string | null;
  contact_email: string | null;
  created_at: string;
  is_active: boolean;
  user_id: string;
  profession?: string | null;
  view_count?: number;
  wilaya?: string | null;
}

export const useMetiersAnnouncements = (options?: { professionValues?: string[] }) => {
  const [announcements, setAnnouncements] = useState<MetierAnnouncement[]>([]);
  const [isLoading, setIsLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const normalizedProfessionValues = useMemo(() => {
    const values = options?.professionValues ?? [];
    const cleaned = values.map((v) => v.trim()).filter((v) => v.length > 0);
    return Array.from(new Set(cleaned)).sort();
  }, [options?.professionValues]);

  const fetchAnnouncements = useCallback(async () => {
    try {
      setIsLoading(true);

      let query = supabase
        .from('professional_job_offers')
        .select('id, user_id, title, description, phone_numbers, email, location, salary, images, created_at, is_active, profession, wilaya')
        .eq('is_active', true)
        .order('created_at', { ascending: false });

      if (normalizedProfessionValues.length > 0) {
        query = query.in('profession', normalizedProfessionValues);
      }

      const { data, error } = await query;
      if (error) throw error;

      const transformedData: MetierAnnouncement[] = (data || []).map((item) => ({
        id: item.id,
        title: item.title,
        description: item.description,
        location: item.location,
        price: item.salary,
        images: item.images,
        contact_phone: item.phone_numbers && item.phone_numbers.length > 0 ? item.phone_numbers[0] : null,
        contact_email: item.email,
        created_at: item.created_at,
        is_active: item.is_active,
        user_id: item.user_id,
        profession: (item as unknown as { profession?: string | null }).profession ?? null,
        view_count: 0,
        wilaya: (item as unknown as { wilaya?: string | null }).wilaya ?? null
      }));

      setAnnouncements(transformedData);
      setError(null);
    } catch (err) {
      console.error('Error fetching metiers announcements:', err);
      setError('Erreur lors du chargement des annonces');
      setAnnouncements([]);
    } finally {
      setIsLoading(false);
    }
  }, [normalizedProfessionValues]);

  useEffect(() => {
    fetchAnnouncements();
  }, [fetchAnnouncements]);

  return { 
    announcements, 
    isLoading, 
    error, 
    refetch: fetchAnnouncements
  };
};
