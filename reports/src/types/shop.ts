
export interface Shop {
  id: string;
  ownerId?: string;
  globalListingNumber?: number;
  name: string;
  description: string;
  wilaya: string;
  commune?: string;
  phoneNumbers: string[];
  landlinePhone?: string;
  logoUrl: string;
  bannerUrl?: string;
  productImageUrls: string[];
  productVideoUrls?: string[];
  isOnline: boolean;
  isPhysical?: boolean;
  isVerified?: boolean;
  shopStatus?: string;
  shop_number?: number;
  address?: string;
  website?: string;
  whatsappNumber?: string;
  mainCategory?: string;
  rating?: number;
  reviewCount?: number;
  followerCount?: number;
  gpsCoordinates?: { lat: number; lng: number };
  socialMedia?: {
    facebook?: string;
    instagram?: string;
    twitter?: string;
    linkedin?: string;
    youtube?: string;
    tiktok?: string;
  };
  openingHours?: Record<string, { open: string; close: string; closed?: boolean }>;
  deliveryOptions?: {
    available?: boolean;
    regions?: string[];
    price?: string;
  };
  paymentMethods?: {
    cash?: boolean;
    card?: boolean;
    transfer?: boolean;
    baridiMob?: boolean;
  };
  rubrique?: string;
}
