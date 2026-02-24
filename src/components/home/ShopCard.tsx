
import React, { useState, useEffect } from "react";
import { toast } from "@/hooks/use-toast";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { Shop } from "@/types/shop";
import ShopCardImage from "./ShopCardImage";
import ShopStatusBadges from "./ShopStatusBadges";
import ShopCardInfo from "./ShopCardInfo";
import ShopFooterActions from "./ShopFooterActions";
import { LocalizedLink } from "@/utils/linkUtils";
import { Heart } from "lucide-react";
import { supabase } from "@/integrations/supabase/client";
import { useAuth } from "@/contexts/useAuth";
import { Button } from "@/components/ui/button";

interface ShopCardProps {
  shop: Shop;
}

const ShopCard: React.FC<ShopCardProps> = ({ shop }) => {
  const { t, language } = useSafeI18nWithRouter();
  const { user } = useAuth();
  const [isFavorite, setIsFavorite] = useState(false);
  const [followersCount, setFollowersCount] = useState(shop.followerCount || 0);
  const isRTL = language === 'ar';

  useEffect(() => {
    // 1. Charger le statut favori
    const checkFavoriteStatus = async () => {
      // Vérification locale d'abord (pour la rapidité)
      const localFavorites = JSON.parse(localStorage.getItem('favoriteShops') || '[]');
      const isLocallyFavorite = localFavorites.includes(shop.id);
      
      if (user) {
        try {
          const { data, error } = await supabase
            .from('shop_favorites')
            .select('*')
            .eq('user_id', user.id)
            .eq('shop_id', shop.id)
            .maybeSingle();

          if (!error && data) {
            setIsFavorite(true);
            // Synchroniser le localStorage si nécessaire
            if (!isLocallyFavorite) {
              localFavorites.push(shop.id);
              localStorage.setItem('favoriteShops', JSON.stringify(localFavorites));
            }
          } else {
            // Si pas en DB mais en local, on pourrait vouloir synchroniser vers la DB,
            // mais pour l'instant on fait confiance à la DB si connecté.
            // Sauf si la table n'existe pas encore, auquel cas on garde le local.
            if (error && error.code === '42P01') { // undefined_table
               setIsFavorite(isLocallyFavorite);
            } else {
               setIsFavorite(false);
            }
          }
        } catch (error) {
          console.error("Erreur vérification favoris boutique:", error);
          setIsFavorite(isLocallyFavorite);
        }
      } else {
        setIsFavorite(false);
      }
    };

    checkFavoriteStatus();

    // 2. Charger le vrai nombre de followers depuis la DB
    const fetchFollowersCount = async () => {
      try {
        const { data } = await supabase
          .from('shops')
          .select('followers_count')
          .eq('id', shop.id)
          .maybeSingle();
        
        if (data && data.followers_count !== undefined) {
          setFollowersCount(data.followers_count);
        }
      } catch (err) {
        console.error("Erreur chargement compteurs:", err);
      }
    };
    
    fetchFollowersCount();

    // 3. Activer le Realtime pour voir les ajouts des autres utilisateurs
    const channel = supabase
      .channel(`shop_followers_${shop.id}`)
      .on(
        'postgres_changes',
        {
          event: 'UPDATE',
          schema: 'public',
          table: 'shops',
          filter: `id=eq.${shop.id}`
        },
        (payload) => {
          if (payload.new && (payload.new as any).followers_count !== undefined) {
            setFollowersCount((payload.new as any).followers_count);
          }
        }
      )
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
    };

  }, [shop.id, user]);

  const allImages = shop.productImageUrls && shop.productImageUrls.length > 0 
    ? shop.productImageUrls 
    : [shop.logoUrl];

  const handleFavoriteToggle = async (e: React.MouseEvent) => {
    e.stopPropagation();
    e.preventDefault();
    
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

    // 1. Mise à jour Optimiste (LocalStorage + UI Compteur)
    const favorites = JSON.parse(localStorage.getItem('favoriteShops') || '[]');
    const newIsFavorite = !isFavorite;
    
    // Mise à jour optimiste du compteur
    setFollowersCount(prev => newIsFavorite ? prev + 1 : Math.max(0, prev - 1));

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
    localStorage.setItem('favoriteShops', JSON.stringify(favorites));
    setIsFavorite(newIsFavorite);

    // 2. Mise à jour DB
    try {
      if (newIsFavorite) {
        const { error } = await supabase
          .from('shop_favorites')
          .insert({ user_id: user.id, shop_id: shop.id });
          
        if (error) {
          // Revert optimiste en cas d'erreur
          console.error("Erreur ajout favori:", error);
          setIsFavorite(false);
          setFollowersCount(prev => Math.max(0, prev - 1));
          toast({
            title: t('common.error'),
            description: t('common.error'),
            variant: "destructive"
          });
        } else {
           toast({
            title: t('viewShop.addedToFavorites'),
            description: t('viewShop.addedToFavorites'),
          });
        }
      } else {
        const { error } = await supabase
          .from('shop_favorites')
          .delete()
          .eq('user_id', user.id)
          .eq('shop_id', shop.id);
          
        if (error) {
           // Revert optimiste en cas d'erreur
           console.error("Erreur suppression favori:", error);
           setIsFavorite(true);
           setFollowersCount(prev => prev + 1);
           toast({
            title: t('common.error'),
            description: t('common.error'),
            variant: "destructive"
          });
        } else {
          toast({
            title: t('viewShop.removedFromFavorites'),
            description: t('viewShop.removedFromFavorites'),
          });
        }
      }
    } catch (error) {
      console.error("Erreur action favoris:", error);
      // Revert global en cas de crash
      setIsFavorite(!newIsFavorite);
      setFollowersCount(prev => newIsFavorite ? Math.max(0, prev - 1) : prev + 1);
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

  const handleShareClick = async (e: React.MouseEvent, action: string) => {
    e.stopPropagation();
    e.preventDefault();
    
    const shopUrl = `${window.location.origin}/boutique/${shop.id}`;
    const phoneNumber = String(shop.phoneNumbers?.[0] || shop.shop_number || "");
    const normalizedPhone = normalizePhone(phoneNumber);
    const whatsappNumber = normalizeWhatsapp(phoneNumber);
    
    switch (action) {
      case "Phone":
        if (normalizedPhone) window.location.href = `tel:${normalizedPhone}`;
        else toast({ title: "Info", description: "Aucun numéro de téléphone disponible" });
        break;
      case "Message":
        if (normalizedPhone) window.location.href = `sms:${normalizedPhone}`;
        else toast({ title: "Info", description: "Aucun numéro disponible pour les messages" });
        break;
      case "WhatsApp":
        if (whatsappNumber) window.open(`https://wa.me/${whatsappNumber}`, '_blank', 'noopener,noreferrer');
        else toast({ title: "Info", description: "Aucun numéro WhatsApp disponible" });
        break;
      case "Share":
        if (navigator.share) {
          try {
            await navigator.share({
              title: shop.name,
              text: `Découvrez ${shop.name} sur Aladdin`,
              url: shopUrl,
            });
          } catch (error) {
            console.error("Error sharing:", error);
          }
        } else {
           // Fallback to copy to clipboard
           navigator.clipboard.writeText(shopUrl);
           toast({ title: "Lien copié", description: "Le lien de la boutique a été copié dans le presse-papier" });
        }
        break;
    }
  };

  return (
    <LocalizedLink to={`/boutique/${shop.id}`}>
      <div className="group flex flex-col transition-all duration-300 transform hover:scale-[1.02] hover:-translate-y-1 rounded-[24px] overflow-hidden relative h-full bg-slate-50 shadow-[0_10px_30px_-10px_rgba(22,163,74,0.25),0_6px_10px_-2px_rgba(22,163,74,0.15)] border border-[rgba(22,163,74,0.05)] dark:bg-[linear-gradient(145deg,#1e293b,#0f172a)] dark:shadow-[0_0_20px_rgba(255,255,255,0.25)] dark:border-none">
        {/* Cadre supérieur - Photo avec effet de retrait (recessed) */}
        <div className="p-2 pb-0">
          <div className="relative aspect-[4/3] overflow-hidden rounded-[24px] border-[3px] border-red-500/80 bg-white p-1.5 shadow-[0_8px_16px_rgba(0,0,0,0.1)] group-hover:border-red-600 group-hover:shadow-[0_12px_24px_rgba(220,38,38,0.2)] transition-all duration-300">
            <div className="w-full h-full overflow-hidden rounded-[16px] shadow-[inset_0_10px_20px_rgba(0,0,0,0.25),inset_0_-2px_6px_rgba(255,255,255,0.3)] bg-slate-100 relative">
              
              {/* Badge "Aladdin Boutique" */}
              <div className={`absolute top-0 ${isRTL ? 'left-0' : 'right-0'} z-30`}>
                <div className={`bg-white/90 backdrop-blur-md px-3 py-1.5 ${isRTL ? 'rounded-br-[20px] border-r' : 'rounded-bl-[20px] border-l'} shadow-lg flex items-center gap-3 border-b border-white/50`}>
                  <div className="flex flex-col items-end leading-none">
                    <span className="text-[10px] font-bold text-black uppercase tracking-widest mb-0.5">
                      Aladdin
                    </span>
                    <span 
                      className="text-[11px] font-black tracking-widest text-[#FFD700]"
                      style={{
                        textShadow: '0 0 5px rgba(255, 215, 0, 0.5)',
                        fontFamily: 'serif'
                      }}
                    >
                      BOUTIQUE
                    </span>
                  </div>
                  <div className="w-7 h-7 flex items-center justify-center p-0.5 group-hover:scale-110 transition-transform duration-300">
                     <img 
                       src="/lovable-uploads/19d6e319-1c10-44f0-a889-e4babb7d2e97.png" 
                       alt="Aladdin" 
                       className="w-full h-full object-contain drop-shadow-md"
                     />
                  </div>
                </div>
              </div>

              {/* Heart Icon (Favorites) */}
              <div className={`absolute top-2 ${isRTL ? 'right-2' : 'left-2'} z-30`}>
                <button
                  onClick={handleFavoriteToggle}
                  className="p-2 bg-white/80 backdrop-blur-sm rounded-full shadow-md hover:bg-white transition-all group/heart"
                >
                  <Heart 
                    className={`w-8 h-8 transition-all duration-300 ${
                      isFavorite 
                        ? "fill-red-500 text-red-500 scale-110 animate-pulse" 
                        : "text-slate-400 group-hover/heart:text-red-500"
                    }`} 
                  />
                </button>
              </div>

              {/* Logo Overlay au centre - REMOVED */}
              {/* <div className="absolute inset-0 flex items-center justify-center z-10 pointer-events-none">
                 <div className="w-20 h-20 rounded-full bg-white p-1.5 shadow-lg border-2 border-red-100">
                    <img src={shop.logoUrl} alt={shop.name} className="w-full h-full object-cover rounded-full" />
                 </div>
              </div> */}

              <ShopCardImage
                images={allImages}
                alt={shop.name}
              />
              
              <ShopStatusBadges
                isOnline={shop.isOnline}
                isVerified={shop.isVerified}
              />
            </div>
          </div>
        </div>
        
        {/* Cadre inférieur - Informations */}
        <div className="p-4 space-y-3 flex-1 flex flex-col relative z-10 pt-10">
           {/* Logo Boutique (Style Carré Arrondi + Chevauchement) */}
           <div className="absolute -top-10 left-4 z-20">
              <div className="w-20 h-20 rounded-[18px] bg-white p-1 shadow-[0_4px_12px_rgba(0,0,0,0.15)] border-[3px] border-white">
                 <img 
                   src={shop.logoUrl} 
                   alt={shop.name} 
                   className="w-full h-full object-cover rounded-[14px]" 
                 />
              </div>
           </div>

          <ShopCardInfo
            shopId={shop.id}
            name={shop.name}
            wilaya={shop.wilaya}
            commune={shop.commune}
            rating={shop.rating}
            votes={shop.reviewCount || 0}
          />
          
          <ShopFooterActions
            isFavorite={isFavorite}
            followersCount={followersCount}
            onFavoriteToggle={handleFavoriteToggle}
            onShareClick={handleShareClick}
          />
        </div>
      </div>
    </LocalizedLink>
  );
};

export default ShopCard;
