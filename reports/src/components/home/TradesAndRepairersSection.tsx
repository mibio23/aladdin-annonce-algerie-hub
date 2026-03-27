import React, { useEffect, useState } from 'react';
import { supabase } from '@/integrations/supabase/client';
import SmartAnnouncementsGrid from './SmartAnnouncementsGrid';
import { Briefcase, ArrowRight } from 'lucide-react';
import { LocalizedLink } from '@/utils/linkUtils';
import { Link } from 'react-router-dom';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { Badge } from "@/components/ui/badge";

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
  const { t, isRTL } = useSafeI18nWithRouter();
  const [offers, setOffers] = useState<TradeOffer[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
        const fetchOffers = async () => {
      try {
        const { data, error } = await supabase
          .from('professional_job_offers')
          .select('id, title, description, phone_numbers, images, logo_url, created_at')
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
          created_at: item.created_at
        }));
        
        setOffers(transformedData);
      } catch (err) {
        console.error('Error fetching trade offers:', err);
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
            {offers.map((offer) => (
            <div key={offer.id} className="group flex flex-col transition-all duration-300 transform hover:scale-105 hover:-translate-y-1 space-y-2 h-full">
                {/* Top Frame - Image or Placeholder */}
                <div className="bg-white border rounded-lg overflow-hidden dark:bg-slate-800 dark:border-slate-700 shadow-sm hover:shadow-md transition-shadow h-48 relative">
                    <Link to={`/offre-metier/${offer.id}`} className="block w-full h-full">
                        {offer.image_url ? (
                            <img 
                                src={offer.image_url} 
                                alt={offer.title} 
                                className="w-full h-full object-cover"
                            />
                        ) : (
                            <div className="w-full h-full bg-gradient-to-br from-blue-50 to-indigo-50 dark:from-slate-700 dark:to-slate-600 flex items-center justify-center">
                                <Briefcase className="h-12 w-12 text-blue-300 dark:text-slate-400" />
                            </div>
                        )}
                    </Link>
                </div>
                
                {/* Bottom Frame - Info */}
                <div className="bg-white border rounded-lg p-4 space-y-3 dark:bg-slate-800 dark:border-slate-700 shadow-sm hover:shadow-md transition-shadow flex-grow flex flex-col">
                    <h3 className="text-lg font-bold text-gray-900 dark:text-white line-clamp-2 group-hover:text-blue-600 dark:group-hover:text-blue-400 transition-colors">
                        <Link to={`/offre-metier/${offer.id}`}>
                            {offer.title}
                        </Link>
                    </h3>
                    
                    <p className="text-gray-600 dark:text-gray-400 text-sm line-clamp-3 flex-grow">
                        {offer.description}
                    </p>
                    
                    <div className="pt-3 border-t border-gray-100 dark:border-slate-700 mt-auto">
                        {offer.link_url && (
                            <div className="flex flex-wrap gap-2">
                                {offer.link_url.split(',').slice(0, 1).map((phone, idx) => (
                                    <a 
                                        key={idx}
                                        href={`tel:${phone.trim()}`}
                                        className="text-sm font-semibold text-blue-600 dark:text-blue-400 hover:underline flex items-center gap-1"
                                    >
                                        <span className="w-2 h-2 bg-green-500 rounded-full inline-block"></span>
                                        {phone.trim()}
                                    </a>
                                ))}
                            </div>
                        )}
                    </div>
                </div>
            </div>
            ))}
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
