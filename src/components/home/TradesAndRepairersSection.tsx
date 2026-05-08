import React, { useEffect, useState } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { logger } from '@/utils/silentLogger';
import SmartAnnouncementsGrid from './SmartAnnouncementsGrid';
import { Briefcase, ArrowRight, Share2, ShieldCheck, Home, Award, MapPin, Heart } from 'lucide-react';
import { LocalizedLink } from '@/utils/linkUtils';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { Badge } from "@/components/ui/badge";
import { cn } from '@/lib/utils';
import { formatRelativeTime } from '@/lib/utils/dateUtils';
import { toast } from 'sonner';
import { useAuth } from '@/contexts/useAuth';
import { useFavorites } from '@/hooks/useFavorites';

interface TradeOffer {
  id: string;
  title: string;
  description: string | null;
  link_url: string | null; // Stores phone numbers
  image_url: string | null;
  created_at: string;
}

type TradesAndRepairersSectionProps = {
  jobOffersCount?: number;
};

const TradesAndRepairersSection = ({ jobOffersCount }: TradesAndRepairersSectionProps) => {
  const { t, isRTL, language } = useSafeI18nWithRouter();
  const [offers, setOffers] = useState<TradeOffer[]>([]);
  const [loading, setLoading] = useState(true);
  const { fetchFavorites } = useFavorites();
  const { user } = useAuth();
  const [proFavoriteIds, setProFavoriteIds] = React.useState<Set<string>>(new Set());
  
  useEffect(() => {
    fetchFavorites();
  }, [fetchFavorites]);

  const loadProFavorites = async () => {
    if (!user) {
      setProFavoriteIds(new Set());
      return;
    }
    const { data, error } = await supabase
      .from('pro_favorites')
      .select('pro_id')
      .eq('user_id', user.id);
    if (!error && Array.isArray(data)) {
      setProFavoriteIds(new Set(data.map((r: any) => r.pro_id)));
    }
  };

  useEffect(() => {
    loadProFavorites();
  }, [user]);

  const isProFavorite = (id: string) => proFavoriteIds.has(id);
  const toggleProFavorite = async (id: string) => {
    if (!user) {
      window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'login' }));
      return;
    }
    const { data: existing, error: existingError } = await supabase
      .from('pro_favorites')
      .select('id')
      .eq('user_id', user.id)
      .eq('pro_id', id)
      .maybeSingle();

    if (existingError) {
      toast.error(t('favorites.updateError'));
      return;
    }

    if (existing?.id) {
      const { error } = await supabase
        .from('pro_favorites')
        .delete()
        .eq('id', existing.id)
        .eq('user_id', user.id);
      if (error) {
        toast.error(t('favorites.removeError'));
        return;
      }
      await loadProFavorites();
      return;
    }

    const { error } = await supabase
      .from('pro_favorites')
      .upsert({ user_id: user.id, pro_id: id }, { onConflict: 'user_id,pro_id' });

    if (error) {
      toast.error(t('favorites.addError'));
      return;
    }

    await loadProFavorites();
  };

  useEffect(() => {
        const fetchOffers = async () => {
      try {
        const { data, error } = await supabase
          .from('professional_job_offers')
          .select('id, title, description, phone_numbers, images, logo_url, created_at, location, wilaya, is_graduate, home_service, years_experience, experience_level')
          .eq('is_active', true)
          .order('created_at', { ascending: false })
          .limit(8);

        if (error) throw error;
        
        // Transform data to match TradeOffer interface
        const transformedData = (data || []).map(item => ({
          id: item.id,
          title: item.title,
          description: item.description,
          link_url: item.phone_numbers && item.phone_numbers.length > 0 ? item.phone_numbers.join(', ') : null,
          image_url: item.images && item.images.length > 0 ? item.images[0] : (item.logo_url || null),
          created_at: item.created_at,
          location: item.location,
          wilaya: item.wilaya,
          is_graduate: item.is_graduate,
          home_service: item.home_service,
          years_experience: item.years_experience,
          experience_level: item.experience_level
        }));
        
        setOffers(transformedData);
      } catch (err) {
        logger.warn('Error fetching trade offers:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchOffers();
  }, []);

  if (loading) {
    return (
      <section className="bg-white border rounded-lg p-6 dark:bg-slate-800 dark:border-slate-700 animate-pulse my-8">
        <div className="h-8 bg-gray-200 dark:bg-slate-700 rounded w-1/3 mb-4"></div>
        <div className="h-4 bg-gray-200 dark:bg-slate-700 rounded w-1/2 mb-8"></div>
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
          {[1, 2, 3, 4].map((i) => (
            <div key={i} className="h-64 bg-gray-200 dark:bg-slate-700 rounded-xl"></div>
          ))}
        </div>
      </section>
    );
  }

  return (
    <section className="bg-white border rounded-lg p-6 dark:bg-slate-800 dark:border-slate-700 my-8">
      {/* Banner Section - Mimicking DiscoverShopsBanner */}
      <div className={`mb-6 ${isRTL ? 'text-right' : 'text-left'}`}>
        <div className={`flex items-center mb-3 ${isRTL ? 'flex-row-reverse justify-end' : 'flex-row justify-start'}`}>
          {/* Logo Aladdin */}
          <div className={`${isRTL ? 'ml-3' : 'mr-3'}`}>
            <img 
              src="/lovable-uploads/4cf4a1ea-082d-4d7d-8b1b-01eb5e04557a.png" 
              alt="Aladdin Logo" 
              className="w-8 h-8 object-contain"
            />
          </div>
          
          {/* Vertical Line */}
          <div className={`w-1 h-12 bg-red-600 ${isRTL ? 'ml-3' : 'mr-3'}`}></div>
          
          {/* Red Title */}
          <h2 className={`text-2xl md:text-4xl font-bold text-red-600 ${isRTL ? 'text-right' : 'text-left'}`}>
            {t('sections.tradesAndRepairers')}
          </h2>
        </div>
        
        {/* Subtitle */}
        <p className={`text-black dark:text-white font-bold text-sm leading-relaxed ${isRTL ? 'text-right mr-14' : 'text-left ml-14'}`}>
          {t('sections.tradesAndRepairersDescription')}
        </p>
      </div>

      {/* Header Section - Uppercase Title + Action */}
      <div className={`flex flex-col md:flex-row items-center mb-6 justify-between gap-4`}>
        <div className={`flex items-center ${isRTL ? 'order-2' : 'order-1'}`}>
          <Briefcase className={`h-8 w-8 ${isRTL ? 'ml-3' : 'mr-3'} text-blue-600 dark:text-blue-400 transition-all duration-300 hover:scale-110 hover:rotate-12 cursor-pointer`} />
          <div className={`flex items-center gap-3 ${isRTL ? 'flex-row-reverse' : 'flex-row'}`}>
            <h2 className={`text-2xl md:text-[2.84rem] font-bold text-black dark:text-slate-200 aladdin-glow uppercase hover:text-red-600 dark:hover:text-red-400 transition-all duration-300 hover:drop-shadow-xl hover:text-shadow-red cursor-pointer ${isRTL ? 'text-right' : 'text-left'}`}>
              {t('sections.tradesAndRepairersUppercase')}
            </h2>
            {typeof jobOffersCount === "number" ? (
              <Badge variant="secondary" className="text-base">
                {jobOffersCount}
              </Badge>
            ) : null}
          </div>
        </div>
        
        <LocalizedLink 
            to="/deposer-offre-metier" 
            className={`flex items-center gap-2 px-6 py-2.5 bg-blue-600 hover:bg-blue-700 text-white rounded-full font-medium transition-all shadow-md hover:shadow-lg transform hover:-translate-y-0.5 ${isRTL ? 'order-1' : 'order-2'}`}
        >
            <span>{t('jobOffer.title')}</span>
            <ArrowRight className={`h-4 w-4 ${isRTL ? 'rotate-180' : ''}`} />
        </LocalizedLink>
      </div>

      {/* Grid Section */}
      {offers.length > 0 ? (
        <SmartAnnouncementsGrid itemsPerRow={4}>
            {offers.map((offer) => {
              const imageUrl = offer.image_url || '';
              const shareUrl = `${window.location.origin}/offre-metier/${offer.id}`;

              const copyToClipboard = () => {
                navigator.clipboard.writeText(shareUrl);
                toast.success(t('common.linkCopiedToast'), { description: t('common.linkCopiedOfferDesc') });
              };

              const handleShare = (e: React.MouseEvent) => {
                e.stopPropagation();
                if (navigator.share) {
                  navigator.share({
                    title: offer.title,
                    url: shareUrl,
                  }).catch(() => {
                    copyToClipboard();
                  });
                } else {
                  copyToClipboard();
                }
              };

              const _handleWhatsApp = (e: React.MouseEvent) => {
                e.stopPropagation();
                const whatsappUrl = `https://api.whatsapp.com/send?text=${encodeURIComponent(`${offer.title} - ${shareUrl}`)}`;
                window.open(whatsappUrl, '_blank');
              };

              const favorite = isProFavorite(offer.id);
              return (
                <div
                  key={offer.id}
                  className="group flex flex-col transition-all duration-300 transform hover:scale-[1.02] hover:-translate-y-1 rounded-[24px] overflow-hidden relative h-full bg-slate-50 shadow-[0_10px_30px_-10px_rgba(22,163,74,0.25),0_6px_10px_-2px_rgba(22,163,74,0.15)] border border-[rgba(22,163,74,0.05)] dark:bg-[linear-gradient(145deg,#1e293b,#0f172a)] dark:shadow-[0_0_20px_rgba(255,255,255,0.25)] dark:border-none cursor-pointer"
                  onClick={() => window.location.href = `/offre-metier/${offer.id}`}
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
                              {language === 'ar' 
                                ? "الاحترافية والمهن"
                                : language === 'es'
                                  ? "Profesionalismo y Oficios"
                                  : language === 'it'
                                    ? "Professionalità e Mestieri"
                                    : language === 'de'
                                      ? "Professionalität & Handwerk"
                                      : "professionnalisme et Métiers"}
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
                            alt={offer.title}
                            className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                          />
                        ) : (
                          <div className="w-full h-full bg-slate-200 dark:bg-slate-700 flex items-center justify-center">
                            <Briefcase className="h-12 w-12 text-blue-300 dark:text-slate-400" />
                          </div>
                        )}

                        {/* Temps relatif déplacé sous la zone titre (comme 'Les plus recherchés') */}

                        {/* Badges déplacés sous la description */}
                      </div>
                    </div>
                  </div>

                  <div className="p-4">
                    <div className="flex justify-between items-start mb-2">
                      <h3 className="font-bold text-lg line-clamp-1">{offer.title}</h3>
                    </div>

                    {/* Description supprimée sur cette carte */}

                    {(() => {
                      const attrs = offer as unknown as import('@/integrations/supabase/types.extended').MetierAttributes & { wilaya?: string };
                      const isGraduate = attrs?.is_graduate === true;
                      const homeService = attrs?.home_service === true;
                      const years = typeof attrs?.years_experience === 'number' ? attrs.years_experience : undefined;
                      const level = attrs?.experience_level;
                      const isExpert = (typeof years === 'number' && years >= 10) || level === 'expert';

                      const graduateLabel = isRTL ? "دبلوم/معتمد" : (language === 'es' ? "Titulado/Certificado" : language === 'it' ? "Diplomato/Certificato" : language === 'de' ? "Zertifiziert" : "Diplômé/Certifié");
                      const homeLabel = isRTL ? "خدمة منزلية متاحة" : (language === 'es' ? "Servicio a domicilio" : language === 'it' ? "Disponibile a domicilio" : language === 'de' ? "Hausbesuche möglich" : "Déplacement à domicile possible");
                      const expertLabel = isRTL ? "خبير (أكثر من 10 سنوات)" : (language === 'es' ? "Experto (más de 10 años)" : language === 'it' ? "Esperto (oltre 10 anni)" : language === 'de' ? "Experte (über 10 Jahre)" : "Expert (plus de 10 ans)");

                      const locale = language === 'ar' ? 'ar-DZ' : language === 'es' ? 'es-ES' : language === 'it' ? 'it-IT' : language === 'de' ? 'de-DE' : language === 'en' ? 'en-US' : 'fr-FR';
                      const _publishedAt = new Date(offer.created_at).toLocaleString(locale, { day: '2-digit', month: '2-digit', year: 'numeric', hour: '2-digit', minute: '2-digit' });

                      return (
                        <>
                          <div className="flex flex-wrap gap-2 mb-3">
                            {isGraduate ? (
                              <span className="flex items-center gap-1 bg-blue-50 text-blue-700 dark:bg-blue-900/20 dark:text-blue-300 px-2 py-0.5 rounded-full text-[11px] font-semibold border border-blue-100 dark:border-blue-800">
                                <ShieldCheck className="w-3 h-3" /> {graduateLabel}
                              </span>
                            ) : null}
                            {homeService ? (
                              <span className="flex items-center gap-1 bg-emerald-50 text-emerald-700 dark:bg-emerald-900/20 dark:text-emerald-300 px-2 py-0.5 rounded-full text-[11px] font-semibold border border-emerald-100 dark:border-emerald-800">
                                <Home className="w-3 h-3" /> {homeLabel}
                              </span>
                            ) : null}
                            {isExpert ? (
                              <span className="flex items-center gap-1 bg-slate-100 text-slate-700 dark:bg-slate-800 dark:text-slate-300 px-2 py-0.5 rounded-full text-[11px] font-semibold border border-slate-200 dark:border-slate-700">
                                <Award className="w-3 h-3" /> {expertLabel}
                              </span>
                            ) : null}
                          </div>

                          <div className="flex items-center justify-between text-sm text-muted-foreground mb-4">
                            <span className="flex items-center gap-2 truncate">
                              <MapPin className="w-3 h-3 text-primary" />
                              <span className="truncate">{attrs?.wilaya || t('common.notSpecifiedFemale')}</span>
                              <span className="text-slate-400">•</span>
                              <span className="text-sm font-bold text-slate-500 dark:text-slate-400">
                                {formatRelativeTime(offer.created_at)}
                              </span>
                            </span>
                          </div>
                        </>
                      );
                    })()}

                    <div className="flex gap-3 w-full justify-center">
                      <button
                        onClick={(e) => {
                          e.stopPropagation();
                          toggleProFavorite(offer.id);
                        }}
                        className="flex-shrink-0 w-9 h-9 flex items-center justify-center rounded-lg border bg-transparent hover:bg-muted transition-colors"
                        aria-label="Favori"
                        title={t('mesFavoris.title') || 'Favoris'}
                      >
                        <Heart className="h-4 w-4 text-rose-600" fill={favorite ? 'currentColor' : 'none'} />
                      </button>
                      <button
                        onClick={handleShare}
                        className="flex-shrink-0 w-9 h-9 flex items-center justify-center rounded-lg border bg-transparent hover:bg-muted transition-colors"
                        aria-label="Partager"
                      >
                        <Share2 className="h-4 w-4 text-blue-500" />
                      </button>
                    </div>

                    {/* Barre "voir détail" supprimée pour la carte de la section Métiers & Réparateurs */}
                  </div>
                </div>
              );
            })}
        </SmartAnnouncementsGrid>
      ) : (
        <div className="bg-white/50 dark:bg-slate-800/50 rounded-xl border-2 border-dashed border-gray-300 dark:border-slate-600 p-12 flex flex-col items-center justify-center min-h-[300px] text-center">
            <div className="bg-gray-100 dark:bg-slate-700 h-16 w-16 rounded-full flex items-center justify-center mb-4">
                <Briefcase className="h-8 w-8 text-gray-400 dark:text-gray-500" />
            </div>
            <p className="text-gray-500 dark:text-gray-400 mb-2 max-w-md">{t('sections.noTradesOffers')}</p>
            <p className="text-gray-500 dark:text-gray-400 max-w-md">
                {t('sections.beTheFirstTrade')}
            </p>
        </div>
      )}
    </section>
  );
};

export default TradesAndRepairersSection;
