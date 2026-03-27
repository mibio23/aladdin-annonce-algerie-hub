
import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { ArrowRight, Crown, Sparkles, Loader2 } from "lucide-react";
import LegacyAnnouncementCard from "@/components/announcements/LegacyAnnouncementCard";
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import PremiumAnnouncementsBanner from "./PremiumAnnouncementsBanner";
import SmartAnnouncementsGrid from "./SmartAnnouncementsGrid";
import { supabase } from "@/integrations/supabase/client";

const PremiumAnnouncementsSection = () => {
  const { t, isRTL } = useSafeI18nWithRouter();
  const [announcements, setAnnouncements] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchPremiumAnnouncements = async () => {
      try {
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        const { data, error } = await (supabase as any)
          .from('announcements')
          .select('id, title, price, wilaya, location, images, image_url, created_at, is_urgent, phone_number, category_id, user_id')
          .eq('is_featured', true)
          .eq('status', 'active')
          .order('created_at', { ascending: false })
          .limit(8);

        if (error) throw error;
        const rows = data || [];
        const userIds = Array.from(
          new Set(
            rows
              .map((r: any) => r.user_id)
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

        const profileByUserId = new Map<string, any>();
        (profilesData || []).forEach((p: any) => {
          if (typeof p.user_id === "string") profileByUserId.set(p.user_id, p);
        });

        const enriched = rows.map((r: any) => ({
          ...r,
          profiles: r.user_id ? profileByUserId.get(r.user_id) : null,
        }));

        setAnnouncements(enriched);
      } catch (error) {
        console.error('Error fetching premium announcements:', error);
      } finally {
        setLoading(false);
      }
    };

    fetchPremiumAnnouncements();
  }, []);

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
          {announcements.map((announcement) => (
            <LegacyAnnouncementCard 
              key={announcement.id}
              id={announcement.id}
              title={announcement.title}
              price={announcement.price}
              location={announcement.wilaya || announcement.location || ""}
              imageUrl={announcement.image_url || (announcement.images && announcement.images[0]) || ""}
              imageUrls={announcement.images || (announcement.image_url ? [announcement.image_url] : [])}
              date={announcement.created_at}
              isFeatured={true}
              isProfessional={false} // Can be derived if needed
              isOnline={true}
              isActive={true}
              isUrgent={announcement.is_urgent}
              urgentMessage={announcement.is_urgent ? "Urgent" : undefined}
              phoneNumber={announcement.phone_number}
              category={announcement.category_id}
              shopName={undefined} // Could fetch if linked to shop
              shopId={undefined}
              shopLogoUrl={undefined}
              profiles={announcement.profiles}
            />
          ))}
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
