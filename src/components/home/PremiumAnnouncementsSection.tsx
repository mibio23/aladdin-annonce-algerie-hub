import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { ArrowRight, Crown, Sparkles, Loader2 } from "lucide-react";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import PremiumAnnouncementsBanner from "./PremiumAnnouncementsBanner";
import SmartAnnouncementsGrid from "./SmartAnnouncementsGrid";
import { supabase } from "@/integrations/supabase/client";
import { logger } from "@/utils/silentLogger";
import { useFavorites } from "@/hooks/useFavorites";
import { formatRelativeTime } from "@/lib/utils/dateUtils";
import { toast } from "sonner";
import { cn } from "@/lib/utils";
import { Heart, MapPin, Phone, MessageCircle, Share2, Eye } from "lucide-react";
import { wilayas } from '@/data/wilayaData';

const normalizeText = (s: string) =>
  (s || "")
    .toLowerCase()
    .normalize("NFKD")
    .replace(/[\u0300-\u036f]/g, "")
    .trim();

const PremiumAnnouncementsSection = () => {
  const { t, isRTL, language } = useSafeI18nWithRouter();
  const { toggleFavorite, isFavorite } = useFavorites();
  const [announcements, setAnnouncements] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchPremiumAnnouncements = async () => {
      try {
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        const { data, error } = await supabase
          .from('announcements')
          .select('id, title, price, wilaya, location, images, image_url, created_at, is_urgent, phone_number, user_id, category_id, attributes')
          .eq('is_featured', true)
          .eq('status', 'active')
          .order('created_at', { ascending: false })
          .limit(8);

        if (error) throw error;
        const rows = data || [];
        const userIds = Array.from(
          new Set(
            rows
              // eslint-disable-next-line @typescript-eslint/no-explicit-any
              .map((r: any) => r.user_id)
              // eslint-disable-next-line @typescript-eslint/no-explicit-any
              .filter((id: any) => typeof id === "string" && id.length > 0),
          ),
        );

        if (userIds.length === 0) {
          setAnnouncements(rows);
          return;
        }

        const { data: profilesData, error: profilesError } = await supabase
          .from("profiles")
          .select("user_id, first_name, last_name, avatar_url")
          .in("user_id", userIds as string[]);

        if (profilesError) throw profilesError;

        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        const profileByUserId = new Map<string, any>();
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        (profilesData || []).forEach((p: any) => {
          if (typeof p.user_id === "string") profileByUserId.set(p.user_id, p);
        });

        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        const enriched = rows.map((r: any) => ({
          ...r,
          profiles: r.user_id ? profileByUserId.get(r.user_id) : null,
        }));

        setAnnouncements(enriched);
      } catch (error) {
        logger.warn('Error fetching premium announcements:', error);
      } finally {
        setLoading(false);
      }
    };

    fetchPremiumAnnouncements();
  }, []);

  const formatPrice = (price: number) => {
    if (!price || price === 0) return null;
    const millionsCentimes = Math.floor(price / 10_000);
    return `${millionsCentimes.toLocaleString()} M`;
  };

  if (loading) {
    return (
      <div className="flex justify-center items-center py-12">
        <Loader2 className="h-8 w-8 animate-spin text-primary" />
      </div>
    );
  }

  return (
    <section className="bg-transparent p-4">
      <PremiumAnnouncementsBanner />
      <div className={`relative flex items-center justify-between mb-4`}>
        <div className={`flex items-center ${isRTL ? 'order-2' : 'order-1'}`}>
          <div className="relative">
            <Crown className={`h-8 w-8 ${isRTL ? 'ml-3' : 'mr-3'} transition-all duration-300 hover:scale-110 cursor-pointer`} style={{color: 'hsl(var(--brand-gold))', fill: 'hsl(var(--brand-gold))'}} />
            <Sparkles className="absolute -top-1 -right-1 h-4 w-4 text-yellow-400 animate-pulse" />
          </div>
          <h2 className={`text-[2.84rem] font-bold text-black dark:text-slate-200 font-playfair aladdin-glow uppercase hover:text-red-600 dark:hover:text-red-400 transition-all duration-300 hover:drop-shadow-xl hover:text-shadow-red cursor-pointer ${isRTL ? 'text-right' : 'text-left'}`}>{t('announcements.premium')}</h2>
        </div>
        <Link
          to="/annonces/premium"
          className={`text-lg font-bold text-black dark:text-white hover:text-gray-700 dark:hover:text-gray-300 hidden sm:flex items-center transition-colors duration-200 ${isRTL ? 'order-1' : 'order-2'}`}
        >
          {t('announcements.viewAll')} <ArrowRight className="h-4 w-4 ml-1" />
        </Link>
      </div>
      {announcements.length > 0 ? (
        <SmartAnnouncementsGrid itemsPerRow={8}>
          {announcements.map((announcement) => {
            const imageUrl = announcement.image_url || (announcement.images && announcement.images[0]) || "";
            const shareUrl = `${window.location.origin}/annonce/${announcement.id}`;
            const favorite = isFavorite(announcement.id);
            const hasPrice = typeof announcement.price === 'number' && Number.isFinite(announcement.price) && announcement.price > 0;

            const rawWilaya = announcement.wilaya;
            const wilayaLabel = (() => {
              if (rawWilaya == null) return "";
              const s = String(rawWilaya).trim();
              if (/^\d+$/.test(s)) {
                const obj = wilayas.find(w => w.code.toString() === s);
                if (obj) return language === 'ar' ? obj.name_ar : obj.name;
              }
              const byName = wilayas.find(w => w.name === s || w.name_ar === s);
              if (byName) return language === 'ar' ? byName.name_ar : byName.name;
              return s;
            })();

            const copyToClipboard = () => {
              navigator.clipboard.writeText(shareUrl);
              toast.success(t('common.linkCopied') || "Lien copié !", {
                description: t('common.linkCopiedDesc') || "Le lien a été copié dans votre presse-papiers."
              });
            };

            const handleShare = (e: React.MouseEvent) => {
              e.stopPropagation();
              if (navigator.share) {
                navigator.share({
                  title: announcement.title,
                  url: shareUrl,
                }).catch(() => {
                  copyToClipboard();
                });
              } else {
                copyToClipboard();
              }
            };

            const handleWhatsAppShare = (e: React.MouseEvent) => {
              e.stopPropagation();
              const whatsappUrl = `https://api.whatsapp.com/send?text=${encodeURIComponent(announcement.title + " - " + shareUrl)}`;
              window.open(whatsappUrl, '_blank');
            };

            const handleFavorite = async (e: React.MouseEvent) => {
              e.stopPropagation();
              await toggleFavorite(announcement.id);
            };

            return (
              <div
                key={announcement.id}
                className="group flex flex-col transition-all duration-300 transform hover:scale-[1.02] hover:-translate-y-1 rounded-[24px] overflow-hidden relative h-full bg-slate-50 shadow-[0_10px_30px_-10px_rgba(22,163,74,0.25),0_6px_10px_-2px_rgba(22,163,74,0.15)] border border-[rgba(22,163,74,0.05)] dark:bg-[linear-gradient(145deg,#1e293b,#0f172a)] dark:shadow-[0_0_20px_rgba(255,255,255,0.25)] dark:border-none cursor-pointer"
                onClick={() => window.location.href = `/annonce/${announcement.id}`}
              >
                <div className="p-2 pb-0">
                  <div className="relative h-48 overflow-hidden rounded-[24px] border-[3px] border-red-500/80 bg-white p-1.5 shadow-[0_8px_16px_rgba(0,0,0,0.1)] group-hover:border-red-600 group-hover:shadow-[0_12px_24px_rgba(220,38,38,0.2)] transition-all duration-300">
                    <div className="w-full h-full overflow-hidden rounded-[16px] shadow-[inset_0_10px_20px_rgba(0,0,0,0.25),inset_0_-2px_6px_rgba(255,255,255,0.3)] bg-slate-100 relative">
                      <div className={`absolute top-0 ${isRTL ? 'left-0' : 'right-0'} z-30`}>
                        <div className={`bg-white/70 backdrop-blur-md pb-3 pt-1 shadow-lg flex items-center gap-1.5 border-b border-white/40 ${
                          isRTL
                            ? 'px-3 rounded-bl-[25px] rounded-br-[25px] border-x'
                            : 'pl-3 pr-1 rounded-bl-[25px] border-l'
                        }`}>
                          <div className={cn("flex flex-col", isRTL ? "items-start" : "items-end")}>
                            <span className="text-xs font-extrabold text-slate-900 leading-none mb-0.5 drop-shadow-sm">
                              {isRTL ? "علاء الدين" : "Aladdin"}
                            </span>
                            <span className="text-[9px] font-bold text-red-600 uppercase tracking-wider leading-none drop-shadow-sm">
                              {isRTL ? "الإختيار الأفضل" : "Sélection Or"}
                            </span>
                          </div>
                          <div className="w-8 h-8 bg-white/50 backdrop-blur-sm rounded-lg shadow-inner flex items-center justify-center border border-white/50 p-1 group-hover:scale-110 transition-transform duration-300">
                             <img
                               src="/lovable-uploads/19d6e319-1c10-44f0-a889-e4babb7d2e97.png"
                               alt="Aladdin"
                               className="w-full h-full object-contain"
                             />
                          </div>
                        </div>
                      </div>

                      {imageUrl ? (
                        <img
                          src={imageUrl}
                          alt={announcement.title}
                          className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                        />
                      ) : (
                        <div className="w-full h-full bg-slate-200 dark:bg-slate-700" />
                      )}

                      {announcement.is_urgent ? (
                        <span className="absolute top-2 left-2 z-20 bg-red-500 text-white px-2 py-1 rounded text-xs font-bold animate-pulse">
                          Urgent
                        </span>
                      ) : null}

                      <span className="absolute bottom-2 left-2 bg-black/60 text-white px-2 py-1 rounded text-xs font-bold z-20">
                        {formatRelativeTime(announcement.created_at)}
                      </span>
                    </div>
                  </div>
                </div>

                <div className="p-4">
                  <div className="flex justify-between items-start mb-2">
                    <h3 className="font-bold text-lg line-clamp-1">{announcement.title}</h3>
                  </div>

                  <div className="flex items-center justify-between text-sm text-muted-foreground mb-4">
                    <span className="flex items-center mb-1">
                      <MapPin className="w-3 h-3 mr-1" />
                      {wilayaLabel || announcement.location || 'Non spécifiée'}
                    </span>
                    {hasPrice ? (
                      <span className="font-bold text-emerald-600 whitespace-nowrap">
                        {formatPrice(announcement.price)}
                      </span>
                    ) : null}
                  </div>

                  <div className="flex items-center justify-between text-xs text-muted-foreground mb-4">
                    <span className="flex items-center">
                      <Phone className="w-3 h-3 mr-1" />
                      {announcement.phone_number || 'Contact sur demande'}
                    </span>
                    <div className="flex items-center bg-primary/5 px-2 py-0.5 rounded-full">
                      <Eye className="w-3 h-3 mr-1 text-primary" />
                      <span className="font-medium text-primary">{announcement.view_count || 0}</span>
                    </div>
                  </div>

                  <div className="flex gap-2 w-full">
                    <button
                      onClick={(e) => {
                        e.stopPropagation();
                        if (announcement.phone_number) {
                          window.location.href = `tel:${announcement.phone_number}`;
                        } else {
                          toast.error('Aucun numéro de téléphone disponible');
                        }
                      }}
                      className="flex-1 flex items-center justify-center min-w-0 bg-primary text-primary-foreground hover:bg-primary/90 h-9 px-4 rounded-lg text-sm font-medium transition-colors shadow-sm"
                    >
                      <Phone className="w-3.5 h-3.5 mr-2 flex-shrink-0" />
                      <span className="truncate">Contacter</span>
                    </button>
                    <button
                      onClick={(e) => {
                        e.stopPropagation();
                        handleWhatsAppShare(e);
                      }}
                      className="flex-shrink-0 w-9 h-9 flex items-center justify-center rounded-lg border bg-transparent hover:bg-muted transition-colors"
                      aria-label="WhatsApp"
                    >
                      <MessageCircle className="h-4 w-4 text-emerald-500" />
                    </button>
                    <button
                      onClick={(e) => {
                        e.stopPropagation();
                        handleShare(e);
                      }}
                      className="flex-shrink-0 w-9 h-9 flex items-center justify-center rounded-lg border bg-transparent hover:bg-muted transition-colors"
                      aria-label="Partager"
                    >
                      <Share2 className="h-4 w-4 text-blue-500" />
                    </button>
                  </div>

                  <div className="overflow-hidden h-0 group-hover:h-12 transition-all duration-300 ease-in-out">
                    <div className="pt-2 transform -translate-y-full group-hover:translate-y-0 transition-transform duration-300 ease-in-out">
                      <div className="bg-gradient-to-r from-slate-100 via-slate-50 to-slate-100 dark:from-slate-800 dark:via-slate-700 dark:to-slate-800 text-slate-700 dark:text-slate-200 py-2 rounded-lg font-bold text-sm shadow-sm border border-slate-200 dark:border-slate-700 flex items-center justify-between px-3">
                        <span className="flex-1 text-center" dir={isRTL ? 'rtl' : 'ltr'}>
                          {t('common.viewDetail')}
                        </span>
                        <div className="flex gap-1.5 ms-2 border-s border-slate-200 dark:border-slate-600 ps-2">
                          <button
                            onClick={(e) => {
                              e.stopPropagation();
                              handleFavorite(e);
                            }}
                            className="p-1 hover:bg-rose-50 dark:hover:bg-rose-500/10 rounded-full transition-colors group/fav"
                            title={t('mesFavoris.title') || 'Favoris'}
                          >
                            <Heart
                              className={[
                                'w-4 h-4 transition-transform group-hover/fav:scale-110',
                                favorite
                                  ? 'text-rose-700 dark:text-rose-500'
                                  : 'text-rose-400 dark:text-rose-400 animate-pulse group-hover/fav:text-rose-500',
                              ].join(' ')}
                              fill={favorite ? 'currentColor' : 'none'}
                            />
                          </button>
                          <button
                            onClick={(e) => {
                              e.stopPropagation();
                              handleWhatsAppShare(e);
                            }}
                            className="p-1 hover:bg-emerald-50 dark:hover:bg-emerald-500/10 rounded-full transition-colors group/wa"
                            title="WhatsApp"
                          >
                            <MessageCircle className="w-4 h-4 text-emerald-500 group-hover/wa:scale-110 transition-transform" />
                          </button>
                          <button
                            onClick={(e) => {
                              e.stopPropagation();
                              handleShare(e);
                            }}
                            className="p-1 hover:bg-blue-50 dark:hover:bg-blue-500/10 rounded-full transition-colors group/sh"
                            title="Partager"
                          >
                            <Share2 className="w-4 h-4 text-blue-500 group-hover/sh:scale-110 transition-transform" />
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            );
          })}
        </SmartAnnouncementsGrid>
      ) : (
        <div className="flex justify-center items-center py-12 min-h-[200px]">
          <p className="text-gray-500 text-center dark:text-slate-400 text-lg font-medium">
            {t('announcements.noPremiumAvailable')}
          </p>
        </div>
      )}
    </section>
  );
};

export default PremiumAnnouncementsSection;