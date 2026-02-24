import { useEffect, useState } from 'react';
import { supabase } from '@/integrations/supabase/client';
import CategorySection from './CategorySection';
import type { ExplorerCategory } from '@/data/categoryTypes';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { mockVehicleAnnouncements } from '@/data/mock/vehicleAnnouncements';
import { generalAnnouncements } from '@/data/mock/generalAnnouncements';

interface DynamicCategorySectionProps {
  category: ExplorerCategory;
}

const DynamicCategorySection = ({ category }: DynamicCategorySectionProps) => {
  const { t } = useSafeI18nWithRouter();
  const [announcements, setAnnouncements] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchAnnouncements = async () => {
      setLoading(true);
      try {
        const vehicleMockRows = mockVehicleAnnouncements
          .slice()
          .sort((a, b) => new Date(b.created_at).getTime() - new Date(a.created_at).getTime())
          .slice(0, 50)
          .map(item => ({
          id: item.id,
          title: item.title,
          price: item.price,
          location: item.location,
          images: item.images,
          image_urls: item.images,
          image_url: item.images?.[0] || null,
          created_at: item.created_at,
          category_id: category.slug,
          status: 'active',
          phone_number: item.contact_phone,
          is_featured: item.is_featured,
          is_urgent: item.is_urgent,
          description: item.description,
          vehicleDetails: item.vehicleDetails,
          user_id: item.user_id,
          wilaya: item.wilaya,
          currency: item.currency
        }));

        if (category.slug === 'vehicules-equipements') {
          setAnnouncements(vehicleMockRows);
          return;
        }

        // Filter general announcements by category slug
        const filteredAnnouncements = generalAnnouncements.filter(
          ann => ann.categorySlug === category.slug
        );

        if (filteredAnnouncements.length > 0) {
          const generalMockRows = filteredAnnouncements
            .slice()
            .sort((a, b) => new Date(b.date).getTime() - new Date(a.date).getTime())
            .slice(0, 50)
            .map(item => ({
              ...item,
              storage: item.storage,
              ram: item.ram,
              battery_health: item.battery_health,
              image_urls: item.imageUrls,
              image_url: item.imageUrls?.[0] || null,
              status: 'active',
              phone_number: item.phoneNumber,
              created_at: item.date,
              category_id: item.categorySlug,
            }));
          setAnnouncements(generalMockRows);
          return;
        }

        // Fetch from announcements_public view which is safer and faster
        // category_id should be the slug now
        const { data, error } = await supabase
          .from('announcements_public')
          .select('*')
          .eq('category_id', category.slug)
          .eq('status', 'active')
          .order('created_at', { ascending: false })
          .limit(8);

        if (error) {
          console.error('Error fetching announcements for category', category.slug, error);
          setAnnouncements([]);
        } else {
          // announcements_public view doesn't expose user_id for security
          // so we set announcements directly without profile enrichment
          setAnnouncements(data || []);
        }
      } catch (err) {
        console.error('Exception fetching announcements', err);
        setAnnouncements([]);
      } finally {
        setLoading(false);
      }
    };

    fetchAnnouncements();
  }, [category.id, category.slug]);

  if (loading) {
    return (
      <div className="animate-pulse space-y-4">
        <div className="h-8 bg-gray-200 rounded w-1/4 dark:bg-gray-700"></div>
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
           {[...Array(4)].map((_, i) => (
             <div key={i} className="h-48 bg-gray-200 rounded dark:bg-gray-700"></div>
           ))}
        </div>
      </div>
    );
  }

  // If we want to hide empty sections:
  // User requested to show all categories, so we don't hide empty ones anymore
  // if (announcements.length === 0) {
  //   return null;
  // }

  // Map announcements to the format expected by CategorySection (legacy format)
  const mappedAnnouncements = announcements.map(a => ({
    id: a.id,
    title: a.title,
    price: a.price,
    location: a.address || a.location || '',
    commune: a.commune,
    // Handle different image column names that might exist in DB/View
    imageUrl: a.image_url || (a.images && a.images[0]) || (a.image_urls && a.image_urls[0]) || '',
    imageUrls: a.images || a.image_urls || [],
    date: a.created_at,
    category: a.category_id,
    categorySlug: category.slug,
    phoneNumber: a.phone_number,
    isActive: a.status === 'active',
    isFeatured: a.is_featured,
    isUrgent: a.is_urgent,
    description: a.description,
    storage: a.storage,
    ram: a.ram,
    battery_health: a.battery_health,
    property_type: (a as any).property_type,
    surface: (a as any).surface,
    rooms: (a as any).rooms,
    bedrooms: (a as any).bedrooms,
    bathrooms: (a as any).bathrooms,
    floor: (a as any).floor,
    furnished: (a as any).furnished,
    attributes: a.attributes,
    vehicleDetails: a.vehicleDetails,
    user_id: a.user_id,
    wilaya: a.wilaya,
    currency: a.currency,
    profiles: a.profiles
  }));

  return (
    <CategorySection
      category={category}
      announcements={mappedAnnouncements}
      showViewAll={true}
      viewAllText={t('announcements.viewAll')}
    />
  );
};

export default DynamicCategorySection;
