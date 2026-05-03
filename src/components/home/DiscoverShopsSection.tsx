import { LocalizedLink } from "@/utils/linkUtils";
import { ShoppingBag, Loader2 } from "lucide-react";
import ShopCard from "./ShopCard";
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import DiscoverShopsBanner from "./DiscoverShopsBanner";
import SmartAnnouncementsGrid from "./SmartAnnouncementsGrid";
import { useEffect, useState } from "react";
import { supabase } from "@/integrations/supabase/client";
import { logger } from "@/utils/silentLogger";
import { Badge } from "@/components/ui/badge";

type DiscoverShopsSectionProps = {
  shopsCount?: number;
};

const DiscoverShopsSection = ({ shopsCount }: DiscoverShopsSectionProps) => {
  const { t, isRTL, language } = useSafeI18nWithRouter();
  const [featuredShops, setFeaturedShops] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);

  const tr = (key: string, fallback: string | Record<string, string>) => {
    const value = t(key);
    if (value && value !== key) return value;
    if (typeof fallback === "string") return fallback;
    return fallback[language] || fallback.fr || Object.values(fallback)[0] || key;
  };

  useEffect(() => {
    const fetchShops = async () => {
      try {
        const { data, error } = await supabase
          .from('shops')
          .select('*')
          .limit(8)
          .order('created_at', { ascending: false });
        
        if (error) throw error;
        setFeaturedShops(data || []);
      } catch (error) {
        logger.warn('Error fetching shops:', error);
      } finally {
        setLoading(false);
      }
    };

    fetchShops();
  }, []);

  return (
    <section className="bg-white border rounded-lg p-6 dark:bg-slate-800 dark:border-slate-700">
      <DiscoverShopsBanner />
      <div className={`flex items-center mb-6 justify-between`}>
        <div className={`flex items-center ${isRTL ? 'order-2' : 'order-1'}`}>
          <ShoppingBag className={`h-8 w-8 ${isRTL ? 'ml-3' : 'mr-3'} text-blue-600 dark:text-blue-400 transition-all duration-300 hover:scale-110 hover:rotate-12 cursor-pointer`} />
          <div className={`flex items-center gap-3 ${isRTL ? 'flex-row-reverse' : 'flex-row'}`}>
            <h2 className={`text-[2.84rem] font-bold text-black dark:text-slate-200 aladdin-glow uppercase hover:text-red-600 dark:hover:text-red-400 transition-all duration-300 hover:drop-shadow-xl hover:text-shadow-red cursor-pointer ${isRTL ? 'text-right' : 'text-left'}`}>
              {t('sections.discoverShopsHover')}
            </h2>
            {typeof shopsCount === "number" ? (
              <Badge variant="secondary" className="text-base">
                {shopsCount}
              </Badge>
            ) : null}
          </div>
        </div>
        <LocalizedLink
          to="/boutiques"
          className={`font-bold text-black dark:text-white hover:text-gray-700 dark:hover:text-gray-300 transition-colors duration-200 ${isRTL ? 'order-1' : 'order-2'}`}
        >
          {tr('announcements.viewAll', { fr: 'Voir tout', en: 'View all', es: 'Ver todo', it: 'Vedi tutto', de: 'Alle anzeigen', ar: 'عرض الكل' })}
        </LocalizedLink>
      </div>
      
      {loading ? (
        <div className="flex justify-center py-12">
          <Loader2 className="h-8 w-8 animate-spin text-primary" />
        </div>
      ) : featuredShops.length === 0 ? (
        <div className="flex justify-center items-center min-h-[200px] text-muted-foreground">
          {tr('sections.noShopsAvailable', { fr: 'Aucune boutique disponible pour le moment.', en: 'No shops available at the moment.', es: 'No hay tiendas disponibles por el momento.', it: 'Nessun negozio disponibile al momento.', de: 'Derzeit keine Shops verfügbar.', ar: 'لا توجد متاجر متاحة حالياً.' })}
        </div>
      ) : (
        <SmartAnnouncementsGrid itemsPerRow={8}>
          {featuredShops.map((shop) => (
            <ShopCard key={shop.id} shop={shop} />
          ))}
        </SmartAnnouncementsGrid>
      )}
    </section>
  );
};

export default DiscoverShopsSection;
