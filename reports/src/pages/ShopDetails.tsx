import React, { useState, useEffect } from 'react';
import { useParams, Link } from 'react-router-dom';
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
import LocationPicker from '@/components/ui/LocationPicker';
import MultilingualText from '@/components/ui/MultilingualText';
import { safeStringify } from '@/utils/safeStringify';
import { logger } from '@/utils/silentLogger';
import { supabase } from '@/integrations/supabase/client';
import { Shop } from '@/types/shop';
import { useAuth } from '@/contexts/useAuth';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { generateSessionId } from '@/utils/searchUtils';

const ShopDetails: React.FC = () => {
  const [shop, setShop] = useState<Shop | null>(null);
  const [loading, setLoading] = useState(true);
  const [isFavorite, setIsFavorite] = useState(false);
  const [showContactModal, setShowContactModal] = useState(false);
  const [showReportModal, setShowReportModal] = useState(false);
  const [reportReason, setReportReason] = useState('');
  const [reportDetails, setReportDetails] = useState('');
  const [reportSubmitting, setReportSubmitting] = useState(false);
  const { id } = useParams<{ id: string }>();
  const { toast } = useToast();
  const { getLocalizedPath } = useLanguageNavigation();
  const { user } = useAuth();
  const { t } = useSafeI18nWithRouter();

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
        title: "Cause requise",
        description: "Veuillez sélectionner une cause de signalement.",
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

      const { error } = await supabase.from('reports').insert(payload as any);
      if (error) throw error;

      toast({
        title: "Signalement envoyé",
        description: "Merci. Notre équipe va examiner ce contenu.",
      });

      setShowReportModal(false);
      setReportReason('');
      setReportDetails('');
    } catch (error) {
      logger.error('Error submitting report:', error);
      toast({
        title: "Erreur",
        description: "Impossible d'envoyer le signalement. Veuillez réessayer plus tard.",
        variant: "destructive"
      });
    } finally {
      setReportSubmitting(false);
    }
  };

  // Effet pour charger les données de la boutique
  useEffect(() => {
    console.log("Modernized ShopDetails Page Loaded:", id);
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
            socialMedia: (data.social_media as any) ?? undefined,
            openingHours: (data.opening_hours as any) ?? undefined,
            deliveryOptions: (data.delivery_options as any) ?? undefined,
            paymentMethods: (data.payment_methods as any) ?? undefined,
            rating: 4.5, // Valeur par défaut
            reviewCount: 0,
            followerCount: data.view_count || 0,
            gpsCoordinates: data.gps_coordinates as { lat: number; lng: number } || { lat: 36.75, lng: 3.06 }
          };
          setShop(adaptedShop);

          const viewKey = `viewed_shop_${id}`;
          if (!sessionStorage.getItem(viewKey)) {
            sessionStorage.setItem(viewKey, '1');
            try {
              await (supabase as any).rpc('increment_shop_view_count', { shop_uuid: id });
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
          title: "Erreur",
          description: "Impossible de charger les informations de la boutique",
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

  const [isOwnerOnline, setIsOwnerOnline] = useState(false);

  // Vérifier le statut de connexion du propriétaire
  useEffect(() => {
    if (!shop?.ownerId) return;

    const checkOwnerPresence = async () => {
      try {
        const { data, error } = await supabase
          .from('user_presence' as any)
          .select('last_seen_at')
          .eq('user_id', shop.ownerId)
          .maybeSingle();

        if (error) throw error;

        const lastSeenAt = (data as any)?.last_seen_at as string | null | undefined;
        if (lastSeenAt) {
          const lastSeen = new Date(lastSeenAt);
          const now = new Date();
          const diffMinutes = (now.getTime() - lastSeen.getTime()) / (1000 * 60);
          // Considérer en ligne si vu dans les 5 dernières minutes
          setIsOwnerOnline(diffMinutes < 5);
        } else {
          setIsOwnerOnline(false);
        }
      } catch (err) {
        console.error('Error checking owner presence:', err);
      }
    };

    checkOwnerPresence();
    
    // Polling toutes les minutes
    const interval = setInterval(checkOwnerPresence, 60000);
    return () => clearInterval(interval);
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
        
        toast({
          title: t('viewShop.addedToFavorites'),
          description: t('viewShop.addedToFavorites'),
        });
      } else {
        const { error } = await supabase
          .from('shop_favorites')
          .delete()
          .eq('user_id', user.id)
          .eq('shop_id', shop.id);
          
        if (error) throw error;
        
        toast({
          title: t('viewShop.removedFromFavorites'),
          description: t('viewShop.removedFromFavorites'),
        });
      }
    } catch (error) {
      console.error("Error updating favorites:", error);
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
      // Fallback pour les navigateurs qui ne supportent pas l'API Web Share
      navigator.clipboard.writeText(shopUrl);
      toast({
        title: "Lien copié",
        description: "Le lien de la boutique a été copié dans votre presse-papiers",
      });
    }
  };

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
                <h3 className="text-2xl font-bold mb-3">Boutique introuvable</h3>
                <p className="text-muted-foreground mb-8">
                  La boutique que vous recherchez n'existe pas ou a été déplacée.
                </p>
                <Button asChild size="lg" className="rounded-full px-8">
                  <Link to={getLocalizedPath('/')} className="flex items-center gap-2">
                    <ArrowLeft className="h-4 w-4" />
                    Retour à l'accueil
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
  const dayNames: Record<string, string> = {
    monday: 'Lundi', tuesday: 'Mardi', wednesday: 'Mercredi', thursday: 'Jeudi',
    friday: 'Vendredi', saturday: 'Samedi', sunday: 'Dimanche'
  };
  const phoneNumbers = shop.phoneNumbers ?? [];
  const displayPhoneNumbers = phoneNumbers;
  const rawWhatsappNumber = shop.whatsappNumber || phoneNumbers[0] || '';
  const displayWhatsappNumber = rawWhatsappNumber;
  const handleCallShop = () => {
    if (!phoneNumbers[0]) return;
    window.location.href = `tel:${phoneNumbers[0]}`;
  };

  return (
    <div className="min-h-screen bg-slate-50/50 dark:bg-slate-950/50 pb-20">
      {/* Hero Banner Section */}
      <div className="relative h-48 md:h-72 lg:h-80 w-full overflow-hidden">
        {shop.bannerUrl ? (
          <img 
            src={shop.bannerUrl} 
            alt="Boutique Banner" 
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
            {isOwnerOnline ? "Utilisateur En Ligne" : "Utilisateur Déconnecté"}
          </Badge>
          
          {shop.isVerified && (
            <Badge className="bg-purple-500 hover:bg-purple-600 text-white border-none px-3 py-1 rounded-full text-xs font-bold flex items-center gap-1">
              <BadgeCheck className="h-3 w-3" />
              Vérifiée
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
                  <span className="text-xs font-bold text-slate-400 uppercase tracking-wider">Note</span>
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
                  <span className="text-xs font-bold text-slate-400 uppercase tracking-wider">Vues</span>
                  <div className="flex items-center gap-1.5 font-bold text-slate-900 dark:text-white">
                    <Eye className="h-4 w-4 text-slate-500" />
                    <span>{shop.followerCount?.toLocaleString()}</span>
                  </div>
                </div>

                <div className="w-px h-8 bg-slate-200 dark:bg-slate-800 hidden sm:block" />

                <div className="flex flex-col">
                  <span className="text-xs font-bold text-slate-400 uppercase tracking-wider">Localisation</span>
                  <div className="flex items-center gap-1.5 font-bold text-slate-900 dark:text-white">
                    <MapPin className="h-4 w-4 text-slate-400" />
                    <span>{shop.wilaya}</span>
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
            Appeler
          </Button>
          <Button 
            className="h-14 rounded-xl bg-[#25D366] hover:bg-[#22C35E] text-white font-bold text-lg shadow-lg flex items-center justify-center gap-3 border-none"
            onClick={() => handleContactClick('whatsapp')}
          >
            <MessageCircle className="h-5 w-5" />
            WhatsApp
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
                  Produits
                </TabsTrigger>
                <TabsTrigger 
                  value="about" 
                  className="rounded-none border-b-2 border-transparent px-2 pb-4 h-full data-[state=active]:bg-transparent data-[state=active]:border-orange-500 data-[state=active]:text-foreground data-[state=active]:shadow-none font-bold text-muted-foreground transition-all duration-300"
                >
                  À propos
                </TabsTrigger>
                <TabsTrigger 
                  value="reviews" 
                  className="rounded-none border-b-2 border-transparent px-2 pb-4 h-full data-[state=active]:bg-transparent data-[state=active]:border-orange-500 data-[state=active]:text-foreground data-[state=active]:shadow-none font-bold text-muted-foreground transition-all duration-300"
                >
                  Avis
                </TabsTrigger>
                <TabsTrigger 
                  value="contact" 
                  className="rounded-none border-b-2 border-transparent px-2 pb-4 h-full data-[state=active]:bg-transparent data-[state=active]:border-orange-500 data-[state=active]:text-foreground data-[state=active]:shadow-none font-bold text-muted-foreground transition-all duration-300"
                >
                  Contact
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
                      <h3 className="text-xl font-bold">Catalogue Produits</h3>
                      <Badge variant="secondary" className="rounded-full bg-orange-100 text-orange-700 dark:bg-orange-900/30 dark:text-orange-400 border-none">
                        {shop.productImageUrls.length} articles
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
                            alt={`Produit ${index + 1}`} 
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
                          <p className="text-slate-500 font-medium">Aucun produit affiché pour le moment.</p>
                          <p className="text-sm text-slate-400">Cette boutique n'a pas encore ajouté de photos de produits.</p>
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
                      <h3 className="text-xl font-bold">Description</h3>
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
                            Livraison
                          </CardTitle>
                        </CardHeader>
                        <CardContent>
                          <p className="text-sm text-slate-600 dark:text-slate-400">
                            {shop.deliveryOptions?.available ? (
                              <>Disponible : {shop.deliveryOptions.regions?.join(', ') || 'Toutes les wilayas'}</>
                            ) : (
                              'À discuter avec le vendeur'
                            )}
                          </p>
                        </CardContent>
                      </Card>

                      <Card className="border-none shadow-sm bg-green-50/50 dark:bg-green-900/10">
                        <CardHeader className="pb-2">
                          <CardTitle className="text-sm font-bold flex items-center gap-2 text-green-600 dark:text-green-400">
                            <CreditCard className="h-4 w-4" />
                            Paiement
                          </CardTitle>
                        </CardHeader>
                        <CardContent>
                          <div className="flex flex-wrap gap-2">
                            {shop.paymentMethods?.cash && <Badge variant="outline" className="bg-white dark:bg-slate-800">Espèces</Badge>}
                            {shop.paymentMethods?.card && <Badge variant="outline" className="bg-white dark:bg-slate-800">Carte</Badge>}
                            {shop.paymentMethods?.baridiMob && <Badge variant="outline" className="bg-white dark:bg-slate-800">BaridiMob</Badge>}
                            {!shop.paymentMethods && <span className="text-sm text-slate-600">À discuter avec le vendeur</span>}
                          </div>
                        </CardContent>
                      </Card>
                    </div>

                    {/* Informations Section */}
                    <section className="space-y-4">
                      <h3 className="text-xl font-bold">Informations complémentaires</h3>
                      
                      <div className="grid grid-cols-1 gap-4">
                        {/* Type de Boutique */}
                        <div className="flex items-start gap-4 p-4 bg-slate-50 dark:bg-slate-900 rounded-xl border">
                          <div className="p-2 bg-white dark:bg-slate-800 rounded-lg shadow-sm">
                            <Store className="h-5 w-5 text-slate-500" />
                          </div>
                          <div className="space-y-1">
                            <p className="font-bold">Type de Boutique</p>
                            <div className="flex flex-wrap gap-2 pt-1">
                              {shop.isOnline && (
                                <Badge variant="outline" className="bg-blue-50 text-blue-700 border-blue-200 dark:bg-blue-900/20 dark:text-blue-400 dark:border-blue-800">
                                  Boutique en Ligne
                                </Badge>
                              )}
                              {shop.isPhysical && (
                                <Badge variant="outline" className="bg-purple-50 text-purple-700 border-purple-200 dark:bg-purple-900/20 dark:text-purple-400 dark:border-purple-800">
                                  Boutique Physique
                                </Badge>
                              )}
                              {!shop.isOnline && !shop.isPhysical && (
                                <span className="text-sm text-slate-500">Non spécifié</span>
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
                            <p className="font-bold">Horaires d'ouverture</p>
                            <p className="text-sm text-slate-500">
                              {shop.openingHours?.monday ? `Lun-Sam: ${shop.openingHours.monday.open}-${shop.openingHours.monday.close}, Dim: Fermé` : 'Lun-Sam: 9h-18h, Dim: Fermé'}
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
                      <h3 className="text-xl font-bold">Avis Clients</h3>
                      <div className="flex items-center gap-1.5 font-bold text-yellow-500">
                        <Star className="h-5 w-5 fill-current" />
                        <span>{shop.rating?.toFixed(1)} / 5</span>
                      </div>
                    </div>

                    <Card className="border-none shadow-sm bg-slate-50 dark:bg-slate-900/50">
                      <CardContent className="text-center py-12">
                        <div className="bg-white dark:bg-slate-800 w-20 h-20 rounded-full flex items-center justify-center mx-auto mb-4 shadow-sm border">
                          <MessageCircle className="h-10 w-10 text-slate-300" />
                        </div>
                        <h3 className="text-xl font-bold mb-2">Partagez votre expérience</h3>
                        <p className="text-slate-500 text-sm mb-8 max-w-xs mx-auto">
                          Votre avis aide les autres utilisateurs à découvrir les meilleures boutiques d'Algérie.
                        </p>
                        <div className="flex flex-col sm:flex-row gap-3 justify-center">
                          <Button className="rounded-xl px-8 bg-orange-500 hover:bg-orange-600 font-bold h-12">
                            Laisser un avis
                          </Button>
                          <Button variant="outline" className="rounded-xl px-8 h-12 font-bold">
                            Voir tous les avis
                          </Button>
                        </div>
                      </CardContent>
                    </Card>
                  </motion.div>
                </TabsContent>

                <TabsContent value="contact" className="mt-0">
                  <motion.div
                    initial={{ opacity: 0, y: 10 }}
                    animate={{ opacity: 1, y: 0 }}
                    exit={{ opacity: 0, y: -10 }}
                    className="space-y-6"
                  >
                    <h3 className="text-xl font-bold">Contact & Localisation</h3>
                    
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                      <div className="space-y-4">
                        <Card className="border-none shadow-sm bg-white dark:bg-slate-900 border">
                          <CardContent className="p-6 space-y-6">
                            <div className="flex items-start gap-4">
                              <div className="w-10 h-10 rounded-xl bg-orange-50 flex items-center justify-center shrink-0">
                                <Phone className="h-5 w-5 text-orange-500" />
                              </div>
                              <div className="space-y-1">
                                <p className="text-xs font-bold text-slate-400 uppercase tracking-wider">Téléphone</p>
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
                                <p className="text-xs font-bold text-slate-400 uppercase tracking-wider">WhatsApp</p>
                                <p className="font-bold text-lg">{displayWhatsappNumber}</p>
                              </div>
                            </div>

                            <div className="flex items-start gap-4">
                              <div className="w-10 h-10 rounded-xl bg-blue-50 flex items-center justify-center shrink-0">
                                <MapPin className="h-5 w-5 text-blue-500" />
                              </div>
                              <div className="space-y-1">
                                <p className="text-xs font-bold text-slate-400 uppercase tracking-wider">Adresse</p>
                                <p className="font-bold">{shop.address || `${shop.commune || ''}, ${shop.wilaya}`}</p>
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
                            Appeler
                          </Button>
                          <Button variant="outline" className="flex-1 h-12 rounded-xl font-bold border-2" onClick={() => setShowContactModal(true)}>
                            <MessageCircle className="h-5 w-5 mr-2" />
                            Message
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
                              <span className="text-xs font-bold truncate">{shop.address || shop.wilaya}</span>
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
                  <h3 className="text-xl font-bold">Actions rapides</h3>
                  <p className="text-slate-400 text-sm">Contacter directement la boutique</p>
                </div>
                
                <div className="space-y-3">
                  <Button 
                    variant="secondary" 
                    onClick={handleCallShop}
                    className="w-full h-12 rounded-xl bg-white hover:bg-slate-100 text-slate-900 font-bold"
                    disabled={!phoneNumbers[0]}
                  >
                    <Phone className="h-4 w-4 mr-2" />
                    Appeler maintenant
                  </Button>
                  <Button 
                    variant="secondary" 
                    onClick={() => setShowContactModal(true)}
                    className="w-full h-12 rounded-xl bg-slate-800 hover:bg-slate-700 border-none text-white"
                  >
                    <MessageCircle className="h-4 w-4 mr-2 text-blue-400" />
                    Envoyer un message
                  </Button>
                </div>
              </div>

              <div className="pt-4 border-t border-slate-800 flex items-center justify-between p-6">
                <div className="flex items-center gap-3">
                  <div className="w-10 h-10 rounded-full bg-slate-800 flex items-center justify-center">
                    <ShieldCheck className="h-5 w-5 text-blue-400" />
                  </div>
                  <div className="text-xs">
                    <p className="font-bold text-slate-200">Achat Sécurisé</p>
                    <p className="text-slate-500">Vérifié par Aladdin</p>
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
                  Horaires d'ouverture
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
                          {dayNames[day]}
                        </span>
                        <span>
                          {hours?.closed ? 'Fermé' : `${hours?.open || '09:00'} - ${hours?.close || '18:00'}`}
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
                  Réseaux Sociaux
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
                  <p className="text-sm text-slate-500 text-center italic">Aucun réseau social lié.</p>
                )}
              </CardContent>
            </Card>

            {/* Location Map Preview Placeholder */}
            <Card className="border-none shadow-lg overflow-hidden group cursor-pointer">
              <div className="h-40 bg-slate-200 dark:bg-slate-800 relative">
                <div className="absolute inset-0 flex items-center justify-center">
                  <div className="text-center space-y-2">
                    <Navigation className="h-8 w-8 text-slate-400 mx-auto group-hover:text-orange-500 transition-colors" />
                    <p className="text-xs font-bold text-slate-500 uppercase tracking-widest">Voir sur la carte</p>
                  </div>
                </div>
                <div className="absolute inset-0 bg-gradient-to-t from-black/40 to-transparent" />
                <div className="absolute bottom-3 left-3 text-white text-xs font-medium">
                  {shop.wilaya}, Algérie
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
          onClick={() => setShowContactModal(true)} 
          className="flex-1 h-14 rounded-2xl bg-orange-500 hover:bg-orange-600 text-white font-bold"
        >
          Contacter
        </Button>
      </div>

      <Dialog open={showReportModal} onOpenChange={(open) => !open && setShowReportModal(false)}>
        <DialogContent className="sm:max-w-md">
          <DialogHeader>
            <DialogTitle>Signaler ce contenu</DialogTitle>
            <DialogDescription>
              Aidez-nous à garder Aladdin sûr. Sélectionnez une cause et ajoutez des détails si nécessaire.
            </DialogDescription>
          </DialogHeader>

          <div className="space-y-4">
            <div className="space-y-2">
              <Label>Cause de signalement ?</Label>
              <Select value={reportReason} onValueChange={setReportReason}>
                <SelectTrigger>
                  <SelectValue placeholder="Sélectionner une cause" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="illegal">Contenu illicite</SelectItem>
                  <SelectItem value="impersonation">Usurpation</SelectItem>
                  <SelectItem value="wrong_phone">Téléphone incorrect</SelectItem>
                  <SelectItem value="wrong_category">Mauvaise rubrique</SelectItem>
                  <SelectItem value="scam">Arnaque</SelectItem>
                  <SelectItem value="spam">Spam / répétition</SelectItem>
                  <SelectItem value="inappropriate">Contenu inapproprié</SelectItem>
                  <SelectItem value="copyright">Droits d’auteur</SelectItem>
                  <SelectItem value="other">Autre</SelectItem>
                </SelectContent>
              </Select>
            </div>

            <div className="space-y-2">
              <Label>Détails (optionnel)</Label>
              <Textarea
                value={reportDetails}
                onChange={(e) => setReportDetails(e.target.value)}
                placeholder="Décrivez le problème (optionnel)"
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
                Annuler
              </Button>
              <Button onClick={submitReport} disabled={reportSubmitting}>
                {reportSubmitting ? "Envoi..." : "Envoyer"}
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
    </div>
  );
};

export default ShopDetails;
