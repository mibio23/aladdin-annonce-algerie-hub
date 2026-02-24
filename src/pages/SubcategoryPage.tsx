
import React, { useState, useEffect } from "react";
import { useParams } from "react-router-dom";
import { LocalizedLink } from "@/utils/linkUtils";
import { Grid } from "lucide-react";
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { useCategories } from "@/services/supabaseCategoriesService";
import { MenuCategory, SubCategory } from "@/data/categoryTypes";
import { Announcement } from "@/data/types/homePageTypes";
import { supabase } from "@/integrations/supabase/client";

import Footer from "@/components/layout/Footer";
import BackToTopButton from "@/components/shared/BackToTopButton";
import LegacyAnnouncementCard from "@/components/announcements/LegacyAnnouncementCard";
import CategoryBreadcrumbs from "@/components/category/CategoryBreadcrumbs";
import SubcategoryHeader from "@/components/category/SubcategoryHeader";
import FiltersPanel from "@/components/category/FiltersPanel";
import SimilarCategories from "@/components/category/SimilarCategories";

const SubcategoryPage = () => {
  const { slug, subslug } = useParams<{ slug: string; subslug: string }>();
  const { t, language } = useSafeI18nWithRouter();
  const { data: categories = [], isLoading } = useCategories(language);
  const [viewMode, setViewMode] = useState<'grid' | 'list'>('grid');
  const [category, setCategory] = useState<MenuCategory | null>(null);
  const [subcategory, setSubcategory] = useState<SubCategory | null>(null);
  const [announcements, setAnnouncements] = useState<Announcement[]>([]);
  const [filteredAnnouncements, setFilteredAnnouncements] = useState<Announcement[]>([]);
  const [showFilters, setShowFilters] = useState(false);
  const [loadingAnnouncements, setLoadingAnnouncements] = useState(false);

  useEffect(() => {
    if (slug && categories.length > 0) {
      const foundCategory = categories.find(cat => cat.slug === slug);
      if (foundCategory) {
        setCategory(foundCategory);
        const foundSubcategory = foundCategory.subcategories.find(sub => sub.slug === subslug);
        setSubcategory(foundSubcategory || null);
      }
    }
  }, [slug, subslug, categories]);

  // Fetch announcements dynamically from Supabase
  useEffect(() => {
    const fetchAnnouncements = async () => {
      if (!subslug) return;
      
      // Resolve subcategory ID from slug if possible, otherwise assume subslug is ID
      let subcategoryId = subslug;
      if (slug && categories.length > 0) {
        const foundCategory = categories.find(cat => cat.slug === slug);
        if (foundCategory) {
            const foundSub = foundCategory.subcategories?.find(s => s.slug === subslug);
            if (foundSub) subcategoryId = foundSub.id;
        }
      }

      setLoadingAnnouncements(true);
      try {
        // Fetch from announcements_public view
        // subcategory_id is now the slug (TEXT)
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        const result = await supabase
          .from('announcements_public')
          .select('*')
          .eq('subcategory_id', subcategoryId)
          .eq('status', 'active')
          .order('created_at', { ascending: false });
        
        const data = result.data as unknown[];
        const error = result.error;

        if (error) {
          console.error('Error fetching announcements:', error);
          setAnnouncements([]);
          setFilteredAnnouncements([]);
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
            categorySlug: slug, // We know the category slug from params
            phoneNumber: a.phone_number,
            isActive: a.status === 'active',
            isFeatured: a.is_featured,
            isUrgent: a.is_urgent,
            description: a.description,
            user_id: a.user_id,
            wilaya: a.wilaya,
            currency: a.currency
          }));
          
          setAnnouncements(mappedAnnouncements);
          setFilteredAnnouncements(mappedAnnouncements);
        }
      } catch (err) {
        console.error('Exception fetching announcements:', err);
      } finally {
        setLoadingAnnouncements(false);
      }
    };

    fetchAnnouncements();
  }, [subslug, slug, categories]);

  if (isLoading) {
    return (
      <div className="min-h-screen flex flex-col">
        <main className="flex-grow container mx-auto px-4 py-8">
          <div className="text-center">
            <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary mx-auto mb-4"></div>
            <p className="text-gray-600">{t('common.loading')}</p>
          </div>
        </main>
        <Footer />
      </div>
    );
  }

  if (!category || !subcategory) {
    return (
      <div className="min-h-screen flex flex-col">
        <main className="flex-grow container mx-auto px-4 py-8">
          <div className="text-center">
            <h1 className="text-2xl font-bold text-gray-800 dark:text-white mb-4">
              {t('categories.notFound')}
            </h1>
            <LocalizedLink to="/" className="text-orange-500 hover:text-orange-600">
              {t('categories.backToHome')}
            </LocalizedLink>
          </div>
        </main>
        <Footer />
      </div>
    );
  }

  const translatedCategoryName = category.slug === 'education-loisirs' 
    ? t('categories.education-loisirs') 
    : (t(`categories.${category.slug}`) !== `categories.${category.slug}` 
      ? t(`categories.${category.slug}`) 
      : category.name);

  const translatedSubcategoryName = t(`categories.${subcategory.slug}`) !== `categories.${subcategory.slug}` 
    ? t(`categories.${subcategory.slug}`) 
    : subcategory.name;

  return (
    <div className="min-h-screen flex flex-col">
      
      
      <main className="flex-grow container mx-auto px-4 py-6">
        <CategoryBreadcrumbs
          categorySlug={category.slug}
          categoryName={translatedCategoryName}
          subcategorySlug={subcategory.slug}
          subcategoryName={translatedSubcategoryName}
        />

        <SubcategoryHeader
          subcategory={subcategory}
          translatedSubcategoryName={translatedSubcategoryName}
          announcementsCount={announcements.length}
          viewMode={viewMode}
          setViewMode={setViewMode}
          showFilters={showFilters}
          setShowFilters={setShowFilters}
        />

        <FiltersPanel showFilters={showFilters} />

        {loadingAnnouncements ? (
           <div className="grid gap-6 grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
             {[...Array(4)].map((_, i) => (
               <div key={i} className="h-64 bg-gray-200 rounded animate-pulse dark:bg-gray-700"></div>
             ))}
           </div>
        ) : (
          <>
            {filteredAnnouncements.length > 0 ? (
              <div className={`grid gap-6 ${
                viewMode === 'grid' 
                  ? 'grid-cols-1 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4' 
                  : 'grid-cols-1'
              }`}>
                {filteredAnnouncements.map((announcement) => (
                  <LegacyAnnouncementCard 
                    key={announcement.id}
                    id={announcement.id}
                    title={announcement.title}
                    price={announcement.price}
                    location={announcement.location}
                    imageUrl={announcement.imageUrl}
                    date={announcement.date}
                    category={announcement.category}
                    phoneNumber={announcement.phoneNumber}
                    isOnline={announcement.isOnline}
                    // These properties might not be in the mapped object if they weren't in DB
                    // but LegacyAnnouncementCard handles undefined props gracefully or we can map defaults
                    // isProfessional is not in our map above, so it will be undefined
                    isProfessional={announcement.isProfessional}
                  />
                ))}
              </div>
            ) : (
              <div className="bg-white dark:bg-slate-800 rounded-lg p-12 !text-center shadow-sm">
                <div className="text-gray-400 mb-4">
                  <Grid className="h-16 w-16 mx-auto" />
                </div>
                <h3 className="text-xl font-semibold text-gray-800 dark:text-white mb-2">
                  {t('announcements.noResults')}
                </h3>
                <p className="text-gray-600 dark:text-gray-300 mb-6">
                  {t('announcements.noResultsDesc')}
                </p>
                <LocalizedLink 
                  to={`/category/${category.slug}`}
                  className="inline-flex items-center px-4 py-2 bg-orange-500 text-white rounded-lg hover:bg-orange-600 transition-colors"
                >
                  {t('announcements.browseCategory')}
                </LocalizedLink>
              </div>
            )}
          </>
        )}

        <SimilarCategories category={category} currentSubcategory={subcategory} />
      </main>

      <Footer />
      <BackToTopButton />
    </div>
  );
};

export default SubcategoryPage;
