import React, { useState } from 'react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger } from '@/components/ui/dialog';
import { MapPin, Loader2, Search, Navigation } from 'lucide-react';
import { useGeolocation, GeolocationCoords } from '@/hooks/useGeolocation';
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { toast } from '@/hooks/use-toast';

interface GeolocationPickerProps {
  onLocationSelect: (location: GeolocationCoords) => void;
  selectedLocation?: string;
}

const GeolocationPicker: React.FC<GeolocationPickerProps> = ({
  onLocationSelect,
  selectedLocation,
}) => {
  const { t } = useSafeI18nWithRouter();
  const [isOpen, setIsOpen] = useState(false);
  const [searchQuery, setSearchQuery] = useState('');
  const [searchResults, setSearchResults] = useState<GeolocationCoords[]>([]);
  const [isSearching, setIsSearching] = useState(false);
  
  const { getCurrentPosition, searchLocation, loading: geoLoading } = useGeolocation();

  const handleCurrentLocation = async () => {
    const coords = await getCurrentPosition();
    if (coords) {
      onLocationSelect(coords);
      setIsOpen(false);
      toast({
        title: t('search.geolocation.currentPositionDetected'),
        description: coords.address,
      });
    } else {
      toast({
        title: t('search.geolocation.errorTitle'),
        description: t('search.geolocation.errorCurrent'),
        variant: "destructive",
      });
    }
  };

  const handleSearch = async () => {
    if (!searchQuery.trim()) return;
    
    setIsSearching(true);
    try {
      const results = await searchLocation(searchQuery);
      setSearchResults(results);
      if (results.length === 0) {
        toast({
          title: t('search.geolocation.noResultsTitle'),
          description: t('search.geolocation.noResultsDesc'),
        });
      }
    } catch {
      toast({
        title: t('search.geolocation.searchErrorTitle'),
        description: t('search.geolocation.searchErrorDesc'),
        variant: "destructive",
      });
    } finally {
      setIsSearching(false);
    }
  };

  const handleLocationClick = (location: GeolocationCoords) => {
    onLocationSelect(location);
    setIsOpen(false);
    setSearchQuery('');
    setSearchResults([]);
    toast({
      title: t('search.geolocation.addressSelected'),
      description: location.address,
    });
  };

  return (
    <Dialog open={isOpen} onOpenChange={setIsOpen}>
      <DialogTrigger asChild>
        <Button 
          variant="outline" 
          size="sm" 
          className="flex items-center gap-2 hover:border-green-500 hover:text-green-600 focus-visible:ring-green-500 focus-visible:border-green-500 transition-colors"
        >
          <MapPin className="h-4 w-4" />
          {selectedLocation || t('search.advanced.chooseLocation')}
        </Button>
      </DialogTrigger>
      <DialogContent className="max-w-md">
        <DialogHeader>
          <DialogTitle>{t('search.advanced.chooseLocation')}</DialogTitle>
        </DialogHeader>
        
        <div className="space-y-4">
          {/* Current location button */}
          <Button
            onClick={handleCurrentLocation}
            disabled={geoLoading}
            className="w-full"
            variant="outline"
          >
            {geoLoading ? (
              <Loader2 className="h-4 w-4 mr-2 animate-spin" />
            ) : (
              <Navigation className="h-4 w-4 mr-2" />
            )}
            {t('search.geolocation.useCurrentLocation')}
          </Button>

          {/* Search section */}
          <div className="flex gap-2">
            <Input
              placeholder={t('search.geolocation.searchAddressPlaceholder')}
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              onKeyPress={(e) => e.key === 'Enter' && handleSearch()}
              className="h-12 rounded-lg border-gray-200 hover:border-green-500 focus:border-green-500 focus:ring-green-500 focus-visible:border-green-500 focus-visible:ring-green-500 transition-colors"
            />
            <Button
              onClick={handleSearch}
              disabled={isSearching || !searchQuery.trim()}
              size="sm"
              className="focus-visible:ring-green-500"
            >
              {isSearching ? (
                <Loader2 className="h-4 w-4 animate-spin" />
              ) : (
                <Search className="h-4 w-4" />
              )}
            </Button>
          </div>

          {/* Search results */}
          {searchResults.length > 0 && (
            <div className="space-y-2 max-h-60 overflow-y-auto">
              <p className="text-sm font-medium">{t('search.geolocation.results')}</p>
              {searchResults.map((result, index) => (
                <Button
                  key={index}
                  variant="ghost"
                  className="w-full justify-start text-left h-auto p-3"
                  onClick={() => handleLocationClick(result)}
                >
                  <MapPin className="h-4 w-4 mr-2 flex-shrink-0" />
                  <span className="text-sm truncate">{result.address}</span>
                </Button>
              ))}
            </div>
          )}
        </div>
      </DialogContent>
    </Dialog>
  );
};

export default GeolocationPicker;
