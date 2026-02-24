import { useState, useCallback } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/contexts/useAuth';
import { logger } from '@/utils/silentLogger';
import { useToast } from '@/hooks/use-toast';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { searchService } from '@/services/searchService';
import { SortOption } from '@/types/search';

// Cache intelligent pour les performances avec invalidation rapide
const announcementsCache = new Map<string, { data: Announcement[], totalCount?: number, timestamp: number }>();
const CACHE_DURATION = 30 * 1000; // 30 secondes seulement pour un meilleur équilibre performance/fraîcheur

// Événement pour l'invalidation du cache
export const invalidateCache = (category?: string) => {
  if (category) {
    // Invalider spécifiquement le cache de cette catégorie
    for (const [key] of announcementsCache) {
      if (key.includes(`"category":"${category}"`)) {
        announcementsCache.delete(key);
      }
    }
  } else {
    // Invalider tout le cache
    announcementsCache.clear();
  }
  
  // Notifier les composants
  window.dispatchEvent(new CustomEvent('cacheInvalidated', { detail: { category } }));
};

const getCachedData = (key: string) => {
  const cached = announcementsCache.get(key);
  if (cached && Date.now() - cached.timestamp < CACHE_DURATION) {
    return cached;
  }
  return null;
};

export interface Announcement {
  id: string;
  global_announcement_number?: number;
  title: string;
  description: string;
  price: number;
  category_id: string;
  categorySlug?: string;
  condition: string;
  attributes?: Record<string, unknown>;
  images: string[];
  location: string;
  wilaya: string;
  contact_phone: string;
  contact_email: string;
  user_id: string;
  created_at: string;
  updated_at: string;
  is_active: boolean;
  is_featured: boolean;
  is_urgent: boolean;
  views_count: number;
  currency: string;
  storage?: string;
  ram?: string;
  battery_health?: string;
  expires_at: string | null;
  delivery_options: string[];
          profiles?: {
            full_name: string;
            id: string;
            avatar_url?: string;
          };
  categories?: {
    name: string;
    slug: string;
  };
}

export interface CreateAnnouncementData {
  title: string;
  description: string;
  price: number;
  category_id: string;
  condition: string;
  attributes?: Record<string, unknown>;
  images: File[];
  location: string;
  wilaya: string;
  phone?: string;
  email?: string;
  is_urgent?: boolean;
  is_negotiable?: boolean;
  currency?: string;
}

export const useAnnouncements = () => {
  const { user } = useAuth();
  const { toast } = useToast();
  const { t, language } = useSafeI18nWithRouter();
  const [announcements, setAnnouncements] = useState<Announcement[]>([]);
  const [totalCount, setTotalCount] = useState(0);
  const [userAnnouncements, setUserAnnouncements] = useState<Announcement[]>([]);
  const [loading, setLoading] = useState(false);
  const [creating, setCreating] = useState(false);
  const [updating, setUpdating] = useState(false);
  const [isApproximate, setIsApproximate] = useState(false);

  const uploadAnnouncementImages = useCallback(
    async (files: File[]): Promise<string[]> => {
      if (!user) {
        throw new Error('User is required to upload images');
      }

      if (!files || files.length === 0) return [];

      const bucket = 'announcement-images';
      const uploadedUrls: string[] = [];

      for (const file of files) {
        const fileExtFromName = file.name.includes('.') ? file.name.split('.').pop() : undefined;
        const fileExt = (fileExtFromName || (file.type.includes('png') ? 'png' : 'jpg') || 'jpg').toLowerCase();

        const objectName = `${user.id}/${crypto.randomUUID()}.${fileExt}`;

        const { data, error } = await supabase.storage
          .from(bucket)
          .upload(objectName, file, {
            cacheControl: '3600',
            upsert: false,
            contentType: file.type || undefined,
          });

        if (error) {
          throw error;
        }

        const { data: urlData } = supabase.storage.from(bucket).getPublicUrl(data.path);
        uploadedUrls.push(urlData.publicUrl);
      }

      return uploadedUrls;
    },
    [user]
  );

  // Transform announcement data from database to interface format
  // SECURITY: Uses phone_number from database which is masked for non-authenticated users via RLS
  // eslint-disable-next-line @typescript-eslint/no-explicit-any
  type DbAnnouncement = Record<string, any> & {
    id: string;
    created_at: string;
    updated_at: string;
  };

  const transformAnnouncementData = useCallback((dbAnnouncement: DbAnnouncement): Announcement => ({
    id: dbAnnouncement.id,
    global_announcement_number: dbAnnouncement.global_announcement_number,
    title: dbAnnouncement.title || '',
    description: dbAnnouncement.description || '',
    price: dbAnnouncement.price || 0,
    category_id: dbAnnouncement.category_id || '',
    condition: dbAnnouncement.condition || 'new',
    attributes: dbAnnouncement.attributes || {},
    images: (dbAnnouncement.images && dbAnnouncement.images.length > 0) ? dbAnnouncement.images : (dbAnnouncement.image_urls || (dbAnnouncement.image_url ? [dbAnnouncement.image_url] : [])),
    location: dbAnnouncement.address || dbAnnouncement.location || '',
    wilaya: dbAnnouncement.wilaya || dbAnnouncement.location || '', // Use location as wilaya fallback
    // SECURITY: phone_number is automatically masked as '**********' for unauthenticated users
    // via the announcements_safe view or get_public_announcements function
    contact_phone: dbAnnouncement.phone_number || dbAnnouncement.phone_number_masked || '',
    contact_email: dbAnnouncement.email || dbAnnouncement.contact_email || '',
    user_id: dbAnnouncement.user_id || '',
    created_at: dbAnnouncement.created_at,
    updated_at: dbAnnouncement.updated_at,
    is_active: dbAnnouncement.status === 'active' || dbAnnouncement.status === 'validated',
    is_featured: dbAnnouncement.is_featured || dbAnnouncement.type === 'featured' || dbAnnouncement.type === 'premium',
    is_urgent: dbAnnouncement.is_urgent || false,
    views_count: dbAnnouncement.view_count || 0,
    currency: 'DZD',
    expires_at: dbAnnouncement.expires_at,
    delivery_options: [],
    categories: dbAnnouncement.categories || {
      name: 'Non classé',
      slug: 'non-classe'
    }
  }), []);

  // Transform banner data to announcement format (Legacy support)
  const transformBannerToAnnouncement = (banner: any): Announcement => ({
    id: banner.id,
    title: banner.title || 'Titre manquant',
    description: banner.description || '',
    price: 0,
    category_id: '',
    condition: 'new',
    attributes: {},
    images: banner.image_url ? [banner.image_url] : [],
    location: '',
    wilaya: '',
    contact_phone: '',
    contact_email: '',
    user_id: banner.created_by || '',
    created_at: banner.created_at,
    updated_at: banner.updated_at,
    is_active: banner.is_active,
    is_featured: false,
    is_urgent: false,
    views_count: 0,
    currency: 'DZD',
    expires_at: banner.end_at,
    delivery_options: [],
        profiles: {
          full_name: 'Utilisateur',
          id: banner.created_by || '',
          avatar_url: undefined
        },
    categories: {
      name: 'Bannière publicitaire',
      slug: 'banniere'
    }
  });

  // Fetch all active announcements using smart search engine with caching
  const fetchAnnouncements = useCallback(async (filters?: {
    search?: string;
    category?: string;
    subcategory?: string;
    condition?: string;
    minPrice?: number;
    maxPrice?: number;
    wilaya?: string;
    location?: string;
    distance?: number;
    specialization?: string;
    limit?: number;
    page?: number;
    sortBy?: SortOption;
  }) => {
    // Pas de cache si c'est une nouvelle recherche sans filtres
    const isNewSearch = !filters?.search && !filters?.category;
    const cacheKey = `search_${JSON.stringify(filters || {})}`;
    
    if (!isNewSearch) {
      const cached = getCachedData(cacheKey);
      if (cached) {
        setAnnouncements(cached.data);
        setTotalCount(cached.totalCount || cached.data.length);
        return cached.data;
      }
    }

    setLoading(true);
    try {
      const page = filters?.page || 1;
      const limit = filters?.limit || 12;
      const offset = (page - 1) * limit;

      // Use searchService to ensure consistency with global search and support advanced features
      const searchOptions = {
        filters: {
          category: filters?.category,
          subcategory: filters?.subcategory,
          condition: filters?.condition,
          priceRange: (filters?.minPrice || filters?.maxPrice) 
            ? [filters?.minPrice || 0, filters?.maxPrice || 1000000000] as [number, number]
            : undefined,
          wilaya: filters?.wilaya,
          location: filters?.location,
          specialization: filters?.specialization,
          distance: filters?.distance
        },
        limit,
        offset,
        language,
        sortBy: filters?.sortBy
      };

      const result = await searchService.performSearch(
        filters?.search || '', 
        'session-id-placeholder', 
        searchOptions
      );

      if (!result) {
        setAnnouncements([]);
        setTotalCount(0);
        setIsApproximate(false);
        return [];
      }

      setIsApproximate(!!result.isApproximate);
      setTotalCount(result.totalCount);

      const rawData = (result.results as Array<{ data: unknown }>).map((r) => r.data);
      const announcementsData = rawData.map(transformAnnouncementData);
      
      // Cache the results
      announcementsCache.set(cacheKey, { data: announcementsData, totalCount: result.totalCount, timestamp: Date.now() });

      // Fetch profiles for these announcements to populate user info
      const userIds = [...new Set(announcementsData.map(a => a.user_id).filter((id): id is string => typeof id === 'string'))];
      
      if (userIds.length > 0) {
        const { data: profilesData } = await supabase
          .from('profiles')
          .select('user_id, first_name, last_name, avatar_url')
          .in('user_id', userIds as string[]);
          
        if (profilesData) {
          const announcementsWithProfiles = announcementsData.map(announcement => {
            const profile = profilesData.find(p => p.user_id === announcement.user_id);
            if (profile) {
              return {
                ...announcement,
                profiles: {
                  full_name: profile.first_name ? `${profile.first_name} ${profile.last_name || ''}`.trim() : 'Utilisateur',
                  id: profile.user_id,
                  avatar_url: profile.avatar_url
                }
              };
            }
            return announcement;
          });
          
          setAnnouncements(announcementsWithProfiles);
          // Update cache with profiles
          announcementsCache.set(cacheKey, { data: announcementsWithProfiles, timestamp: Date.now() });
          return announcementsWithProfiles;
        }
      }
      
      setAnnouncements(announcementsData);
      return announcementsData;
    } catch (error) {
      logger.error('Error fetching announcements:', error);
      // On ne montre plus de toast d'erreur bloquant pour ne pas effrayer l'utilisateur
      // L'UI affichera simplement un état vide ou une suggestion de réessayer
      return [];
    } finally {
      setLoading(false);
    }
  }, [transformAnnouncementData, language]);

  // Fetch user's announcements (was banners)
  const fetchMyAnnouncements = useCallback(async () => {
    if (!user) return [];
    
    setLoading(true);
    try {
      const { data, error } = await supabase
        .from('announcements')
        .select(`
          *,
          categories!fk_announcements_category (name, slug)
        `)
        .eq('user_id', user.id)
        .neq('status', 'deleted')
        .order('created_at', { ascending: false });

      if (error) {
        logger.error('Error fetching user announcements:', error);
        throw error;
      }

      const transformedData = data?.map(transformAnnouncementData) || [];
      setUserAnnouncements(transformedData);
      return transformedData;
    } catch (error) {
      logger.error('Error fetching my announcements:', error);
      toast({
        title: 'Erreur',
        description: 'Impossible de charger vos annonces',
        variant: 'destructive',
      });
      return [];
    } finally {
      setLoading(false);
    }
  }, [user, toast, transformAnnouncementData]);

  // Get single announcement by ID - now checks announcements table first with phone protection
  const getAnnouncementById = useCallback(async (id: string): Promise<Announcement | null> => {
    try {
      // Use the secure function to get announcement with protected contact info
      const { data: protectedData, error: protectedError } = await supabase
        .rpc('get_announcement_with_protected_contact', { announcement_id: id });

      if (!protectedError && protectedData && protectedData.length > 0) {
        const announcement = protectedData[0];
        return {
          id: announcement.id,
          title: announcement.title || '',
          description: announcement.description || '',
          price: announcement.price || 0,
          category_id: announcement.category_id || '',
          condition: announcement.condition || 'new',
          images: announcement.image_urls || (announcement.image_url ? [announcement.image_url] : []),
          location: announcement.location || '',
          wilaya: announcement.location || '',
          contact_phone: announcement.phone_number_masked || '',
          contact_email: '',
          user_id: announcement.user_id || '',
          created_at: announcement.created_at,
          updated_at: announcement.updated_at,
          is_active: announcement.status === 'active',
          is_featured: announcement.type === 'featured' || announcement.type === 'premium',
          is_urgent: announcement.is_urgent || false,
          views_count: announcement.view_count || 0,
          currency: 'DZD',
          expires_at: announcement.expires_at,
          delivery_options: [],
          categories: {
            name: 'Non classé',
            slug: 'non-classe'
          }
        };
      }

      // Fallback to advertising_banners table
      const { data, error } = await supabase
        .from('advertising_banners')
        .select('*')
        .eq('id', id)
        .single();

      if (error) {
        logger.error('Error fetching announcement:', error);
        throw error;
      }

      return transformBannerToAnnouncement(data);
    } catch (error) {
      logger.error('Error fetching announcement:', error);
      return null;
    }
  }, []);

  // Create new announcement
  const createAnnouncement = useCallback(async (announcementData: CreateAnnouncementData): Promise<Announcement | null> => {
    if (!user) {
      toast({
        title: t('auth.loginRequired'),
        description: t('auth.loginRequiredDesc'),
      });
      return null;
    }

    setCreating(true);
    try {
      const imageUrls = await uploadAnnouncementImages(announcementData.images);
      
      const announcementPayload = {
        title: announcementData.title,
        description: announcementData.description,
        price: announcementData.price,
        currency: announcementData.currency || 'DZD',
        condition: announcementData.condition,
        category_id: announcementData.category_id,
        wilaya: announcementData.wilaya,
        address: announcementData.location,
        phone_number: announcementData.phone,
        email: announcementData.email,
        is_urgent: announcementData.is_urgent || false,
        is_negotiable: announcementData.is_negotiable || false,
        attributes: announcementData.attributes || {},
        user_id: user.id,
        status: 'active',
        // Compatibilité: la DB possède plusieurs colonnes images selon les vues/scripts.
        images: imageUrls,
        image_urls: imageUrls.length > 0 ? imageUrls : null,
        image_url: imageUrls.length > 0 ? imageUrls[0] : null,
      };

      const { data, error } = await supabase
        .from('announcements')
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        .insert(announcementPayload as any)
        .select()
        .single();

      if (error) throw error;

      toast({
        title: 'Succès',
        description: 'Votre annonce a été créée avec succès',
      });

      return transformAnnouncementData(data as DbAnnouncement);
    } catch (error) {
      logger.error('Error creating announcement:', error);
      toast({
        title: 'Erreur',
        description: 'Impossible de créer l\'annonce',
        variant: 'destructive',
      });
      return null;
    } finally {
      setCreating(false);
    }
  }, [user, toast, transformAnnouncementData, uploadAnnouncementImages, t]);

  // Update announcement
  const updateAnnouncement = useCallback(async (announcement: Announcement): Promise<boolean> => {
    if (!user) return false;

    setUpdating(true);
    try {
      const { error } = await supabase
        .from('announcements')
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        .update({
          title: announcement.title,
          description: announcement.description,
          price: announcement.price,
          condition: announcement.condition,
          attributes: announcement.attributes as any,
          updated_at: new Date().toISOString()
        } as any)
        .eq('id', announcement.id)
        .eq('user_id', user.id); // Check ownership

      if (error) throw error;

      toast({
        title: 'Succès',
        description: 'Annonce mise à jour avec succès',
      });

      return true;
    } catch (error) {
      logger.error('Error updating announcement:', error);
      toast({
        title: 'Erreur',
        description: 'Impossible de mettre à jour l\'annonce',
        variant: 'destructive',
      });
      return false;
    } finally {
      setUpdating(false);
    }
  }, [user, toast]);

  // Delete announcement
  const deleteAnnouncement = useCallback(async (id: string): Promise<boolean> => {
    if (!user) return false;

    try {
      const { data: existing, error: fetchError } = await supabase
        .from('announcements')
        .select('shop_id')
        .eq('id', id)
        .eq('user_id', user.id)
        .maybeSingle();
      if (fetchError) throw fetchError;
      if (!existing) throw new Error('Announcement not found');

      const isShopAnnouncement = !!existing.shop_id;

      const nowIso = new Date().toISOString();
      const { error } = isShopAnnouncement
        ? await supabase.from('announcements').delete().eq('id', id).eq('user_id', user.id)
        : await supabase
            .from('announcements')
            .update({ status: 'deleted', deleted_at: nowIso, updated_at: nowIso })
            .eq('id', id)
            .eq('user_id', user.id);

      if (error) throw error;

      toast({
        title: 'Succès',
        description: 'Annonce supprimée avec succès',
      });

      return true;
    } catch (error) {
      logger.error('Error deleting announcement:', error);
      toast({
        title: 'Erreur',
        description: 'Impossible de supprimer l\'annonce',
        variant: 'destructive',
      });
      return false;
    }
  }, [user, toast]);

  // Mark as sold (deactivate)
  const markAsSold = useCallback(async (id: string): Promise<boolean> => {
    if (!user) return false;

    try {
      const { error } = await supabase
        .from('announcements')
        .update({ status: 'sold' }) // Use status 'sold' instead of is_active false
        .eq('id', id)
        .eq('user_id', user.id);

      if (error) throw error;

      toast({
        title: 'Succès',
        description: 'Annonce marquée comme vendue',
      });

      return true;
    } catch (error) {
      logger.error('Error marking as sold:', error);
      toast({
        title: 'Erreur',
        description: 'Impossible de marquer comme vendu',
        variant: 'destructive',
      });
      return false;
    }
  }, [user, toast]);

  // Increment views (placeholder - no views counter in banners table)
  const incrementViews = useCallback(async (id: string) => {
    // No-op since advertising_banners doesn't have views_count
    logger.info('View incremented for banner:', id);
  }, []);

  return {
    announcements,
    totalCount,
    userAnnouncements,
    loading,
    creating,
    updating,
    fetchAnnouncements,
    fetchMyAnnouncements,
    getAnnouncementById,
    createAnnouncement,
    updateAnnouncement,
    deleteAnnouncement,
    markAsSold,
    incrementViews,
    isApproximate,
  };
};
