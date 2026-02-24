import React, { useState, useEffect, useMemo } from 'react';
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { SearchFilters } from '@/types/search';
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Slider } from "@/components/ui/slider";
import { useCategories } from '@/services/supabaseCategoriesService';
import { wilayas } from '@/data/wilayaData';
import { getWilayaCodeByName } from '@/utils/distanceUtils';
import { X, MapPin, Loader2 } from "lucide-react";
import { useGeolocation } from '@/hooks/useGeolocation';
import { toast } from '@/hooks/use-toast';

interface AdvancedSearchFiltersProps {
  onFiltersChange: (filters: SearchFilters) => void;
  onClose: () => void;
  initialFilters?: SearchFilters;
}

export const AdvancedSearchFilters: React.FC<AdvancedSearchFiltersProps> = ({ 
  onFiltersChange, 
  onClose,
  initialFilters 
}) => {
  const { t, language } = useSafeI18nWithRouter();
  const { data: categories = [] } = useCategories(language);
  const { getCurrentPosition, loading: geoLoading } = useGeolocation();
  
  const [selectedCategory, setSelectedCategory] = useState<string>(initialFilters?.category || '');
  const [selectedSubcategory, setSelectedSubcategory] = useState<string>(initialFilters?.subcategory || '');
  const [selectedWilaya, setSelectedWilaya] = useState<string>(initialFilters?.wilaya || '');
  const [priceRange, setPriceRange] = useState<[number, number]>(initialFilters?.priceRange || [0, 10000000]);
  const [condition, setCondition] = useState<string>(initialFilters?.condition || '');
  const [distance, setDistance] = useState<number>(initialFilters?.distance || 50);
  const [location, setLocation] = useState<string>(initialFilters?.location || '');
  const [attributes, setAttributes] = useState<Record<string, any>>(initialFilters?.attributes || {});
  
  // Logic to find subcategories
  const currentCategory = useMemo(() => {
    return categories.find(c => c.id === selectedCategory || c.slug === selectedCategory);
  }, [categories, selectedCategory]);

  const subcategories = useMemo(() => {
    return currentCategory?.subcategories || [];
  }, [currentCategory]);

  // Reset subcategory when category changes
  useEffect(() => {
    if (selectedCategory && currentCategory && !subcategories.find(s => s.id === selectedSubcategory)) {
      setSelectedSubcategory('');
    }
    // Reset attributes when category changes (optional, but safer)
    setAttributes({});
  }, [selectedCategory, currentCategory, subcategories, selectedSubcategory]);

  const handleApply = () => {
    onFiltersChange({
      category: selectedCategory,
      subcategory: selectedSubcategory,
      wilaya: selectedWilaya,
      priceRange: priceRange,
      condition: condition,
      distance: distance,
      location: location,
      attributes: attributes
    });
    onClose();
  };
  
  const handleClear = () => {
     setSelectedCategory('');
     setSelectedSubcategory('');
     setSelectedWilaya('');
     setPriceRange([0, 10000000]);
     setCondition('');
     setDistance(50);
     setLocation('');
     setAttributes({});
     onFiltersChange({});
  };

  const handleAttributeChange = (key: string, value: any) => {
    setAttributes(prev => ({
      ...prev,
      [key]: value
    }));
  };

  const handleGeolocation = async () => {
    const coords = await getCurrentPosition();
    if (coords) {
      let matchedWilayaName = '';

      if (coords.wilaya) {
        // Try to match wilaya using our robust utility
        const wilayaCode = getWilayaCodeByName(coords.wilaya);
        if (wilayaCode) {
          const foundWilaya = wilayas.find(w => w.code === wilayaCode);
          if (foundWilaya) {
            matchedWilayaName = foundWilaya.name;
            setSelectedWilaya(foundWilaya.name);
          }
        }
      }

      if (coords.address) {
        setLocation(coords.address);
        // If we didn't match a wilaya from the 'wilaya' field, try extracting it from the full address/display_name
        if (!matchedWilayaName) {
           const wilayaCode = getWilayaCodeByName(coords.address);
           if (wilayaCode) {
             const foundWilaya = wilayas.find(w => w.code === wilayaCode);
             if (foundWilaya) {
               matchedWilayaName = foundWilaya.name;
               setSelectedWilaya(foundWilaya.name);
             }
           }
        }
      }

      toast({
        title: t('search.geolocation.currentPositionDetected') || "Position détectée",
        description: matchedWilayaName 
          ? `${t('createAd.wilaya')} : ${matchedWilayaName}` 
          : (coords.wilaya || coords.address),
      });
    } else {
      toast({
        title: t('search.geolocation.errorTitle') || "Erreur",
        description: t('search.geolocation.errorCurrent') || "Impossible de récupérer votre position",
        variant: "destructive",
      });
    }
  };

  return (
    <div className="p-4 bg-white dark:bg-slate-800 rounded-lg shadow-lg border border-gray-200 dark:border-slate-700 space-y-4 absolute top-full left-0 right-0 z-50 mt-2 w-full max-w-3xl">
      <div className="flex justify-between items-center mb-2">
        <h3 className="font-semibold text-lg">{t('search.advancedFilters') || 'Filtres avancés'}</h3>
        <Button variant="ghost" size="sm" onClick={onClose}><X className="h-4 w-4" /></Button>
      </div>
      
      <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
        {/* Category */}
        <div className="space-y-2">
          <Label>{t('createAd.category') || 'Catégorie'}</Label>
          <Select value={selectedCategory} onValueChange={setSelectedCategory}>
            <SelectTrigger>
              <SelectValue placeholder={t('createAd.selectCategory') || 'Sélectionner une catégorie'} />
            </SelectTrigger>
            <SelectContent>
              {categories.map(cat => (
                <SelectItem key={cat.id} value={cat.id}>{cat.name}</SelectItem>
              ))}
            </SelectContent>
          </Select>
        </div>

        {/* Subcategory */}
        <div className="space-y-2">
          <Label>{t('createAd.subcategory') || 'Sous-catégorie'}</Label>
          <Select 
            value={selectedSubcategory} 
            onValueChange={setSelectedSubcategory}
            disabled={!selectedCategory}
          >
            <SelectTrigger>
              <SelectValue placeholder={t('createAd.selectSubcategory') || 'Sélectionner une sous-catégorie'} />
            </SelectTrigger>
            <SelectContent>
              {subcategories.map(sub => (
                <SelectItem key={sub.id} value={sub.id}>{sub.name}</SelectItem>
              ))}
            </SelectContent>
          </Select>
        </div>

        {/* Wilaya & Location */}
        <div className="space-y-2">
          <Label>{t('createAd.wilaya') || 'Wilaya'}</Label>
          <div className="flex gap-2">
            <Select value={selectedWilaya} onValueChange={setSelectedWilaya}>
              <SelectTrigger className="flex-1">
                <SelectValue placeholder={t('createAd.selectWilaya') || 'Sélectionner une wilaya'} />
              </SelectTrigger>
              <SelectContent>
                {wilayas.map(w => (
                  <SelectItem key={w.code} value={w.name}>{language === 'ar' ? w.name_ar : w.name}</SelectItem>
                ))}
              </SelectContent>
            </Select>
            <Button 
              type="button" 
              variant="outline" 
              size="icon" 
              onClick={handleGeolocation}
              disabled={geoLoading}
              title={t('search.geolocation.useCurrentLocation') || "Utiliser ma position"}
            >
              {geoLoading ? <Loader2 className="h-4 w-4 animate-spin" /> : <MapPin className="h-4 w-4" />}
            </Button>
          </div>
        </div>
        
        {/* Condition */}
        <div className="space-y-2">
          <Label>{t('createAd.condition') || 'État'}</Label>
           <Select value={condition} onValueChange={setCondition}>
            <SelectTrigger>
              <SelectValue placeholder={t('createAd.selectCondition') || 'Sélectionner l\'état'} />
            </SelectTrigger>
            <SelectContent>
               <SelectItem value="neuf">{t('createAd.conditions.neuf') || 'Neuf'}</SelectItem>
               <SelectItem value="bon_etat">{t('createAd.conditions.bon_etat') || 'Bon état'}</SelectItem>
               <SelectItem value="etat_moyen">{t('createAd.conditions.etat_moyen') || 'État moyen'}</SelectItem>
               <SelectItem value="bricoleur">{t('createAd.conditions.bricoleur') || 'À bricoler'}</SelectItem>
            </SelectContent>
          </Select>
        </div>
      </div>

      {/* Distance Slider (Only if Wilaya/Location is selected) */}
      {(selectedWilaya || location) && (
        <div className="space-y-4 pt-2 border-t dark:border-slate-700">
          <div className="flex justify-between items-center">
            <Label>Distance ({distance} km)</Label>
          </div>
          <Slider
            defaultValue={[distance]}
            max={500}
            step={5}
            onValueChange={(vals) => setDistance(vals[0])}
            className="w-full"
          />
          <p className="text-xs text-muted-foreground">
            Rechercher dans un rayon de {distance} km autour de {selectedWilaya || "votre position"}
          </p>
        </div>
      )}

      {/* Dynamic Attributes based on Category */}
      {currentCategory?.attributes && Object.keys(currentCategory.attributes).length > 0 && (
        <div className="space-y-4 pt-2 border-t dark:border-slate-700">
          <h4 className="font-medium text-sm">{t('search.specificCriteria') || 'Critères spécifiques'}</h4>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            {Object.entries(currentCategory.attributes).map(([key, options]) => (
              <div key={key} className="space-y-2">
                <Label>{key}</Label>
                {options && options.length > 0 ? (
                   <Select 
                     value={attributes[key] as string} 
                     onValueChange={(val) => handleAttributeChange(key, val)}
                   >
                    <SelectTrigger>
                      <SelectValue placeholder={`Sélectionner ${key}`} />
                    </SelectTrigger>
                    <SelectContent>
                      {options.map(opt => (
                        <SelectItem key={opt} value={opt}>{opt}</SelectItem>
                      ))}
                    </SelectContent>
                   </Select>
                ) : (
                   <Input 
                     placeholder={key}
                     value={attributes[key] || ''}
                     onChange={(e) => handleAttributeChange(key, e.target.value)}
                   />
                )}
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Price Range */}
      <div className="space-y-2">
        <Label>{t('createAd.price') || 'Prix'} (DZD)</Label>
        <div className="flex gap-4 items-center">
           <Input 
             type="number" 
             value={priceRange[0]} 
             onChange={(e) => setPriceRange([Number(e.target.value), priceRange[1]])}
             placeholder="Min"
             className="w-full"
           />
           <span>-</span>
           <Input 
             type="number" 
             value={priceRange[1]} 
             onChange={(e) => setPriceRange([priceRange[0], Number(e.target.value)])}
             placeholder="Max"
             className="w-full"
           />
        </div>
      </div>

      <div className="flex justify-end gap-2 pt-2">
        <Button variant="outline" onClick={handleClear}>{t('common.reset') || 'Réinitialiser'}</Button>
        <Button onClick={handleApply}>{t('common.apply') || 'Appliquer'}</Button>
      </div>
    </div>
  );
};
