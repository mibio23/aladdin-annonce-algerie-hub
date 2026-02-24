import React, { useEffect, useState } from "react";
import { useParams, Navigate, Link } from "react-router-dom";
import { MapPin, Calendar, Heart, Share2, Flag, Truck, ShieldCheck, Package, Info, Tag, Ruler, Clock, User, ShieldAlert, ExternalLink, Eye, Home, MessageCircle } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import AvatarDisplay from "@/components/avatar/AvatarDisplay";
import ModernImageGallery from "@/components/announcements/ModernImageGallery";
import SecureContactButton from "@/components/contact/SecureContactButton";
import AnnouncementContactModal from "@/components/announcements/AnnouncementContactModal";
import AnnouncementCard from "@/components/announcements/AnnouncementCard";
import { Announcement as AnnouncementType } from "@/hooks/useAnnouncements";
import { useToast } from "@/hooks/use-toast";
import ReviewsSection from "@/components/reviews/ReviewsSection";
import { Announcement } from "@/data/types/homePageTypes";
import { logger } from '@/utils/silentLogger';
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { supabase } from '@/integrations/supabase/client';
import { Separator } from "@/components/ui/separator";
import { CATEGORIES } from "@/data/categories";
import { getCategoryMenu } from "@/data/megaMenu/categoryMenu";
import { useLanguageNavigation } from "@/hooks/useLanguageNavigation";
import { Breadcrumb, BreadcrumbItem, BreadcrumbLink, BreadcrumbList, BreadcrumbPage, BreadcrumbSeparator } from "@/components/ui/breadcrumb";
import { mockVehicleAnnouncements } from '@/data/mock/vehicleAnnouncements';
import { vehicleDictionary } from "@/data/search/vehicleDictionary";
import { generalAnnouncements } from '@/data/mock/generalAnnouncements';
import ReportModal from "@/components/common/ReportModal";
import { useSecureContact } from "@/hooks/useSecureContact";

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
  const { t, language: currentLanguage } = useSafeI18nWithRouter();
  const { getSecureAnnouncementDetails } = useSecureContact();
  const isRTL = currentLanguage === 'ar';
  const { getLocalizedPath } = useLanguageNavigation();
  const [showContactModal, setShowContactModal] = useState(false);
  const [showReportModal, setShowReportModal] = useState(false);
  const [announcement, setAnnouncement] = useState<DetailedAnnouncement | null>(null);
  const [loading, setLoading] = useState(true);
  const [sellerProfile, setSellerProfile] = useState<SellerProfile | null>(null);
  const [similarAnnouncements, setSimilarAnnouncements] = useState<AnnouncementType[]>([]);
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
    const fetchAnnouncement = async () => {
      if (!id) return;
      
      setLoading(true);

      try {
        const applyVehicleMock = (mockAnnouncement: (typeof mockVehicleAnnouncements)[number]) => {
          const mergedData: DetailedAnnouncement = {
            ...mockAnnouncement,
            ...mockAnnouncement.vehicleDetails,
            papers: mockAnnouncement.vehicleDetails.paper ? [mockAnnouncement.vehicleDetails.paper] : [],
            purchase_year: mockAnnouncement.vehicleDetails.year,
            category: "Véhicules",
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

          const similar = mockVehicleAnnouncements
            .filter((a) => a.id !== id && a.category_id === mockAnnouncement.category_id)
            .slice(0, 3)
            .map((item) => ({
              ...item,
              categories: { name: "Véhicules", slug: "vehicules" },
              contact_phone: item.contact_phone || '',
              contact_email: item.contact_email || ''
            }));
          setSimilarAnnouncements(similar);
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
            views_count: mockAnn.views_count || Math.floor(Math.random() * 500),
            currency: mockAnn.currency || "DZD",
            condition: mockAnn.condition || "good",
            isProfessional: mockAnn.isProfessional || false,
            // Pass through all extra fields for characteristics
            brand: mockAnn.brand,
            model: mockAnn.model,
            color: mockAnn.color,
            purchase_year: mockAnn.purchase_year,
            property_type: mockAnn.property_type,
            surface: mockAnn.surface,
            rooms: mockAnn.rooms,
            bedrooms: mockAnn.bedrooms,
            bathrooms: mockAnn.bathrooms,
            floor: mockAnn.floor,
            total_floors: mockAnn.total_floors,
            furnished: mockAnn.furnished,
            capacity: mockAnn.capacity,
            zoning: mockAnn.zoning,
            facades: mockAnn.facades,
            view_type: mockAnn.view_type,
            with_permit: mockAnn.with_permit,
            payment_period: mockAnn.payment_period,
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

          const similar = generalAnnouncements
            .filter((a) => a.id !== mockAnn.id && a.categorySlug === mockAnn.categorySlug)
            .slice(0, 3)
            .map((item) => ({
              id: item.id,
              title: item.title,
              price: item.price,
              category_id: item.categorySlug,
              condition: 'good',
              images: item.imageUrls,
              location: item.location,
              wilaya: item.location,
              created_at: item.date,
              is_active: true,
              is_featured: item.isFeatured,
              is_urgent: item.isUrgent,
              currency: 'DZD',
              categories: { name: item.category, slug: item.categorySlug }
            }));
          setSimilarAnnouncements(similar as any);
        };

        const { data: announcementData, error } = await supabase
          .from('announcements')
          .select('*, real_estate_details(*), vehicle_details(*)')
          .eq('id', id)
          .maybeSingle();

        if (error || !announcementData) {
          // Check vehicle mocks
          const vehicleMock = mockVehicleAnnouncements.find(a => a.id === id);
          if (vehicleMock) {
            applyVehicleMock(vehicleMock);
            return;
          }
          
          // Check general mocks
          const generalMock = generalAnnouncements.find(a => a.id === id);
          if (generalMock) {
            applyGeneralMock(generalMock);
            return;
          }

          if (error) throw error;
          setAnnouncement(null);
          return;
        }

        // Extract details
        const realEstateDetails = Array.isArray(announcementData.real_estate_details) 
          ? announcementData.real_estate_details[0] 
          : announcementData.real_estate_details;
          
        const vehicleDetails = Array.isArray(announcementData.vehicle_details)
          ? announcementData.vehicle_details[0]
          : announcementData.vehicle_details;

        // Helper to get category name
        const categoryObj = CATEGORIES.find(c => c.id === announcementData.category_id);
        const translationKey = `categories.${announcementData.category_id}`;
        const translated = t(translationKey);
        const categoryName = translated !== translationKey ? translated : (categoryObj?.name || announcementData.category_id || t('createAd.category'));
        
        const mergedData: DetailedAnnouncement = {
          ...announcementData,
          ...realEstateDetails,
          ...vehicleDetails,
          views_count: (announcementData as any).views_count ?? (announcementData as any).view_count ?? 0,
          // Map legacy fields if needed
          category: categoryName,
          subcategory: announcementData.subcategory_id || '', // ID as fallback since we don't have easy name lookup yet
          imageUrl: announcementData.image_url,
          imageUrls: announcementData.image_urls || (announcementData.image_url ? [announcementData.image_url] : []),
          isOnline: announcementData.status === 'active',
          isFeatured: announcementData.is_featured,
          isUrgent: announcementData.is_urgent,
          isProfessional: false,
          shopName: announcementData.shop_name,
          phoneNumber: announcementData.phone_number,
          phone_number_masked: announcementData.phone_number,
          requires_auth_for_contact: false
        } as unknown as DetailedAnnouncement;

        setAnnouncement(mergedData);

        const viewKey = `viewed_announcement_${id}`;
        if (!sessionStorage.getItem(viewKey)) {
          sessionStorage.setItem(viewKey, '1');
          try {
            await supabase.rpc('increment_view_count', { announcement_uuid: id });
            setAnnouncement((prev) =>
              prev
                ? {
                    ...prev,
                    views_count: (prev.views_count ?? 0) + 1,
                  }
                : prev
            );
          } catch (err) {
            logger.error('Error incrementing announcement view count:', err);
          }
        }

        // 3. Fetch Seller Public ID and Profile Info
        if (announcementData.user_id) {
          const { data: profileData } = await supabase
            .from('profiles')
            .select('public_user_id, first_name, last_name, avatar_url, created_at, wilaya, commune')
            .eq('user_id', announcementData.user_id)
            .single();
            
          if (profileData) {
            setSellerProfile(profileData);
          }
        }

        // 4. Fetch Similar Announcements
        if (announcementData.category_id) {
          const { data: similarData } = await supabase
            .from('announcements')
            .select('*')
            .eq('category_id', announcementData.category_id)
            .neq('id', id)
            .limit(3);

          if (similarData) {
            // Fetch profiles for similar announcements
            const userIds = [...new Set(similarData.map((item: any) => item.user_id).filter(Boolean))];
            const profilesMap: Record<string, any> = {};
            
            if (userIds.length > 0) {
              const { data: profilesData } = await supabase
                .from('profiles')
                .select('user_id, first_name, last_name, avatar_url')
                .in('user_id', userIds);
                
              if (profilesData) {
                profilesData.forEach(p => {
                  profilesMap[p.user_id] = p;
                });
              }
            }

             const mappedSimilar: AnnouncementType[] = similarData.map((item: any) => {
              const profile = profilesMap[item.user_id];
              return {
                id: item.id,
                title: item.title,
                description: item.description || '',
                price: item.price || 0,
                category_id: item.category_id,
                condition: item.condition || 'good',
                images: item.image_urls || (item.image_url ? [item.image_url] : []),
                location: item.wilaya || '',
                wilaya: item.wilaya || '',
                contact_phone: '', // Protected
                contact_email: '',
                user_id: item.user_id,
                created_at: item.created_at,
                updated_at: item.updated_at,
                is_active: item.status === 'active',
                is_featured: item.is_featured,
                is_urgent: item.is_urgent,
                views_count: item.view_count || 0,
                currency: item.currency || 'DZD',
                expires_at: item.expires_at,
                delivery_options: [],
                categories: {
                  name: (() => {
                    const key = `categories.${item.category_id}`;
                    const translated = t(key);
                    return translated !== key ? translated : (CATEGORIES.find(c => c.id === item.category_id)?.name || t('createAd.category'));
                  })(),
                  slug: item.category_id
                },
                profiles: profile ? {
                  full_name: profile.first_name ? `${profile.first_name} ${profile.last_name || ''}`.trim() : t('createAd.user'),
                  id: profile.user_id,
                  avatar_url: profile.avatar_url
                } : undefined
              };
            });
            setSimilarAnnouncements(mappedSimilar);
          }
        }

      } catch (error) {
        logger.error("Error fetching announcement details:", error);
        toast({
          title: t('common.error'),
          description: "Impossible de charger les détails de l'annonce",
          variant: "destructive"
        });
      } finally {
        setLoading(false);
      }
    };

    fetchAnnouncement();
  }, [id, getSecureAnnouncementDetails, t, toast]);

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
      return isRTL ? 'البطاقة الرمادية مشطوبة' : raw;
    }
    if (normalized.includes('carte grise')) {
      return isRTL ? 'البطاقة الرمادية' : raw;
    }
    if (normalized.includes('facture')) {
      return t('createAd.invoice', isRTL ? 'فاتورة' : raw);
    }
    if (normalized.includes('credit') || normalized.includes('credit')) {
      return t('createAd.papers.credit', isRTL ? 'قرض' : raw);
    }

    return translateVehicleDictionaryValue("paper", raw);
  };

  const handleFavoriteClick = () => {
    toast({
      title: t('createAd.favorites.added'),
      description: t('createAd.favorites.addedDesc'),
    });
  };

  const handleShareClick = () => {
    navigator.clipboard.writeText(window.location.href);
    toast({
      title: t('createAd.share.copied'),
      description: t('createAd.share.copiedDesc'),
    });
  };

  const formatPrice = (price: number | null | undefined, currency: string = 'DZD') => {
    if (price === null || price === undefined) return t('createAd.priceNegotiable');
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

  const localizeLabel = (s: string | undefined, language: string, kind?: string) => {
    if (!s) return s as any;
    let r = String(s);
    if (language === 'ar') {
      r = r.replace(/\bGB\b|\bGo\b/gi, 'غيغابايت');
      r = r.replace(/\bTB\b|\bTo\b/gi, 'تيرابايت');
      r = r.replace(/\bHz\b/gi, 'هرتز');
      r = r.replace(/(\d{1,2}(?:\.\d)?)"/g, '$1 بوصة');
      r = r.replace(/\bcarbone\b|carbon/gi, 'كربون');
      r = r.replace(/\baluminium\b|alu/gi, 'ألمنيوم');
      r = r.replace(/\bacier\b|steel/gi, 'فولاذ');
      r = r.replace(/\bfull[- ]?suspension\b|tout\s?suspendu|full/gi, 'تعليق كامل');
      r = r.replace(/\bsemi[- ]?rigide\b|hardtail/gi, 'تعليق أمامي فقط');
      r = r.replace(/\bdisque\b|disc/gi, 'قرصي');
      r = r.replace(/\bhydraulique\b/gi, 'هيدروليك');
      r = r.replace(/\bv[- ]?brake\b|patins/gi, 'حذوة');
      r = r.replace(/\bkg\b/gi, 'كلغ');
      if (kind === 'gears') {
        const m = r.match(/^\d{1,2}$/);
        if (m) r = `${m[0]} سرعات`;
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

  const pickAttributeValue = (attributes: any, candidateKeys: string[]) => {
    if (!attributes || typeof attributes !== "object") return undefined;
    const normalizedCandidates = candidateKeys.map(normalizeKey).filter(Boolean);
    const exact = new Set(normalizedCandidates);

    for (const [rawKey, rawValue] of Object.entries(attributes)) {
      const nk = normalizeKey(rawKey);
      if (!exact.has(nk)) continue;
      if (Array.isArray(rawValue)) return rawValue.length ? rawValue[0] : undefined;
      return rawValue as any;
    }

    for (const [rawKey, rawValue] of Object.entries(attributes)) {
      const nk = normalizeKey(rawKey);
      if (!nk) continue;
      const matches = normalizedCandidates.some((c) => (c.length >= 4 ? nk.includes(c) || c.includes(nk) : nk === c));
      if (!matches) continue;
      if (Array.isArray(rawValue)) return rawValue.length ? rawValue[0] : undefined;
      return rawValue as any;
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
      toNumberOrUndefined(pickAttributeValue(attrs, ["year", "annee", "année", "an", "vehicle_year"]));

    const fuel =
      (typeof a?.fuel === "string" ? a.fuel : undefined) ??
      (typeof a?.fuel_type === "string" ? a.fuel_type : undefined) ??
      (typeof pickAttributeValue(attrs, ["fuel", "fuel_type", "carburant", "energie", "énergie", "carburant_energie", "energie_carburant"]) ===
      "string"
        ? (pickAttributeValue(attrs, ["fuel", "fuel_type", "carburant", "energie", "énergie", "carburant_energie", "energie_carburant"]) as string)
        : undefined);

    const transmission =
      (typeof a?.transmission === "string" ? a.transmission : undefined) ??
      (typeof a?.gearbox === "string" ? a.gearbox : undefined) ??
      (typeof pickAttributeValue(attrs, ["gearbox", "transmission", "boite", "boite_de_vitesse", "boite_de_vitesses", "boîte"]) ===
      "string"
        ? (pickAttributeValue(attrs, ["gearbox", "transmission", "boite", "boite_de_vitesse", "boite_de_vitesses", "boîte"]) as string)
        : undefined);

    const mileage =
      (typeof a?.mileage === "number" ? a.mileage : undefined) ??
      toNumberOrUndefined(pickAttributeValue(attrs, ["mileage", "kilometrage", "kilométrage", "km", "distance"]));

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
      toBooleanOrUndefined(pickAttributeValue(attrs, ["technical_control", "controle_technique", "contrôle_technique"]));

    const greyCardCrossed =
      (typeof a?.grey_card_crossed === "boolean" ? a.grey_card_crossed : undefined) ??
      toBooleanOrUndefined(a?.grey_card_crossed) ??
      toBooleanOrUndefined(pickAttributeValue(attrs, ["grey_card_crossed", "carte_grise_barree", "carte_grise_barrée"]));

    const equipment =
      toStringArrayOrUndefined(a?.equipment) ??
      toStringArrayOrUndefined(pickAttributeValue(attrs, ["equipment", "equipement", "équipement", "options", "equipements"]));

    const purchaseYear =
      (typeof a?.purchase_year === "number" ? a.purchase_year : undefined) ??
      toNumberOrUndefined(
        pickAttributeValue(attrs, [
          "purchase_year",
          "purchaseYear",
          "annee_achat",
          "année_achat",
          "annee_dachat",
          "année_dachat",
          "annee_fabrication",
          "année_fabrication",
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
      (typeof pickAttributeValue(attrs, ["frame_size","taille_cadre","cadre","مقاس_الإطار","الإطار"]) === "string"
        ? (pickAttributeValue(attrs, ["frame_size","taille_cadre","cadre","مقاس_الإطار","الإطار"]) as string)
        : undefined);
    const wheelSize =
      (typeof a?.wheel_size === "string" ? a.wheel_size : undefined) ??
      (typeof pickAttributeValue(attrs, ["wheel_size","taille_roue","roue","diametre_roue","حجم_العجلة","العجلة","قطر_العجلة"]) === "string"
        ? (pickAttributeValue(attrs, ["wheel_size","taille_roue","roue","diametre_roue","حجم_العجلة","العجلة","قطر_العجلة"]) as string)
        : undefined);
    const wheelMatch = titleText.match(/(\d{2}(?:\.\d)?)\s*(?:"|pouces|inch|in)/);
    const wheelResolved = wheelSize ?? (wheelMatch ? `${wheelMatch[1]}"` : undefined);
    const isElectricAttr = pickAttributeValue(attrs, ["electric","electrique","électrique","e_bike","velo_electrique","كهربائي","دراجة_كهربائية"]);
    const isElectric =
      typeof a?.bikeElectric === "boolean"
        ? a.bikeElectric
        : (typeof isElectricAttr === "string"
            ? ["oui","true","electrique","électrique","e_bike","electric","كهربائي"].some(s => (isElectricAttr as string).toLowerCase().includes(s))
            : (/(electri|électri|كهرب)/.test(titleText) ? true : undefined));
    const motorizedAttr = pickAttributeValue(attrs, ["motorized","velo_motorise","vélo_motorisé","motorise","moteur","مزود بمحرك","مزوّد بمحرك"]);
    const isMotorized =
      typeof a?.bikeMotorized === "boolean"
        ? a.bikeMotorized
        : (typeof motorizedAttr === "string"
            ? ["oui","true","motorise","motorisé","moteur"].some(s => (motorizedAttr as string).toLowerCase().includes(s))
            : (/(motoris|محرك)/.test(titleText) ? true : undefined));
    const frameMaterialAttr = pickAttributeValue(attrs, ["frame_material","material","materiau","matériau","cadre_materiau","cadre_matériau","مادة_الإطار","المادة"]);
    const frameMaterial = typeof frameMaterialAttr === "string" ? frameMaterialAttr : (titleText.match(/(carbone|aluminium|alu|acier|steel|carbon)/)?.[1]);
    const suspensionAttr = pickAttributeValue(attrs, ["suspension","suspension_avant","suspension_arriere","type_suspension","سuspension","تعليق"]);
    const suspension = typeof suspensionAttr === "string" ? suspensionAttr : (titleText.match(/(full|tout\s?suspendu|full[- ]suspension|semi[- ]rigide|hardtail)/)?.[1]);
    const brakeAttr = pickAttributeValue(attrs, ["brake","brake_type","freins","type_de_frein","الفرامل","نوع_الفرامل"]);
    const brake = typeof brakeAttr === "string" ? brakeAttr : (titleText.match(/(disque|hydraulique|v[- ]?brake|patins|disc)/)?.[1]);
    const gearsAttr = pickAttributeValue(attrs, ["gears","vitesses","nbr_vitesses","nombre_vitesses","عدد_السرعات"]);
    const gears = typeof gearsAttr === "string" ? gearsAttr : (titleText.match(/(\d{1,2})\s?(?:vitesses|v|speeds)/)?.[1]);
    const bikeTypeAttr = pickAttributeValue(attrs, ["bike_type","type","style","categorie","catégorie","نوع"]);
    const bikeType = typeof bikeTypeAttr === "string" ? bikeTypeAttr : (titleText.match(/(vtt|route|gravel|bmx|fixie|hybride|city)/)?.[1]);
    const weightAttr = pickAttributeValue(attrs, ["weight","poids","الوزن"]);
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

  const menuCategories = getCategoryMenu(currentLanguage);
  const rawCategoryId = typeof announcement.category_id === "string" ? announcement.category_id : "";
  const canonicalCategoryId =
    rawCategoryId === "vehicules" || rawCategoryId === "vehicules-camions-motos"
      ? "vehicules-equipements"
      : rawCategoryId;
  const menuCategory =
    menuCategories.find((c) => c.slug === canonicalCategoryId) ??
    menuCategories.find((c) => c.id === canonicalCategoryId) ??
    menuCategories.find((c) => c.slug === rawCategoryId) ??
    menuCategories.find((c) => c.id === rawCategoryId);
  const resolvedCategoryName = menuCategory?.name || announcement.category;
  const resolvedSubcategoryName = (() => {
    const subslug = announcement.subcategory_id || announcement.subcategory;
    if (!subslug) return "";
    const resolved =
      menuCategory?.subcategories?.find((s) => s.slug === subslug) ||
      menuCategory?.subcategories
        ?.flatMap((s) => s.subcategories ?? [])
        .find((s) => s.slug === subslug);
    if (resolved?.name) return resolved.name;
    return subslug
      .split("-")
      .filter(Boolean)
      .map((word) => word.charAt(0).toUpperCase() + word.slice(1))
      .join(" ");
  })();

  const vehicle = resolveVehicleDetails(announcement as any);
  const isVehicleCategory =
    typeof announcement.category_id === "string" && announcement.category_id.toLowerCase().includes("vehicul");
  const purchaseYearForDisplay =
    (typeof vehicle.purchaseYear === "number" && Number.isFinite(vehicle.purchaseYear) ? vehicle.purchaseYear : undefined) ??
    (typeof announcement.purchase_year === "number" && Number.isFinite(announcement.purchase_year)
      ? announcement.purchase_year
      : undefined);
  const bike = resolveBikeDetails(announcement as any);
  const isBikeCategory =
    (typeof announcement.category_id === 'string' && announcement.category_id === 'velo-cyclisme-equipements') ||
    (typeof announcement.categorySlug === 'string' && announcement.categorySlug === 'velo-cyclisme-equipements') ||
    (announcement as any)?.categories?.slug === 'velo-cyclisme-equipements';
  const showBikeSpecsBlock =
    isBikeCategory &&
    (bike.frameSize || bike.wheelResolved || typeof bike.isElectric === 'boolean' || typeof bike.isMotorized === 'boolean' || bike.frameMaterial || bike.suspension || bike.brake || bike.gears || bike.bikeType || bike.weight);

  return (
    <div className="min-h-screen bg-gray-50/50 pb-12">
      <ReportModal
        open={showReportModal}
        onClose={() => setShowReportModal(false)}
        target={{
          type: "announcement",
          id: (announcement as any).id || id || "",
          globalNumber:
            typeof (announcement.global_listing_number ?? announcement.global_announcement_number) === "number"
              ? (announcement.global_listing_number ?? announcement.global_announcement_number)
              : null,
          ownerUserId: (announcement as any).user_id ?? null,
          title: announcement.title ?? null,
          wilaya: announcement.wilaya ?? null,
        }}
      />
      <div className="container mx-auto px-4 py-6 max-w-7xl">
        <Breadcrumb className="mb-6">
          <BreadcrumbList>
            <BreadcrumbItem>
              <BreadcrumbLink asChild>
                <Link to={getLocalizedPath("/")}>{t("breadcrumb.home")}</Link>
              </BreadcrumbLink>
            </BreadcrumbItem>
            {announcement.category_id ? (
              <>
                <BreadcrumbSeparator />
                <BreadcrumbItem>
                  <BreadcrumbLink asChild>
                    <Link to={getLocalizedPath(`/category/${canonicalCategoryId || announcement.category_id}`)}>
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
                  <BreadcrumbPage>{resolvedSubcategoryName}</BreadcrumbPage>
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
              <div className="flex items-start justify-between">
                <div>
                  <h1 className="text-2xl md:text-3xl font-bold text-gray-900 mb-2">
                    {announcement.title}
                  </h1>
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
                        N° {announcement.global_listing_number ?? announcement.global_announcement_number}
                      </span>
                    ) : null}
                  </div>
                </div>
                <div className="flex gap-2">
                   <Button variant="ghost" size="icon" onClick={handleFavoriteClick} className="text-gray-500 hover:text-red-500">
                    <Heart className="w-5 h-5" />
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
                  <h3 className="text-lg font-bold mb-3">
                    {currentLanguage === 'ar' ? 'مواصفات الدراجة' : 'Spécifications Vélo'}
                  </h3>
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-2 text-sm">
                    {bike.frameSize && (
                      <div>{currentLanguage === 'ar' ? 'حجم الإطار' : 'Taille cadre'}: {bike.frameSize}</div>
                    )}
                    {bike.wheelResolved && (
                      <div>{currentLanguage === 'ar' ? 'حجم العجلة' : 'Taille roue'}: {localizeLabel(bike.wheelResolved, currentLanguage, 'wheel')}</div>
                    )}
                    {typeof bike.isElectric === 'boolean' && (
                      <div>{currentLanguage === 'ar' ? 'كهربائي' : 'Électrique'}: {bike.isElectric ? (currentLanguage === 'ar' ? 'نعم' : 'Oui') : (currentLanguage === 'ar' ? 'لا' : 'Non')}</div>
                    )}
                    {typeof bike.isMotorized === 'boolean' && (
                      <div>{currentLanguage === 'ar' ? 'مزودة بمحرك' : 'Motorisé'}: {bike.isMotorized ? (currentLanguage === 'ar' ? 'نعم' : 'Oui') : (currentLanguage === 'ar' ? 'لا' : 'Non')}</div>
                    )}
                    {bike.frameMaterial && (
                      <div>{currentLanguage === 'ar' ? 'مادة الإطار' : 'Matériau cadre'}: {localizeLabel(bike.frameMaterial, currentLanguage, 'material')}</div>
                    )}
                    {bike.suspension && (
                      <div>{currentLanguage === 'ar' ? 'التعليق' : 'Suspension'}: {localizeLabel(bike.suspension, currentLanguage, 'suspension')}</div>
                    )}
                    {bike.brake && (
                      <div>{currentLanguage === 'ar' ? 'نوع الفرامل' : 'Freins'}: {localizeLabel(bike.brake, currentLanguage, 'brake')}</div>
                    )}
                    {bike.gears && (
                      <div>{currentLanguage === 'ar' ? 'عدد السرعات' : 'Vitesses'}: {localizeLabel(bike.gears, currentLanguage, 'gears')}</div>
                    )}
                    {bike.bikeType && (
                      <div>{currentLanguage === 'ar' ? 'نوع الدراجة' : 'Type vélo'}: {localizeLabel(bike.bikeType, currentLanguage, 'bikeType')}</div>
                    )}
                    {bike.weight && (
                      <div>{currentLanguage === 'ar' ? 'الوزن' : 'Poids'}: {localizeLabel(bike.weight, currentLanguage, 'weight')}</div>
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
                      {/* Real Estate Fields */}
                      {announcement.property_type && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.propertyType')}</dt>
                          <dd className="font-medium capitalize">{t(`createAd.realEstate.type.${announcement.property_type}`) || announcement.property_type}</dd>
                        </div>
                      )}
                      {announcement.surface && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.surface')}</dt>
                          <dd className="font-medium">{announcement.surface} m²</dd>
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
                          <dd className="font-medium">{t(`createAd.realEstate.payment.${announcement.payment_period}`) || announcement.payment_period}</dd>
                        </div>
                      )}
                      {announcement.zoning && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.realEstate.zoning')}</dt>
                          <dd className="font-medium">{t(`createAd.realEstate.zoning.${announcement.zoning}`) || announcement.zoning}</dd>
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
                          <dd className="font-medium">{announcement.view_type}</dd>
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
                              {announcement.condition.replace('_', ' ')}
                            </Badge>
                          </dd>
                        </div>
                      )}
                      {announcement.color && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.color')}</dt>
                          <dd className="font-medium">{announcement.color}</dd>
                        </div>
                      )}
                      {!isVehicleCategory && announcement.purchase_year && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.purchaseYear') || "Année d'achat/fabrication"}</dt>
                          <dd className="font-medium">{announcement.purchase_year}</dd>
                        </div>
                      )}
                      
                      {/* Vehicle Specific Details */}
                      {vehicle.year != null && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.vehicle.year') || 'Année de mise en circulation'}</dt>
                          <dd className="font-medium">{vehicle.year}</dd>
                        </div>
                      )}
                      {isVehicleCategory && purchaseYearForDisplay != null && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.purchaseYear') || "Année d'achat/fabrication"}</dt>
                          <dd className="font-medium">{purchaseYearForDisplay}</dd>
                        </div>
                      )}
                      {vehicle.fuel && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.vehicle.fuel') || 'Carburant'}</dt>
                          <dd className="font-medium">{vehicle.fuel}</dd>
                        </div>
                      )}
                      {vehicle.transmission && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.vehicle.gearbox') || 'Boîte de vitesse'}</dt>
                          <dd className="font-medium">{vehicle.transmission}</dd>
                        </div>
                      )}
                      {typeof vehicle.mileage === "number" && Number.isFinite(vehicle.mileage) && vehicle.mileage > 0 && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.vehicle.mileage') || 'Kilométrage'}</dt>
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
                          <dt className="text-gray-500">{t('createAd.vehicle.technicalControl') || 'Contrôle technique'}</dt>
                          <dd className={`font-medium ${vehicle.technicalControl ? 'text-green-600' : 'text-amber-700'}`}>
                            {vehicle.technicalControl
                              ? (t('createAd.vehicle.technicalControl.valid') || 'Claire à 100%')
                              : (t('createAd.vehicle.technicalControl.invalid') || 'Pas claire / À prévoir')}
                          </dd>
                        </div>
                      )}
                      {typeof vehicle.greyCardCrossed === 'boolean' && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.vehicle.greyCard') || 'Carte grise barrée'}</dt>
                          <dd className={`font-medium ${vehicle.greyCardCrossed ? 'text-amber-700' : 'text-green-600'}`}>
                            {vehicle.greyCardCrossed
                              ? (t('createAd.vehicle.greyCard.crossed') || 'Barrée')
                              : (t('createAd.vehicle.greyCard.clear') || 'Claire à 100% (Non barrée)')}
                          </dd>
                        </div>
                      )}
                      {vehicle.equipment && vehicle.equipment.length > 0 && (
                        <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.vehicle.options') || 'Équipements et options'}</dt>
                          <dd className="font-medium">{vehicle.equipment.join(', ')}</dd>
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
                          <dt className="text-gray-500">{t('createAd.type', isRTL ? 'النوع' : 'Type')}</dt>
                          <dd className="font-medium">
                            {isVehicleCategory ? translateVehicleDictionaryValue("type", announcement.type) : announcement.type}
                          </dd>
                        </div>
                      )}
                      {announcement.papers && announcement.papers.length > 0 && typeof announcement.papers[0] === 'string' && (
                         <div className={`flex justify-between py-1 border-b border-gray-50 ${isRTL ? "flex-row-reverse" : ""}`}>
                          <dt className="text-gray-500">{t('createAd.documents', isRTL ? 'الوثائق' : 'Documents')}</dt>
                          <dd className="font-medium">
                            {Array.isArray(announcement.papers)
                              ? announcement.papers.map(formatDocumentLabel).filter(Boolean).join(', ')
                              : formatDocumentLabel(announcement.papers as any)}
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
                              {t(`createAd.realEstate.specs.${spec}`) || spec}
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
                              {formatDocumentLabel(paper)}
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
                              {acc}
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
            
            {/* Reviews Section */}
            <div className="bg-white rounded-2xl shadow-sm border border-gray-100 p-6">
              <ReviewsSection reviewedUserId={announcement.user_id || "unknown"} />
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
                      onClick={() => setShowContactModal(true)}
                      variant="outline"
                      className="w-full py-6 text-lg font-semibold border-2 border-primary/20 hover:border-primary/50 hover:bg-primary/5 transition-all hover:scale-[1.02]"
                    >
                      <MessageCircle className="w-5 h-5 mr-2" />
                      Envoyer un message
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
                  onView={(a) => window.location.href = `/fr/annonce/${a.id}`}
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
            <span className="text-xs text-gray-500">Prix</span>
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
              onClick={() => setShowContactModal(true)}
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
    </div>
  );
};

export default AnnouncementDetailsPage;
