// Provider centralisé pour les bannières publicitaires
import React, { useEffect } from 'react';
import { useAdvertisingBanners } from '@/hooks/useAdvertisingBanners';
import { AdvertisingContext } from './AdvertisingContext';
import { logger } from '@/utils/silentLogger';

interface AdvertisingProviderProps {
  children: React.ReactNode;
}

export const AdvertisingProvider: React.FC<AdvertisingProviderProps> = ({ children }) => {
  const advertisingData = useAdvertisingBanners();
  
  useEffect(() => {
    if (advertisingData.banners.length > 0) {
      logger.info(`Loaded ${advertisingData.banners.length} advertising banners`);
    }
  }, [advertisingData.banners.length]);

  return (
    <AdvertisingContext.Provider value={advertisingData}>
      {children}
    </AdvertisingContext.Provider>
  );
};