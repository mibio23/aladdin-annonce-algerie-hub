import React, { useEffect, useState } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { SubCategory } from "@/data/categoryTypes";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { LocalizedLink } from "@/utils/linkUtils";
import LegacyAnnouncementCard from "@/components/announcements/LegacyAnnouncementCard";

interface DynamicSubcategoryAnnouncementsProps {
  subcategories: SubCategory[];
  categorySlug: string;
}

const DynamicSubcategoryAnnouncements: React.FC<DynamicSubcategoryAnnouncementsProps> = ({
  subcategories,
  categorySlug,
}) => {
  const { t } = useSafeI18nWithRouter();
  const [loading, setLoading] = useState(true);
  // Store announcements by subcategory slug
  const [announcementsBySubcat, setAnnouncementsBySubcat] = useState<Record<string, any[]>>({});

  useEffect(() => {
    const fetchAnnouncements = async () => {
      setLoading(true);
      const results: Record<string, any[]> = {};
      
      // Fetch announcements for the first 3 subcategories
      const targetSubcats = subcategories.slice(0, 3);
      
      for (const subcat of targetSubcats) {
        try {
          // We need to query by subcategory_id or filter by subcategory logic
          // Since schema is text based now, we check if we can filter by subcategory slug or id
          // Assuming subcategory_id column stores the slug or we need a way to map it
          // For now, let's try to match exact slug if stored, or rely on future improvements
          
          // Note: The current announcements_public view might not have subcategory_id easy to query by slug
          // if it's not storing the slug.
          // Let's check if we can fetch by category_id (parent) and then filter in memory if needed, 
          // or if we can query directly.
          
          // Optimally, we should have a subcategory_slug column or similar.
          // Checking the schema from previous context: 
          // announcements table has subcategory_id.
          
          const result = await (supabase as any)
            .from('announcements_public')
            .select('*')
            .eq('subcategory_id', subcat.slug)
            .eq('status', 'active')
            .order('created_at', { ascending: false })
            .limit(4);
          
          const data = result.data as unknown[];
          const error = result.error;
            
          if (!error && data) {
            results[subcat.slug] = data;
          }
        } catch (err) {
          console.error(`Error fetching for subcat ${subcat.slug}`, err);
        }
      }
      
      setAnnouncementsBySubcat(results);
      setLoading(false);
    };

    if (subcategories.length > 0) {
      fetchAnnouncements();
    }
  }, [subcategories]);

  if (loading) {
     return <div className="animate-pulse space-y-8">
       {[1, 2].map(i => (
         <div key={i} className="h-64 bg-gray-100 rounded-lg"></div>
       ))}
     </div>;
  }

  return (
    <div className="space-y-12">
      {subcategories.slice(0, 3).map((subcategory) => {
        const translatedName = t(`categories.${subcategory.slug}`) !== `categories.${subcategory.slug}` 
          ? t(`categories.${subcategory.slug}`) 
          : subcategory.name;

        const announcements = announcementsBySubcat[subcategory.slug] || [];
        
        // If no announcements, we might skip rendering this subcategory section
        if (announcements.length === 0) return null;

        return (
          <div key={subcategory.id} className="bg-white dark:bg-slate-800 rounded-lg p-6 shadow-sm">
            <div className="flex items-center justify-between mb-6">
              <div className="flex items-center space-x-3">
                {subcategory.icon && (
                  <div className="p-2 bg-orange-100 dark:bg-orange-900/30 rounded-lg">
                    {subcategory.icon}
                  </div>
                )}
                <div>
                  <h3 className="text-xl font-bold text-gray-800 dark:text-white">
                    {translatedName}
                  </h3>
                  <p className="text-gray-600 dark:text-gray-300">
                    {announcements.length} {t('announcements.available')}
                  </p>
                </div>
              </div>
              
              <LocalizedLink 
                to={`/category/${categorySlug}/${subcategory.slug}`}
                className="text-orange-500 hover:text-orange-600 font-medium text-sm"
              >
                {t('announcements.viewAll')}
              </LocalizedLink>
            </div>

            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
              {announcements.map((a) => (
                <LegacyAnnouncementCard 
                  key={a.id}
                  id={a.id}
                  title={a.title}
                  price={a.price}
                  location={a.location}
                  imageUrl={a.image_url || (a.images && a.images[0]) || ''}
                  date={a.created_at}
                  category={a.category_id}
                  phoneNumber={a.phone_number}
                  isOnline={a.status === 'active'}
                  isProfessional={false} // Can be derived if we have user type
                />
              ))}
            </div>
          </div>
        );
      })}
    </div>
  );
};

export default DynamicSubcategoryAnnouncements;
