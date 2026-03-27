import React, { useEffect } from 'react';
import AnnouncementCard from '@/components/announcements/AnnouncementCard';
import { useAnnouncements, Announcement } from '@/hooks/useAnnouncements';
import { Loader2 } from 'lucide-react';
import { useToast } from '@/hooks/use-toast';
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';

import { mockVehicleAnnouncements } from '@/data/mock/vehicleAnnouncements';

const AnnouncementPreviewCards = React.memo(() => {
  const { announcements: realAnnouncements, fetchAnnouncements, loading } = useAnnouncements();
  const { toast } = useToast();
  const { navigateWithLanguage } = useLanguageNavigation();

  // Merge real and mock announcements
  const announcements = React.useMemo(() => {
    const now = new Date().toISOString();
    const mockData: Announcement[] = mockVehicleAnnouncements.map((item) => ({
      id: item.id,
      title: item.title,
      description: item.description || "",
      price: item.price,
      category_id: item.category_id,
      condition: item.condition || "good",
      images: item.images || [],
      location: item.location,
      wilaya: item.wilaya || "",
      contact_phone: item.contact_phone || "",
      contact_email: item.contact_email || "",
      user_id: item.user_id || "mock_user",
      created_at: item.created_at || now,
      updated_at: item.updated_at || now,
      is_active: item.is_active ?? true,
      is_featured: item.is_featured ?? false,
      is_urgent: item.is_urgent ?? false,
      views_count: item.views_count ?? 0,
      currency: item.currency || "DZD",
      expires_at: item.expires_at ?? null,
      delivery_options: item.delivery_options || [],
      categories: item.categories || { name: "Véhicules", slug: "vehicules" },
      profiles: item.profiles,
    }));
    
    return [...mockData, ...realAnnouncements];
  }, [realAnnouncements]);

  useEffect(() => {
    fetchAnnouncements({ limit: 8 });
  }, [fetchAnnouncements]);

  const handleContact = (announcement: Announcement) => {
    // Si l'utilisateur clique sur contacter, on le redirige vers le détail de l'annonce
    // où il aura accès à toutes les options de contact
    navigateWithLanguage(`/annonce/${announcement.id}`);
  };

  const handleShare = async (announcement: Announcement) => {
    const url = `${window.location.origin}/annonce/${announcement.id}`;
    if (navigator.share) {
      try {
        await navigator.share({
          title: announcement.title,
          text: `Découvrez cette annonce : ${announcement.title}`,
          url: url,
        });
      } catch (err) {
        console.error('Error sharing:', err);
      }
    } else {
      // Fallback: copy to clipboard
      navigator.clipboard.writeText(url).then(() => {
        toast({
          title: "Lien copié !",
          description: "Le lien de l'annonce a été copié dans votre presse-papiers.",
        });
      });
    }
  };

  if (loading && announcements.length === 0) {
    return (
      <div className="flex justify-center items-center min-h-[200px]">
        <Loader2 className="w-8 h-8 animate-spin text-primary" />
      </div>
    );
  }

  return (
    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
      {announcements.length > 0 ? (
        announcements.map((announcement) => (
          <AnnouncementCard
            key={announcement.id}
            announcement={announcement}
            onView={(a) => navigateWithLanguage(`/annonce/${a.id}`)}
            onContact={handleContact}
            onShare={handleShare}
            variant="default"
          />
        ))
      ) : (
        <p className="col-span-full text-center text-muted-foreground">
          Aucune annonce disponible pour le moment.
        </p>
      )}
    </div>
  );
});

AnnouncementPreviewCards.displayName = 'AnnouncementPreviewCards';

export default AnnouncementPreviewCards;
