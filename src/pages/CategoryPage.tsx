import { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { useCategories } from "@/services/supabaseCategoriesService";
import { MenuCategory } from "@/data/categoryTypes";
import { Announcement } from "@/data/types/homePageTypes";
import { supabase } from "@/integrations/supabase/client";
import { mockVehicleAnnouncements } from "@/data/mock/vehicleAnnouncements";

import Footer from "@/components/layout/Footer";
import BackToTopButton from "@/components/shared/BackToTopButton";
import LegacyAnnouncementCard from "@/components/announcements/LegacyAnnouncementCard";
import CategoryBreadcrumbs from "@/components/category/CategoryBreadcrumbs";
import SubcategoryGrid from "@/components/category/SubcategoryGrid";
import FiltersPanel from "@/components/category/FiltersPanel";
import SimilarCategories from "@/components/category/SimilarCategories";

type Filters = {
  priceRange?: [number, number];
  location?: string;
  dateRange?: [Date, Date] | null;
};
const CategoryPage = () => {
  const { slug } = useParams<{ slug: string }>();
  const { t, language } = useSafeI18nWithRouter();
  const { data: categories = [], isLoading } = useCategories(language);
  const [viewMode, _setViewMode] = useState<'grid' | 'list'>('grid');
  const [category, setCategory] = useState<MenuCategory | null>(null);
  const [announcements, setAnnouncements] = useState<Announcement[]>([]);
  const [filteredAnnouncements, setFilteredAnnouncements] = useState<Announcement[]>([]);
  const [_showFilters, _setShowFilters] = useState(false);
  const [loadingAnnouncements, setLoadingAnnouncements] = useState(false);

  useEffect(() => {
    if (slug && categories.length > 0) {
      const foundCategory = categories.find(cat => cat.slug === slug);
      setCategory(foundCategory || null);
    }
  }, [slug, categories]);

  // Fetch announcements dynamically from Supabase
  useEffect(() => {
    const fetchAnnouncements = async () => {
      if (!slug) return;
      
      // Resolve category ID from slug if possible, otherwise assume slug is ID
      const categoryId = categories.find(c => c.slug === slug)?.id || slug;

      setLoadingAnnouncements(true);
      try {
        // Fetch from announcements_public view
        // category_id is now the slug (TEXT)
        const { data, error } = await supabase
          .from('announcements_public')
          .select('*')
          .eq('category_id', categoryId)
          .eq('status', 'active')
          .order('created_at', { ascending: false });

        if (error) {
          console.error('Error fetching announcements:', error);
          // Still try to show mock data if category matches
          if (slug === 'vehicules' || slug === 'vehicules-camions-motos' || slug === 'vehicules-equipements') {
             const mockData = mockVehicleAnnouncements.map(item => ({
              id: item.id,
              title: item.title,
              price: item.price,
              location: item.location,
              imageUrl: item.images[0],
              imageUrls: item.images,
              date: new Date().toISOString(),
              category: "Véhicules",
              categorySlug: "vehicules",
              phoneNumber: item.contact_phone,
              isActive: true,
              isFeatured: item.is_featured,
              isUrgent: item.is_urgent,
              description: item.description,
              user_id: "mock_user",
              wilaya: item.wilaya,
              currency: "DZD"
            }));
            setAnnouncements(mockData);
            setFilteredAnnouncements(mockData);
          } else {
            setAnnouncements([]);
            setFilteredAnnouncements([]);
          }
        } else if (data) {
          // Map to legacy format
          const mappedAnnouncements = data.map((a: any) => ({
            id: a.id,
            title: a.title,
            price: a.price,
            location: a.location,
            imageUrl: a.image_url || (a.images && a.images[0]) || (a.image_urls && a.image_urls[0]) || '',
            imageUrls: a.images || a.image_urls || [],
            date: a.created_at,
            category: a.category_id,
            categorySlug: slug,
            phoneNumber: a.phone_number,
            isActive: a.status === 'active',
            isFeatured: a.is_featured,
            isUrgent: a.is_urgent,
            description: a.description,
            user_id: a.user_id,
            wilaya: a.wilaya,
            currency: a.currency
          }));
          
          // Merge with mock data if category matches
          let finalAnnouncements = mappedAnnouncements;
          if (slug === 'vehicules' || slug === 'vehicules-camions-motos' || slug === 'vehicules-equipements') {
             const mockData = mockVehicleAnnouncements.map(item => ({
              id: item.id,
              title: item.title,
              price: item.price,
              location: item.location,
              imageUrl: item.images[0],
              imageUrls: item.images,
              date: new Date().toISOString(),
              category: "Véhicules",
              categorySlug: "vehicules",
              phoneNumber: item.contact_phone,
              isActive: true,
              isFeatured: item.is_featured,
              isUrgent: item.is_urgent,
              description: item.description,
              user_id: "mock_user",
              wilaya: item.wilaya,
              currency: "DZD"
            }));
            finalAnnouncements = [...mockData, ...mappedAnnouncements];
          }

          setAnnouncements(finalAnnouncements);
          setFilteredAnnouncements(finalAnnouncements);
        }
      } catch (err) {
        console.error('Exception fetching announcements:', err);
      } finally {
        setLoadingAnnouncements(false);
      }
    };

    fetchAnnouncements();
  }, [slug, categories]);

  const _handleFilterChange = (filters: Filters) => {
    // Apply filters to announcements
    let filtered = [...announcements];
    
    if (filters.priceRange && filters.priceRange.length === 2) {
      filtered = filtered.filter(announcement => 
        announcement.price >= filters.priceRange[0] && 
        announcement.price <= filters.priceRange[1]
      );
    }
    
    if (filters.location) {
      filtered = filtered.filter(announcement => 
        announcement.location.toLowerCase().includes(filters.location.toLowerCase())
      );
    }
    
    if (filters.dateRange) {
      // Apply date filtering logic
    }
    
    setFilteredAnnouncements(filtered);
  };

  if (isLoading) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary mx-auto mb-4"></div>
          <p className="text-gray-600">{t('common.loading')}</p>
        </div>
      </div>
    );
  }

  if (!category) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <div className="text-center">
          <h1 className="text-2xl font-bold mb-4">{t('category.notFound')}</h1>
          <p className="text-gray-600">{t('category.notFoundDescription')}</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen flex flex-col bg-gray-50 dark:bg-gray-900">
      <main className="flex-grow">
        <div className="container mx-auto px-4 py-6">
          <CategoryBreadcrumbs 
            categorySlug={category.slug}
            categoryName={category.slug === 'education-loisirs' ? t('categories.education-loisirs') : (t(`categories.${category.slug}`) !== `categories.${category.slug}` ? t(`categories.${category.slug}`) : category.name)}
          />
          
          {/* Category Header */}
          <div className="mb-8">
            <h1 className="text-3xl font-bold text-gray-900 dark:text-white mb-4">
              {category.slug === 'education-loisirs' ? t('categories.education-loisirs') : (t(`categories.${category.slug}`) !== `categories.${category.slug}` 
                ? t(`categories.${category.slug}`) 
                : category.name)}
            </h1>
            <p className="text-gray-600 dark:text-gray-300">
              {announcements.length} {announcements.length === 1 ? t('categories.announcement') : t('categories.announcements')}
            </p>
          </div>

          {/* Subcategories Grid */}
          {category.subcategories && category.subcategories.length > 0 && (
            <div className="mb-12">
              <h2 className="text-2xl font-semibold mb-6 text-gray-900 dark:text-white">
                {t('categories.subcategories')}
              </h2>
              <SubcategoryGrid 
                subcategories={category.subcategories} 
                parentSlug={category.slug}
              />
            </div>
          )}

          {/* Filters and Content */}
          <div className="flex gap-6">
            <FiltersPanel
              showFilters={_showFilters}
            />
            
            <div className="flex-1">
              {/* Announcements Grid */}
              {loadingAnnouncements ? (
                <div className="grid gap-6 grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
                  {[...Array(4)].map((_, i) => (
                    <div key={i} className="h-64 bg-gray-200 rounded animate-pulse dark:bg-gray-700"></div>
                  ))}
                </div>
              ) : (
                <>
                  <div className={`grid gap-6 ${viewMode === 'grid' 
                    ? 'grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4' 
                    : 'grid-cols-1'
                  }`}>
                    {filteredAnnouncements.map((announcement, index) => (
                      <LegacyAnnouncementCard
                        key={announcement.id}
                        announcement={announcement}
                        viewMode={viewMode}
                        index={index}
                      />
                    ))}
                  </div>
                  
                  {filteredAnnouncements.length === 0 && (
                    <div className="text-center py-12">
                      <p className="text-gray-500 dark:text-gray-400">
                        {t('category.noAnnouncements')}
                      </p>
                    </div>
                  )}
                </>
              )}
            </div>
          </div>
        </div>
        
        <SimilarCategories category={category} currentSubcategory={undefined} />
      </main>

      <Footer />
      <BackToTopButton />
    </div>
  );
};

export default CategoryPage;
