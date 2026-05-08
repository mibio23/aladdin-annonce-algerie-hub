import React, { useState, useEffect } from 'react';
import { useParams, Link, useLocation } from 'react-router-dom';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { Dialog, DialogContent, DialogDescription, DialogHeader, DialogTitle } from '@/components/ui/dialog';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { 
  ArrowLeft, 
  MapPin, 
  Phone, 
  Share2, 
  Heart, 
  MessageCircle, 
  Star, 
  Store, 
  BadgeCheck, 
  Facebook, 
  Instagram, 
  Twitter, 
  Linkedin, 
  Youtube, 
  Clock, 
  Navigation,
  ExternalLink,
  ChevronRight,
  ShieldCheck,
  Package,
  Truck,
  CreditCard,
  Maximize2,
  Eye,
  AlertTriangle
} from 'lucide-react';
import { motion, AnimatePresence } from 'framer-motion';
import { useToast } from '@/hooks/use-toast';
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';
import ShopImageGallery from '@/components/shop/ShopImageGallery';
import ContactModal from '@/components/shop/ContactModal';
import ShopReviewModal from '@/components/shop/ShopReviewModal';
import LocationPicker from '@/components/ui/LocationPicker';
import MultilingualText from '@/components/ui/MultilingualText';
import { safeStringify } from '@/utils/safeStringify';
import { logger } from '@/utils/silentLogger';
import { supabase } from '@/integrations/supabase/client';
import { Shop } from '@/types/shop';
import { useAuth } from '@/contexts/useAuth';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { generateSessionId } from '@/utils/searchUtils';
import { cn } from '@/lib/utils';
import SEOHead from '@/components/SEO/SEOHead';
import { Breadcrumb, BreadcrumbItem, BreadcrumbLink, BreadcrumbList, BreadcrumbSeparator } from '@/components/ui/breadcrumb';
import { wilayas } from '@/data/wilayaData';
import { communes } from '@/data/communeData';
import type { ShopSocialMedia, ShopOpeningHours } from '@/integrations/supabase/types.extended';

import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";

const ShopDetails: React.FC = () => {
  const { id } = useParams<{ id: string }>();
  const { toast } = useToast();
  const { getLocalizedPath } = useLanguageNavigation();
  const { t, language } = useSafeI18nWithRouter();
  const { user } = useAuth();
  const location = useLocation();

  const [shop, setShop] = useState<Shop | null>(null);
  const [loading, setLoading] = useState(true);
  const [isFavorite, setIsFavorite] = useState(false);
  const [showContactModal, setShowContactModal] = useState(false);
  const [isOwnerOnline, setIsOwnerOnline] = useState(false);

  const handleMessageClick = () => {
    if (!user) {
      window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'login' }));
      return;
    }
    setShowContactModal(true);
  };

  const handleReviewClick = () => {
    if (!user) {
      sessionStorage.setItem('authRedirectUrl', location.pathname + location.search);
      sessionStorage.setItem('openReviewModalAfterLogin', 'true');
      window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'login' }));
      return;
    }
    setShowReviewModal(true);
  };

  const [showReviewModal, setShowReviewModal] = useState(false);

  // Ouvrir automatiquement la modale d'avis après une connexion réussie
  useEffect(() => {
    if (user && sessionStorage.getItem('openReviewModalAfterLogin') === 'true') {
      sessionStorage.removeItem('openReviewModalAfterLogin');
      // Petit délai pour laisser le temps au drawer de se fermer
      setTimeout(() => {
        setShowReviewModal(true);
      }, 500);
    }
  }, [user]);
  const [showReportModal, setShowReportModal] = useState(false);
  const [reviews, setReviews] = useState<any[]>([]);
  const [reportReason, setReportReason] = useState('');
  const [reportDetails, setReportDetails] = useState('');
  const [reportSubmitting, setReportSubmitting] = useState(false);
  const currentUserReview = user ? reviews.find((review) => review.user_id === user.id) ?? null : null;

  const fetchShopReviews = async (shopId: string) => {
    const { data: reviewsData, error: reviewsError } = await supabase
      .from('shop_reviews')
      .select('id, rating, comment, created_at, user_id')
      .eq('shop_id', shopId)
      .order('created_at', { ascending: false });

    if (reviewsError) {
      throw reviewsError;
    }

    const userIds = Array.from(
      new Set((reviewsData || []).map((review) => review.user_id).filter(Boolean))
    );

    let profilesMap = new Map<string, { full_name: string | null; avatar_url: string | null }>();

    if (userIds.length > 0) {
      const { data: profilesData, error: profilesError } = await supabase
        .from('profiles_public')
        .select('user_id, full_name, avatar_url')
        .in('user_id', userIds);

      if (profilesError) {
        throw profilesError;
      }

      profilesMap = new Map(
        (profilesData || []).map((profile) => [
          profile.user_id as string,
          {
            full_name: (profile as { full_name?: string | null }).full_name ?? null,
            avatar_url: (profile as { avatar_url?: string | null }).avatar_url ?? null,
          },
        ])
      );
    }

    const normalizedReviews = (reviewsData || []).map((review) => ({
      ...review,
      profiles: profilesMap.get(review.user_id) || null,
    }));

    setReviews(normalizedReviews);

    return normalizedReviews;
  };

  const getOrCreateReportSessionId = () => {
    const storageKey = 'report_session_id';
    const existing = localStorage.getItem(storageKey);
    if (existing && existing.length >= 10 && existing.length <= 100) return existing;
    const newId = generateSessionId();
    localStorage.setItem(storageKey, newId);
    return newId;
  };

  const submitReport = async () => {
    if (!shop) return;
    if (!reportReason) {
      toast({
        title: tr('viewShop.reportReasonRequired', { fr: 'Cause requise', en: 'Reason required', es: 'Motivo obligatorio', it: 'Motivo obbligatorio', de: 'Grund erforderlich', ar: 'السبب مطلوب' }),
        description: tr('viewShop.reportReasonRequiredText', { fr: 'Veuillez sélectionner une cause de signalement.', en: 'Please select a report reason.', es: 'Por favor selecciona un motivo del reporte.', it: 'Seleziona un motivo della segnalazione.', de: 'Bitte wählen Sie einen Meldegrund aus.', ar: 'يرجى اختيار سبب الإبلاغ.' }),
        variant: "destructive"
      });
      return;
    }

    try {
      setReportSubmitting(true);

      const clientSessionId = getOrCreateReportSessionId();
      const payload = {
        reporter_user_id: user?.id ?? null,
        client_session_id: clientSessionId,
        target_type: 'shop',
        target_id: shop.id,
        target_global_number: shop.globalListingNumber ?? null,
        target_owner_user_id: shop.ownerId ?? null,
        target_title: shop.name ?? null,
        target_wilaya: shop.wilaya ?? null,
        reason: reportReason,
        details: reportDetails.trim() ? reportDetails.trim() : null
      };

      const { error } = await supabase.from('reports').insert(payload);
      if (error) throw error;

      toast({
        title: tr('viewShop.reportSent', { fr: 'Signalement envoyé', en: 'Report sent', es: 'Reporte enviado', it: 'Segnalazione inviata', de: 'Meldung gesendet', ar: 'تم إرسال البلاغ' }),
        description: tr('viewShop.reportSentText', { fr: 'Merci. Notre équipe va examiner ce contenu.', en: 'Thank you. Our team will review this content.', es: 'Gracias. Nuestro equipo revisará este contenido.', it: 'Grazie. Il nostro team esaminerà questo contenuto.', de: 'Vielen Dank. Unser Team wird diesen Inhalt prüfen.', ar: 'شكراً لك. سيقوم فريقنا بمراجعة هذا المحتوى.' }),
      });

      setShowReportModal(false);
      setReportReason('');
      setReportDetails('');
    } catch (error) {
      logger.error('Error submitting report:', error);
      toast({
        title: t('common.error'),
        description: tr('viewShop.reportError', { fr: "Impossible d'envoyer le signalement. Veuillez réessayer plus tard.", en: 'Unable to send the report. Please try again later.', es: 'No se pudo enviar el reporte. Inténtalo de nuevo más tarde.', it: 'Impossibile inviare la segnalazione. Riprova più tardi.', de: 'Die Meldung konnte nicht gesendet werden. Bitte versuchen Sie es später erneut.', ar: 'تعذر إرسال البلاغ. يرجى المحاولة لاحقاً.' }),
        variant: "destructive"
      });
    } finally {
      setReportSubmitting(false);
    }
  };

  // Effet pour charger les données de la boutique
  useEffect(() => {
    logger.debug("ShopDetails Page Loaded:", id);
    const fetchShop = async () => {
      try {
        setLoading(true);
        
        // Récupérer les données depuis Supabase
        const { data, error } = await supabase
          .from('shops')
          .select('*')
          .eq('id', id)
          .single();

        if (error) throw error;
        
        if (data) {
          // Adapter les noms de champs de la base de données à l'interface du composant
          const adaptedShop: Shop = {
            id: data.id,
            ownerId: data.user_id,
            globalListingNumber: data.global_listing_number ?? undefined,
            name: data.name,
            description: data.description,
            wilaya: data.wilaya,
            commune: data.commune,
            phoneNumbers: data.phone_numbers || [],
            landlinePhone: data.landline_phone,
            logoUrl: data.logo_url,
            bannerUrl: data.banner_url,
            productImageUrls: data.product_image_urls || [],
            productVideoUrls: data.product_video_urls || [],
            isOnline: data.is_online,
            isPhysical: data.is_physical,
            isVerified: data.is_verified,
            shopStatus: data.shop_status,
            shop_number: data.shop_number,
            address: data.address,
            website: data.website,
            whatsappNumber: data.whatsapp_number,
            mainCategory: data.main_category,
            socialMedia: (data.social_media as ShopSocialMedia | null) ?? undefined,
            openingHours: (data.opening_hours as ShopOpeningHours | null) ?? undefined,
            deliveryOptions: (data.delivery_options as string[] | null) ?? undefined,
            paymentMethods: (data.payment_methods as string[] | null) ?? undefined,
            rating: data.rating || 0, // Utiliser la vraie note ou 0
            reviewCount: data.review_count || 0, // Utiliser le vrai count ou 0
            followerCount: data.view_count || 0,
            gpsCoordinates: data.gps_coordinates as { lat: number; lng: number } || { lat: 36.75, lng: 3.06 }
          };
          setShop(adaptedShop);

          await fetchShopReviews(id);

          const viewKey = `viewed_shop_${id}`;
          if (!sessionStorage.getItem(viewKey)) {
            sessionStorage.setItem(viewKey, '1');
            try {
              await supabase.rpc('increment_shop_view_count', { shop_uuid: id });
              setShop((prev) =>
                prev
                  ? {
                      ...prev,
                      followerCount: (prev.followerCount ?? 0) + 1,
                    }
                  : prev
              );
            } catch (err) {
              logger.error('Error incrementing shop view count:', err);
            }
          }
        } else {
          setShop(null);
        }
      } catch (error) {
        logger.error('Error fetching shop:', error);
        toast({
          title: t('common.error'),
          description: tr('shop.messages.errorLoadingShop', { fr: 'Impossible de charger les informations de la boutique', en: 'Unable to load shop information', es: 'No se pudo cargar la información de la tienda', it: 'Impossibile caricare le informazioni del negozio', de: 'Shop-Informationen konnten nicht geladen werden', ar: 'تعذر تحميل معلومات المتجر' }),
          variant: "destructive"
        });
      } finally {
        setLoading(false);
      }
    };

    if (id) {
      fetchShop();
    }
  }, [id, toast]);

  // Vérifier le statut de connexion du propriétaire
  useEffect(() => {
    if (!shop?.ownerId) return;

    // 1. Initial DB check
    const checkOwnerPresence = async () => {
      try {
        const { data, error } = await supabase
          .from('user_presence')
          .select('last_seen_at, is_online')
          .eq('user_id', shop.ownerId)
          .maybeSingle();

        if (error) throw error;

        const presenceRow = data as { is_online?: boolean | null; last_seen_at?: string | null } | null;
        const isOnlineDb = presenceRow?.is_online;
        const lastSeenAt = presenceRow?.last_seen_at;
        
        if (lastSeenAt && isOnlineDb) {
          const lastSeen = new Date(lastSeenAt);
          const now = new Date();
          const diffMinutes = (now.getTime() - lastSeen.getTime()) / (1000 * 60);
          setIsOwnerOnline(diffMinutes < 5);
        } else {
          setIsOwnerOnline(false);
        }
      } catch (err) {
        logger.warn('Error checking owner presence:', err);
        setIsOwnerOnline(false);
      }
    };

    checkOwnerPresence();
    const interval = setInterval(checkOwnerPresence, 60000);

    // Direct Realtime Subscription for instant updates
    let channel = supabase.getChannels().find(c => c.topic === 'realtime:global_presence');
    let isNewChannel = false;
    
    if (!channel) {
      channel = supabase.channel('global_presence');
      isNewChannel = true;
    }

    // Fonction de rappel pour la synchronisation
    const onSync = () => {
      if (!channel) return;
      const state = channel.presenceState();
      // On met en ligne SEULEMENT si l'utilisateur est bien dans l'état (donc actif)
      if (state[shop.ownerId] && state[shop.ownerId].length > 0) {
        setIsOwnerOnline(true);
      } else {
        // Sinon, la BDD (ou le check DB) a peut-être raison de le dire hors-ligne
        // checkOwnerPresence s'en chargera
      }
    };

    // Fonction de rappel pour le départ
    const onLeave = ({ key }: { key: string }) => {
      if (key === shop.ownerId) {
        setIsOwnerOnline(false);
      }
    };

    channel.on('presence', { event: 'sync' }, onSync);
    channel.on('presence', { event: 'leave' }, onLeave);

    if (isNewChannel) {
      channel.subscribe();
    } else {
      // Si le channel existe déjà, forcer une synchronisation initiale
      onSync();
    }

    return () => {
      clearInterval(interval);
      if (channel && isNewChannel) {
        supabase.removeChannel(channel);
      }
    };
  }, [shop?.ownerId]);

  // Vérifier si la boutique est dans les favoris
  useEffect(() => {
    if (shop) {
      const favorites = JSON.parse(localStorage.getItem('favoriteShops') || '[]');
      setIsFavorite(favorites.includes(shop.id));
    }
  }, [shop]);

  // Gestion des favoris
  const toggleFavorite = async () => {
    if (!shop) return;
    
    if (!user) {
      toast({
        title: t('viewShop.loginRequiredTitle'),
        description: (
          <div className="flex flex-col gap-2">
            <p>{t('viewShop.loginRequiredDescription')}</p>
            <div className="flex gap-2 mt-2">
              <Button 
                variant="secondary" 
                size="sm" 
                onClick={() => window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'login' }))}
                className="w-full sm:w-auto"
              >
                {t('auth.login')}
              </Button>
              <Button 
                variant="outline" 
                size="sm" 
                onClick={() => window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'register' }))}
                className="w-full sm:w-auto bg-transparent border-slate-200 dark:border-slate-700 hover:bg-slate-100 dark:hover:bg-slate-800 text-slate-900 dark:text-slate-100"
              >
                {t('auth.register')}
              </Button>
            </div>
          </div>
        ),
      });
      return;
    }

    const favorites = JSON.parse(localStorage.getItem('favoriteShops') || '[]');
    const newIsFavorite = !isFavorite;
    setIsFavorite(newIsFavorite);
    
    // Update local storage
    if (newIsFavorite) {
      if (!favorites.includes(shop.id)) {
        favorites.push(shop.id);
      }
    } else {
      const index = favorites.indexOf(shop.id);
      if (index > -1) {
        favorites.splice(index, 1);
      }
    }
    localStorage.setItem('favoriteShops', safeStringify(favorites));

    // Update DB
    try {
      if (newIsFavorite) {
        const { error } = await supabase
          .from('shop_favorites')
          .insert({ user_id: user.id, shop_id: shop.id });
          
        if (error) throw error;
      } else {
        const { error } = await supabase
          .from('shop_favorites')
          .delete()
          .eq('user_id', user.id)
          .eq('shop_id', shop.id);
          
        if (error) throw error;
      }
    } catch (error) {
      logger.error("Error updating favorites:", error);
      // Revert optimistic update
      setIsFavorite(!newIsFavorite);
      toast({
        title: t('common.error'),
        description: t('common.error'),
        variant: "destructive"
      });
    }
  };

  const normalizePhone = (value: string) => {
    if (!value) return '';
    const trimmed = value.trim();
    const hasPlus = trimmed.startsWith('+');
    const digits = trimmed.replace(/\D/g, '');
    if (!digits) return '';
    return hasPlus ? `+${digits}` : digits;
  };

  const normalizeWhatsapp = (value: string) => value.replace(/\D/g, '');

  const handleContactClick = (type: 'phone' | 'whatsapp') => {
    if (type === 'phone' && shop?.phoneNumbers?.[0]) {
      const normalizedPhone = normalizePhone(shop.phoneNumbers[0]);
      if (normalizedPhone) {
        window.location.href = `tel:${normalizedPhone}`;
      }
    } else if (type === 'whatsapp' && shop?.whatsappNumber) {
      const cleanNumber = normalizeWhatsapp(shop.whatsappNumber);
      if (cleanNumber) {
        window.open(`https://wa.me/${cleanNumber}`, '_blank', 'noopener,noreferrer');
      }
    }
  };

  // Partage de la boutique
  const handleShare = async () => {
    if (!shop) return;
    
    const shopUrl = window.location.href;
    
    if (navigator.share) {
      try {
        await navigator.share({
          title: shop.name,
          text: shop.description,
          url: shopUrl,
        });
      } catch (error) {
        logger.error('Error sharing:', error);
      }
    } else {
      navigator.clipboard.writeText(shopUrl);
      toast({
        title: t('viewShop.linkCopied'),
        description: t('viewShop.linkCopiedText'),
      });
    }
  };

  const tr = (key: string, fallback: string | Record<string, string>) => {
    const translated = t(key);
    if (translated && translated !== key) return translated;
    if (typeof fallback === 'string') return fallback;
    return fallback[language] || fallback.fr || Object.values(fallback)[0] || key;
  };

  const localeByLanguage: Record<string, string> = {
    fr: 'fr-FR',
    en: 'en-US',
    es: 'es-ES',
    it: 'it-IT',
    de: 'de-DE',
    ar: 'ar-DZ',
  };

  const findWilaya = (value?: string | null) => {
    if (!value) return null;
    const normalized = value.normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase().trim();
    return (
      wilayas.find((entry) =>
        [entry.code.toString(), entry.name, entry.name_fr, entry.name_ar]
          .filter(Boolean)
          .some((candidate) => String(candidate).normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase().trim() === normalized)
      ) || null
    );
  };

  const localizeWilaya = (value?: string | null) => {
    if (!value) return '';
    const match = findWilaya(value);
    if (!match) return value;
    return language === 'ar' ? match.name_ar || match.name_fr || match.name : match.name_fr || match.name;
  };

  const findCommune = (communeValue?: string | null, wilayaValue?: string | null) => {
    if (!communeValue) return null;
    const normalize = (input: string) =>
      input.normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase().trim();
    const normalizedCommune = normalize(communeValue);
    const wilayaMatch = findWilaya(wilayaValue || communeValue);
    const scopedCommunes = wilayaMatch ? communes[String(wilayaMatch.code)] || [] : [];
    const allCommunes = scopedCommunes.length ? scopedCommunes : Object.values(communes).flat();
    return (
      allCommunes.find((entry) =>
        [entry.fr, entry.ar]
          .filter(Boolean)
          .some((candidate) => normalize(String(candidate)) === normalizedCommune)
      ) || null
    );
  };

  const localizeCommune = (communeValue?: string | null, wilayaValue?: string | null) => {
    if (!communeValue) return '';
    const match = findCommune(communeValue, wilayaValue);
    if (!match) return communeValue;
    return language === 'ar' ? match.ar || match.fr : match.fr;
  };

  const escapeRegExp = (value: string) => value.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');

  const replaceInsensitive = (source: string, search: string, replacement: string) => {
    if (!search.trim()) return source;
    return source.replace(new RegExp(escapeRegExp(search), 'gi'), replacement);
  };

  const localizeLocationText = (value?: string | null) => {
    if (!value) return '';
    let localized = value;
    const replacements = [
      { from: 'Algerie', to: language === 'ar' ? 'الجزائر' : 'Algérie' },
      { from: 'Algeria', to: language === 'ar' ? 'الجزائر' : 'Algérie' },
      { from: 'Algérie', to: language === 'ar' ? 'الجزائر' : 'Algérie' },
    ];

    if (shop?.wilaya) {
      const localizedWilaya = localizeWilaya(shop.wilaya);
      const wilayaMatch = findWilaya(shop.wilaya);
      replacements.push({ from: shop.wilaya, to: localizedWilaya });
      if (wilayaMatch) {
        [wilayaMatch.name, wilayaMatch.name_fr, wilayaMatch.name_ar]
          .filter(Boolean)
          .forEach((candidate) => replacements.push({ from: String(candidate), to: localizedWilaya }));
      }
    }

    if (shop?.commune) {
      const localizedCommune = localizeCommune(shop.commune, shop.wilaya);
      const communeMatch = findCommune(shop.commune, shop.wilaya);
      replacements.push({ from: shop.commune, to: localizedCommune });
      if (communeMatch) {
        [communeMatch.fr, communeMatch.ar]
          .filter(Boolean)
          .forEach((candidate) => replacements.push({ from: String(candidate), to: localizedCommune }));
      }
    }

    for (const replacement of replacements) {
      localized = replaceInsensitive(localized, replacement.from, replacement.to);
    }

    return localized;
  };

  const formatLocalizedDate = (value?: string | null, options?: Intl.DateTimeFormatOptions) => {
    if (!value) return '';
    const date = new Date(value);
    if (Number.isNaN(date.getTime())) return value;
    return date.toLocaleDateString(localeByLanguage[language] || 'fr-FR', options || {
      day: '2-digit',
      month: 'short',
      year: 'numeric',
    });
  };

  const getDayLabel = (day: string) =>
    tr(`days.${day}`, {
      fr: { monday: 'Lundi', tuesday: 'Mardi', wednesday: 'Mercredi', thursday: 'Jeudi', friday: 'Vendredi', saturday: 'Samedi', sunday: 'Dimanche' }[day] || day,
      en: { monday: 'Monday', tuesday: 'Tuesday', wednesday: 'Wednesday', thursday: 'Thursday', friday: 'Friday', saturday: 'Saturday', sunday: 'Sunday' }[day] || day,
      es: { monday: 'Lunes', tuesday: 'Martes', wednesday: 'Miércoles', thursday: 'Jueves', friday: 'Viernes', saturday: 'Sábado', sunday: 'Domingo' }[day] || day,
      it: { monday: 'Lunedì', tuesday: 'Martedì', wednesday: 'Mercoledì', thursday: 'Giovedì', friday: 'Venerdì', saturday: 'Sabato', sunday: 'Domenica' }[day] || day,
      de: { monday: 'Montag', tuesday: 'Dienstag', wednesday: 'Mittwoch', thursday: 'Donnerstag', friday: 'Freitag', saturday: 'Samstag', sunday: 'Sonntag' }[day] || day,
      ar: { monday: 'الاثنين', tuesday: 'الثلاثاء', wednesday: 'الأربعاء', thursday: 'الخميس', friday: 'الجمعة', saturday: 'السبت', sunday: 'الأحد' }[day] || day,
    });

  const localizedShopAddress = localizeLocationText(shop?.address || '') || [localizeCommune(shop?.commune, shop?.wilaya), localizeWilaya(shop?.wilaya)].filter(Boolean).join(', ');
  const _localizedShopWilaya = localizeWilaya(shop?.wilaya);
  const _localizedShopCommune = localizeCommune(shop?.commune, shop?.wilaya);

  if (loading) {
    return (
      <div className="min-h-screen bg-background flex justify-center items-center">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary"></div>
      </div>
    );
  }

  if (!shop) {
    return (
      <div className="min-h-screen bg-background">
        <div className="container mx-auto px-4 py-12">
          <motion.div 
            initial={{ opacity: 0, y: 20 }}
            animate={{ opacity: 1, y: 0 }}
            className="max-w-md mx-auto"
          >
            <Card className="border-dashed">
              <CardContent className="text-center py-16">
                <div className="bg-muted rounded-full w-20 h-20 flex items-center justify-center mx-auto mb-6">
                  <Store className="h-10 w-10 text-muted-foreground" />
                </div>
                <h3 className="text-2xl font-bold mb-3">{t('viewShop.shopNotFound')}</h3>
                <p className="text-muted-foreground mb-8">
                  {t('viewShop.shopNotFoundText')}
                </p>
                <Button asChild size="lg" className="rounded-full px-8">
                  <Link to={getLocalizedPath('/')} className="flex items-center gap-2">
                    <ArrowLeft className="h-4 w-4" />
                    {t('viewShop.backButton')}
                  </Link>
                </Button>
              </CardContent>
            </Card>
          </motion.div>
        </div>
      </div>
    );
  }

  const socialLinks = [
    { icon: Facebook, url: shop.socialMedia?.facebook, label: 'Facebook', color: 'text-blue-600' },
    { icon: Instagram, url: shop.socialMedia?.instagram, label: 'Instagram', color: 'text-pink-600' },
    { icon: Twitter, url: shop.socialMedia?.twitter, label: 'Twitter', color: 'text-sky-500' },
    { icon: Linkedin, url: shop.socialMedia?.linkedin, label: 'LinkedIn', color: 'text-blue-700' },
    { icon: Youtube, url: shop.socialMedia?.youtube, label: 'YouTube', color: 'text-red-600' },
  ].filter(link => link.url);

  const days = ['monday', 'tuesday', 'wednesday', 'thursday', 'friday', 'saturday', 'sunday'];
  const phoneNumbers = shop.phoneNumbers ?? [];
  const displayPhoneNumbers = phoneNumbers;
  const rawWhatsappNumber = shop.whatsappNumber || phoneNumbers[0] || '';
  const displayWhatsappNumber = rawWhatsappNumber;
  const handleCallShop = () => {
    if (!phoneNumbers[0]) return;
    window.location.href = `tel:${phoneNumbers[0]}`;
  };

  const shopsLabel = (() => {
    const translated = t('shops.listing.title');
    return translated && translated !== 'shops.listing.title' ? translated : tr('viewShop.shops', { fr: 'Boutiques', en: 'Shops', es: 'Tiendas', it: 'Negozi', de: 'Geschäfte', ar: 'المتاجر' });
  })();
  const shopDescription = (() => {
    const rawDescription = typeof shop.description === 'string' ? shop.description.trim() : '';
    if (!rawDescription) {
      return `${shop.name} - ${shopsLabel} - ${tr('viewShop.algeriaMarketplace', { fr: 'Aladdin Annonces Algérie', en: 'Aladdin Algeria Listings', es: 'Anuncios Aladdin Argelia', it: 'Annunci Aladdin Algeria', de: 'Aladdin Anzeigen Algerien', ar: 'إعلانات علاء الدين الجزائر' })}`;
    }
    return rawDescription.length > 180 ? `${rawDescription.slice(0, 177)}...` : rawDescription;
  })();
  const shopUrl = getLocalizedPath(`/boutique/${shop.id}`);
  const shopBreadcrumbs = [
    { label: t('breadcrumb.home'), href: getLocalizedPath('/') },
    { label: shopsLabel, href: getLocalizedPath('/boutiques') },
    { label: shop.name, href: shopUrl },
  ];

  return (
    <div className="min-h-screen bg-slate-50/50 dark:bg-slate-950/50 pb-20">
      <SEOHead
        title={shop.name}
        description={shopDescription}
        category={shopsLabel}
        image={shop.logoUrl || shop.bannerUrl || '/og-image.jpg'}
        url={shopUrl}
        breadcrumbs={shopBreadcrumbs}
      />
      {/* Hero Banner Section */}
      <div className="relative h-48 md:h-72 lg:h-80 w-full overflow-hidden">
        {shop.bannerUrl ? (
          <img 
            src={shop.bannerUrl} 
            alt={tr('viewShop.shopBanner', {
              fr: 'Bannière de la boutique',
              en: 'Shop banner',
              es: 'Banner de la tienda',
              it: 'Banner del negozio',
              de: 'Shop-Banner',
              ar: 'لافتة المتجر',
            })} 
            className="w-full h-full object-cover"
          />
        ) : (
          <div className="w-full h-full bg-gradient-to-r from-orange-500 via-orange-400 to-amber-300" />
        )}
        <div className="absolute inset-0 bg-black/20" />
        
        {/* Floating Badges (Top Right) */}
        <div className="absolute top-6 right-6 flex flex-col gap-2 z-10">
          <Badge className={`${isOwnerOnline ? 'bg-green-500 hover:bg-green-600' : 'bg-red-500 hover:bg-red-600'} text-white border-none px-3 py-1 rounded-full text-xs font-bold flex items-center gap-1`}>
            <div className={`w-2 h-2 bg-white rounded-full ${isOwnerOnline ? 'animate-pulse' : ''}`} />
            {isOwnerOnline ? tr('messages.online', { fr: 'En ligne', en: 'Online', es: 'En línea', it: 'Online', de: 'Online', ar: 'متصل' }) : tr('messages.offline', { fr: 'Hors ligne', en: 'Offline', es: 'Desconectado', it: 'Offline', de: 'Offline', ar: 'غير متصل' })}
          </Badge>
          
          {shop.isVerified && (
            <Badge className="bg-purple-500 hover:bg-purple-600 text-white border-none px-3 py-1 rounded-full text-xs font-bold flex items-center gap-1">
              <BadgeCheck className="h-3 w-3" />
              {t('viewShop.verified')}
            </Badge>
          )}
        </div>

        {/* Quick Back Button on Banner */}
        <div className="absolute top-6 left-6 z-10">
          <Button variant="secondary" size="icon" asChild className="rounded-full shadow-lg bg-white/90 backdrop-blur-sm hover:bg-white text-slate-900">
            <Link to={getLocalizedPath('/')}>
              <ArrowLeft className="h-5 w-5" />
            </Link>
          </Button>
        </div>
      </div>

      <div className="container mx-auto px-4">
        <Breadcrumb className="mb-6 pt-6">
          <BreadcrumbList>
            <BreadcrumbItem>
              <BreadcrumbLink asChild>
                <Link to={getLocalizedPath('/')}>{t('breadcrumb.home')}</Link>
              </BreadcrumbLink>
            </BreadcrumbItem>
            <BreadcrumbSeparator />
            <BreadcrumbItem>
              <BreadcrumbLink asChild>
                <Link to={getLocalizedPath('/boutiques')}>{shopsLabel}</Link>
              </BreadcrumbLink>
            </BreadcrumbItem>
          </BreadcrumbList>
        </Breadcrumb>
        <div className="relative -mt-16 md:-mt-24 mb-8">
          <div className="flex flex-col md:flex-row items-end gap-6 md:gap-8">
            {/* Logo with Animation */}
            <motion.div 
              initial={{ scale: 0.8, opacity: 0 }}
              animate={{ scale: 1, opacity: 1 }}
              transition={{ type: "spring", stiffness: 200, damping: 15 }}
              className="relative"
            >
              <div className="w-32 h-32 md:w-48 md:h-48 rounded-2xl bg-white dark:bg-slate-900 p-1.5 shadow-2xl ring-4 ring-white/20">
                <img
                  src={shop.logoUrl || "/placeholder.svg"}
                  alt={shop.name}
                  className="w-full h-full rounded-xl object-cover"
                />
              </div>
              {shop.isVerified && (
                <div className="absolute -bottom-2 -right-2 bg-blue-500 text-white p-2 rounded-full shadow-lg border-4 border-white dark:border-slate-900">
                  <BadgeCheck className="h-5 w-5 md:h-6 md:w-6" />
                </div>
              )}
            </motion.div>

            {/* Shop Title & Badges */}
            <div className="flex-1 pb-2 space-y-4">
              <div className="flex flex-wrap items-center gap-3">
                <h1 className="text-3xl md:text-4xl lg:text-5xl font-black tracking-tight text-slate-900 dark:text-white">
                  <MultilingualText text={shop.name} />
                </h1>
                {shop.isVerified && (
                  <motion.div
                    initial={{ scale: 0.8, opacity: 0 }}
                    animate={{ scale: 1, opacity: 1 }}
                    transition={{ delay: 0.3 }}
                  >
                    <BadgeCheck className="h-6 w-6 text-blue-500 fill-blue-50" />
                  </motion.div>
                )}
              </div>

              {/* Modern Metrics Bar */}
              <div className="flex flex-wrap items-center gap-6">
                <div className="flex flex-col">
                  <span className="text-xs font-bold text-slate-400 uppercase tracking-wider">{tr('viewShop.rating', { fr: 'Note', en: 'Rating', es: 'Valoración', it: 'Valutazione', de: 'Bewertung', ar: 'التقييم' })}</span>
                  <div className="flex items-center gap-1.5 font-bold text-slate-900 dark:text-white">
                    <Star className="h-4 w-4 text-yellow-500 fill-yellow-500" />
                    <span>{shop.rating?.toFixed(1)}</span>
                    <span className="text-slate-400 font-normal text-xs">({shop.reviewCount})</span>
                  </div>
                </div>
                
                <div className="w-px h-8 bg-slate-200 dark:bg-slate-800 hidden sm:block" />

                <div className="flex flex-col">
                  <span className="text-xs font-bold text-slate-400 uppercase tracking-wider">N°</span>
                  <div className="flex items-center gap-1.5 font-bold text-slate-900 dark:text-white">
                    <span>{typeof shop.globalListingNumber === "number" ? shop.globalListingNumber.toLocaleString() : "-"}</span>
                  </div>
                </div>

                <div className="w-px h-8 bg-slate-200 dark:bg-slate-800 hidden sm:block" />

                <div className="flex flex-col">
                  <span className="text-xs font-bold text-slate-400 uppercase tracking-wider">{tr('viewShop.views', { fr: 'Vues', en: 'Views', es: 'Vistas', it: 'Visualizzazioni', de: 'Aufrufe', ar: 'المشاهدات' })}</span>
                  <div className="flex items-center gap-1.5 font-bold text-slate-900 dark:text-white">
                    <Eye className="h-4 w-4 text-slate-500" />
                    <span>{shop.followerCount?.toLocaleString()}</span>
                  </div>
                </div>

                <div className="w-px h-8 bg-slate-200 dark:bg-slate-800 hidden sm:block" />

                <div className="flex flex-col">
                  <span className="text-xs font-bold text-slate-400 uppercase tracking-wider">{t('viewShop.location')}</span>
                  <div className="flex items-center gap-1.5 font-bold text-slate-900 dark:text-white">
                    <MapPin className="h-4 w-4 text-slate-400" />
                    <span>{localizedShopWilaya || '-'}</span>
                  </div>
                </div>
              </div>
            </div>

            {/* Header Actions - Social/Save */}
            <div className="flex gap-2 pb-2">
              <Button
                variant="ghost"
                size="icon"
                onClick={toggleFavorite}
                className={`rounded-full transition-all duration-300 ${
                  isFavorite ? "text-red-500 bg-red-50" : "text-slate-400"
                }`}
              >
                <Heart className={`h-6 w-6 ${isFavorite ? "fill-current" : ""}`} />
              </Button>
              <Button
                variant="ghost"
                size="icon"
                onClick={handleShare}
                className="rounded-full text-slate-400"
              >
                <Share2 className="h-6 w-6" />
              </Button>
              <Button
                variant="ghost"
                size="icon"
                onClick={() => setShowReportModal(true)}
                className="rounded-full text-slate-400"
              >
                <AlertTriangle className="h-6 w-6" />
              </Button>
            </div>
          </div>
        </div>

        {/* Primary Action Buttons (Appeler & WhatsApp) */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-8">
          <Button 
            className="h-14 rounded-xl bg-[#0F172A] hover:bg-[#1E293B] text-white font-bold text-lg shadow-lg flex items-center justify-center gap-3"
            onClick={() => handleContactClick('phone')}
          >
            <Phone className="h-5 w-5" />
            {t('viewShop.call')}
          </Button>
          <Button 
            className="h-14 rounded-xl bg-[#25D366] hover:bg-[#22C35E] text-white font-bold text-lg shadow-lg flex items-center justify-center gap-3 border-none"
            onClick={() => handleContactClick('whatsapp')}
          >
            <MessageCircle className="h-5 w-5" />
            {tr('viewShop.whatsapp', { fr: 'WhatsApp', en: 'WhatsApp', es: 'WhatsApp', it: 'WhatsApp', de: 'WhatsApp', ar: 'واتساب' })}
          </Button>
        </div>

        <div className="grid grid-cols-1 lg:grid-cols-12 gap-8 items-start">
          {/* Main Content Area (8/12) */}
          <div className="lg:col-span-8 space-y-8">
            
            {/* Info Tabs Section */}
            <Tabs defaultValue="products" className="w-full">
              <TabsList className="w-full justify-start h-12 bg-transparent p-0 mb-6 border-b rounded-none gap-8 overflow-x-auto no-scrollbar">
                <TabsTrigger 
                  value="products" 
                  className="rounded-none border-b-2 border-transparent px-2 pb-4 h-full data-[state=active]:bg-transparent data-[state=active]:border-orange-500 data-[state=active]:text-foreground data-[state=active]:shadow-none font-bold text-muted-foreground transition-all duration-300"
                >
                  {tr('viewShop.products', { fr: 'Produits', en: 'Products', es: 'Productos', it: 'Prodotti', de: 'Produkte', ar: 'المنتجات' })}
                </TabsTrigger>
                <TabsTrigger 
                  value="about" 
                  className="rounded-none border-b-2 border-transparent px-2 pb-4 h-full data-[state=active]:bg-transparent data-[state=active]:border-orange-500 data-[state=active]:text-foreground data-[state=active]:shadow-none font-bold text-muted-foreground transition-all duration-300"
                >
                  {t('viewShop.about')}
                </TabsTrigger>
                <TabsTrigger 
                  value="reviews" 
                  className="rounded-none border-b-2 border-transparent px-2 pb-4 h-full data-[state=active]:bg-transparent data-[state=active]:border-orange-500 data-[state=active]:text-foreground data-[state=active]:shadow-none font-bold text-muted-foreground transition-all duration-300"
                >
                  {t('viewShop.reviews')}
                </TabsTrigger>
                <TabsTrigger 
                  value="contact" 
                  className="rounded-none border-b-2 border-transparent px-2 pb-4 h-full data-[state=active]:bg-transparent data-[state=active]:border-orange-500 data-[state=active]:text-foreground data-[state=active]:shadow-none font-bold text-muted-foreground transition-all duration-300"
                >
                  {t('viewShop.contact')}
                </TabsTrigger>
              </TabsList>
              
              <AnimatePresence mode="wait">
                <TabsContent value="products" className="mt-0">
                  <motion.div
                    initial={{ opacity: 0, y: 10 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0, y: -10 }}
                    className="space-y-8"
                  >
                    <div className="flex items-center justify-between">
                      <h3 className="text-xl font-bold">{tr('viewShop.productCatalog', { fr: 'Catalogue Produits', en: 'Product Catalog', es: 'Catálogo de productos', it: 'Catalogo prodotti', de: 'Produktkatalog', ar: 'كتالوج المنتجات' })}</h3>
                      <Badge variant="secondary" className="rounded-full bg-orange-100 text-orange-700 dark:bg-orange-900/30 dark:text-orange-400 border-none">
                        {shop.productImageUrls.length} {tr('viewShop.items', { fr: 'articles', en: 'items', es: 'artículos', it: 'articoli', de: 'Artikel', ar: 'منتج' })}
                      </Badge>
                    </div>

                    {/* Featured Slider */}
                    {shop.productImageUrls.length > 0 && (
                      <Card className="overflow-hidden border-none shadow-xl bg-white dark:bg-slate-900">
                        <CardContent className="p-0">
                          <ShopImageGallery
                            images={shop.productImageUrls}
                            shopName={shop.name}
                          />
                        </CardContent>
                      </Card>
                    )}
                    
                    <div className="grid grid-cols-2 md:grid-cols-3 gap-4">
                      {shop.productImageUrls.map((url, index) => (
                        <motion.div 
                          key={index}
                          whileHover={{ scale: 1.02 }}
                          className="aspect-square rounded-2xl overflow-hidden border shadow-sm group cursor-pointer relative"
                        >
                          <img 
                            src={url} 
                            alt={`${tr('viewShop.product', { fr: 'Produit', en: 'Product', es: 'Producto', it: 'Prodotto', de: 'Produkt', ar: 'منتج' })} ${index + 1}`} 
                            className="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110"
                          />
                          <div className="absolute inset-0 bg-black/0 group-hover:bg-black/20 transition-colors flex items-center justify-center">
                            <div className="bg-white/90 p-2 rounded-full scale-0 group-hover:scale-100 transition-transform">
                              <Maximize2 className="h-4 w-4 text-slate-900" />
                            </div>
                          </div>
                        </motion.div>
                      ))}
                      {shop.productImageUrls.length === 0 && (
                        <div className="col-span-full py-16 text-center bg-slate-50 dark:bg-slate-900 rounded-3xl border-2 border-dashed border-slate-200 dark:border-slate-800">
                          <Package className="h-12 w-12 text-slate-300 mx-auto mb-3" />
                          <p className="text-slate-500 font-medium">{tr('viewShop.noProducts', { fr: 'Aucun produit affiché pour le moment.', en: 'No products displayed yet.', es: 'Aún no se muestran productos.', it: 'Nessun prodotto visualizzato al momento.', de: 'Derzeit keine Produkte angezeigt.', ar: 'لا توجد منتجات معروضة حالياً.' })}</p>
                          <p className="text-sm text-slate-400">{tr('viewShop.noProductsText', { fr: "Cette boutique n'a pas encore ajouté de photos de produits.", en: 'This shop has not added product photos yet.', es: 'Esta tienda aún no ha añadido fotos de productos.', it: 'Questo negozio non ha ancora aggiunto foto dei prodotti.', de: 'Dieser Shop hat noch keine Produktfotos hinzugefügt.', ar: 'لم يضف هذا المتجر صور منتجات بعد.' })}</p>
                        </div>
                      )}
                    </div>
                  </motion.div>
                </TabsContent>

                <TabsContent value="about" className="mt-0">
                  <motion.div
                    initial={{ opacity: 0, y: 10 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0, y: -10 }}
                    className="space-y-8"
                  >
                    {/* Description Section */}
                    <section className="space-y-4">
                      <h3 className="text-xl font-bold">{t('viewShop.description')}</h3>
                      <div className="text-slate-600 dark:text-slate-400 leading-relaxed bg-white dark:bg-slate-900 p-6 rounded-2xl shadow-sm border">
                        <MultilingualText text={shop.description} />
                      </div>
                    </section>

                    {/* Services & Options */}
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                      <Card className="border-none shadow-sm bg-blue-50/50 dark:bg-blue-900/10">
                        <CardHeader className="pb-2">
                          <CardTitle className="text-sm font-bold flex items-center gap-2 text-blue-600 dark:text-blue-400">
                            <Truck className="h-4 w-4" />
                            {tr('viewShop.delivery', { fr: 'Livraison', en: 'Delivery', es: 'Entrega', it: 'Consegna', de: 'Lieferung', ar: 'التوصيل' })}
                          </CardTitle>
                        </CardHeader>
                        <CardContent>
                          <p className="text-sm text-slate-600 dark:text-slate-400">
                            {shop.deliveryOptions?.available ? (
                              <>
                                {tr('viewShop.availableIn', { fr: 'Disponible :', en: 'Available in:', es: 'Disponible en:', it: 'Disponibile in:', de: 'Verfügbar in:', ar: 'متوفر في:' })} {shop.deliveryOptions.regions?.join(', ') || tr('viewShop.allWilayas', { fr: 'Toutes les wilayas', en: 'All wilayas', es: 'Todas las wilayas', it: 'Tutte le wilayas', de: 'Alle Wilayas', ar: 'جميع الولايات' })}
                              </>
                            ) : (
                              tr('viewShop.toBeDiscussed', { fr: 'À discuter avec le vendeur', en: 'To be discussed with the seller', es: 'A discutir con el vendedor', it: 'Da discutere con il venditore', de: 'Mit dem Verkäufer zu besprechen', ar: 'يتم الاتفاق مع البائع' })
                            )}
                          </p>
                        </CardContent>
                      </Card>

                      <Card className="border-none shadow-sm bg-green-50/50 dark:bg-green-900/10">
                        <CardHeader className="pb-2">
                          <CardTitle className="text-sm font-bold flex items-center gap-2 text-green-600 dark:text-green-400">
                            <CreditCard className="h-4 w-4" />
                            {tr('viewShop.payment', { fr: 'Paiement', en: 'Payment', es: 'Pago', it: 'Pagamento', de: 'Zahlung', ar: 'الدفع' })}
                          </CardTitle>
                        </CardHeader>
                        <CardContent>
                          <div className="flex flex-wrap gap-2">
                            {shop.paymentMethods?.cash && <Badge variant="outline" className="bg-white dark:bg-slate-800">{tr('viewShop.cash', { fr: 'Espèces', en: 'Cash', es: 'Efectivo', it: 'Contanti', de: 'Bar', ar: 'نقداً' })}</Badge>}
                            {shop.paymentMethods?.card && <Badge variant="outline" className="bg-white dark:bg-slate-800">{tr('viewShop.card', { fr: 'Carte', en: 'Card', es: 'Tarjeta', it: 'Carta', de: 'Karte', ar: 'بطاقة' })}</Badge>}
                            {shop.paymentMethods?.baridiMob && <Badge variant="outline" className="bg-white dark:bg-slate-800">BaridiMob</Badge>}
                            {!shop.paymentMethods && <span className="text-sm text-slate-600">{tr('viewShop.toBeDiscussed', { fr: 'À discuter avec le vendeur', en: 'To be discussed with the seller', es: 'A discutir con el vendedor', it: 'Da discutere con il venditore', de: 'Mit dem Verkäufer zu besprechen', ar: 'يتم الاتفاق مع البائع' })}</span>}
                          </div>
                        </CardContent>
                      </Card>
                    </div>

                    {/* Informations Section */}
                    <section className="space-y-4">
                      <h3 className="text-xl font-bold">{tr('viewShop.additionalInfo', { fr: 'Informations complémentaires', en: 'Additional information', es: 'Información adicional', it: 'Informazioni aggiuntive', de: 'Zusätzliche Informationen', ar: 'معلومات إضافية' })}</h3>
                      
                      <div className="grid grid-cols-1 gap-4">
                        {/* Type de Boutique */}
                        <div className="flex items-start gap-4 p-4 bg-slate-50 dark:bg-slate-900 rounded-xl border">
                          <div className="p-2 bg-white dark:bg-slate-800 rounded-lg shadow-sm">
                            <Store className="h-5 w-5 text-slate-500" />
                          </div>
                          <div className="space-y-1">
                            <p className="font-bold">{tr('viewShop.shopType', { fr: 'Type de Boutique', en: 'Shop type', es: 'Tipo de tienda', it: 'Tipo di negozio', de: 'Shop-Typ', ar: 'نوع المتجر' })}</p>
                            <div className="flex flex-wrap gap-2 pt-1">
                              {shop.isOnline && (
                                <Badge variant="outline" className="bg-blue-50 text-blue-700 border-blue-200 dark:bg-blue-900/20 dark:text-blue-400 dark:border-blue-800">
                                  {t('viewShop.onlineShop')}
                                </Badge>
                              )}
                              {shop.isPhysical && (
                                <Badge variant="outline" className="bg-purple-50 text-purple-700 border-purple-200 dark:bg-purple-900/20 dark:text-purple-400 dark:border-purple-800">
                                  {t('viewShop.physicalShop')}
                                </Badge>
                              )}
                              {!shop.isOnline && !shop.isPhysical && (
                                <span className="text-sm text-slate-500">{tr('viewShop.unspecified', { fr: 'Non spécifié', en: 'Not specified', es: 'No especificado', it: 'Non specificato', de: 'Nicht angegeben', ar: 'غير محدد' })}</span>
                              )}
                            </div>
                          </div>
                        </div>

                        {/* Horaires */}
                        <div className="flex items-start gap-4 p-4 bg-slate-50 dark:bg-slate-900 rounded-xl border">
                          <div className="p-2 bg-white dark:bg-slate-800 rounded-lg shadow-sm">
                            <Clock className="h-5 w-5 text-slate-500" />
                          </div>
                          <div className="space-y-1">
                            <p className="font-bold">{tr('viewShop.openingHours', { fr: "Horaires d'ouverture", en: 'Opening hours', es: 'Horario de apertura', it: 'Orari di apertura', de: 'Öffnungszeiten', ar: 'ساعات العمل' })}</p>
                            <p className="text-sm text-slate-500">
                              {shop.openingHours?.monday
                                ? `${tr('viewShop.weekdaysShort', { fr: 'Lun-Sam', en: 'Mon-Sat', es: 'Lun-Sáb', it: 'Lun-Sab', de: 'Mo-Sa', ar: 'الإثنين-السبت' })}: ${shop.openingHours.monday.open}-${shop.openingHours.monday.close}, ${tr('viewShop.sundayShort', { fr: 'Dim', en: 'Sun', es: 'Dom', it: 'Dom', de: 'So', ar: 'الأحد' })}: ${tr('viewShop.closed', { fr: 'Fermé', en: 'Closed', es: 'Cerrado', it: 'Chiuso', de: 'Geschlossen', ar: 'مغلق' })}`
                                : `${tr('viewShop.weekdaysShort', { fr: 'Lun-Sam', en: 'Mon-Sat', es: 'Lun-Sáb', it: 'Lun-Sab', de: 'Mo-Sa', ar: 'الإثنين-السبت' })}: 09:00-18:00, ${tr('viewShop.sundayShort', { fr: 'Dim', en: 'Sun', es: 'Dom', it: 'Dom', de: 'So', ar: 'الأحد' })}: ${tr('viewShop.closed', { fr: 'Fermé', en: 'Closed', es: 'Cerrado', it: 'Chiuso', de: 'Geschlossen', ar: 'مغلق' })}`}
                            </p>
                          </div>
                        </div>
                      </div>
                    </section>
                  </motion.div>
                </TabsContent>

                <TabsContent value="reviews" className="mt-0">
                  <motion.div
                    initial={{ opacity: 0, y: 10 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0, y: -10 }}
                    className="space-y-6"
                  >
                    <div className="flex items-center justify-between">
                      <h3 className="text-xl font-bold">{tr('viewShop.customerReviews', { fr: 'Avis Clients', en: 'Customer reviews', es: 'Reseñas de clientes', it: 'Recensioni clienti', de: 'Kundenbewertungen', ar: 'آراء العملاء' })}</h3>
                      <div className="flex items-center gap-1.5 font-bold text-yellow-500">
                        <Star className="h-5 w-5 fill-current" />
                        <span>{shop.rating?.toFixed(1)} / 5</span>
                      </div>
                    </div>

                    {currentUserReview && (
                      <Card className="border border-orange-200 bg-orange-50/80 shadow-sm">
                        <CardContent className="p-4 flex flex-col gap-3 sm:flex-row sm:items-center sm:justify-between">
                          <div>
                            <p className="text-sm font-bold text-orange-700">{tr('viewShop.yourReviewPublished', { fr: 'Votre avis est déjà publié', en: 'Your review is already published', es: 'Tu reseña ya está publicada', it: 'La tua recensione è già pubblicata', de: 'Ihre Bewertung ist bereits veröffentlicht', ar: 'تم نشر تقييمك بالفعل' })}</p>
                            <p className="text-sm text-orange-600">
                              {tr('viewShop.yourReviewPublishedText', { fr: `Vous avez donné ${currentUserReview.rating}/5 à cette boutique. Vous pouvez le modifier à tout moment.`, en: `You rated this shop ${currentUserReview.rating}/5. You can edit it anytime.`, es: `Has dado ${currentUserReview.rating}/5 a esta tienda. Puedes modificarlo en cualquier momento.`, it: `Hai dato ${currentUserReview.rating}/5 a questo negozio. Puoi modificarlo in qualsiasi momento.`, de: `Sie haben diesem Shop ${currentUserReview.rating}/5 gegeben. Sie können dies jederzeit ändern.`, ar: `لقد منحت هذا المتجر ${currentUserReview.rating}/5. يمكنك تعديله في أي وقت.` })}
                            </p>
                          </div>
                          <Button
                            className="rounded-xl bg-orange-500 hover:bg-orange-600 font-bold"
                            onClick={handleReviewClick}
                          >
                            {tr('viewShop.editMyReview', { fr: 'Modifier mon avis', en: 'Edit my review', es: 'Editar mi reseña', it: 'Modifica la mia recensione', de: 'Meine Bewertung bearbeiten', ar: 'تعديل تقييمي' })}
                          </Button>
                        </CardContent>
                      </Card>
                    )}

                    {reviews.length > 0 ? (
                      <div className="space-y-4 mt-6">
                        {reviews.map((review) => {
                          const isOwnReview = user?.id === review.user_id;

                          return (
                          <Card
                            key={review.id}
                            className={cn(
                              "shadow-sm bg-white dark:bg-slate-900 border",
                              isOwnReview
                                ? "border-orange-200 bg-orange-50/50"
                                : "border-slate-200"
                            )}
                          >
                            <CardContent className="p-4">
                              <div className="flex items-start justify-between gap-4">
                                <div className="flex items-center gap-3">
                                  <Avatar className="h-10 w-10">
                                    <AvatarImage src={review.profiles?.avatar_url} />
                                    <AvatarFallback className="bg-primary/10 text-primary">
                                      {review.profiles?.full_name?.substring(0, 2).toUpperCase() || 'U'}
                                    </AvatarFallback>
                                  </Avatar>
                                  <div>
                                    <div className="flex items-center gap-2">
                                      <p className="font-semibold text-sm">{review.profiles?.full_name || tr('viewShop.user', { fr: 'Utilisateur', en: 'User', es: 'Usuario', it: 'Utente', de: 'Benutzer', ar: 'مستخدم' })}</p>
                                      {isOwnReview && (
                                        <span className="rounded-full bg-orange-100 px-2 py-0.5 text-[11px] font-bold text-orange-700">
                                          {tr('viewShop.yourReview', { fr: 'Votre avis', en: 'Your review', es: 'Tu reseña', it: 'La tua recensione', de: 'Ihre Bewertung', ar: 'تقييمك' })}
                                        </span>
                                      )}
                                    </div>
                                    <p className="text-xs text-slate-500">
                                      {formatLocalizedDate(review.created_at)}
                                    </p>
                                  </div>
                                </div>
                                <div className="flex items-center gap-0.5 text-yellow-500">
                                  {[1, 2, 3, 4, 5].map((star) => (
                                    <Star 
                                      key={star} 
                                      className={`h-3.5 w-3.5 ${star <= review.rating ? 'fill-current' : 'text-slate-300'}`} 
                                    />
                                  ))}
                                </div>
                              </div>
                              {review.comment && (
                                <p className="mt-3 text-sm text-slate-700 dark:text-slate-300 leading-relaxed">
                                  {review.comment}
                                </p>
                              )}
                            </CardContent>
                          </Card>
                        )})}
                      </div>
                    ) : (
                      <Card className="border-none shadow-sm bg-slate-50 dark:bg-slate-900/50">
                        <CardContent className="text-center py-12">
                          <div className="bg-white dark:bg-slate-800 w-20 h-20 rounded-full flex items-center justify-center mx-auto mb-4 shadow-sm border">
                            <MessageCircle className="h-10 w-10 text-slate-300" />
                          </div>
                          <h3 className="text-xl font-bold mb-2">{tr('viewShop.shareExperience', { fr: 'Partagez votre expérience', en: 'Share your experience', es: 'Comparte tu experiencia', it: 'Condividi la tua esperienza', de: 'Teilen Sie Ihre Erfahrung', ar: 'شارك تجربتك' })}</h3>
                          <p className="text-slate-500 text-sm mb-8 max-w-xs mx-auto">
                            {tr('viewShop.shareExperienceText', { fr: "Votre avis aide les autres utilisateurs à découvrir les meilleures boutiques d'Algérie.", en: 'Your review helps other users discover the best shops in Algeria.', es: 'Tu reseña ayuda a otros usuarios a descubrir las mejores tiendas de Argelia.', it: 'La tua recensione aiuta gli altri utenti a scoprire i migliori negozi in Algeria.', de: 'Ihre Bewertung hilft anderen Nutzern, die besten Geschäfte Algeriens zu entdecken.', ar: 'يساعد تقييمك المستخدمين الآخرين على اكتشاف أفضل المتاجر في الجزائر.' })}
                          </p>
                          <div className="flex flex-col sm:flex-row gap-3 justify-center">
                            <Button className="rounded-xl px-8 bg-orange-500 hover:bg-orange-600 font-bold h-12" onClick={handleReviewClick}>
                              {currentUserReview ? tr('viewShop.editMyReview', { fr: 'Modifier mon avis', en: 'Edit my review', es: 'Editar mi reseña', it: 'Modifica la mia recensione', de: 'Meine Bewertung bearbeiten', ar: 'تعديل تقييمي' }) : tr('viewShop.leaveReview', { fr: 'Laisser un avis', en: 'Leave a review', es: 'Dejar una reseña', it: 'Lascia una recensione', de: 'Bewertung abgeben', ar: 'اترك تقييماً' })}
                            </Button>
                          </div>
                        </CardContent>
                      </Card>
                    )}
                    
                    {reviews.length > 0 && !currentUserReview && (
                      <div className="flex justify-center mt-6">
                        <Button className="rounded-xl px-8 bg-orange-500 hover:bg-orange-600 font-bold h-12" onClick={handleReviewClick}>
                          {currentUserReview ? tr('viewShop.editMyReview', { fr: 'Modifier mon avis', en: 'Edit my review', es: 'Editar mi reseña', it: 'Modifica la mia recensione', de: 'Meine Bewertung bearbeiten', ar: 'تعديل تقييمي' }) : tr('viewShop.leaveReview', { fr: 'Laisser un avis', en: 'Leave a review', es: 'Dejar una reseña', it: 'Lascia una recensione', de: 'Bewertung abgeben', ar: 'اترك تقييماً' })}
                        </Button>
                      </div>
                    )}
                  </motion.div>
                </TabsContent>

                <TabsContent value="contact" className="mt-0">
                  <motion.div
                    initial={{ opacity: 0, y: 10 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0, y: -10 }}
                    className="space-y-6"
                  >
                    <h3 className="text-xl font-bold">{tr('viewShop.contactAndLocation', { fr: 'Contact & Localisation', en: 'Contact & Location', es: 'Contacto y ubicación', it: 'Contatto e posizione', de: 'Kontakt & Standort', ar: 'التواصل والموقع' })}</h3>
                    
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                      <div className="space-y-4">
                        <Card className="border-none shadow-sm bg-white dark:bg-slate-900 border">
                          <CardContent className="p-6 space-y-6">
                            <div className="flex items-start gap-4">
                              <div className="w-10 h-10 rounded-xl bg-orange-50 flex items-center justify-center shrink-0">
                                <Phone className="h-5 w-5 text-orange-500" />
                              </div>
                              <div className="space-y-1">
                                <p className="text-xs font-bold text-slate-400 uppercase tracking-wider">{tr('viewShop.phone', { fr: 'Téléphone', en: 'Phone', es: 'Teléfono', it: 'Telefono', de: 'Telefon', ar: 'الهاتف' })}</p>
                                <p className="font-bold text-lg">{displayPhoneNumbers[0]}</p>
                                {displayPhoneNumbers.length > 1 && (
                                  <p className="text-sm text-slate-500">{displayPhoneNumbers.slice(1).join(', ')}</p>
                                )}
                              </div>
                            </div>

                            <div className="flex items-start gap-4">
                              <div className="w-10 h-10 rounded-xl bg-green-50 flex items-center justify-center shrink-0">
                                <MessageCircle className="h-5 w-5 text-green-500" />
                              </div>
                              <div className="space-y-1">
                                <p className="text-xs font-bold text-slate-400 uppercase tracking-wider">{tr('viewShop.whatsapp', { fr: 'WhatsApp', en: 'WhatsApp', es: 'WhatsApp', it: 'WhatsApp', de: 'WhatsApp', ar: 'واتساب' })}</p>
                                <p className="font-bold text-lg">{displayWhatsappNumber}</p>
                              </div>
                            </div>

                            <div className="flex items-start gap-4">
                              <div className="w-10 h-10 rounded-xl bg-blue-50 flex items-center justify-center shrink-0">
                                <MapPin className="h-5 w-5 text-blue-500" />
                              </div>
                              <div className="space-y-1">
                                <p className="text-xs font-bold text-slate-400 uppercase tracking-wider">{tr('viewShop.address', { fr: 'Adresse', en: 'Address', es: 'Dirección', it: 'Indirizzo', de: 'Adresse', ar: 'العنوان' })}</p>
                                <p className="font-bold">{localizedShopAddress}</p>
                              </div>
                            </div>
                          </CardContent>
                        </Card>

                        <div className="flex gap-3">
                          <Button
                            className="flex-1 bg-orange-500 hover:bg-orange-600 h-12 rounded-xl font-bold"
                            onClick={handleCallShop}
                            disabled={!phoneNumbers[0]}
                          >
                            {t('viewShop.call')}
                          </Button>
                          <Button variant="outline" className="flex-1 h-12 rounded-xl font-bold border-2" onClick={handleMessageClick}>
                            <MessageCircle className="h-5 w-5 mr-2" />
                            {tr('viewShop.message', { fr: 'Message', en: 'Message', es: 'Mensaje', it: 'Messaggio', de: 'Nachricht', ar: 'رسالة' })}
                          </Button>
                        </div>
                      </div>

                      <div className="space-y-4">
                        <div className="rounded-2xl overflow-hidden border shadow-lg h-[300px] md:h-full min-h-[300px] relative group">
                          <LocationPicker 
                            initialLat={shop.gpsCoordinates?.lat} 
                            initialLng={shop.gpsCoordinates?.lng} 
                            readOnly={true}
                          />
                          <div className="absolute bottom-4 left-4 right-4 bg-white/90 dark:bg-slate-900/90 backdrop-blur-md p-3 rounded-xl shadow-xl border flex items-center justify-between">
                            <div className="flex items-center gap-2">
                              <Navigation className="h-4 w-4 text-blue-500" />
                              <span className="text-xs font-bold truncate">{localizedShopAddress || localizedShopWilaya}</span>
                            </div>
                            <Button size="sm" variant="ghost" className="h-8 w-8 p-0 rounded-full" asChild>
                              <a href={`https://www.google.com/maps?q=${shop.gpsCoordinates?.lat},${shop.gpsCoordinates?.lng}`} target="_blank" rel="noopener noreferrer">
                                <ExternalLink className="h-4 w-4" />
                              </a>
                            </Button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </motion.div>
                </TabsContent>
              </AnimatePresence>
            </Tabs>
          </div>

          {/* Sidebar Area (4/12) */}
          <div className="lg:col-span-4 space-y-6">
            {/* Quick Actions Card */}
            <Card className="border-none shadow-lg bg-[#0F172A] text-white overflow-hidden">
              <div className="p-6 space-y-6">
                <div className="space-y-2">
                  <h3 className="text-xl font-bold">{tr('viewShop.quickActions', { fr: 'Actions rapides', en: 'Quick actions', es: 'Acciones rápidas', it: 'Azioni rapide', de: 'Schnellaktionen', ar: 'إجراءات سريعة' })}</h3>
                  <p className="text-slate-400 text-sm">{tr('viewShop.contactShopDirectly', { fr: 'Contacter directement la boutique', en: 'Contact the shop directly', es: 'Contactar directamente con la tienda', it: 'Contatta direttamente il negozio', de: 'Shop direkt kontaktieren', ar: 'اتصل بالمتجر مباشرة' })}</p>
                </div>
                
                <div className="space-y-3">
                  <Button 
                    variant="secondary" 
                    onClick={handleCallShop}
                    className="w-full h-12 rounded-xl bg-white hover:bg-slate-100 text-slate-900 font-bold"
                    disabled={!phoneNumbers[0]}
                  >
                    <Phone className="h-4 w-4 mr-2" />
                    {tr('viewShop.callNow', { fr: 'Appeler maintenant', en: 'Call now', es: 'Llamar ahora', it: 'Chiama ora', de: 'Jetzt anrufen', ar: 'اتصل الآن' })}
                  </Button>
                  <Button 
                    variant="secondary" 
                    onClick={handleMessageClick}
                    className="w-full h-12 rounded-xl bg-slate-800 hover:bg-slate-700 border-none text-white"
                  >
                    <MessageCircle className="h-4 w-4 mr-2 text-blue-400" />
                    {tr('viewShop.sendMessage', { fr: 'Envoyer un message', en: 'Send a message', es: 'Enviar un mensaje', it: 'Invia un messaggio', de: 'Nachricht senden', ar: 'أرسل رسالة' })}
                  </Button>
                </div>
              </div>

              <div className="pt-4 border-t border-slate-800 flex items-center justify-between p-6">
                <div className="flex items-center gap-3">
                  <div className="w-10 h-10 rounded-full bg-slate-800 flex items-center justify-center">
                    <ShieldCheck className="h-5 w-5 text-blue-400" />
                  </div>
                  <div className="text-xs">
                    <p className="font-bold text-slate-200">{tr('viewShop.securePurchase', { fr: 'Achat sécurisé', en: 'Secure purchase', es: 'Compra segura', it: 'Acquisto sicuro', de: 'Sicherer Kauf', ar: 'شراء آمن' })}</p>
                    <p className="text-slate-500">{tr('viewShop.verifiedByAladdin', { fr: 'Vérifié par Aladdin', en: 'Verified by Aladdin', es: 'Verificado por Aladdin', it: 'Verificato da Aladdin', de: 'Von Aladdin verifiziert', ar: 'موثّق من علاء الدين' })}</p>
                  </div>
                </div>
                <ChevronRight className="h-4 w-4 text-slate-600" />
              </div>
            </Card>

            {/* Opening Hours Card */}
            <Card className="border-none shadow-lg">
              <CardHeader className="pb-3 border-b border-slate-50 dark:border-slate-800">
                <CardTitle className="text-lg flex items-center gap-2">
                  <Clock className="h-5 w-5 text-orange-500" />
                  {tr('viewShop.openingHours', { fr: "Horaires d'ouverture", en: 'Opening hours', es: 'Horario de apertura', it: 'Orari di apertura', de: 'Öffnungszeiten', ar: 'ساعات العمل' })}
                </CardTitle>
              </CardHeader>
              <CardContent className="pt-4">
                <div className="space-y-2.5">
                  {days.map((day) => {
                    const hours = shop.openingHours?.[day];
                    const isToday = day === days[new Date().getDay() === 0 ? 6 : new Date().getDay() - 1];
                    
                    return (
                      <div key={day} className={`flex items-center justify-between text-sm ${isToday ? 'font-bold text-orange-500' : 'text-slate-600 dark:text-slate-400'}`}>
                        <span className="flex items-center gap-2">
                          {isToday && <div className="w-1.5 h-1.5 rounded-full bg-orange-500 animate-pulse" />}
                          {getDayLabel(day)}
                        </span>
                        <span>
                          {hours?.closed ? tr('viewShop.closed', { fr: 'Fermé', en: 'Closed', es: 'Cerrado', it: 'Chiuso', de: 'Geschlossen', ar: 'مغلق' }) : `${hours?.open || '09:00'} - ${hours?.close || '18:00'}`}
                        </span>
                      </div>
                    );
                  })}
                </div>
              </CardContent>
            </Card>

            {/* Social Media & Sharing */}
            <Card className="border-none shadow-lg">
              <CardHeader className="pb-3 border-b border-slate-50 dark:border-slate-800">
                <CardTitle className="text-lg flex items-center gap-2">
                  <Share2 className="h-5 w-5 text-blue-500" />
                  {tr('viewShop.socialMedia', { fr: 'Réseaux sociaux', en: 'Social media', es: 'Redes sociales', it: 'Social media', de: 'Soziale Netzwerke', ar: 'وسائل التواصل الاجتماعي' })}
                </CardTitle>
              </CardHeader>
              <CardContent className="pt-6">
                {socialLinks.length > 0 ? (
                  <div className="flex flex-wrap gap-4 justify-center">
                    {socialLinks.map((link, i) => (
                      <motion.a
                        key={i}
                        href={link.url}
                        target="_blank"
                        rel="noopener noreferrer"
                        whileHover={{ scale: 1.1, y: -2 }}
                        whileTap={{ scale: 0.95 }}
                        className={`w-12 h-12 rounded-2xl bg-slate-50 dark:bg-slate-800 flex items-center justify-center border shadow-sm transition-colors hover:bg-white dark:hover:bg-slate-700 ${link.color}`}
                        title={link.label}
                      >
                        <link.icon className="h-6 w-6" />
                      </motion.a>
                    ))}
                  </div>
                ) : (
                  <p className="text-sm text-slate-500 text-center italic">{tr('viewShop.noSocialMedia', { fr: 'Aucun réseau social lié.', en: 'No social media linked.', es: 'No hay redes sociales vinculadas.', it: 'Nessun social collegato.', de: 'Keine sozialen Netzwerke verknüpft.', ar: 'لا توجد شبكات اجتماعية مرتبطة.' })}</p>
                )}
              </CardContent>
            </Card>

            {/* Location Map Preview Placeholder */}
            <Card className="border-none shadow-lg overflow-hidden group cursor-pointer">
              <div className="h-40 bg-slate-200 dark:bg-slate-800 relative">
                <div className="absolute inset-0 flex items-center justify-center">
                  <div className="text-center space-y-2">
                    <Navigation className="h-8 w-8 text-slate-400 mx-auto group-hover:text-orange-500 transition-colors" />
                    <p className="text-xs font-bold text-slate-500 uppercase tracking-widest">{tr('viewShop.viewOnMap', { fr: 'Voir sur la carte', en: 'View on map', es: 'Ver en el mapa', it: 'Vedi sulla mappa', de: 'Auf der Karte ansehen', ar: 'عرض على الخريطة' })}</p>
                  </div>
                </div>
                <div className="absolute inset-0 bg-gradient-to-t from-black/40 to-transparent" />
                <div className="absolute bottom-3 left-3 text-white text-xs font-medium">
                  {[localizedShopWilaya, tr('viewShop.algeria', { fr: 'Algérie', en: 'Algeria', es: 'Argelia', it: 'Algeria', de: 'Algerien', ar: 'الجزائر' })].filter(Boolean).join(', ')}
                </div>
              </div>
            </Card>
          </div>
        </div>
      </div>

      {/* Mobile Sticky Contact Bar */}
      <div className="lg:hidden fixed bottom-0 left-0 right-0 z-50 bg-white/90 dark:bg-slate-900/90 backdrop-blur-xl border-t p-4 flex gap-3 pb-safe">
        <Button 
          variant="outline" 
          size="icon" 
          asChild 
          className="w-14 h-14 rounded-2xl border-2 shrink-0"
        >
          <a href={`tel:${shop.phoneNumbers[0]}`}>
            <Phone className="h-5 w-5" />
          </a>
        </Button>
        <Button
          variant="outline"
          size="icon"
          onClick={() => setShowReportModal(true)}
          className="w-14 h-14 rounded-2xl border-2 shrink-0"
        >
          <AlertTriangle className="h-5 w-5" />
        </Button>
        <Button 
          onClick={handleMessageClick} 
          className="flex-1 h-14 rounded-2xl bg-orange-500 hover:bg-orange-600 text-white font-bold"
        >
          {t('viewShop.contactShop')}
        </Button>
      </div>

      <Dialog open={showReportModal} onOpenChange={(open) => !open && setShowReportModal(false)}>
        <DialogContent className="sm:max-w-md">
          <DialogHeader>
            <DialogTitle>{tr('viewShop.reportContent', { fr: 'Signaler ce contenu', en: 'Report this content', es: 'Reportar este contenido', it: 'Segnala questo contenuto', de: 'Diesen Inhalt melden', ar: 'الإبلاغ عن هذا المحتوى' })}</DialogTitle>
            <DialogDescription>
              {tr('viewShop.reportDescription', { fr: "Aidez-nous à garder Aladdin sûr. Sélectionnez une cause et ajoutez des détails si nécessaire.", en: 'Help us keep Aladdin safe. Select a reason and add details if necessary.', es: 'Ayúdanos a mantener Aladdin seguro. Selecciona una razón y añade detalles si es necesario.', it: 'Aiutaci a mantenere Aladdin sicuro. Seleziona un motivo e aggiungi dettagli se necessario.', de: 'Helfen Sie uns, Aladdin sicher zu halten. Wählen Sie einen Grund und fügen Sie bei Bedarf Details hinzu.', ar: 'ساعدنا في الحفاظ على أمان علاء الدين. اختر سبباً وأضف التفاصيل عند الحاجة.' })}
            </DialogDescription>
          </DialogHeader>

          <div className="space-y-4">
            <div className="space-y-2">
              <Label>{tr('viewShop.reportReason', { fr: 'Cause de signalement ?', en: 'Reason for report?', es: '¿Motivo del reporte?', it: 'Motivo della segnalazione?', de: 'Meldegrund?', ar: 'سبب الإبلاغ؟' })}</Label>
              <Select value={reportReason} onValueChange={setReportReason}>
                <SelectTrigger>
                  <SelectValue placeholder={tr('viewShop.selectReason', { fr: 'Sélectionner une cause', en: 'Select a reason', es: 'Selecciona un motivo', it: 'Seleziona un motivo', de: 'Grund auswählen', ar: 'اختر سبباً' })} />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="illegal">{tr('viewShop.reportReasons.illegal', { fr: 'Contenu illicite', en: 'Illegal content', es: 'Contenido ilegal', it: 'Contenuto illecito', de: 'Illegale Inhalte', ar: 'محتوى غير قانوني' })}</SelectItem>
                  <SelectItem value="impersonation">{tr('viewShop.reportReasons.impersonation', { fr: 'Usurpation', en: 'Impersonation', es: 'Suplantación', it: 'Frode d’identità', de: 'Identitätsmissbrauch', ar: 'انتحال شخصية' })}</SelectItem>
                  <SelectItem value="wrong_phone">{tr('viewShop.reportReasons.wrongPhone', { fr: 'Téléphone incorrect', en: 'Incorrect phone', es: 'Teléfono incorrecto', it: 'Telefono errato', de: 'Falsche Telefonnummer', ar: 'رقم هاتف غير صحيح' })}</SelectItem>
                  <SelectItem value="wrong_category">{tr('viewShop.reportReasons.wrongCategory', { fr: 'Mauvaise rubrique', en: 'Wrong category', es: 'Categoría incorrecta', it: 'Categoria errata', de: 'Falsche Kategorie', ar: 'فئة غير صحيحة' })}</SelectItem>
                  <SelectItem value="scam">{tr('viewShop.reportReasons.scam', { fr: 'Arnaque', en: 'Scam', es: 'Estafa', it: 'Truffa', de: 'Betrug', ar: 'احتيال' })}</SelectItem>
                  <SelectItem value="spam">{tr('viewShop.reportReasons.spam', { fr: 'Spam / répétition', en: 'Spam / repetition', es: 'Spam / repetición', it: 'Spam / ripetizione', de: 'Spam / Wiederholung', ar: 'رسائل مزعجة / تكرار' })}</SelectItem>
                  <SelectItem value="inappropriate">{tr('viewShop.reportReasons.inappropriate', { fr: 'Contenu inapproprié', en: 'Inappropriate content', es: 'Contenido inapropiado', it: 'Contenuto inappropriato', de: 'Unangemessene Inhalte', ar: 'محتوى غير لائق' })}</SelectItem>
                  <SelectItem value="copyright">{tr('viewShop.reportReasons.copyright', { fr: 'Droits d’auteur', en: 'Copyright', es: 'Derechos de autor', it: 'Copyright', de: 'Urheberrecht', ar: 'حقوق النشر' })}</SelectItem>
                  <SelectItem value="other">{tr('viewShop.reportReasons.other', { fr: 'Autre', en: 'Other', es: 'Otro', it: 'Altro', de: 'Andere', ar: 'أخرى' })}</SelectItem>
                </SelectContent>
              </Select>
            </div>

            <div className="space-y-2">
              <Label>{tr('viewShop.reportDetails', { fr: 'Détails (optionnel)', en: 'Details (optional)', es: 'Detalles (opcional)', it: 'Dettagli (facoltativo)', de: 'Details (optional)', ar: 'التفاصيل (اختياري)' })}</Label>
              <Textarea
                value={reportDetails}
                onChange={(e) => setReportDetails(e.target.value)}
                placeholder={tr('viewShop.reportDetailsPlaceholder', { fr: 'Décrivez le problème (optionnel)', en: 'Describe the issue (optional)', es: 'Describe el problema (opcional)', it: 'Descrivi il problema (facoltativo)', de: 'Beschreiben Sie das Problem (optional)', ar: 'صف المشكلة (اختياري)' })}
                rows={4}
                className="resize-none"
              />
            </div>

            <div className="flex items-center justify-end gap-2">
              <Button
                variant="outline"
                onClick={() => setShowReportModal(false)}
                disabled={reportSubmitting}
              >
                {tr('common.cancel', { fr: 'Annuler', en: 'Cancel', es: 'Cancelar', it: 'Annulla', de: 'Abbrechen', ar: 'إلغاء' })}
              </Button>
              <Button onClick={submitReport} disabled={reportSubmitting}>
                {reportSubmitting ? tr('viewShop.sending', { fr: 'Envoi...', en: 'Sending...', es: 'Enviando...', it: 'Invio...', de: 'Senden...', ar: 'جارٍ الإرسال...' }) : tr('common.send', { fr: 'Envoyer', en: 'Send', es: 'Enviar', it: 'Invia', de: 'Senden', ar: 'إرسال' })}
              </Button>
            </div>
          </div>
        </DialogContent>
      </Dialog>

      {/* Modal de contact */}
      {showContactModal && (
        <ContactModal
          shop={shop}
          onClose={() => setShowContactModal(false)}
        />
      )}
      {showReviewModal && shop && (
        <ShopReviewModal
          isOpen={showReviewModal}
          onClose={() => setShowReviewModal(false)}
          shopId={shop.id}
          shopName={shop.name}
          existingReview={currentUserReview}
          onReviewSubmitted={async () => {
            const data = await fetchShopReviews(shop.id);
            const avg = data.length > 0
              ? data.reduce((acc, curr) => acc + curr.rating, 0) / data.length
              : 0;
            setShop(prev => prev ? { ...prev, rating: avg, reviewCount: data.length } : null);
          }}
        />
      )}
    </div>
  );
};

export default ShopDetails;
