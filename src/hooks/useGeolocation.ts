import { useState, useCallback } from 'react';
import { logger } from '@/utils/silentLogger';

export interface GeolocationCoords {
  lat: number;
  lng: number;
  latitude: number;
  longitude: number;
  accuracy?: number; // Précision en mètres
  address?: string;
  wilaya?: string;
  commune?: string;
}

export interface GeolocationState {
  coords: GeolocationCoords | null;
  loading: boolean;
  error: string | null;
}

export const useGeolocation = () => {
  const [state, setState] = useState<GeolocationState>({
    coords: null,
    loading: false,
    error: null,
  });

  const getCurrentPosition = useCallback(async (): Promise<GeolocationCoords | null> => {
    setState(prev => ({ ...prev, loading: true, error: null }));

    if (!navigator.geolocation) {
      const error = 'La géolocalisation n\'est pas supportée par ce navigateur';
      setState(prev => ({ ...prev, loading: false, error }));
      return null;
    }

    return new Promise((resolve) => {
      navigator.geolocation.getCurrentPosition(
        async (position) => {
          const lat = position.coords.latitude;
          const lng = position.coords.longitude;
          const accuracy = position.coords.accuracy;
          
          const coords = {
            lat,
            lng,
            latitude: lat,
            longitude: lng,
            accuracy,
          };

          try {
            // Reverse geocoding with Nominatim (free)
            const response = await fetch(
              `https://nominatim.openstreetmap.org/reverse?format=json&lat=${coords.lat}&lon=${coords.lng}&addressdetails=1`
            );
            const data = await response.json();
            
            // Extraction intelligente de la wilaya et commune
            // Nominatim retourne souvent "state" pour Wilaya et "city"/"town"/"village" pour Commune
            const addressDetails = data.address || {};
            
            // Tentative de détection de la Wilaya (State)
            // On nettoie "Wilaya de ..." si présent
            let detectedWilaya = addressDetails.state || addressDetails.province || addressDetails.region || '';
            detectedWilaya = detectedWilaya
              .replace(/^Wilaya d['’]\s*/i, '') // Wilaya d'Alger
              .replace(/^Wilaya de\s+/i, '')     // Wilaya de Blida
              .replace(/^Wilaya\s+/i, '')        // Wilaya Blida
              .replace(/^Province de\s+/i, '')   // Province de ...
              .replace(/^Province of\s+/i, '')   // Province of ...
              .trim();

            // Tentative de détection de la Commune
            const detectedCommune = addressDetails.city || addressDetails.town || addressDetails.village || addressDetails.municipality || '';

            const fullCoords: GeolocationCoords = {
              ...coords,
              address: data.display_name || `${coords.lat.toFixed(4)}, ${coords.lng.toFixed(4)}`,
              wilaya: detectedWilaya,   // Peut être vide si non trouvé
              commune: detectedCommune, // Peut être vide si non trouvé
            };

            setState({
              coords: fullCoords,
              loading: false,
              error: null,
            });
            resolve(fullCoords);
          } catch {
            const fullCoords: GeolocationCoords = {
              ...coords,
              address: `${coords.lat.toFixed(4)}, ${coords.lng.toFixed(4)}`,
            };
            
            setState({
              coords: fullCoords,
              loading: false,
              error: null,
            });
            resolve(fullCoords);
          }
        },
        (error) => {
          let errorMessage = 'Erreur de géolocalisation';
          switch (error.code) {
            case error.PERMISSION_DENIED:
              errorMessage = 'Permission de géolocalisation refusée';
              break;
            case error.POSITION_UNAVAILABLE:
              errorMessage = 'Position non disponible';
              break;
            case error.TIMEOUT:
              errorMessage = 'Timeout de géolocalisation';
              break;
          }
          
          setState(prev => ({ ...prev, loading: false, error: errorMessage }));
          resolve(null);
        },
        {
          enableHighAccuracy: true,
          timeout: 20000,
          maximumAge: 0, // IMPORTANT: Force le navigateur à ne pas utiliser le cache et recalculer la position réelle
        }
      );
    });
  }, []);

  const searchLocation = useCallback(async (query: string): Promise<GeolocationCoords[]> => {
    if (!query.trim()) return [];

    try {
      // Geocoding with Nominatim (free)
      const response = await fetch(
        `https://nominatim.openstreetmap.org/search?format=json&q=${encodeURIComponent(query)}&limit=5&addressdetails=1&countrycodes=dz`
      );
      const data = await response.json();

      return (data as Array<Record<string, unknown>>).map((item) => ({
        lat: parseFloat(String(item.lat)),
        lng: parseFloat(String(item.lon)),
        latitude: parseFloat(String(item.lat)),
        longitude: parseFloat(String(item.lon)),
        address: String(item.display_name),
      }));
    } catch (error) {
      logger.error('Erreur de recherche de localisation:', error);
      return [];
    }
  }, []);

  return {
    ...state,
    getCurrentPosition,
    searchLocation,
  };
};
