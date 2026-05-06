import React, { useEffect, useState } from "react";
import { useParams, Navigate, Link } from "react-router-dom";
import { MapPin, Calendar, Heart, Share2, Flag, Truck, ShieldCheck, Package, Info, Tag, Ruler, Clock, User, ShieldAlert, ExternalLink, Eye, Home, MessageCircle } from "lucide-react";
import BookingModal from "@/components/booking/BookingModal";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import AvatarDisplay from "@/components/avatar/AvatarDisplay";
import ModernImageGallery from "@/components/announcements/ModernImageGallery";
import SecureContactButton from "@/components/contact/SecureContactButton";
import AnnouncementContactModal from "@/components/announcements/AnnouncementContactModal";
import AnnouncementCard from "@/components/announcements/AnnouncementCard";
import { Announcement as AnnouncementType } from "@/hooks/useAnnouncements";
import { useToast } from "@/hooks/use-toast";
import { Announcement } from "@/data/types/homePageTypes";
import { logger } from '@/utils/silentLogger';
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { supabase } from '@/integrations/supabase/client';
import { Separator } from "@/components/ui/separator";
import { CATEGORIES } from "@/data/categories";
import { useLanguageNavigation } from "@/hooks/useLanguageNavigation";
import { Breadcrumb, BreadcrumbItem, BreadcrumbLink, BreadcrumbList, BreadcrumbPage, BreadcrumbSeparator } from "@/components/ui/breadcrumb";
import { mockVehicleAnnouncements } from '@/data/mock/vehicleAnnouncements';
import { vehicleDictionary } from "@/data/search/vehicleDictionary";
import { generalAnnouncements } from '@/data/mock/generalAnnouncements';
import ReportModal from "@/components/common/ReportModal";
import { useSecureContact } from "@/hooks/useSecureContact";
import { useFavorites } from "@/hooks/useFavorites";
import { useAuth } from "@/contexts/useAuth";
import { cn } from "@/lib/utils";
import SEOHead from "@/components/SEO/SEOHead";
import { mergeOfficialAndSupabaseCategories, useCategories } from "@/services/supabaseCategoriesService";

// Extended type definition to include all new fields
type DetailedAnnouncement = Announcement & {
  global_announcement_number?: number;
  global_listing_number?: number;
  phone_number_masked?: string;
  requires_auth_for_contact?: boolean;
  contact_phone?: string;

  category_id?: string;
  subcategory_id?: string;
  
  // Product Details
  brand?: string;
  model?: string;
  color?: string;
  dimensions?: string;
  weight?: string;
  purchase_year?: number;
  condition?: string;
  
  // History & State
  has_invoice?: boolean;
  warranty_duration?: string;
  included_accessories?: string[];
  selling_reason?: string;
  
  // Price & Negotiation
  cash_discount?: number;
  exchange_possible?: boolean;
  original_price?: number;
  is_negotiable?: boolean;
  currency?: string;
  
  // Logistics
  delivery_available?: boolean;
  delivery_areas?: string[];
  delivery_fees?: number;
  delivery_location_name?: string;
  packaging_info?: string;
  availability_date?: string;
  
  // Visuals & Docs
  product_video?: string;
  detail_photos?: string[];
  documentation?: string[];
  
  // Standard fields
  wilaya?: string;
  commune?: string;
  views_count?: number;
  created_at?: string;
  user_id?: string;

  // Vehicle Details
  fuel?: string;
  transmission?: string;
  mileage?: number;
  engine?: string;
  year?: number;
  type?: string;

  // Real Estate Details
  property_type?: string;
  surface?: number;
  rooms?: number;
  bedrooms?: number;
  bathrooms?: number;
  floor?: number;
  total_floors?: number;
  furnished?: boolean;
  parking?: boolean;
  garage?: boolean;
  garden?: boolean;
  pool?: boolean;
  elevator?: boolean;
  balcony?: boolean;
  terrace?: boolean;
  view_type?: string;
  facades?: number;
  zoning?: string;
  with_permit?: boolean;
  papers?: string[];
  payment_period?: string;
  specifications?: string[];
  capacity?: number;
};

type SellerProfile = {
  public_user_id: number | null;
  first_name: string | null;
  last_name: string | null;
  avatar_url: string | null;
  created_at: string | null;
  wilaya: string | null;
  commune: string | null;
};

const AnnouncementDetailsPage: React.FC = () => {
  const { id } = useParams<{ id: string }>();
  const { toast } = useToast();
  const { user } = useAuth();
  const { t, language: currentLanguage } = useSafeI18nWithRouter();
  const { getSecureAnnouncementDetails } = useSecureContact();
  const isRTL = currentLanguage === 'ar';
  const { getLocalizedPath } = useLanguageNavigation();
  const [showContactModal, setShowContactModal] = useState(false);

  const handleContactClick = () => {
    if (!user) {
      window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'login' }));
      return;
    }
    setShowContactModal(true);
  };
  const [showReportModal, setShowReportModal] = useState(false);
  const [showBookingModal, setShowBookingModal] = useState(false);
  const [announcement, setAnnouncement] = useState<DetailedAnnouncement | null>(null);
  const [loading, setLoading] = useState(true);
  const [sellerProfile, setSellerProfile] = useState<SellerProfile | null>(null);
  const [similarAnnouncements, setSimilarAnnouncements] = useState<AnnouncementType[]>([]);
  const { data: categoriesFromSupabase = [] } = useCategories(currentLanguage);
  const menuCategories = React.useMemo(
    () => mergeOfficialAndSupabaseCategories(currentLanguage, categoriesFromSupabase),
    [currentLanguage, categoriesFromSupabase]
  );
  const { isFavorite, toggleFavorite, fetchFavorites } = useFavorites();

  useEffect(() => {
    fetchFavorites();
  }, [fetchFavorites]);

  const normalizePhone = (value?: string | null) => {
    if (!value) return '';
    const first = value.split(',')[0]?.trim() || '';
    if (!first) return '';
    const hasPlus = first.startsWith('+');
    const digits = first.replace(/\D/g, '');
    if (!digits) return '';
    return hasPlus ? `+${digits}` : digits;
  };

  const announcementPhone = normalizePhone(
    announcement?.phone_number_masked || announcement?.phoneNumber || announcement?.contact_phone
  );

  const whatsappNumber = announcementPhone.replace(/\D/g, '');

  const handleWhatsAppClick = () => {
    if (whatsappNumber) {
      window.open(`https://wa.me/${whatsappNumber}`, '_blank', 'noopener,noreferrer');
    }
  };

  useEffect(() => {
    const applyVehicleMock = (mockAnnouncement: (typeof mockVehicleAnnouncements)[number]) => {
      const mergedData: DetailedAnnouncement = {
        ...mockAnnouncement,
        ...mockAnnouncement.vehicleDetails,
        papers: mockAnnouncement.vehicleDetails.paper ? [mockAnnouncement.vehicleDetails.paper] : [],
        purchase_year: mockAnnouncement.vehicleDetails.year,
        category: "VÃ©hicules",
        categorySlug: "vehicules-equipements",
        imageUrl: mockAnnouncement.images[0],
        imageUrls: mockAnnouncement.images,
        isOnline: mockAnnouncement.is_active,
        isFeatured: mockAnnouncement.is_featured,
        isUrgent: mockAnnouncement.is_urgent,
        isProfessional: false,
        shopName: null,
        phoneNumber: mockAnnouncement.contact_phone,
        phone_number_masked: mockAnnouncement.contact_phone,
        requires_auth_for_contact: false,
        delivery_available: false,
        delivery_areas: [],
        delivery_fees: 0,
        has_invoice: mockAnnouncement.vehicleDetails.paper === 'Facture',
        condition: mockAnnouncement.condition,
        currency: mockAnnouncement.currency,
        views_count: 0,
        wilaya: mockAnnouncement.wilaya,
        commune: mockAnnouncement.location,
        created_at: mockAnnouncement.created_at,
      } as unknown as DetailedAnnouncement;

      setAnnouncement(mergedData);
      setSellerProfile({
        public_user_id: 12345,
        first_name: "Vendeur",
        last_name: "Test",
        avatar_url: null,
        created_at: new Date().toISOString(),
        wilaya: mockAnnouncement.wilaya,
        commune: mockAnnouncement.location,
      });
    };

    const applyGeneralMock = (mockAnn: any) => {
      const mergedData: DetailedAnnouncement = {
        ...mockAnn,
        id: mockAnn.id,
        title: mockAnn.title,
        price: mockAnn.price,
        description: mockAnn.description,
        category: mockAnn.category,
        categorySlug: mockAnn.categorySlug,
        imageUrl: mockAnn.imageUrls?.[0],
        imageUrls: mockAnn.imageUrls,
        phoneNumber: mockAnn.phoneNumber,
        phone_number_masked: mockAnn.phoneNumber,
        isFeatured: mockAnn.isFeatured,
        isUrgent: mockAnn.isUrgent,
        isOnline: mockAnn.isOnline ?? true,
        wilaya: mockAnn.location,
        commune: mockAnn.commune || "",
        created_at: mockAnn.date,
        views_count: mockAnn.views_count || 0,
        currency: mockAnn.currency || "DZD",
        condition: mockAnn.condition || "bon_etat",
        isProfessional: mockAnn.isProfessional || false,
      } as unknown as DetailedAnnouncement;

      setAnnouncement(mergedData);
      setSellerProfile({
        public_user_id: 67890,
        first_name: "Annonceur",
        last_name: "Pro",
        avatar_url: null,
        created_at: new Date().toISOString(),
        wilaya: mockAnn.location,
        commune: "",
      });
    };

    const fetchAnnouncement = async () => {
      if (!id) return;
      setLoading(true);

      try {
        // Validation UUID
        const uuidRegex = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i;
        const isUUID = uuidRegex.test(id);

        if (!isUUID) {
          const vehicleMock = mockVehicleAnnouncements.find(a => a.id === id);
          if (vehicleMock) {
            applyVehicleMock(vehicleMock);
            setLoading(false);
            return;
          }
          const generalMock = generalAnnouncements.find(a => a.id === id);
          if (generalMock) {
            applyGeneralMock(generalMock);
            setLoading(false);
            return;
          }
          setAnnouncement(null);
          setLoading(false);
          return;
        }

        // 1. Fetch base announcement
        const { data: announcementData, error: announcementError } = await supabase
          .from('announcements')
          .select('*')
          .eq('id', id)
          .maybeSingle();

        if (announcementError) throw announcementError;
        if (!announcementData) {
          setAnnouncement(null);
          setLoading(false);
          return;
        }

        // 2. Fetch specialized details
        let realEstateDetails = null;
        let vehicleDetails = null;

        try {
          const { data: reData } = await supabase.from('real_estate_details').select('*').eq('announcement_id', id).maybeSingle();
          realEstateDetails = reData;
        } catch (e) { logger.warn("RE details fetch failed", e); }

        try {
          const { data: vData } = await supabase.from('vehicle_details').select('*').eq('announcement_id', id).maybeSingle();
          vehicleDetails = vData;
        } catch (e) { logger.warn("Vehicle details fetch failed", e); }

        // 3. Resolve names
        const announcementRecord = announcementData as Record<string, unknown>;
        const categoryLookupKey =
          typeof announcementRecord.category_slug === 'string' && (announcementRecord.category_slug as string).trim()
            ? announcementRecord.category_slug as string
            : announcementData.category_id;
        const categoryFromMenu = menuCategories.find(c => c.id === categoryLookupKey || c.slug === categoryLookupKey);
        const categoryTranslationKey = `categories.${categoryLookupKey}`;
        const translatedCategoryName = t(categoryTranslationKey);
        const categoryName =
          categoryFromMenu?.name ||
          (translatedCategoryName && translatedCategoryName !== categoryTranslationKey && !translatedCategoryName.startsWith('categories.')
            ? translatedCategoryName
            : '') ||
          (typeof announcementData.category === 'string' && announcementData.category !== announcementData.category_id
            ? announcementData.category
            : '') ||
          t('createAd.category');
        
        const subId = announcementData.subcategory_id;
        let subName = subId || '';
        let subSlug = '';
        if (subId) {
          const findInSubs = (subs: Array<{ id?: string; slug?: string; name: string; subcategories?: unknown[] }>): string => {
            for (const s of subs) {
              if (s.id === subId || s.slug === subId) return s.name;
              if (s.subcategories) {
                const found = findInSubs(s.subcategories);
                if (found) return found;
              }
            }
            return '';
          };
          const subNameFromMenu =
            findInSubs(categoryFromMenu?.subcategories || []) ||
            findInSubs(menuCategories.flatMap(c => c.subcategories || []));

          const findSlugInSubs = (subs: Array<{ id?: string; slug?: string; subcategories?: unknown[] }>): string => {
            for (const s of subs) {
              if (s.id === subId || s.slug === subId) return s.slug || '';
              if (s.subcategories) {
                const found = findSlugInSubs(s.subcategories);
                if (found) return found;
              }
            }
            return '';
          };

          const subSlugFromMenu =
            findSlugInSubs(categoryFromMenu?.subcategories || []) ||
            findSlugInSubs(menuCategories.flatMap(c => c.subcategories || []));

          if (subNameFromMenu) {
            subName = subNameFromMenu;
            subSlug = subSlugFromMenu;
          } else {
            const { data: subcategoryRecord } = await supabase
              .from('categories')
              .select('name, slug')
              .eq('id', subId)
              .maybeSingle();

            if (subcategoryRecord?.name) {
              const translationKey = subcategoryRecord.slug ? `categories.${subcategoryRecord.slug}` : '';
              const translatedSubcategoryName = translationKey ? t(translationKey) : '';
              subName =
                translatedSubcategoryName && translatedSubcategoryName !== translationKey && !translatedSubcategoryName.startsWith('categories.')
                  ? translatedSubcategoryName
                  : subcategoryRecord.name;
              subSlug = subcategoryRecord.slug || '';
            }
          }
        }

        // 4. Merge
        const legacySubId = (() => {
          const source = announcementData.description || '';
          const match = source.match(/(?:^|\n)Type:\s*(.+)\s*$/m);
          return match?.[1]?.trim() || '';
        })();

        const mergedData: DetailedAnnouncement = {
          ...announcementData,
          ...realEstateDetails,
          ...vehicleDetails,
          views_count: announcementData.view_count ?? (announcementRecord.views_count as number) ?? 0,
          category: categoryName,
          categorySlug: typeof announcementRecord.category_slug === 'string' ? announcementRecord.category_slug as string : undefined,
          subcategory: subName || legacySubId,
          subcategory_slug: subSlug || undefined,
          imageUrl: announcementData.image_url || (announcementData.images && announcementData.images[0]),
          imageUrls: announcementData.image_urls || announcementData.images || (announcementData.image_url ? [announcementData.image_url] : []),
          isOnline: announcementData.status === 'active',
          isFeatured: announcementData.is_featured || (announcementRecord.isFeatured as boolean) || false,
          isUrgent: announcementData.is_urgent || (announcementRecord.isUrgent as boolean) || false,
          phoneNumber: announcementData.phone_number,
          phone_number_masked: announcementData.phone_number,
        } as unknown as DetailedAnnouncement;

        setAnnouncement(mergedData);

        // 5. Seller Profile
        if (announcementData.user_id) {
          const { data: profileData } = await supabase.from('profiles').select('public_user_id, first_name, last_name, avatar_url, created_at, wilaya, commune').eq('user_id', announcementData.user_id).maybeSingle();
          if (profileData) setSellerProfile(profileData);
        }

        // 6. Similar
        if (announcementData.category_id) {
          const { data: similarData } = await supabase.from('announcements').select('*').eq('category_id', announcementData.category_id).neq('id', id).limit(3);
          if (similarData) {
            const userIds = [...new Set(similarData.map((item: Record<string, unknown>) => item.user_id as string).filter(Boolean))];
            let profilesMap: Record<string, { first_name?: string; last_name?: string; avatar_url?: string; user_id: string }> = {};
            if (userIds.length > 0) {
              const { data: pData } = await supabase.from('profiles').select('user_id, first_name, last_name, avatar_url').in('user_id', userIds);
              if (pData) pData.forEach(p => { profilesMap[p.user_id] = p; });
            }
            setSimilarAnnouncements(similarData.map((item: Record<string, unknown>) => ({
              ...item,
              id: item.id,
              title: item.title,
              price: item.price || 0,
              images: item.image_urls || (item.image_url ? [item.image_url] : []),
              categories: {
                name: (() => {
                  const itemCategoryLookupKey =
                    typeof item.category_slug === 'string' && item.category_slug.trim()
                      ? item.category_slug
                      : item.category_id;
                  const cat = menuCategories.find(c => c.id === itemCategoryLookupKey || c.slug === itemCategoryLookupKey);
                  const key = `categories.${itemCategoryLookupKey}`;
                  const translated = t(key);
                  return cat?.name || (translated !== key && !translated.startsWith('categories.') ? translated : '') || t('createAd.category');
                })(),
                slug:
                  menuCategories.find(c => c.id === (item.category_slug || item.category_id) || c.slug === (item.category_slug || item.category_id))?.slug ||
                  item.category_slug ||
                  item.category_id
              },
              profiles: profilesMap[item.user_id] ? {
                full_name: `${profilesMap[item.user_id].first_name} ${profilesMap[item.user_id].last_name || ''}`.trim(),
                id: profilesMap[item.user_id].user_id,
                avatar_url: profilesMap[item.user_id].avatar_url
              } : undefined
            })) as AnnouncementType[]);
          }
        }

        // 7. View Count
        const viewKey = `viewed_${id}`;
        if (!sessionStorage.getItem(viewKey)) {
          const { error: viewError } = await supabase.rpc('increment_view_count', { announcement_uuid: id });
          if (!viewError) {
            sessionStorage.setItem(viewKey, '1');
            setAnnouncement((prev) => prev ? { ...prev, views_count: (prev.views_count || 0) + 1 } : prev);
          } else {
            logger.error('View count increment error:', viewError);
          }
        }

      } catch (error) {
        logger.error("Fetch Error:", error);
        toast({
          title: t('common.error'),
          description: ({
            fr: "Impossible de charger les dÃ©tails de l'annonce",
            en: "Unable to load announcement details",
            es: "No se pueden cargar los detalles del anuncio",
            it: "Impossibile caricare i dettagli dell'annuncio",
            de: "Anzeigendetails konnten nicht geladen werden",
            ar: "ØªØ¹Ø°Ø± ØªØ­Ù…ÙŠÙ„ ØªÙØ§ØµÙŠÙ„ Ø§Ù„Ø¥Ø¹Ù„Ø§Ù†",
          } as Record<string, string>)[currentLanguage || 'fr'] || "Impossible de charger les dÃ©tails de l'annonce"
        });
      } finally {
        setLoading(false);
      }
    };

    fetchAnnouncement();
  }, [id, t, toast, menuCategories]);

  if (loading) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <div className="flex flex-col items-center gap-4">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary"></div>
          <p className="text-muted-foreground animate-pulse">{t('createAd.loading')}</p>
        </div>
      </div>
    );
  }

  if (!announcement) {
    return <Navigate to="/404" replace />;
  }

  const normalizeVehicleTerm = (value: string) =>
    (value || "")
      .toLowerCase()
      .normalize("NFD")
      .replace(/[\u0300-\u036f]/g, "")
      .replace(/\s+/g, " ")
      .trim();

  const translateVehicleDictionaryValue = (dictType: "type" | "paper", rawValue: string) => {
    const raw = typeof rawValue === "string" ? rawValue.trim() : "";
    if (!raw) return "";

    const normalizedRaw = normalizeVehicleTerm(raw);
    const item = vehicleDictionary.find((entry) => {
      if (entry.type !== dictType) return false;
      return Object.values(entry.values).some((arr) =>
        Array.isArray(arr) && arr.some((v) => normalizeVehicleTerm(v) === normalizedRaw)
      );
    });
    if (!item) return raw;

    const lang = (currentLanguage || "fr") as string;
    const localized = item.values[lang] || item.values.fr;
    return Array.isArray(localized) && localized.length > 0 ? localized[0] : raw;
  };

  const formatDocumentLabel = (paper: string) => {
    const raw = typeof paper === 'string' ? paper.trim() : '';
    if (!raw) return '';
    const translatedRealEstate = t(`createAd.realEstate.papers.${raw}`, raw);
    if (translatedRealEstate !== raw) return translatedRealEstate;

    const normalized = raw
      .toLowerCase()
      .normalize('NFD')
      .replace(/[\u0300-\u036f]/g, '')
      .trim();

    if (normalized.includes('carte grise') && (normalized.includes('barree') || normalized.includes('barree'))) {
      return isRTL ? 'Ø§Ù„Ø¨Ø·Ø§Ù‚Ø© Ø§Ù„Ø±Ù…Ø§Ø¯ÙŠØ© Ù…Ø´Ø·ÙˆØ¨Ø©' : raw;
    }
    if (normalized.includes('carte grise')) {
      return isRTL ? 'Ø§Ù„Ø¨Ø·Ø§Ù‚Ø© Ø§Ù„Ø±Ù…Ø§Ø¯ÙŠØ©' : raw;
    }
    if (normalized.includes('facture')) {
      return t('createAd.invoice', isRTL ? 'ÙØ§ØªÙˆØ±Ø©' : raw);
    }
    if (normalized.includes('garantie') || normalized.includes('warranty')) {
      return t('createAd.warranty', isRTL ? 'Ø¶Ù…Ø§Ù†' : raw);
    }
    if (normalized.includes('boite') || normalized.includes('box')) {
      return translateStaticLabel({
        fr: normalized.includes('sans') ? 'Sans boÃ®te' : "BoÃ®te d'origine",
        en: normalized.includes('without') || normalized.includes('sans') ? 'Without box' : 'Original box',
        es: normalized.includes('without') || normalized.includes('sans') ? 'Sin caja' : 'Caja original',
        it: normalized.includes('without') || normalized.includes('sans') ? 'Senza scatola' : 'Scatola originale',
        de: normalized.includes('without') || normalized.includes('sans') ? 'Ohne Verpackung' : 'Originalverpackung',
        ar: normalized.includes('without') || normalized.includes('sans') ? 'Ø¨Ø¯ÙˆÙ† Ø¹Ù„Ø¨Ø©' : 'Ø§Ù„Ø¹Ù„Ø¨Ø© Ø§Ù„Ø£ØµÙ„ÙŠØ©',
      });
    }
    if (normalized.includes('credit') || normalized.includes('credit')) {
      return t('createAd.papers.credit', isRTL ? 'Ù‚Ø±Ø¶' : raw);
    }

    return translateVehicleDictionaryValue("paper", raw);
  };

  const handleFavoriteClick = async () => {
    if (!announcement?.id) return;
    await toggleFavorite(announcement.id);
  };

  const isAnnouncementFavorite = announcement?.id ? isFavorite(announcement.id) : false;

  const handleShareClick = () => {
    navigator.clipboard.writeText(window.location.href);
    toast({
      title: t('createAd.share.copied'),
      description: t('createAd.share.copiedDesc'),
    });
  };

  const formatPrice = (price: number | null | undefined, currency: string = 'DZD') => {
    if (price === null || price === undefined || price === 0) {
      return (
        <Badge variant="secondary" className="bg-emerald-100 text-emerald-800 border-emerald-200 px-3 py-1 text-sm font-semibold">
          {({
            fr: 'Prix sur demande',
            en: 'Price on request',
            es: 'Precio a consultar',
            it: 'Prezzo su richiesta',
            de: 'Preis auf Anfrage',
            ar: 'Ø§Ù„Ø³Ø¹Ø± Ø¹Ù†Ø¯ Ø§Ù„Ø·Ù„Ø¨',
          } as Record<string, string>)[currentLanguage || 'fr'] || 'Prix sur demande'}
        </Badge>
      );
    }
    return new Intl.NumberFormat(currentLanguage || 'fr-DZ', {
      style: 'currency',
      currency: currency,
      minimumFractionDigits: 0,
      maximumFractionDigits: 0,
    }).format(price);
  };

  const formatDate = (dateString?: string) => {
    if (!dateString) return '';
    return new Date(dateString).toLocaleDateString(currentLanguage || 'fr-FR', {
      day: 'numeric',
      month: 'long',
      year: 'numeric'
    });
  };

  const translateConditionLabel = (rawCondition?: string | null) => {
    if (!rawCondition) return '';

    const normalized = rawCondition.trim().toLowerCase();
    const conditionKeyMap: Record<string, string> = {
      neuf: 'announcements.condition.new',
      new: 'announcements.condition.new',
      like_new: 'announcements.condition.likeNew',
      comme_neuf: 'announcements.condition.likeNew',
      tres_bon_etat: 'announcements.condition.tresBon',
      'tres-bon-etat': 'announcements.condition.tresBon',
      bon_etat: 'announcements.condition.bon',
      'bon-etat': 'announcements.condition.bon',
      good: 'announcements.condition.bon',
      acceptable: 'announcements.condition.correct',
      correct: 'announcements.condition.correct',
      etat_correct: 'announcements.condition.correct',
      'etat-moyen': 'announcements.condition.correct',
      fair: 'announcements.condition.correct',
      usage: 'announcements.condition.poor',
      poor: 'announcements.condition.poor',
      pour_pieces: 'announcements.condition.poor',
      'pour-pieces': 'announcements.condition.poor',
    };

    const translationKey = conditionKeyMap[normalized];
    if (translationKey) {
      const translated = t(translationKey);
      if (translated && translated !== translationKey) return translated;
    }

    return rawCondition
      .replace(/[_-]+/g, ' ')
      .replace(/\b\w/g, (char) => char.toUpperCase());
  };

  const normalizeLookupValue = (value?: string | null) =>
    (value || '')
      .toLowerCase()
      .normalize('NFD')
      .replace(/[\u0300-\u036f]/g, '')
      .replace(/[^a-z0-9]+/g, '_')
      .replace(/^_+|_+$/g, '');

  const humanizeStoredValue = (value?: string | null) => {
    if (!value) return '';
    return value
      .replace(/[_-]+/g, ' ')
      .replace(/\b\w/g, (char) => char.toUpperCase());
  };

  const translateByKeyCandidates = (candidates: string[], fallback?: string | null) => {
    for (const key of candidates) {
      const translated = t(key);
      if (translated && translated !== key && !translated.startsWith('createAd.') && !translated.startsWith('categories.')) {
        return translated;
      }
    }
    return fallback || '';
  };

  const translateStaticLabel = (labels: Record<string, string>) => {
    return labels[currentLanguage || 'fr'] || labels.fr || Object.values(labels)[0] || '';
  };

  const translateVehicleFuelLabel = (rawValue?: string | null) => {
    const normalized = normalizeLookupValue(rawValue);
    const keyMap: Record<string, string> = {
      essence: 'createAd.vehicle.fuel.essence',
      petrol: 'createAd.vehicle.fuel.essence',
      gasolina: 'createAd.vehicle.fuel.essence',
      benzine: 'createAd.vehicle.fuel.essence',
      diesel: 'createAd.vehicle.fuel.diesel',
      gasoil: 'createAd.vehicle.fuel.diesel',
      electrique: 'createAd.vehicle.fuel.electric',
      electric: 'createAd.vehicle.fuel.electric',
      electricite: 'createAd.vehicle.fuel.electric',
      hybride: 'createAd.vehicle.fuel.hybrid',
      hybrid: 'createAd.vehicle.fuel.hybrid',
      gpl: 'createAd.vehicle.fuel.lpg',
      lpg: 'createAd.vehicle.fuel.lpg',
    };
    return translateByKeyCandidates(keyMap[normalized] ? [keyMap[normalized]] : [], humanizeStoredValue(rawValue));
  };

  const translateGearboxLabel = (rawValue?: string | null) => {
    const normalized = normalizeLookupValue(rawValue);
    const keyMap: Record<string, string> = {
      manuelle: 'createAd.vehicle.gearbox.manual',
      manuel: 'createAd.vehicle.gearbox.manual',
      manual: 'createAd.vehicle.gearbox.manual',
      automatique: 'createAd.vehicle.gearbox.automatic',
      automatic: 'createAd.vehicle.gearbox.automatic',
      auto: 'createAd.vehicle.gearbox.automatic',
    };
    return translateByKeyCandidates(keyMap[normalized] ? [keyMap[normalized]] : [], humanizeStoredValue(rawValue));
  };

  const translateRealEstatePropertyTypeLabel = (rawValue?: string | null) => {
    const normalized = normalizeLookupValue(rawValue);
    const keyMap: Record<string, string[]> = {
      appartement: ['createAd.realEstate.type.apartment'],
      apartment: ['createAd.realEstate.type.apartment'],
      maison: ['createAd.realEstate.type.house'],
      house: ['createAd.realEstate.type.house'],
      villa: ['createAd.realEstate.type.villa'],
      studio: ['createAd.realEstate.type.studio'],
      niveau_villa: ['createAd.realEstate.type.villaLevel'],
      villa_level: ['createAd.realEstate.type.villaLevel'],
      bungalow: ['createAd.realEstate.type.bungalow'],
      local: ['createAd.realEstate.type.commercial'],
      commercial: ['createAd.realEstate.type.commercial'],
      bureau: ['createAd.realEstate.type.office'],
      office: ['createAd.realEstate.type.office'],
      hangar: ['createAd.realEstate.type.hangar'],
      entrepot: ['createAd.realEstate.type.warehouse'],
      warehouse: ['createAd.realEstate.type.warehouse'],
      usine: ['createAd.realEstate.type.factory'],
      factory: ['createAd.realEstate.type.factory'],
      garage_ferme: ['createAd.realEstate.type.garageClosed'],
      garage_closed: ['createAd.realEstate.type.garageClosed'],
      place_parking: ['createAd.realEstate.type.parkingSpot'],
      parking_spot: ['createAd.realEstate.type.parkingSpot'],
      box: ['createAd.realEstate.type.box'],
    };
    return translateByKeyCandidates(keyMap[normalized] || [], humanizeStoredValue(rawValue));
  };

  const translateRealEstateViewLabel = (rawValue?: string | null) => {
    const normalized = normalizeLookupValue(rawValue);
    const keyMap: Record<string, string[]> = {
      mer: ['createAd.realEstate.viewType.sea'],
      sea: ['createAd.realEstate.viewType.sea'],
      jardin: ['createAd.realEstate.viewType.garden'],
      garden: ['createAd.realEstate.viewType.garden'],
      rue: ['createAd.realEstate.viewType.street'],
      street: ['createAd.realEstate.viewType.street'],
      montagne: ['createAd.realEstate.viewType.mountain'],
      mountain: ['createAd.realEstate.viewType.mountain'],
    };
    return translateByKeyCandidates(keyMap[normalized] || [], humanizeStoredValue(rawValue));
  };

  const translateRealEstateZoningLabel = (rawValue?: string | null) => {
    const normalized = normalizeLookupValue(rawValue);
    const keyMap: Record<string, string[]> = {
      residentiel: ['createAd.realEstate.zoning.residential'],
      residential: ['createAd.realEstate.zoning.residential'],
      commercial: ['createAd.realEstate.zoning.commercial'],
      industriel: ['createAd.realEstate.zoning.industrial'],
      industrial: ['createAd.realEstate.zoning.industrial'],
      agricole: ['createAd.realEstate.zoning.agricultural'],
      agricultural: ['createAd.realEstate.zoning.agricultural'],
    };
    return translateByKeyCandidates(keyMap[normalized] || [], humanizeStoredValue(rawValue));
  };

  const translateRealEstateSpecificationLabel = (rawValue?: string | null) => {
    const normalized = normalizeLookupValue(rawValue);
    const keyCandidates = [
      `createAd.realEstate.specs.${normalized}`,
      `createAd.realEstate.${normalized}`,
      normalized === 'garage_parking' ? 'createAd.realEstate.garageParking' : '',
      normalized === 'balcon_terrasse' ? 'createAd.realEstate.balconyTerrace' : '',
      normalized === 'wifi_internet' ? 'createAd.realEstate.wifi' : '',
      normalized === 'permis_construire' ? 'createAd.realEstate.permit' : '',
    ].filter(Boolean);
    return translateByKeyCandidates(keyCandidates, humanizeStoredValue(rawValue));
  };

  const translateColorLabel = (rawValue?: string | null) => {
    const normalized = normalizeLookupValue(rawValue);
    const colorMap: Record<string, Record<string, string>> = {
      noir: { fr: 'Noir', en: 'Black', es: 'Negro', it: 'Nero', de: 'Schwarz', ar: 'Ø£Ø³ÙˆØ¯' },
      black: { fr: 'Noir', en: 'Black', es: 'Negro', it: 'Nero', de: 'Schwarz', ar: 'Ø£Ø³ÙˆØ¯' },
      blanc: { fr: 'Blanc', en: 'White', es: 'Blanco', it: 'Bianco', de: 'WeiÃŸ', ar: 'Ø£Ø¨ÙŠØ¶' },
      white: { fr: 'Blanc', en: 'White', es: 'Blanco', it: 'Bianco', de: 'WeiÃŸ', ar: 'Ø£Ø¨ÙŠØ¶' },
      gris: { fr: 'Gris', en: 'Gray', es: 'Gris', it: 'Grigio', de: 'Grau', ar: 'Ø±Ù…Ø§Ø¯ÙŠ' },
      gray: { fr: 'Gris', en: 'Gray', es: 'Gris', it: 'Grigio', de: 'Grau', ar: 'Ø±Ù…Ø§Ø¯ÙŠ' },
      grey: { fr: 'Gris', en: 'Gray', es: 'Gris', it: 'Grigio', de: 'Grau', ar: 'Ø±Ù…Ø§Ø¯ÙŠ' },
      argent: { fr: 'Argent', en: 'Silver', es: 'Plateado', it: 'Argento', de: 'Silber', ar: 'ÙØ¶ÙŠ' },
      silver: { fr: 'Argent', en: 'Silver', es: 'Plateado', it: 'Argento', de: 'Silber', ar: 'ÙØ¶ÙŠ' },
      bleu: { fr: 'Bleu', en: 'Blue', es: 'Azul', it: 'Blu', de: 'Blau', ar: 'Ø£Ø²Ø±Ù‚' },
      blue: { fr: 'Bleu', en: 'Blue', es: 'Azul', it: 'Blu', de: 'Blau', ar: 'Ø£Ø²Ø±Ù‚' },
      rouge: { fr: 'Rouge', en: 'Red', es: 'Rojo', it: 'Rosso', de: 'Rot', ar: 'Ø£Ø­Ù…Ø±' },
      red: { fr: 'Rouge', en: 'Red', es: 'Rojo', it: 'Rosso', de: 'Rot', ar: 'Ø£Ø­Ù…Ø±' },
      vert: { fr: 'Vert', en: 'Green', es: 'Verde', it: 'Verde', de: 'GrÃ¼n', ar: 'Ø£Ø®Ø¶Ø±' },
      green: { fr: 'Vert', en: 'Green', es: 'Verde', it: 'Verde', de: 'GrÃ¼n', ar: 'Ø£Ø®Ø¶Ø±' },
      jaune: { fr: 'Jaune', en: 'Yellow', es: 'Amarillo', it: 'Giallo', de: 'Gelb', ar: 'Ø£ØµÙØ±' },
      yellow: { fr: 'Jaune', en: 'Yellow', es: 'Amarillo', it: 'Giallo', de: 'Gelb', ar: 'Ø£ØµÙØ±' },
      marron: { fr: 'Marron', en: 'Brown', es: 'MarrÃ³n', it: 'Marrone', de: 'Braun', ar: 'Ø¨Ù†ÙŠ' },
      brown: { fr: 'Marron', en: 'Brown', es: 'MarrÃ³n', it: 'Marrone', de: 'Braun', ar: 'Ø¨Ù†ÙŠ' },
      beige: { fr: 'Beige', en: 'Beige', es: 'Beige', it: 'Beige', de: 'Beige', ar: 'Ø¨ÙŠØ¬' },
      rose: { fr: 'Rose', en: 'Pink', es: 'Rosa', it: 'Rosa', de: 'Rosa', ar: 'ÙˆØ±Ø¯ÙŠ' },
      pink: { fr: 'Rose', en: 'Pink', es: 'Rosa', it: 'Rosa', de: 'Rosa', ar: 'ÙˆØ±Ø¯ÙŠ' },
      violet: { fr: 'Violet', en: 'Purple', es: 'Morado', it: 'Viola', de: 'Lila', ar: 'Ø¨Ù†ÙØ³Ø¬ÙŠ' },
      purple: { fr: 'Violet', en: 'Purple', es: 'Morado', it: 'Viola', de: 'Lila', ar: 'Ø¨Ù†ÙØ³Ø¬ÙŠ' },
      orange: { fr: 'Orange', en: 'Orange', es: 'Naranja', it: 'Arancione', de: 'Orange', ar: 'Ø¨Ø±ØªÙ‚Ø§Ù„ÙŠ' },
    };
    return colorMap[normalized]?.[currentLanguage || 'fr'] || humanizeStoredValue(rawValue);
  };

  const translateAnnouncementTypeLabel = (rawValue?: string | null) => {
    const normalized = normalizeLookupValue(rawValue);
    const localizedMap: Record<string, Record<string, string>> = {
      normal: {
        fr: 'Standard',
        en: 'Standard',
        es: 'EstÃ¡ndar',
        it: 'Standard',
        de: 'Standard',
        ar: 'Ø¹Ø§Ø¯ÙŠ',
      },
      premium: {
        fr: 'Premium',
        en: 'Premium',
        es: 'Premium',
        it: 'Premium',
        de: 'Premium',
        ar: 'Ù…Ù…ÙŠØ²',
      },
      featured: {
        fr: 'Ã€ la une',
        en: 'Featured',
        es: 'Destacado',
        it: 'In evidenza',
        de: 'Hervorgehoben',
        ar: 'Ù…Ù…ÙŠØ²',
      },
      urgent: {
        fr: 'Urgent',
        en: 'Urgent',
        es: 'Urgente',
        it: 'Urgente',
        de: 'Dringend',
        ar: 'Ù…Ø³ØªØ¹Ø¬Ù„',
      },
    };

    return localizedMap[normalized]?.[currentLanguage || 'fr'] || humanizeStoredValue(rawValue);
  };

  const translateFreeValueLabel = (
    rawValue?: string | null,
    kind?: 'sellingReason' | 'packaging' | 'accessory' | 'equipment' | 'document'
  ) => {
    const normalized = normalizeLookupValue(rawValue);
    const dictionaries: Record<string, Record<string, string>> = {
      upgrade: { fr: 'Mise Ã  niveau', en: 'Upgrade', es: 'ActualizaciÃ³n', it: 'Aggiornamento', de: 'Upgrade', ar: 'ØªØ±Ù‚ÙŠØ©' },
      renouvellement: { fr: 'Renouvellement', en: 'Renewal', es: 'RenovaciÃ³n', it: 'Rinnovo', de: 'Erneuerung', ar: 'ØªØ¬Ø¯ÙŠØ¯' },
      no_longer_needed: { fr: 'Plus nÃ©cessaire', en: 'No longer needed', es: 'Ya no es necesario', it: 'Non piÃ¹ necessario', de: 'Nicht mehr benÃ¶tigt', ar: 'Ù„Ù… Ø£Ø¹Ø¯ Ø¨Ø­Ø§Ø¬Ø© Ø¥Ù„ÙŠÙ‡' },
      urgent_sale: { fr: 'Vente urgente', en: 'Urgent sale', es: 'Venta urgente', it: 'Vendita urgente', de: 'Dringender Verkauf', ar: 'Ø¨ÙŠØ¹ Ù…Ø³ØªØ¹Ø¬Ù„' },
      demenagement: { fr: 'DÃ©mÃ©nagement', en: 'Moving', es: 'Mudanza', it: 'Trasloco', de: 'Umzug', ar: 'Ø§Ù†ØªÙ‚Ø§Ù„' },
      liquidation: { fr: 'Liquidation', en: 'Clearance', es: 'LiquidaciÃ³n', it: 'Liquidazione', de: 'RÃ¤umungsverkauf', ar: 'ØªØµÙÙŠØ©' },
      fermeture: { fr: 'Fermeture', en: 'Closure', es: 'Cierre', it: 'Chiusura', de: 'SchlieÃŸung', ar: 'Ø¥ØºÙ„Ø§Ù‚' },
      avec_boite: { fr: 'Avec boÃ®te', en: 'With box', es: 'Con caja', it: 'Con scatola', de: 'Mit Verpackung', ar: 'Ù…Ø¹ Ø§Ù„Ø¹Ù„Ø¨Ø©' },
      sans_boite: { fr: 'Sans boÃ®te', en: 'Without box', es: 'Sin caja', it: 'Senza scatola', de: 'Ohne Verpackung', ar: 'Ø¨Ø¯ÙˆÙ† Ø¹Ù„Ø¨Ø©' },
      boite_origine: { fr: "BoÃ®te d'origine", en: 'Original box', es: 'Caja original', it: 'Scatola originale', de: 'Originalverpackung', ar: 'Ø§Ù„Ø¹Ù„Ø¨Ø© Ø§Ù„Ø£ØµÙ„ÙŠØ©' },
      original_box: { fr: "BoÃ®te d'origine", en: 'Original box', es: 'Caja original', it: 'Scatola originale', de: 'Originalverpackung', ar: 'Ø§Ù„Ø¹Ù„Ø¨Ø© Ø§Ù„Ø£ØµÙ„ÙŠØ©' },
      scelle: { fr: 'ScellÃ©', en: 'Sealed', es: 'Sellado', it: 'Sigillato', de: 'Versiegelt', ar: 'Ù…Ø®ØªÙˆÙ…' },
      sealed: { fr: 'ScellÃ©', en: 'Sealed', es: 'Sellado', it: 'Sigillato', de: 'Versiegelt', ar: 'Ù…Ø®ØªÙˆÙ…' },
      chargeur: { fr: 'Chargeur', en: 'Charger', es: 'Cargador', it: 'Caricatore', de: 'LadegerÃ¤t', ar: 'Ø´Ø§Ø­Ù†' },
      charger: { fr: 'Chargeur', en: 'Charger', es: 'Cargador', it: 'Caricatore', de: 'LadegerÃ¤t', ar: 'Ø´Ø§Ø­Ù†' },
      cable: { fr: 'CÃ¢ble', en: 'Cable', es: 'Cable', it: 'Cavo', de: 'Kabel', ar: 'ÙƒØ§Ø¨Ù„' },
      ecouteurs: { fr: 'Ã‰couteurs', en: 'Earphones', es: 'Auriculares', it: 'Auricolari', de: 'KopfhÃ¶rer', ar: 'Ø³Ù…Ø§Ø¹Ø§Øª' },
      headphones: { fr: 'Casque', en: 'Headphones', es: 'Auriculares', it: 'Cuffie', de: 'KopfhÃ¶rer', ar: 'Ø³Ù…Ø§Ø¹Ø§Øª Ø±Ø£Ø³' },
      telecommande: { fr: 'TÃ©lÃ©commande', en: 'Remote control', es: 'Mando a distancia', it: 'Telecomando', de: 'Fernbedienung', ar: 'Ø¬Ù‡Ø§Ø² ØªØ­ÙƒÙ…' },
      remote: { fr: 'TÃ©lÃ©commande', en: 'Remote control', es: 'Mando a distancia', it: 'Telecomando', de: 'Fernbedienung', ar: 'Ø¬Ù‡Ø§Ø² ØªØ­ÙƒÙ…' },
      batterie: { fr: 'Batterie', en: 'Battery', es: 'BaterÃ­a', it: 'Batteria', de: 'Akku', ar: 'Ø¨Ø·Ø§Ø±ÙŠØ©' },
      battery: { fr: 'Batterie', en: 'Battery', es: 'BaterÃ­a', it: 'Batteria', de: 'Akku', ar: 'Ø¨Ø·Ø§Ø±ÙŠØ©' },
      coque: { fr: 'Coque', en: 'Case', es: 'Funda', it: 'Cover', de: 'HÃ¼lle', ar: 'ØºØ·Ø§Ø¡' },
      case: { fr: 'Coque', en: 'Case', es: 'Funda', it: 'Cover', de: 'HÃ¼lle', ar: 'ØºØ·Ø§Ø¡' },
      housse: { fr: 'Housse', en: 'Cover', es: 'Funda', it: 'Custodia', de: 'SchutzhÃ¼lle', ar: 'Ø­Ø§ÙØ¸Ø©' },
      facture: { fr: 'Facture', en: 'Invoice', es: 'Factura', it: 'Fattura', de: 'Rechnung', ar: 'ÙØ§ØªÙˆØ±Ø©' },
      invoice: { fr: 'Facture', en: 'Invoice', es: 'Factura', it: 'Fattura', de: 'Rechnung', ar: 'ÙØ§ØªÙˆØ±Ø©' },
      garantie: { fr: 'Garantie', en: 'Warranty', es: 'GarantÃ­a', it: 'Garanzia', de: 'Garantie', ar: 'Ø¶Ù…Ø§Ù†' },
      warranty: { fr: 'Garantie', en: 'Warranty', es: 'GarantÃ­a', it: 'Garanzia', de: 'Garantie', ar: 'Ø¶Ù…Ø§Ù†' },
      manuel: { fr: 'Manuel', en: 'Manual', es: 'Manual', it: 'Manuale', de: 'Handbuch', ar: 'Ø¯Ù„ÙŠÙ„' },
      manual: { fr: 'Manuel', en: 'Manual', es: 'Manual', it: 'Manuale', de: 'Handbuch', ar: 'Ø¯Ù„ÙŠÙ„' },
    };

    if (kind === 'document') {
      const translatedDocument = formatDocumentLabel(rawValue || '');
      if (translatedDocument && translatedDocument !== rawValue) return translatedDocument;
    }

    return dictionaries[normalized]?.[currentLanguage || 'fr'] || humanizeStoredValue(rawValue);
  };

  const localizeLabel = (s: string | undefined, language: string, kind?: string) => {
    if (!s) return s;
    let r = String(s);
    if (language === 'ar') {
      r = r.replace(/\bGB\b|\bGo\b/gi, 'ØºÙŠØºØ§Ø¨Ø§ÙŠØª');
      r = r.replace(/\bTB\b|\bTo\b/gi, 'ØªÙŠØ±Ø§Ø¨Ø§ÙŠØª');
      r = r.replace(/\bHz\b/gi, 'Ù‡Ø±ØªØ²');
      r = r.replace(/(\d{1,2}(?:\.\d)?)"/g, '$1 Ø¨ÙˆØµØ©');
      r = r.replace(/\bcarbone\b|carbon/gi, 'ÙƒØ±Ø¨ÙˆÙ†');
      r = r.replace(/\baluminium\b|alu/gi, 'Ø£Ù„Ù…Ù†ÙŠÙˆÙ…');
      r = r.replace(/\bacier\b|steel/gi, 'ÙÙˆÙ„Ø§Ø°');
      r = r.replace(/\bfull[- ]?suspension\b|tout\s?suspendu|full/gi, 'ØªØ¹Ù„ÙŠÙ‚ ÙƒØ§Ù…Ù„');
      r = r.replace(/\bsemi[- ]?rigide\b|hardtail/gi, 'ØªØ¹Ù„ÙŠÙ‚ Ø£Ù…Ø§Ù…ÙŠ ÙÙ‚Ø·');
      r = r.replace(/\bdisque\b|disc/gi, 'Ù‚Ø±ØµÙŠ');
      r = r.replace(/\bhydraulique\b/gi, 'Ù‡ÙŠØ¯Ø±ÙˆÙ„ÙŠÙƒ');
      r = r.replace(/\bv[- ]?brake\b|patins/gi, 'Ø­Ø°ÙˆØ©');
      r = r.replace(/\bkg\b/gi, 'ÙƒÙ„Øº');
      if (kind === 'gears') {
        const m = r.match(/^\d{1,2}$/);
        if (m) r = `${m[0]} Ø³Ø±Ø¹Ø§Øª`;
      }
    } else {
      r = r.replace(/\bGB\b|\bGo\b/gi, 'Go');
      r = r.replace(/\bTB\b|\bTo\b/gi, 'To');
      r = r.replace(/\bHz\b/gi, 'Hz');
      r = r.replace(/(\d{1,2}(?:\.\d)?)\s?("?pouce[s]?"?|inch|in)/gi, (_, n) => `${n}"`);
      if (kind === 'gears') {
        const m = r.match(/^\d{1,2}$/);
        if (m) r = `${m[0]} vitesses`;
      }
    }
    return r;
  };

  const normalizeKey = (key: string) =>
    (key || "")
      .toLowerCase()
      .normalize("NFD")
      .replace(/[\u0300-\u036f]/g, "")
      .replace(/\s+/g, "_")
      .replace(/[^a-z0-9_]/g, "")
      .trim();

  const pickAttributeValue = (attributes: Record<string, unknown> | undefined | null, candidateKeys: string[]): unknown => {
    if (!attributes || typeof attributes !== "object") return undefined;
    const normalizedCandidates = candidateKeys.map(normalizeKey).filter(Boolean);
    const exact = new Set(normalizedCandidates);

    for (const [rawKey, rawValue] of Object.entries(attributes)) {
      const nk = normalizeKey(rawKey);
      if (!exact.has(nk)) continue;
      if (Array.isArray(rawValue)) return rawValue.length ? rawValue[0] : undefined;
      return rawValue;
    }

    for (const [rawKey, rawValue] of Object.entries(attributes)) {
      const nk = normalizeKey(rawKey);
      if (!nk) continue;
      const matches = normalizedCandidates.some((c) => (c.length >= 4 ? nk.includes(c) || c.includes(nk) : nk === c));
      if (!matches) continue;
      if (Array.isArray(rawValue)) return rawValue.length ? rawValue[0] : undefined;
      return rawValue;
    }
    return undefined;
  };

  const toNumberOrUndefined = (value: unknown) => {
    if (typeof value === "number" && Number.isFinite(value)) return value;
    if (typeof value !== "string") return undefined;
    const cleaned = value.replace(/[^\d]/g, "");
    if (!cleaned) return undefined;
    const n = Number(cleaned);
    return Number.isFinite(n) ? n : undefined;
  };

  const toStringArrayOrUndefined = (value: unknown) => {
    if (Array.isArray(value)) {
      const cleaned = value.map((v) => String(v).trim()).filter(Boolean);
      return cleaned.length ? cleaned : undefined;
    }
    if (typeof value === "string") {
      const parts = value
        .split(",")
        .map((s) => s.trim())
        .filter(Boolean);
      return parts.length ? parts : undefined;
    }
    return undefined;
  };

  const toBooleanOrUndefined = (value: unknown) => {
    if (typeof value === "boolean") return value;
    if (typeof value !== "string") return undefined;
    const normalized = value
      .toLowerCase()
      .normalize("NFD")
      .replace(/[\u0300-\u036f]/g, "")
      .trim();
    const truthy = ["oui", "yes", "true", "1", "valide", "valid", "claire", "clear", "100"].some((t) =>
      normalized.includes(t),
    );
    const falsy = ["non", "no", "false", "0", "pas", "invalide", "invalid"].some((t) =>
      normalized.includes(t),
    );
    if (truthy && !falsy) return true;
    if (falsy && !truthy) return false;
    return undefined;
  };

  const resolveVehicleDetails = (a: any) => {
    const attrs = a?.attributes;

    const registrationDate =
      (typeof a?.registration_date === "string" ? a.registration_date : undefined) ??
      (typeof pickAttributeValue(attrs, ["registration_date", "date_mise_en_circulation", "date_immatriculation"]) === "string"
        ? (pickAttributeValue(attrs, ["registration_date", "date_mise_en_circulation", "date_immatriculation"]) as string)
        : undefined);

    const yearFromRegistration =
      typeof registrationDate === "string" && !Number.isNaN(Date.parse(registrationDate))
        ? new Date(registrationDate).getFullYear()
        : undefined;

    const year =
      (typeof a?.year === "number" ? a.year : undefined) ??
      yearFromRegistration ??
      toNumberOrUndefined(pickAttributeValue(attrs, ["year", "annee", "annÃ©e", "an", "vehicle_year"]));

    const fuel =
      (typeof a?.fuel === "string" ? a.fuel : undefined) ??
      (typeof a?.fuel_type === "string" ? a.fuel_type : undefined) ??
      (typeof pickAttributeValue(attrs, ["fuel", "fuel_type", "carburant", "energie", "Ã©nergie", "carburant_energie", "energie_carburant"]) ===
      "string"
        ? (pickAttributeValue(attrs, ["fuel", "fuel_type", "carburant", "energie", "Ã©nergie", "carburant_energie", "energie_carburant"]) as string)
        : undefined);

    const transmission =
      (typeof a?.transmission === "string" ? a.transmission : undefined) ??
      (typeof a?.gearbox === "string" ? a.gearbox : undefined) ??
      (typeof pickAttributeValue(attrs, ["gearbox", "transmission", "boite", "boite_de_vitesse", "boite_de_vitesses", "boÃ®te"]) ===
      "string"
        ? (pickAttributeValue(attrs, ["gearbox", "transmission", "boite", "boite_de_vitesse", "boite_de_vitesses", "boÃ®te"]) as string)
        : undefined);

    const mileage =
      (typeof a?.mileage === "number" ? a.mileage : undefined) ??
      toNumberOrUndefined(pickAttributeValue(attrs, ["mileage", "kilometrage", "kilomÃ©trage", "km", "distance"]));

    const version =
      (typeof a?.version === "string" ? a.version : undefined) ??
      (typeof pickAttributeValue(attrs, ["version"]) === "string" ? (pickAttributeValue(attrs, ["version"]) as string) : undefined);

    const fiscalPower =
      (typeof a?.fiscal_power === "string" ? a.fiscal_power : undefined) ??
      (typeof pickAttributeValue(attrs, ["fiscal_power", "puissance_fiscale", "cv"]) === "string"
        ? (pickAttributeValue(attrs, ["fiscal_power", "puissance_fiscale", "cv"]) as string)
        : undefined);

    const technicalControl =
      (typeof a?.technical_control === "boolean" ? a.technical_control : undefined) ??
      toBooleanOrUndefined(a?.technical_control) ??
      toBooleanOrUndefined(pickAttributeValue(attrs, ["technical_control", "controle_technique", "contrÃ´le_technique"]));

    const greyCardCrossed =
      (typeof a?.grey_card_crossed === "boolean" ? a.grey_card_crossed : undefined) ??
      toBooleanOrUndefined(a?.grey_card_crossed) ??
      toBooleanOrUndefined(pickAttributeValue(attrs, ["grey_card_crossed", "carte_grise_barree", "carte_grise_barrÃ©e"]));

    const equipment =
      toStringArrayOrUndefined(a?.equipment) ??
      toStringArrayOrUndefined(pickAttributeValue(attrs, ["equipment", "equipement", "Ã©quipement", "options", "equipements"]));

    const purchaseYear =
      (typeof a?.purchase_year === "number" ? a.purchase_year : undefined) ??
      toNumberOrUndefined(
        pickAttributeValue(attrs, [
          "purchase_year",
          "purchaseYear",
          "annee_achat",
          "annÃ©e_achat",
          "annee_dachat",
          "annÃ©e_dachat",
          "annee_fabrication",
          "annÃ©e_fabrication",
          "annee_achat_fabrication",
          "annee_dachat_fabrication",
          "annee_achatfabrication",
          "annee_dachatfabrication",
          "annee_dachat_fabrication",
          "annee_dachatfabrication",
        ]),
      );

    return {
      registrationDate,
      year,
      purchaseYear,
      fuel,
      transmission,
      mileage,
      version,
      fiscalPower,
      technicalControl,
      greyCardCrossed,
      equipment,
    };
  };

  const resolveBikeDetails = (a: any) => {
    const attrs = a?.attributes;
    const titleText = typeof a?.title === "string" ? a.title.toLowerCase() : "";
    const frameSize =
      (typeof a?.frame_size === "string" ? a.frame_size : undefined) ??
      (typeof pickAttributeValue(attrs, ["frame_size","taille_cadre","cadre","Ù…Ù‚Ø§Ø³_Ø§Ù„Ø¥Ø·Ø§Ø±","Ø§Ù„Ø¥Ø·Ø§Ø±"]) === "string"
        ? (pickAttributeValue(attrs, ["frame_size","taille_cadre","cadre","Ù…Ù‚Ø§Ø³_Ø§Ù„Ø¥Ø·Ø§Ø±","Ø§Ù„Ø¥Ø·Ø§Ø±"]) as string)
        : undefined);
    const wheelSize =
      (typeof a?.wheel_size === "string" ? a.wheel_size : undefined) ??
      (typeof pickAttributeValue(attrs, ["wheel_size","taille_roue","roue","diametre_roue","Ø­Ø¬Ù…_Ø§Ù„Ø¹Ø¬Ù„Ø©","Ø§Ù„Ø¹Ø¬Ù„Ø©","Ù‚Ø·Ø±_Ø§Ù„Ø¹Ø¬Ù„Ø©"]) === "string"
        ? (pickAttributeValue(attrs, ["wheel_size","taille_roue","roue","diametre_roue","Ø­Ø¬Ù…_Ø§Ù„Ø¹Ø¬Ù„Ø©","Ø§Ù„Ø¹Ø¬Ù„Ø©","Ù‚Ø·Ø±_Ø§Ù„Ø¹Ø¬Ù„Ø©"]) as string)
        : undefined);
    const wheelMatch = titleText.match(/(\d{2}(?:\.\d)?)\s*(?:"|pouces|inch|in)/);
    const wheelResolved = wheelSize ?? (wheelMatch ? `${wheelMatch[1]}"` : undefined);
    const isElectricAttr = pickAttributeValue(attrs, ["electric","electrique","Ã©lectrique","e_bike","velo_electrique","ÙƒÙ‡Ø±Ø¨Ø§Ø¦ÙŠ","Ø¯Ø±Ø§Ø¬Ø©_ÙƒÙ‡Ø±Ø¨Ø§Ø¦ÙŠØ©"]);
    const isElectric =
      typeof a?.bikeElectric === "boolean"
        ? a.bikeElectric
        : (typeof isElectricAttr === "string"
            ? ["oui","true","electrique","Ã©lectrique","e_bike","electric","ÙƒÙ‡Ø±Ø¨Ø§Ø¦ÙŠ"].some(s => (isElectricAttr as string).toLowerCase().includes(s))
            : (/(electri|Ã©lectri|ÙƒÙ‡Ø±Ø¨)/.test(titleText) ? true : undefined));
    const motorizedAttr = pickAttributeValue(attrs, ["motorized","velo_motorise","vÃ©lo_motorisÃ©","motorise","moteur","Ù…Ø²ÙˆØ¯ Ø¨Ù…Ø­Ø±Ùƒ","Ù…Ø²ÙˆÙ‘Ø¯ Ø¨Ù…Ø­Ø±Ùƒ"]);
    const isMotorized =
      typeof a?.bikeMotorized === "boolean"
        ? a.bikeMotorized
        : (typeof motorizedAttr === "string"
            ? ["oui","true","motorise","motorisÃ©","moteur"].some(s => (motorizedAttr as string).toLowerCase().includes(s))
            : (/(motoris|Ù…Ø­Ø±Ùƒ)/.test(titleText) ? true : undefined));
    const frameMaterialAttr = pickAttributeValue(attrs, ["frame_material","material","materiau","matÃ©riau","cadre_materiau","cadre_matÃ©riau","Ù…Ø§Ø¯Ø©_Ø§Ù„Ø¥Ø·Ø§Ø±","Ø§Ù„Ù…Ø§Ø¯Ø©"]);
    const frameMaterial = typeof frameMaterialAttr === "string" ? frameMaterialAttr : (titleText.match(/(carbone|aluminium|alu|acier|steel|carbon)/)?.[1]);
    const suspensionAttr = pickAttributeValue(attrs, ["suspension","suspension_avant","suspension_arriere","type_suspension","Ø³uspension","ØªØ¹Ù„ÙŠÙ‚"]);
    const suspension = typeof suspensionAttr === "string" ? suspensionAttr : (titleText.match(/(full|tout\s?suspendu|full[- ]suspension|semi[- ]rigide|hardtail)/)?.[1]);
    const brakeAttr = pickAttributeValue(attrs, ["brake","brake_type","freins","type_de_frein","Ø§Ù„ÙØ±Ø§Ù…Ù„","Ù†ÙˆØ¹_Ø§Ù„ÙØ±Ø§Ù…Ù„"]);
    const brake = typeof brakeAttr === "string" ? brakeAttr : (titleText.match(/(disque|hydraulique|v[- ]?brake|patins|disc)/)?.[1]);
    const gearsAttr = pickAttributeValue(attrs, ["gears","vitesses","nbr_vitesses","nombre_vitesses","Ø¹Ø¯Ø¯_Ø§Ù„Ø³Ø±Ø¹Ø§Øª"]);
    const gears = typeof gearsAttr === "string" ? gearsAttr : (titleText.match(/(\d{1,2})\s?(?:vitesses|v|speeds)/)?.[1]);
    const bikeTypeAttr = pickAttributeValue(attrs, ["bike_type","type","style","categorie","catÃ©gorie","Ù†ÙˆØ¹"]);
    const bikeType = typeof bikeTypeAttr === "string" ? bikeTypeAttr : (titleText.match(/(vtt|route|gravel|bmx|fixie|hybride|city)/)?.[1]);
    const weightAttr = pickAttributeValue(attrs, ["weight","poids","Ø§Ù„ÙˆØ²Ù†"]);
    const weight = typeof weightAttr === "string" ? weightAttr : (titleText.match(/(\d{1,2}(?:\.\d)?)\s?kg/)?.[1]);
    return { frameSize, wheelResolved, isElectric, isMotorized, frameMaterial, suspension, brake, gears, bikeType, weight };
  };

  // Combine all images and video, prioritizing video first
  const allImages = [
    ...(announcement.product_video ? [announcement.product_video] : []),
    ...(announcement.imageUrls || []),
    ...(announcement.detail_photos || [])
  ].filter(Boolean);
  
  // If no images, use placeholder
  if (allImages.length === 0 && announcement.imageUrl) {
    allImages.push(announcement.imageUrl);
  }

  // Logic to find category name and slug
  const isUUID = (value: string) => /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(value);

  const rawCategoryId = typeof announcement.category_id === "string" ? announcement.category_id : "";
  const rawCategorySlug =
    typeof announcement.categorySlug === "string" && announcement.categorySlug.trim()
      ? announcement.categorySlug
      : typeof announcement.category_slug === "string" && announcement.category_slug.trim()
        ? announcement.category_slug
        : "";
  const categoryLookupKey = rawCategorySlug || rawCategoryId;
  
  // Robust lookup: search in top-level AND subcategories if needed
  const categoryFromMenu = (() => {
    // 1. Try top-level
    const topLevel = menuCategories.find(c => c.id === categoryLookupKey || c.slug === categoryLookupKey);
    if (topLevel) return topLevel;

    // 2. Search deep in case rawCategoryId is actually a subcategory ID
    for (const cat of menuCategories) {
      const sub = cat.subcategories?.find((s: any) => s.id === categoryLookupKey || s.slug === categoryLookupKey);
      if (sub) return sub;
      
      for (const s of cat.subcategories || []) {
        const nested = s.subcategories?.find((n: any) => n.id === categoryLookupKey || n.slug === categoryLookupKey);
        if (nested) return nested;
      }
    }
    return null;
  })();
  
  const resolvedCategoryName = (() => {
    if (categoryFromMenu?.name) return categoryFromMenu.name;
    
    const key = `categories.${categoryLookupKey}`;
    const translated = t(key);
    
    // If translation exists and is not the key itself
    if (translated && translated !== key && !translated.startsWith('categories.')) {
      return translated;
    }
    
    // If announcement has a category name string
    if (announcement.category && announcement.category !== rawCategoryId && announcement.category !== categoryLookupKey) {
      return announcement.category;
    }

    // Default fallback
    return t('createAd.category') || 'CatÃ©gorie';
  })();

  const resolvedCategorySlug = categoryFromMenu?.slug || rawCategorySlug || "";

  const resolvedSubcategoryName = (() => {
    const subId = announcement.subcategory_id || announcement.subcategory;
    const fallbackSubcategoryName =
      typeof announcement.subcategory === "string" && announcement.subcategory.trim()
        ? announcement.subcategory.trim()
        : "";
    const explicitSubcategorySlug =
      typeof announcement.subcategory_slug === "string" && announcement.subcategory_slug.trim()
        ? announcement.subcategory_slug.trim()
        : "";
    if (!subId || subId === rawCategoryId) return "";
    
    // Try to find in menu
    const findInMenu = (subs: any[]): any => {
      for (const s of subs) {
        if (s.id === subId || s.slug === subId) return s;
        if (s.subcategories) {
          const found = findInMenu(s.subcategories);
          if (found) return found;
        }
      }
      return null;
    };

    const subFromMenu = findInMenu(menuCategories);
    if (subFromMenu) return subFromMenu.name;

    if (explicitSubcategorySlug) {
      const translatedBySlug = t(`categories.${explicitSubcategorySlug}`);
      if (
        translatedBySlug &&
        translatedBySlug !== `categories.${explicitSubcategorySlug}` &&
        !translatedBySlug.startsWith('categories.')
      ) {
        return translatedBySlug;
      }
    }

    if (fallbackSubcategoryName && fallbackSubcategoryName !== subId && !isUUID(fallbackSubcategoryName)) {
      return fallbackSubcategoryName;
    }
    
    // Fallback translation
    const key = `categories.${subId}`;
    const translated = t(key);
    if (translated && translated !== key && !translated.startsWith('categories.')) {
      return translated;
    }
    
    // Fallback formatting
    if (isUUID(subId)) return "";

    return subId
      .split("-")
      .filter(Boolean)
      .map((word) => word.charAt(0).toUpperCase() + word.slice(1))
      .join(" ");
  })();

  const resolvedSubcategorySlug = (() => {
    const subId = announcement.subcategory_id || announcement.subcategory;
    const explicitSubcategorySlug =
      typeof announcement.subcategory_slug === "string" && announcement.subcategory_slug.trim()
        ? announcement.subcategory_slug.trim()
        : "";
    if (!subId) return "";

    if (explicitSubcategorySlug) return explicitSubcategorySlug;
    
    if (categoryFromMenu) {
      const direct = categoryFromMenu.subcategories?.find((s: any) => s.id === subId || s.slug === subId);
      if (direct) return direct.slug || subId;

      for (const sub of categoryFromMenu.subcategories || []) {
        const nested = (sub.subcategories || []).find((child: any) => child.id === subId || child.slug === subId);
        if (nested) return nested.slug || subId;
      }
    }
    return subId;
  })();

  const vehicle = resolveVehicleDetails(announcement as unknown as Record<string, unknown>);
  const isVehicleCategory =
    typeof announcement.category_id === "string" && announcement.category_id.toLowerCase().includes("vehicul");
  const purchaseYearForDisplay =
    (typeof vehicle.purchaseYear === "number" && Number.isFinite(vehicle.purchaseYear) ? vehicle.purchaseYear : undefined) ??
    (typeof announcement.purchase_year === "number" && Number.isFinite(announcement.purchase_year)
      ? announcement.purchase_year
      : undefined);
  const bike = resolveBikeDetails(announcement as unknown as Record<string, unknown>);
  const isBikeCategory =
    (typeof announcement.category_id === 'string' && announcement.category_id === 'velo-cyclisme-equipements') ||
    (typeof announcement.categorySlug === 'string' && announcement.categorySlug === 'velo-cyclisme-equipements') ||
    (announcement as unknown as { categories?: { slug?: string } })?.categories?.slug === 'velo-cyclisme-equipements';
  const showBikeSpecsBlock =
    isBikeCategory &&
    (bike.frameSize || bike.wheelResolved || typeof bike.isElectric === 'boolean' || typeof bike.isMotorized === 'boolean' || bike.frameMaterial || bike.suspension || bike.brake || bike.gears || bike.bikeType || bike.weight);
  const announcementUrl = getLocalizedPath(`/annonce/${announcement.id}`);
  const seoDescription = (() => {
    const rawDescription = typeof announcement.description === "string" ? announcement.description.trim() : "";
    if (!rawDescription) {
      return `${announcement.title} - ${resolvedCategoryName}${resolvedSubcategoryName ? ` - ${resolvedSubcategoryName}` : ""} - Aladdin Annonces AlgÃ©rie`;
    }
    return rawDescription.length > 180 ? `${rawDescription.slice(0, 177)}...` : rawDescription;
  })();
  const seoBreadcrumbs = [
    { label: t("breadcrumb.home"), href: getLocalizedPath("/") },
    ...(resolvedCategorySlug
      ? [{ label: resolvedCategoryName, href: getLocalizedPath(`/category/${resolvedCategorySlug}`) }]
      : []),
    ...(resolvedSubcategoryName && resolvedCategorySlug && resolvedSubcategorySlug
      ? [{ label: resolvedSubcategoryName, href: getLocalizedPath(`/category/${resolvedCategorySlug}/${resolvedSubcategorySlug}`) }]
      : []),
    { label: announcement.title, href: announcementUrl },
  ];

  return (
    <div className="min-h-screen bg-gray-50/50 pb-12">
      <SEOHead
        title={announcement.title}
        description={seoDescription}
        category={resolvedCategoryName}
        subcategory={resolvedSubcategoryName || undefined}
        image={allImages[0] || "/og-image.jpg"}
        url={announcementUrl}
        breadcrumbs={seoBreadcrumbs}
      />
      <ReportModal
        open={showReportModal}
        onClose={() => setShowReportModal(false)}
        target={{
          type: "announcement",
          id: announcement.id || id || "",
          globalNumber:
            typeof (announcement.global_listing_number ?? announcement.global_announcement_number) === "number"
              ? (announcement.global_listing_number ?? announcement.global_announcement_number)
              : null,
          ownerUserId: announcement.user_id ?? null,
          title: announcement.title ?? null,
          wilaya: announcement.wilaya ?? null,
        }}
      />
      <div className="container mx-auto px-4 py-6 max-w-7xl">
        <Breadcrumb className="mb-5">
          <BreadcrumbList className="flex-wrap gap-y-2 text-xs md:text-sm text-gray-500">
            <BreadcrumbItem>
              <BreadcrumbLink asChild>
                <Link to={getLocalizedPath("/")} className="transition-colors hover:text-gray-700">
                  {t("breadcrumb.home")}
                </Link>
              </BreadcrumbLink>
            </BreadcrumbItem>
            {announcement.category_id ? (
              <>
                <BreadcrumbSeparator />
                <BreadcrumbItem>
                  <BreadcrumbLink asChild>
                    <Link to={getLocalizedPath(`/category/${resolvedCategorySlug}`)} className="transition-colors hover:text-gray-700">
                      {resolvedCategoryName}
                    </Link>
                  </BreadcrumbLink>
                </BreadcrumbItem>
              </>
            ) : null}
            {resolvedSubcategoryName ? (
              <>
                <BreadcrumbSeparator />
                <BreadcrumbItem>
                  <BreadcrumbLink asChild>
                    <Link
                      to={getLocalizedPath(`/category/${resolvedCategorySlug}/${resolvedSubcategorySlug}`)}
                      className="font-medium text-gray-600 transition-colors hover:text-gray-800"
                    >
                      {resolvedSubcategoryName}
                    </Link>
                  </BreadcrumbLink>
                </BreadcrumbItem>
              </>
            ) : null}
          </BreadcrumbList>
        </Breadcrumb>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
          
          {/* LEFT COLUMN - Images & Main Content */}
          <div className="lg:col-span-2 space-y-8">
            
            {/* Image Gallery */}
            <div className="bg-white rounded-2xl shadow-sm border border-gray-100 p-4">
              <ModernImageGallery 
                images={allImages.length > 0 ? allImages : ['/placeholder.png']} 
                title={announcement.title} 
              />
            </div>

            {/* Main Description */}
            <div className="bg-white rounded-2xl shadow-sm border border-gray-100 p-6 space-y-6">
              <div className="flex items-start justify-between gap-4">
                <div className="min-w-0 flex-1">
                  <h1 className="text-2xl md:text-3xl font-bold text-gray-900 leading-tight">
                    {announcement.title}
                  </h1>
                  {resolvedSubcategoryName && (
                    <p className="mt-1 text-2xl md:text-[2rem] font-normal leading-tight text-gray-400 break-words">
                      {resolvedSubcategoryName}
                    </p>
                  )}
                  <div className="flex items-center gap-4 text-sm text-muted-foreground">
                    <span className="flex items-center gap-1">
                      <MapPin className="w-4 h-4" />
                      {announcement.wilaya} {announcement.commune && `- ${announcement.commune}`}
                    </span>
                    <span className="flex items-center gap-1">
                      <Calendar className="w-4 h-4" />
                      {formatDate(announcement.created_at)}
                    </span>
                    <span className="flex items-center gap-1">
                      <Eye className="w-4 h-4" />
                      {announcement.views_count || 0} {t('createAd.views')}
                    </span>
                    {typeof (announcement.global_listing_number ?? announcement.global_announcement_number) === "number" ? (
                      <span className="flex items-center gap-1">
                        <Info className="w-4 h-4" />
                        NÂ° {announcement.global_listing_number ?? announcement.global_announcement_number}
                      </span>
                    ) : null}
                  </div>
                </div>
                <div className="flex gap-2">
                   <Button variant="ghost" size="icon" onClick={handleFavoriteClick} className={cn("text-gray-500 hover:text-red-500", isAnnouncementFavorite && "text-red-500 hover:text-red-600")}>
                    <Heart className={cn("w-5 h-5", { "fill-red-500": isAnnouncementFavorite })} />
                   </Button>
                   <Button variant="ghost" size="icon" onClick={handleShareClick} className="text-gray-500 hover:text-blue-500">
                    <Share2 className="w-5 h-5" />
                   </Button>
                   <Button 
                    variant="ghost" 
                    size="icon" 
                    className="text-gray-500 hover:text-orange-500" 
                    title={t('createAd.report.title')}
                    onClick={() => setShowReportModal(true)}
                   >
                    <Flag className="w-5 h-5" />
                   </Button>
                </div>
              </div>

              {showBikeSpecsBlock && (
                <div className="bg-gray-50 rounded-xl border border-gray-100 p-4">
                  <h3 className="text-lg font-bold mb-3">{t('createAd.bike.title')}</h3>
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-2 text-sm">
                    {bike.frameSize && (
                      <div>{t('createAd.bike.frameSize')}: {bike.frameSize}</div>
                    )}
                    {bike.wheelResolved && (
                      <div>{t('createAd.bike.wheelSize')}: {localizeLabel(bike.wheelResolved, currentLanguage, 'wheel')}</div>
                    )}
                    {typeof bike.isElectric === 'boolean' && (
                      <div>{t('createAd.bike.electric')}: {bike.isElectric ? t('createAd.yes') : t('createAd.no')}</div>
                    )}
                    {typeof bike.isMotorized === 'boolean' && (
                      <div>{t('createAd.bike.motorized')}: {bike.isMotorized ? t('createAd.yes') : t('createAd.no')}</div>
                    )}
                    {bike.frameMaterial && (
                      <div>{t('createAd.bike.frameMaterial')}: {localizeLabel(bike.frameMaterial, currentLanguage, 'material')}</div>
                    )}
                    {bike.suspension && (
                      <div>{t('createAd.bike.suspension')}: {localizeLabel(bike.suspension, currentLanguage, 'suspension')}</div>
                    )}
                    {bike.brake && (
                      <div>{t('createAd.bike.brakes')}: {localizeLabel(bike.brake, currentLanguage, 'brake')}</div>
                    )}
                    {bike.gears && (
                      <div>{t('createAd.bike.gears')}: {localizeLabel(bike.gears, currentLanguage, 'gears')}</div>
                    )}
                    {bike.bikeType && (
                      <div>{t('createAd.bike.type')}: {localizeLabel(bike.bikeType, currentLanguage, 'bikeType')}</div>
                    )}
                    {bike.weight && (
                      <div>{t('createAd.weight')}: {localizeLabel(bike.weight, currentLanguage, 'weight')}</div>
                    )}
                  </div>
                </div>
              )}

              <Separator />

              <div className="prose max-w-none text-gray-600">
                <h3 className="text-lg font-semibold text-gray-900 mb-3">{t('createAd.description')}</h3>
                <p className="whitespace-pre-line leading-relaxed">
                  {announcement.description || t('preview.noDescription')}
                </p>
              </div>

              {/* Technical Specs Grid */}
              <div className="grid grid-cols-1 md:grid-cols-2 gap-6 pt-6">
                {/* Column 1: Product Details */}
                <div className={`space-y-4 ${isRTL ? "text-right" : ""}`}>
                   <h3 className={`text-lg font-semibold flex items-center gap-2 ${isRTL ? "flex-row-reverse justify-end" : ""}`}>
                     <Tag className="w-5 h-5 text-primary" /> {t('preview.features')}
                   </h3>
                   <dl className={`space-y-2 text-sm ${isRTL ? "text-right" : ""}`}>
                      <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                        <dt className="text-gray-500">{t('createAd.category')}</dt>
                        <dd className="font-medium">{resolvedCategoryName}</dd>
                      </div>
                      {resolvedSubcategoryName && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.subcategory') || 'Sous-catÃ©gorie'}</dt>
                          <dd className="font-medium">
                            <span className="inline-flex items-center rounded-full bg-gray-100 px-3 py-1 text-sm font-medium text-gray-600">
                              {resolvedSubcategoryName}
                            </span>
                          </dd>
                        </div>
                      )}
                      {/* Real Estate Fields */}
                      {announcement.property_type && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.propertyType')}</dt>
                          <dd className="font-medium">{translateRealEstatePropertyTypeLabel(announcement.property_type)}</dd>
                        </div>
                      )}
                      {announcement.surface && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.surface')}</dt>
                          <dd className="font-medium">{announcement.surface} mÂ²</dd>
                        </div>
                      )}
                      {announcement.rooms && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.rooms')}</dt>
                          <dd className="font-medium">F{announcement.rooms}</dd>
                        </div>
                      )}
                      {announcement.bedrooms && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.bedrooms')}</dt>
                          <dd className="font-medium">{announcement.bedrooms}</dd>
                        </div>
                      )}
                      {announcement.bathrooms && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.bathrooms')}</dt>
                          <dd className="font-medium">{announcement.bathrooms}</dd>
                        </div>
                      )}
                      {announcement.floor !== undefined && announcement.floor !== null && (
                         <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.floor')}</dt>
                          <dd className="font-medium">{announcement.floor}{announcement.total_floors ? ` / ${announcement.total_floors}` : ''}</dd>
                        </div>
                      )}
                      {announcement.capacity && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.capacity')}</dt>
                          <dd className="font-medium">{announcement.capacity} {t('createAd.units.vehicles')}</dd>
                        </div>
                      )}
                      {announcement.furnished !== undefined && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.furnished')}</dt>
                          <dd className="font-medium">{announcement.furnished ? t('createAd.yes') : t('createAd.no')}</dd>
                        </div>
                      )}
                      {announcement.payment_period && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.paymentPeriod')}</dt>
                          <dd className="font-medium">{translateByKeyCandidates([`createAd.realEstate.payment.${normalizeLookupValue(announcement.payment_period)}`], humanizeStoredValue(announcement.payment_period))}</dd>
                        </div>
                      )}
                      {announcement.zoning && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.zoning')}</dt>
                          <dd className="font-medium">{translateRealEstateZoningLabel(announcement.zoning)}</dd>
                        </div>
                      )}
                      {announcement.facades && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.facades')}</dt>
                          <dd className="font-medium">{announcement.facades} {t('createAd.units.linearMeters')}</dd>
                        </div>
                      )}
                      {announcement.with_permit && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.papers.permit')}</dt>
                          <dd className="font-medium text-green-600">{t('createAd.yes')}</dd>
                        </div>
                      )}
                      {announcement.view_type && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.view')}</dt>
                          <dd className="font-medium">{translateRealEstateViewLabel(announcement.view_type)}</dd>
                        </div>
                      )}

                      {announcement.brand && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.brand')}</dt>
                          <dd className="font-medium">{announcement.brand}</dd>
                        </div>
                      )}
                      {announcement.model && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.model')}</dt>
                          <dd className="font-medium">{announcement.model}</dd>
                        </div>
                      )}
                      {announcement.condition && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.condition')}</dt>
                          <dd className="font-medium">
                            <Badge variant="outline" className="capitalize">
                              {translateConditionLabel(announcement.condition)}
                            </Badge>
                          </dd>
                        </div>
                      )}
                      {announcement.color && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.color')}</dt>
                          <dd className="font-medium">{translateColorLabel(announcement.color)}</dd>
                        </div>
                      )}
                      {announcement.selling_reason && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">
                            {translateStaticLabel({
                              fr: 'Raison de vente',
                              en: 'Reason for selling',
                              es: 'Motivo de venta',
                              it: 'Motivo della vendita',
                              de: 'Verkaufsgrund',
                              ar: 'Ø³Ø¨Ø¨ Ø§Ù„Ø¨ÙŠØ¹',
                            })}
                          </dt>
                          <dd className="font-medium">{translateFreeValueLabel(announcement.selling_reason, 'sellingReason')}</dd>
                        </div>
                      )}
                      {announcement.packaging_info && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">
                            {translateStaticLabel({
                              fr: 'Emballage',
                              en: 'Packaging',
                              es: 'Embalaje',
                              it: 'Imballaggio',
                              de: 'Verpackung',
                              ar: 'Ø§Ù„ØªØºÙ„ÙŠÙ',
                            })}
                          </dt>
                          <dd className="font-medium">{translateFreeValueLabel(announcement.packaging_info, 'packaging')}</dd>
                        </div>
                      )}
                      {!isVehicleCategory && announcement.purchase_year && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.purchaseYear') || "AnnÃ©e d'achat/fabrication"}</dt>
                          <dd className="font-medium">{announcement.purchase_year}</dd>
                        </div>
                      )}
                      
                      {/* Vehicle Specific Details */}
                      {vehicle.year != null && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.vehicle.year') || 'AnnÃ©e de mise en circulation'}</dt>
                          <dd className="font-medium">{vehicle.year}</dd>
                        </div>
                      )}
                      {isVehicleCategory && purchaseYearForDisplay != null && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.purchaseYear') || "AnnÃ©e d'achat/fabrication"}</dt>
                          <dd className="font-medium">{purchaseYearForDisplay}</dd>
                        </div>
                      )}
                      {vehicle.fuel && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.vehicle.fuel') || 'Carburant'}</dt>
                          <dd className="font-medium">{translateVehicleFuelLabel(vehicle.fuel)}</dd>
                        </div>
                      )}
                      {vehicle.transmission && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.vehicle.gearbox') || 'BoÃ®te de vitesse'}</dt>
                          <dd className="font-medium">{translateGearboxLabel(vehicle.transmission)}</dd>
                        </div>
                      )}
                      {typeof vehicle.mileage === "number" && Number.isFinite(vehicle.mileage) && vehicle.mileage > 0 && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.vehicle.mileage') || 'KilomÃ©trage'}</dt>
                          <dd className="font-medium">{vehicle.mileage.toLocaleString()} km</dd>
                        </div>
                      )}
                      {vehicle.version && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.vehicle.version') || 'Version'}</dt>
                          <dd className="font-medium">{vehicle.version}</dd>
                        </div>
                      )}
                      {vehicle.fiscalPower && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.vehicle.fiscalPower') || 'Puissance fiscale (CV)'}</dt>
                          <dd className="font-medium">{vehicle.fiscalPower}</dd>
                        </div>
                      )}
                      {typeof vehicle.technicalControl === 'boolean' && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.vehicle.technicalControl') || 'ContrÃ´le technique'}</dt>
                          <dd className={`font-medium ${vehicle.technicalControl ? 'text-green-600' : 'text-amber-700'}`}>
                            {vehicle.technicalControl
                              ? (t('createAd.vehicle.technicalControl.valid') || 'Claire Ã  100%')
                              : (t('createAd.vehicle.technicalControl.invalid') || 'Pas claire / Ã€ prÃ©voir')}
                          </dd>
                        </div>
                      )}
                      {typeof vehicle.greyCardCrossed === 'boolean' && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.vehicle.greyCard') || 'Carte grise barrÃ©e'}</dt>
                          <dd className={`font-medium ${vehicle.greyCardCrossed ? 'text-amber-700' : 'text-green-600'}`}>
                            {vehicle.greyCardCrossed
                              ? (t('createAd.vehicle.greyCard.crossed') || 'BarrÃ©e')
                              : (t('createAd.vehicle.greyCard.clear') || 'Claire Ã  100% (Non barrÃ©e)')}
                          </dd>
                        </div>
                      )}
                      {vehicle.equipment && vehicle.equipment.length > 0 && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.vehicle.options') || 'Ã‰quipements et options'}</dt>
                          <dd className="font-medium">{vehicle.equipment.map((item) => translateFreeValueLabel(item, 'equipment')).join(', ')}</dd>
                        </div>
                      )}
                      {announcement.engine && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.engine') || 'Moteur'}</dt>
                          <dd className="font-medium">{announcement.engine}</dd>
                        </div>
                      )}
                      {announcement.type && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.type', isRTL ? 'Ø§Ù„Ù†ÙˆØ¹' : 'Type')}</dt>
                          <dd className="font-medium">
                            {isVehicleCategory
                              ? translateVehicleDictionaryValue("type", announcement.type)
                              : translateAnnouncementTypeLabel(announcement.type)}
                          </dd>
                        </div>
                      )}
                      {announcement.papers && announcement.papers.length > 0 && typeof announcement.papers[0] === 'string' && (
                         <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.documents', isRTL ? 'Ø§Ù„ÙˆØ«Ø§Ø¦Ù‚' : 'Documents')}</dt>
                          <dd className="font-medium">
                            {Array.isArray(announcement.papers)
                              ? announcement.papers.map(formatDocumentLabel).filter(Boolean).join(', ')
                              : formatDocumentLabel(String(announcement.papers))}
                          </dd>
                        </div>
                      )}
                   </dl>
                </div>

                {/* Column 2: Logistics & Extras */}
                <div className={`space-y-4 ${isRTL ? "text-right" : ""}`}>
                   <h3 className={`text-lg font-semibold flex items-center gap-2 ${isRTL ? "flex-row-reverse justify-end" : ""}`}>
                     <Info className="w-5 h-5 text-blue-500" /> {t('createAd.details')}
                   </h3>
                   <dl className={`space-y-2 text-sm ${isRTL ? "text-right" : ""}`}>
                      {(typeof announcement.delivery_available === 'boolean' ||
                        (typeof announcement.delivery_location_name === 'string' &&
                          announcement.delivery_location_name.trim() !== '')) && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.delivery')}</dt>
                          <dd className="font-medium">
                            {(() => {
                              const raw = announcement.delivery_location_name;
                              if (typeof raw === 'string' && raw.trim().startsWith('{')) {
                                try {
                                  const parsed = JSON.parse(raw);
                                  const method = typeof parsed?.method === 'string' ? parsed.method : null;
                                  const agencyName = typeof parsed?.agencyName === 'string' ? parsed.agencyName : null;
                                  if (method === 'hand_to_hand') {
                                    return <span className="text-gray-700">{t('createAd.delivery.methods.handToHand') || 'Remise en main propre'}</span>;
                                  }
                                  if (method === 'delivery_agency') {
                                    return (
                                      <span className="text-green-700">
                                        {t('createAd.delivery.methods.deliveryAgency') || 'Agence de livraison'}
                                        {agencyName ? ` - ${agencyName}` : ''}
                                      </span>
                                    );
                                  }
                                  if (method === 'mobile_courier') {
                                    return <span className="text-green-700">{t('createAd.delivery.methods.mobileCourier') || 'Livreur ambulant'}</span>;
                                  }
                                } catch (error) {
                                  logger.error('Error parsing delivery data:', error);
                                }
                              }

                              if (announcement.delivery_available) {
                                return (
                                  <span className={`text-green-600 flex items-center gap-1 ${isRTL ? "flex-row-reverse justify-end" : ""}`}>
                                    <Truck className="w-3 h-3" /> {t('createAd.available')}
                                  </span>
                                );
                              }
                              return <span className="text-gray-500">{t('createAd.unavailable')}</span>;
                            })()}
                          </dd>
                        </div>
                      )}
                      {announcement.has_invoice && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.invoice')}</dt>
                          <dd className="font-medium text-green-600">{t('createAd.available')}</dd>
                        </div>
                      )}
                      {announcement.warranty_duration && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.warranty')}</dt>
                          <dd className={`font-medium flex items-center gap-1 ${isRTL ? "flex-row-reverse justify-end" : ""}`}>
                            <ShieldCheck className="w-3 h-3 text-green-600" /> {announcement.warranty_duration}
                          </dd>
                        </div>
                      )}
                      {announcement.exchange_possible && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.exchange')}</dt>
                          <dd className="font-medium text-blue-600">{t('createAd.accepted')}</dd>
                        </div>
                      )}
                   </dl>
                </div>
              </div>

              {/* Real Estate Amenities & Papers */}
              {(announcement.specifications?.length > 0 || announcement.papers?.length > 0) && (
                <div className="pt-6 border-t border-gray-100">
                  <h3 className={`text-lg font-semibold mb-3 flex items-center gap-2 ${isRTL ? "flex-row-reverse justify-end text-right" : ""}`}>
                    <Home className="w-5 h-5 text-primary" /> {t('createAd.amenitiesAndDocuments')}
                  </h3>
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                    {announcement.specifications && announcement.specifications.length > 0 && (
                      <div className={`bg-gray-50 p-3 rounded-lg ${isRTL ? "text-right" : ""}`}>
                        <span className="block text-xs text-gray-500 mb-2 font-medium">{t('createAd.amenities')}</span>
                        <div className="flex flex-wrap gap-2">
                          {announcement.specifications.map((spec, idx) => (
                            <Badge key={idx} variant="outline" className="bg-white text-gray-700 border-gray-200">
                              {translateRealEstateSpecificationLabel(spec)}
                            </Badge>
                          ))}
                        </div>
                      </div>
                    )}
                    {announcement.papers && announcement.papers.length > 0 && (
                      <div className={`bg-gray-50 p-3 rounded-lg ${isRTL ? "text-right" : ""}`}>
                        <span className="block text-xs text-gray-500 mb-2 font-medium">{t('createAd.documents')}</span>
                        <div className="flex flex-wrap gap-2">
                          {announcement.papers.map((paper, idx) => (
                            <Badge key={idx} variant="outline" className="bg-white text-gray-700 border-gray-200">
                              {translateFreeValueLabel(paper, 'document')}
                            </Badge>
                          ))}
                        </div>
                      </div>
                    )}
                  </div>
                </div>
              )}

              {/* Accessories & Dimensions if available */}
              {(announcement.included_accessories || announcement.dimensions || announcement.weight) && (
                <div className="pt-6 border-t border-gray-100">
                  <h3 className={`text-lg font-semibold mb-3 ${isRTL ? "text-right" : ""}`}>{t('createAd.moreInfo')}</h3>
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                    {announcement.included_accessories && announcement.included_accessories.length > 0 && (
                      <div className={`bg-gray-50 p-3 rounded-lg ${isRTL ? "text-right" : ""}`}>
                        <span className={`block text-xs text-gray-500 mb-1 flex items-center gap-1 ${isRTL ? "flex-row-reverse justify-end" : ""}`}><Package className="w-3 h-3" /> {t('createAd.includedAccessories')}</span>
                        <div className="flex flex-wrap gap-2">
                              {announcement.included_accessories.map((acc, idx) => (
                            <Badge key={idx} variant="secondary" className="bg-white text-gray-700 border-gray-200">
                                  {translateFreeValueLabel(acc, 'accessory')}
                            </Badge>
                          ))}
                        </div>
                      </div>
                    )}
                    {(announcement.dimensions || announcement.weight) && (
                      <div className={`bg-gray-50 p-3 rounded-lg ${isRTL ? "text-right" : ""}`}>
                        <span className={`block text-xs text-gray-500 mb-1 flex items-center gap-1 ${isRTL ? "flex-row-reverse justify-end" : ""}`}><Ruler className="w-3 h-3" /> {t('createAd.dimensionsAndWeight')}</span>
                        <div className="text-sm font-medium">
                          {announcement.dimensions && <div>{t('createAd.dimensions')}: {announcement.dimensions}</div>}
                          {announcement.weight && <div>{t('createAd.weight')}: {announcement.weight}</div>}
                        </div>
                      </div>
                    )}
                  </div>
                </div>
              )}

            </div>
            
          </div>

          {/* RIGHT COLUMN - Sticky Price Card & Seller Info */}
          <div className="space-y-6">
            
            {/* Price Card */}
            <div 
              className="hidden md:block relative overflow-hidden transition-all duration-300 rounded-[24px] p-6 sticky top-24"
              style={{
                background: 'linear-gradient(145deg, #ffffff, #e6e6e6)',
                boxShadow: '12px 12px 24px #a3a3a3, -12px -12px 24px #ffffff',
                border: '1px solid rgba(255,255,255,0.6)'
              }}
            >
              <div className="hidden dark:block absolute inset-0 bg-slate-800 rounded-[24px]" 
                   style={{
                     background: 'linear-gradient(145deg, #1e293b, #0f172a)',
                     boxShadow: '8px 8px 16px #0b1120, -8px -8px 16px #334155'
                   }}
              />
              <div className="relative z-10 space-y-6">
                <div className="flex justify-between items-start">
                   <div>
                     <p className="text-sm text-muted-foreground mb-1">{t('createAd.price')}</p>
                     <div className="text-4xl font-bold text-primary">
                       {formatPrice(announcement.price, announcement.currency)}
                     </div>
                     {announcement.is_negotiable && (
                       <Badge variant="secondary" className="mt-2 bg-blue-50 text-blue-700 hover:bg-blue-100">
                         {t('createAd.priceNegotiable')}
                       </Badge>
                     )}
                   </div>
                </div>

                <div className="space-y-4">
                  {announcement.original_price && announcement.price && announcement.original_price > announcement.price && (
                     <div className="text-sm text-muted-foreground line-through">
                       {t('createAd.originalPrice')}: {formatPrice(announcement.original_price, announcement.currency)}
                     </div>
                  )}

                  <div className="flex flex-col gap-3 w-full">
                    <SecureContactButton
                        announcementId={id ?? ''}
                        phoneNumberMasked={announcement.phone_number_masked || announcement.phoneNumber}
                        requiresAuthForContact={announcement.requires_auth_for_contact || false}
                        className="w-full py-6 text-lg font-semibold shadow-md transition-all hover:scale-[1.02]"
                    />
                    
                    <Button 
                      onClick={handleWhatsAppClick}
                      disabled={!whatsappNumber}
                      className="w-full py-6 text-lg font-semibold bg-[#25D366] hover:bg-[#22C35E] text-white border-none shadow-md transition-all hover:scale-[1.02] disabled:opacity-50 disabled:hover:scale-100"
                    >
                      <MessageCircle className="w-5 h-5 mr-2" />
                      WhatsApp
                    </Button>

                    <Button 
                      onClick={handleContactClick}
                      variant="outline"
                      className="w-full py-6 text-lg font-semibold border-2 border-primary/20 hover:border-primary/50 hover:bg-primary/5 transition-all hover:scale-[1.02]"
                    >
                      <MessageCircle className="w-5 h-5 mr-2" />
                      {t('common.sendMessage')}
                    </Button>
                  </div>

                  <div className="text-xs text-center text-muted-foreground flex items-center justify-center gap-1 mt-2">
                    <ShieldCheck className="w-3 h-3" /> {t('createAd.securityDisclaimer')}
                  </div>
                </div>
              </div>
            </div>

            {/* Seller Info Card */}
            <div 
              className="relative overflow-hidden transition-all duration-300 rounded-[24px] p-6"
              style={{
                background: 'linear-gradient(145deg, #ffffff, #e6e6e6)',
                boxShadow: '12px 12px 24px #a3a3a3, -12px -12px 24px #ffffff',
                border: '1px solid rgba(255,255,255,0.6)'
              }}
            >
              <div className="hidden dark:block absolute inset-0 bg-slate-800 rounded-[24px]" 
                   style={{
                     background: 'linear-gradient(145deg, #1e293b, #0f172a)',
                     boxShadow: '8px 8px 16px #0b1120, -8px -8px 16px #334155'
                   }}
              />
              <div className="relative z-10">
                <h3 className="text-lg font-bold flex items-center gap-2 mb-6 text-gray-900 dark:text-white">
                  <User className="w-5 h-5" /> {t('createAd.sellerInfo')}
                </h3>

                <div className="space-y-6">
                  <div className="flex items-center gap-4">
                     <AvatarDisplay
                        src={sellerProfile?.avatar_url}
                        alt={sellerProfile?.first_name || t('createAd.seller')}
                        fallback={sellerProfile?.first_name ? sellerProfile.first_name.charAt(0).toUpperCase() : (announcement.shopName ? announcement.shopName.charAt(0).toUpperCase() : t('createAd.user').charAt(0).toUpperCase())}
                        size="lg"
                        className="w-16 h-16 border-2 border-gray-100"
                     />
                     <div>
                       <div className="font-bold text-lg">
                          {sellerProfile?.first_name ? `${sellerProfile.first_name} ${sellerProfile.last_name || ''}`.trim() : (announcement.shopName || t('createAd.user'))}
                       </div>
                       {announcement.isProfessional ? (
                         <Badge variant="outline" className="text-xs border-blue-200 text-blue-700 bg-blue-50 mt-1">
                           {t('createAd.professional')}
                         </Badge>
                       ) : (
                          <span className="text-xs text-gray-500 block mt-1">{t('createAd.individual')}</span>
                       )}
                       
                       {sellerProfile?.created_at && (
                         <div className="flex items-center gap-1 text-xs text-muted-foreground mt-1">
                           <Clock className="w-3 h-3" />
                           {t('createAd.memberSince')} {new Date(sellerProfile.created_at).getFullYear()}
                         </div>
                       )}
                     </div>
                  </div>

                  <div className="space-y-3 pt-2 border-t border-gray-50">
                    {(sellerProfile?.wilaya || sellerProfile?.commune) && (
                      <div className="flex items-center gap-2 text-sm text-gray-600">
                        <MapPin className="w-4 h-4 text-gray-400" />
                        {sellerProfile.commune ? `${sellerProfile.commune}, ` : ''}{sellerProfile.wilaya}
                      </div>
                    )}
                    
                    {sellerProfile?.public_user_id && (
                       <div className="flex items-center justify-between bg-gray-50 p-3 rounded-lg">
                         <span className="text-xs text-muted-foreground">{t('createAd.sellerId')}</span>
                         <code className="text-sm font-mono font-bold text-primary">#{sellerProfile.public_user_id}</code>
                       </div>
                    )}
                  </div>
                  
                  {/* Booking Button — only for service announcements with booking enabled */}
                  {(announcement as Record<string, unknown>)?.booking_enabled && (
                    <Button
                      className="w-full gap-2 bg-gradient-to-r from-primary to-primary/80 hover:from-primary/90 hover:to-primary/70 text-white shadow-md"
                      onClick={() => {
                        if (!user) {
                          window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'login' }));
                          return;
                        }
                        setShowBookingModal(true);
                      }}
                    >
                      <Calendar className="w-4 h-4" />
                      📅 Réserver un créneau
                    </Button>
                  )}

                  <Button variant="outline" className="w-full gap-2">
                    <ExternalLink className="w-4 h-4" />
                    {t('createAd.viewOtherAds')}
                  </Button>
                </div>
              </div>
            </div>

            {/* Safety Tips */}
            <div 
              className="relative overflow-hidden transition-all duration-300 rounded-[24px] p-6"
              style={{
                background: 'linear-gradient(145deg, #ffffff, #e6e6e6)',
                boxShadow: '12px 12px 24px #a3a3a3, -12px -12px 24px #ffffff',
                border: '1px solid rgba(255,255,255,0.6)'
              }}
            >
              <div className="hidden dark:block absolute inset-0 bg-slate-800 rounded-[24px]" 
                   style={{
                     background: 'linear-gradient(145deg, #1e293b, #0f172a)',
                     boxShadow: '8px 8px 16px #0b1120, -8px -8px 16px #334155'
                   }}
              />
              <div className="relative z-10">
                <h3 className="text-base font-bold text-orange-800 flex items-center gap-2 mb-4">
                  <ShieldAlert className="w-5 h-5" /> {t('createAd.securityTips.title')}
                </h3>
                <ul className="text-sm text-orange-700 space-y-2 list-disc pl-4">
                  <li>{t('createAd.securityTips.1')}</li>
                  <li>{t('createAd.securityTips.2')}</li>
                  <li>{t('createAd.securityTips.3')}</li>
                  <li>{t('createAd.securityTips.4')}</li>
                </ul>
              </div>
            </div>

          </div>

        </div>

        {/* Similar Announcements Section */}
        {similarAnnouncements.length > 0 && (
          <div className="mt-12 border-t border-gray-200 pt-8">
            <h3 className="text-2xl font-bold text-gray-900 mb-6">{t('createAd.similarAds')}</h3>
            <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
              {similarAnnouncements.map((item) => (
                <AnnouncementCard 
                  key={item.id} 
                  announcement={item} 
                  variant="compact"
                  onView={(a) => window.location.href = getLocalizedPath(`/annonce/${a.id}`)}
                />
              ))}
            </div>
          </div>
        )}

      </div>

      {/* Mobile Sticky Action Bar */}
      <div className="fixed bottom-0 left-0 right-0 p-4 bg-white border-t border-gray-200 z-50 md:hidden shadow-[0_-4px_6px_-1px_rgba(0,0,0,0.1)]">
        <div className="flex items-center justify-between gap-4 max-w-md mx-auto">
          <div className="flex flex-col">
            <span className="text-xs text-gray-500">{t('createAd.price')}</span>
            <span className="text-xl font-bold text-primary">{formatPrice(announcement.price, announcement.currency)}</span>
          </div>
          <div className="flex-1 flex gap-2">
            <SecureContactButton
                announcementId={id ?? ''}
                phoneNumberMasked={announcement.phone_number_masked || announcement.phoneNumber}
                requiresAuthForContact={announcement.requires_auth_for_contact || false}
                className="w-full"
            />
            <Button 
              onClick={handleWhatsAppClick}
              variant="outline"
              size="icon"
              disabled={!whatsappNumber}
              className="h-full w-12 border-2 border-[#25D366]/30 text-[#25D366] disabled:opacity-50"
            >
              <MessageCircle className="w-5 h-5" />
            </Button>
            <Button 
              onClick={handleContactClick}
              variant="outline"
              size="icon"
              className="h-full w-12 border-2 border-primary/20 text-primary"
            >
              <MessageCircle className="w-5 h-5" />
            </Button>
          </div>
        </div>
      </div>

      <AnnouncementContactModal 
        announcement={showContactModal ? announcement : null}
        onClose={() => setShowContactModal(false)}
      />

      {announcement && (
        <BookingModal
          open={showBookingModal}
          onOpenChange={setShowBookingModal}
          announcementId={announcement.id}
          announcementTitle={announcement.title}
          announcementPrice={announcement.price}
        />
      )}
    </div>
  );
};

export default AnnouncementDetailsPage;

