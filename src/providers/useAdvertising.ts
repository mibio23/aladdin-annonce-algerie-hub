import { useContext } from 'react';
import { AdvertisingContext, type AdvertisingContextType } from './AdvertisingContext';

export const useAdvertising = (): AdvertisingContextType => {
  const context = useContext(AdvertisingContext);
  if (!context) {
    throw new Error('useAdvertising must be used within an AdvertisingProvider');
  }
  return context;
};