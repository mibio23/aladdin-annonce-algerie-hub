import React from 'react';
import { type AdvertisingBanner } from '@/hooks/useAdvertisingBanners';

export interface AdvertisingContextType {
  banners: AdvertisingBanner[];
  loading: boolean;
  error: string | null;
  refetch: () => void;
}

export const AdvertisingContext = React.createContext<AdvertisingContextType | null>(null);