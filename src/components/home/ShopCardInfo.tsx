
import React, { useState, useEffect } from "react";
import { MapPin, Star } from "lucide-react";
import { toast } from "@/hooks/use-toast";
import { supabase } from "@/integrations/supabase/client";
import { useAuth } from "@/contexts/useAuth";
import { logger } from "@/utils/silentLogger";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { Button } from "@/components/ui/button";
import { wilayas } from "@/data/wilayaData";
import { communes } from "@/data/communeData";

interface ShopCardInfoProps {
  shopId: string;
  name: string;
  wilaya: string;
  commune?: string;
  rating?: number;
  votes?: number;
}

const ShopCardInfo: React.FC<ShopCardInfoProps> = ({
  shopId,
  name,
  wilaya,
  commune,
  rating: initialRating = 0,
  votes: initialVotes = 0,
}) => {
  const { t, language } = useSafeI18nWithRouter();
  const { user } = useAuth();
  const [rating, setRating] = useState(initialRating);
  const [votes, setVotes] = useState(initialVotes);
  const [userRating, setUserRating] = useState(0);
  const [hoverRating, setHoverRating] = useState(0);

  const tr = (key: string, fallback: string | Record<string, string>) => {
    const value = t(key);
    if (value && value !== key) return value;
    if (typeof fallback === "string") return fallback;
    return fallback[language] || fallback.fr || Object.values(fallback)[0] || key;
  };

  const normalizeText = (value: string) => value.normalize('NFD').replace(/[\u0300-\u036f]/g, '').toLowerCase().trim();

  const findWilaya = (value?: string | null) => {
    if (!value) return null;
    const normalized = normalizeText(value);
    return wilayas.find((entry) =>
      [entry.code.toString(), entry.name, entry.name_fr, entry.name_ar]
        .filter(Boolean)
        .some((candidate) => normalizeText(String(candidate)) === normalized)
    ) || null;
  };

  const localizedWilaya = (() => {
    const match = findWilaya(wilaya);
    if (!match) return wilaya;
    return language === 'ar' ? match.name_ar || match.name_fr || match.name : match.name_fr || match.name;
  })();

  const localizedCommune = (() => {
    if (!commune) return '';
    const wilayaMatch = findWilaya(wilaya || commune);
    const scopedCommunes = wilayaMatch ? communes[String(wilayaMatch.code)] || [] : [];
    const allCommunes = scopedCommunes.length ? scopedCommunes : Object.values(communes).flat();
    const normalized = normalizeText(commune);
    const match = allCommunes.find((entry) =>
      [entry.fr, entry.ar]
        .filter(Boolean)
        .some((candidate) => normalizeText(String(candidate)) === normalized)
    );
    if (!match) return commune;
    return language === 'ar' ? match.ar || match.fr : match.fr;
  })();

  // Charger le vote de l'utilisateur au chargement
  useEffect(() => {
    const fetchUserRating = async () => {
      if (!user) return;

      try {
        const { data } = await (supabase as any)
          .from('shop_reviews')
          .select('rating')
          .eq('shop_id', shopId)
          .eq('user_id', user.id)
          .maybeSingle();

        if (data) {
          setUserRating(data.rating);
        }
      } catch (error) {
        logger.warn("Erreur chargement avis:", error);
      }
    };

    fetchUserRating();
  }, [shopId, user]);

  const handleRate = async (e: React.MouseEvent, star: number) => {
    e.preventDefault();
    e.stopPropagation();
    
    if (!user) {
      toast({
        title: t('viewShop.loginRequiredVoteTitle'),
        description: (
          <div className="flex flex-col gap-2">
            <p>{t('viewShop.loginRequiredVoteDescription')}</p>
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

    try {
      // 1. Envoyer le vote à Supabase
      const { error } = await (supabase as any)
        .from('shop_reviews')
        .upsert({
          shop_id: shopId,
          user_id: user.id,
          rating: star
        }, {
          onConflict: 'shop_id,user_id'
        });

      if (error) throw error;

      // 2. Mise à jour optimiste de l'UI
      const isNewVote = userRating === 0;
      const newVotes = isNewVote ? votes + 1 : votes;
      
      // Calcul approximatif de la nouvelle moyenne (pour l'affichage immédiat)
      // Note: Le vrai calcul précis est fait par le trigger DB
      let newAverageRating;
      if (isNewVote) {
        newAverageRating = ((rating * votes) + star) / newVotes;
      } else {
        // Mise à jour d'un vote existant : on retire l'ancien et on met le nouveau
        const totalScore = (rating * votes) - userRating + star;
        newAverageRating = totalScore / votes;
      }

      setRating(newAverageRating);
      setVotes(newVotes);
      setUserRating(star);
      
      toast({
        title: t('viewShop.voteRecorded'),
        description: t('viewShop.voteRecordedDesc').replace('{star}', star.toString()),
      });
    } catch (error) {
      logger.warn("Erreur lors du vote:", error);
      toast({
        title: t('viewShop.voteError'),
        description: t('viewShop.voteErrorDesc'),
      });
    }
  };

  return (
    <div className="space-y-3 mb-1">
      <div className="flex items-start justify-between gap-2">
        <h3 className="text-lg font-bold text-slate-900 dark:text-white line-clamp-1 group-hover:text-red-600 transition-colors">
          {name}
        </h3>
      </div>
      
      <div className="flex flex-col gap-2">
        <div className="flex items-center gap-1.5 text-sm text-slate-500 dark:text-slate-400">
          <MapPin size={16} className="text-emerald-500 shrink-0" />
          <span className="truncate max-w-[200px]">
            {localizedWilaya}{localizedCommune ? ` - ${localizedCommune}` : ''}
          </span>
        </div>

        <div className="flex items-center justify-between">
          <div className="flex items-center gap-0.5" onMouseLeave={() => setHoverRating(0)}>
            {[1, 2, 3, 4, 5].map((star) => (
              <button
                key={star}
                onClick={(e) => handleRate(e, star)}
                onMouseEnter={() => setHoverRating(star)}
                className="focus:outline-none transition-transform hover:scale-110"
              >
                <Star 
                  size={16} 
                  className={`
                    ${(hoverRating || rating) >= star 
                      ? "text-amber-500 fill-amber-500" 
                      : "text-slate-300 dark:text-slate-600"}
                    transition-colors
                  `} 
                />
              </button>
            ))}
          </div>
          <span className="text-xs text-slate-400">
            ({votes} {tr('viewShop.reviewsCount', { fr: 'avis', en: 'reviews', es: 'reseñas', it: 'recensioni', de: 'Bewertungen', ar: 'تقييمات' })})
          </span>
        </div>
      </div>
    </div>
  );
};

export default ShopCardInfo;
