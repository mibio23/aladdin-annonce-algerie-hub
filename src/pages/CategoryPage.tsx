import { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { useCategories } from "@/services/supabaseCategoriesService";
import { getCategoryMenu } from "@/data/megaMenu/categoryMenu";
import { MenuCategory } from "@/data/categoryTypes";
import { Announcement } from "@/data/types/homePageTypes";
import { supabase } from "@/integrations/supabase/client";
import { mockVehicleAnnouncements } from "@/data/mock/vehicleAnnouncements";
import { CategoryPageSEO } from "@/components/SEO";

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
  const [announcements, setAnnouncements] = useState<any[]>([]);
  const [filteredAnnouncements, setFilteredAnnouncements] = useState<any[]>([]);
  const [_showFilters, _setShowFilters] = useState(false);
  const [loadingAnnouncements, setLoadingAnnouncements] = useState(true);

  useEffect(() => {
    if (slug) {
      // 1. Chercher dans les catégories de Supabase
      let foundCategory = categories.find(cat => cat.slug === slug);
      
      // 2. Fallback sur les catégories locales si non trouvé ou sans sous-catégories
      if (!foundCategory || !foundCategory.subcategories || foundCategory.subcategories.length === 0) {
        const localMenu = getCategoryMenu(language);
        const localCategory = localMenu.find(cat => cat.slug === slug);
        if (localCategory) {
          foundCategory = localCategory;
        }
      }
      
      setCategory(foundCategory || null);
    }
  }, [slug, categories, language]);

  useEffect(() => {
    const fetchAnnouncements = async () => {
      if (!slug) return;
      
      setLoadingAnnouncements(true);
      try {
        // Dans announcements_public, category_id contient généralement le slug
        const { data, error } = await supabase
          .from('announcements_public')
          .select('*')
          .eq('category_slug', slug)
          .eq('status', 'active')
          .order('created_at', { ascending: false });

        if (error) throw error;
        
        // Map to legacy format for LegacyAnnouncementCard
        const categoryDisplayName =
          slug === 'education-loisirs'
            ? t('categories.education-loisirs')
            : (t(`categories.${slug}`) !== `categories.${slug}` ? t(`categories.${slug}`) : (category?.name || slug));

        const mappedData = (data || []).map((a: any) => ({
          id: a.id,
          title: a.title,
          price: a.price,
          location: a.location,
          imageUrl: a.image_url || (a.images && a.images[0]) || (a.image_urls && a.image_urls[0]) || '',
          imageUrls: a.images || a.image_urls || [],
          date: a.created_at,
          category: categoryDisplayName,
          categorySlug: slug,
          categoryName: categoryDisplayName,
          phoneNumber: a.phone_number,
          isActive: a.status === 'active',
          isFeatured: a.is_featured,
          isUrgent: a.is_urgent,
          description: a.description,
          user_id: a.user_id,
          wilaya: a.wilaya,
          currency: a.currency
        }));

        setAnnouncements(mappedData);
        setFilteredAnnouncements(mappedData);
      } catch (err) {
        console.error('Error fetching category announcements:', err);
      } finally {
        setLoadingAnnouncements(false);
      }
    };

    fetchAnnouncements();
  }, [slug, t, category]);

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
      {/* SEO Components */}
      <CategoryPageSEO 
        categoryName={category.name}
        categorySlug={category.slug}
        categoryDescription={category.description}
        announcementCount={announcements.length}
      />
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
              <h2 className="text-2xl font-bold mb-6 text-gray-900 dark:text-white uppercase tracking-tight">
                {t('categories.subcategories')}
              </h2>
              <SubcategoryGrid 
                subcategories={category.subcategories} 
                categorySlug={category.slug}
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
                  {filteredAnnouncements.length === 0 ? (
                    <div className="text-center py-20 bg-gray-50 dark:bg-slate-900/50 rounded-2xl border border-dashed border-gray-200 dark:border-slate-800">
                      <p className="text-gray-500 dark:text-gray-400">
                        {t('categories.noAnnouncements')}
                      </p>
                    </div>
                  ) : (
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
