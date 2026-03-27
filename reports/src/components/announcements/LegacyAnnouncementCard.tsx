import React from 'react';
import AnnouncementCard from '@/components/announcements/AnnouncementCard';
import { Announcement } from '@/hooks/useAnnouncements';
import { toSafeISOString } from '@/lib/utils/dateUtils';
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';

// Composant adaptatif pour maintenir la compatibilité avec l'ancien code
const LegacyAnnouncementCard: React.FC<any> = (props) => {
  const { navigateWithLanguage } = useLanguageNavigation();

  const defaultOnView = (announcement: Announcement) => {
    navigateWithLanguage(`/annonce/${announcement.id}`);
  };

  // Si on reçoit une prop "announcement", utiliser directement le nouveau composant
  if (props.announcement) {
    return <AnnouncementCard {...props} onView={props.onView || defaultOnView} />;
  }

  // Sinon, adapter les anciennes props vers le nouveau format
  const adaptedAnnouncement: Announcement = {
    id: props.id,
    title: props.title,
    description: props.description || '',
    price: props.price,
    category_id: props.category || 'unknown',
    condition: 'good',
    images: props.imageUrl ? [props.imageUrl] : (props.imageUrls || []),
    location: props.location || '',
    wilaya: props.wilaya || '',
    contact_phone: props.phoneNumber || '',
    contact_email: props.email || '',
    user_id: props.user_id || 'unknown',
    created_at: toSafeISOString(props.date),
    updated_at: toSafeISOString(props.date),
    is_active: props.isActive !== false,
    is_featured: props.isFeatured || false,
    is_urgent: props.isUrgent || false,
    views_count: 0,
    currency: 'DZD',
    expires_at: null,
    delivery_options: [],
    profiles: props.profiles,
  };

  return (
    <AnnouncementCard
      announcement={adaptedAnnouncement}
      variant={props.variant}
      showActions={props.showActions}
      onView={props.onView || defaultOnView}
      onContact={props.onContact}
      onShare={props.onShare}
    />
  );
};

export default LegacyAnnouncementCard;
