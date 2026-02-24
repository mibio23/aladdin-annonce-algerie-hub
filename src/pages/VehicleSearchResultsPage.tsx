
import { useState, useEffect, useMemo, type MouseEvent } from 'react';
import { useSearchParams } from 'react-router-dom';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';
import { supabase } from '@/integrations/supabase/client';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Slider } from '@/components/ui/slider';
import { Switch } from '@/components/ui/switch';
import { Badge } from '@/components/ui/badge';
import { Card, CardContent } from '@/components/ui/card';
import { Separator } from '@/components/ui/separator';
import { 
  Car,
  Fuel,
  Gauge,
  Heart,
  MapPin,
  MessageCircle,
  Search,
  Share2,
  X,
  Zap,
} from 'lucide-react';
import { vehicleDictionary } from '@/data/search/vehicleDictionary';
import { toast } from 'sonner';
import { formatRelativeTime } from '@/lib/utils/dateUtils';
import WilayaFilter from "@/components/search/WilayaFilter";
import { mockVehicleAnnouncements } from '@/data/mock/vehicleAnnouncements';
import { wilayas } from '@/data/wilayaData';
import { coerceWilayaCode, extractWilayaCodeFromText, normalizeArabicDiacritics, normalizeLatin } from '@/utils/distanceUtils';
import { useFavorites } from '@/hooks/useFavorites';
import { cn } from '@/lib/utils';

// Types for filters
interface VehicleFilters {
  query: string;
  brand: string[];
  model: string[];
  type: string[];
  fuel: string[];
  transmission: string[];
  condition: string[];
  paper: string[];
  wilaya: string;
  minPrice: number;
  maxPrice: number;
  minYear: number;
  maxYear: number;
  minKm: number;
  maxKm: number;
  hasPhotos: boolean;
  isUrgent: boolean;
}

interface VehicleResultItem {
  id: string;
  title: string;
  description: string;
  price: number;
  currency: string;
  location: string;
  wilaya: string;
  images: string[];
  condition: string;
  is_urgent: boolean;
  created_at: string;
  vehicleDetails: {
    brand: string;
    model: string;
    year: number;
    fuel: string;
    transmission: string;
    mileage: number;
    color: string;
    paper: string;
    type: string;
  };
}

const normalizeText = (text: string) =>
  (text || '')
    .toLowerCase()
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .trim();

const tokenizeQuery = (text: string): string[] => {
  const normalized = normalizeText(text).replace(/[^a-z0-9]+/g, ' ').trim();
  if (!normalized) return [];
  const STOPWORDS = new Set([
    'de', 'du', 'des', 'la', 'le', 'les', 'et', 'a', 'au', 'aux', 'en', 'avec',
    'wilaya', 'w', 'd', 'dz',
  ]);
  return normalized
    .split(/\s+/g)
    .map(t => t.trim())
    .filter(Boolean)
    .filter(t => !STOPWORDS.has(t))
    .filter(t => (/[a-z]/.test(t) ? t.length >= 3 : t.length >= 2));
};

const arraysEqual = (a: string[], b: string[]) => {
  if (a.length !== b.length) return false;
  for (let i = 0; i < a.length; i += 1) {
    if (a[i] !== b[i]) return false;
  }
  return true;
};

const extractYearFromText = (text: string): number => {
  const match = normalizeText(text).match(/\b(19[8-9][0-9]|20[0-2][0-9]|2030)\b/);
  return match ? Number(match[1]) : 0;
};

const toNumberOrUndefined = (value: unknown) => {
  if (typeof value === 'number' && Number.isFinite(value)) return value;
  if (typeof value !== 'string') return undefined;
  const cleaned = value.replace(/[^\d]/g, '');
  if (!cleaned) return undefined;
  const n = Number(cleaned);
  return Number.isFinite(n) ? n : undefined;
};

const formatPriceMillions = (priceDzd: number) => {
  const millionsCentimes = Math.floor(priceDzd / 10_000);
  return `${millionsCentimes.toLocaleString()} M`;
};

type ConditionGroup = 'new' | 'used' | 'accident' | 'unknown';

const toConditionGroup = (value: string): ConditionGroup => {
  const v = normalizeText(value);
  if (!v) return 'unknown';

  if (
    v === 'new' ||
    v.includes('neuf') ||
    v.includes('nouveau') ||
    v.includes('neuve') ||
    v.includes('neu')
  ) {
    return 'new';
  }

  if (v.includes('accident') || v.includes('endommag') || v.includes('damaged')) {
    return 'accident';
  }

  if (
    v === 'used' ||
    v === 'good' ||
    v === 'fair' ||
    v === 'poor' ||
    v === 'like_new' ||
    v.includes('occasion') ||
    v.includes('ancien') ||
    v.includes('gebraucht')
  ) {
    return 'used';
  }

  return 'unknown';
};

const conditionMatches = (itemCondition: string, selectedCondition: string) => {
  const itemGroup = toConditionGroup(itemCondition);
  const selectedGroup = toConditionGroup(selectedCondition);
  if (selectedGroup === 'unknown') return false;
  if (itemGroup === selectedGroup) return true;

  if (selectedGroup === 'used' && itemGroup === 'unknown') {
    const v = normalizeText(itemCondition);
    if (v) return true;
  }

  return false;
};

const VEHICLE_CATEGORY_SLUGS = ['vehicules-equipements', 'vehicules', 'vehicules-camions-motos'];

const VehicleSearchResultsPage = () => {
  const { t, language, isRTL } = useSafeI18nWithRouter();
  const [searchParams, setSearchParams] = useSearchParams();
  const { navigateWithLanguage } = useLanguageNavigation();
  const { fetchFavorites, toggleFavorite, isFavorite } = useFavorites();

  // State
  const paramsKey = searchParams.toString();
  const filtersFromParams = useMemo<VehicleFilters>(() => {
    const params = new URLSearchParams(paramsKey);
    const paramYears = params.getAll('year').map(Number).filter(y => !isNaN(y));
    const minYear = paramYears.length > 0 ? Math.min(...paramYears) : (Number(params.get('minYear')) || 1990);
    const maxYear = paramYears.length > 0 ? Math.max(...paramYears) : (Number(params.get('maxYear')) || new Date().getFullYear());
    const query = params.get('q') || '';
    const wilayaParam = params.get('wilaya') || '';
    const locationParam = params.get('location') || '';
    const wilayaFromParam = coerceWilayaCode(wilayaParam) || extractWilayaCodeFromText(wilayaParam);
    const wilayaFromQuery = !wilayaFromParam ? extractWilayaCodeFromText(`${query} ${locationParam}`.trim()) : null;
    return {
      query,
      brand: params.getAll('brand'),
      model: params.getAll('model'),
      type: params.getAll('type'),
      fuel: params.getAll('fuel'),
      transmission: params.getAll('transmission'),
      condition: params.getAll('condition'),
      paper: params.getAll('paper'),
      wilaya: wilayaFromParam || wilayaFromQuery || '',
      minPrice: Number(params.get('minPrice')) || 0,
      maxPrice: Number(params.get('maxPrice')) || 10000000,
      minYear,
      maxYear,
      minKm: Number(params.get('minKm')) || 0,
      maxKm: Number(params.get('maxKm')) || 500000,
      hasPhotos: params.get('hasPhotos') === 'true',
      isUrgent: params.get('isUrgent') === 'true',
    };
  }, [paramsKey]);

  const [filters, setFilters] = useState<VehicleFilters>(() => filtersFromParams);
  const [remoteVehicles, setRemoteVehicles] = useState<VehicleResultItem[]>([]);

  useEffect(() => {
    fetchFavorites();
  }, [fetchFavorites]);

  useEffect(() => {
    setFilters(prev => {
      const next = filtersFromParams;
      const same =
        prev.query === next.query &&
        arraysEqual(prev.brand, next.brand) &&
        arraysEqual(prev.model, next.model) &&
        arraysEqual(prev.type, next.type) &&
        arraysEqual(prev.fuel, next.fuel) &&
        arraysEqual(prev.transmission, next.transmission) &&
        arraysEqual(prev.condition, next.condition) &&
        arraysEqual(prev.paper, next.paper) &&
        prev.wilaya === next.wilaya &&
        prev.minPrice === next.minPrice &&
        prev.maxPrice === next.maxPrice &&
        prev.minYear === next.minYear &&
        prev.maxYear === next.maxYear &&
        prev.minKm === next.minKm &&
        prev.maxKm === next.maxKm &&
        prev.hasPhotos === next.hasPhotos &&
        prev.isUrgent === next.isUrgent;
      return same ? prev : next;
    });
  }, [filtersFromParams]);

  useEffect(() => {
    if (filters.wilaya) return;
    if (!filters.query.trim()) return;

    const extracted = extractWilayaCodeFromText(filters.query);
    if (!extracted) return;

    setFilters(prev => (prev.wilaya ? prev : { ...prev, wilaya: extracted }));
  }, [filters.query, filters.wilaya]);

  useEffect(() => {
    let cancelled = false;

    const mapRowToVehicle = (row: any): VehicleResultItem | null => {
      if (!row?.id || !row?.title) return null;

      const vd = Array.isArray(row.vehicle_details) ? row.vehicle_details[0] : row.vehicle_details;
      const yearFromDate =
        typeof vd?.registration_date === 'string' && vd.registration_date
          ? new Date(vd.registration_date).getFullYear()
          : 0;
      const year =
        toNumberOrUndefined(vd?.year) ||
        toNumberOrUndefined(vd?.purchase_year) ||
        toNumberOrUndefined(vd?.vehicle_year) ||
        yearFromDate ||
        extractYearFromText(`${row.title || ''} ${row.description || ''}`);

      const imageUrls: string[] =
        (Array.isArray(row.image_urls) && row.image_urls.filter(Boolean)) ||
        (Array.isArray(row.image_urls) && row.image_urls) ||
        [];
      const images =
        imageUrls.length > 0
          ? imageUrls
          : row.image_url
            ? [row.image_url]
            : ['https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?auto=format&fit=crop&q=80&w=1200'];

      const rawWilaya = row?.wilaya != null ? String(row.wilaya) : '';
      const normalizedWilaya =
        coerceWilayaCode(rawWilaya) ||
        extractWilayaCodeFromText(`${row?.location || ''} ${row?.title || ''}`) ||
        rawWilaya;

      return {
        id: String(row.id),
        title: String(row.title),
        description: String(row.description || ''),
        price: Number(row.price) || 0,
        currency: String(row.currency || 'DZD'),
        location: String(row.location || ''),
        wilaya: normalizedWilaya,
        images,
        condition: String(row.condition || ''),
        is_urgent: Boolean(row.is_urgent),
        created_at: String(row.created_at || ''),
        vehicleDetails: {
          brand: String(vd?.brand || ''),
          model: String(vd?.model || ''),
          year: Number.isFinite(year) ? year : 0,
          fuel: String(vd?.fuel_type || vd?.fuel || '').trim(),
          transmission: String(vd?.gearbox || vd?.transmission || '').trim(),
          mileage: Number(vd?.mileage) || 0,
          color: '',
          paper:
            typeof vd?.grey_card_crossed === 'boolean'
              ? vd.grey_card_crossed
                ? 'Carte Grise Barrée'
                : 'Carte Grise'
              : '',
          type: '',
        },
      };
    };

    const fetchRemoteVehicles = async () => {
      try {
        const { data, error } = await supabase
          .from('announcements_public')
          .select('*, vehicle_details(*)')
          .in('category_id', VEHICLE_CATEGORY_SLUGS)
          .eq('status', 'active')
          .order('created_at', { ascending: false })
          .limit(200);

        if (error) throw error;
        const mapped = (data || []).map(mapRowToVehicle).filter(Boolean) as VehicleResultItem[];
        if (!cancelled) setRemoteVehicles(mapped);
      } catch {
        if (!cancelled) setRemoteVehicles([]);
      }
    };

    fetchRemoteVehicles();

    return () => {
      cancelled = true;
    };
  }, []);

  // Derived data for options from dictionary
  const brands = useMemo(() => vehicleDictionary.filter(i => i.type === 'brand'), []);
  const models = useMemo(() => vehicleDictionary.filter(i => i.type === 'model'), []);
  const types = useMemo(() => vehicleDictionary.filter(i => i.type === 'type'), []);
  const fuels = useMemo(() => vehicleDictionary.filter(i => i.type === 'fuel'), []);
  const transmissions = useMemo(() => vehicleDictionary.filter(i => i.type === 'transmission'), []);
  const conditions = useMemo(() => vehicleDictionary.filter(i => i.type === 'condition'), []);
  const papers = useMemo(() => vehicleDictionary.filter(i => i.type === 'paper'), []);

  const normalizedMockVehicles: VehicleResultItem[] = useMemo(() => {
    return mockVehicleAnnouncements.map(item => ({
      id: item.id,
      title: item.title,
      description: item.description,
      price: item.price,
      currency: item.currency,
      location: item.location,
      wilaya: item.wilaya,
      images: item.images?.length ? item.images : ['https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?auto=format&fit=crop&q=80&w=1200'],
      condition: item.condition,
      is_urgent: item.is_urgent,
      created_at: item.created_at,
      vehicleDetails: {
        brand: item.vehicleDetails.brand,
        model: item.vehicleDetails.model,
        year: item.vehicleDetails.year,
        fuel: item.vehicleDetails.fuel,
        transmission: item.vehicleDetails.transmission,
        mileage: item.vehicleDetails.mileage,
        color: item.vehicleDetails.color,
        paper: item.vehicleDetails.paper,
        type: item.vehicleDetails.type,
      },
    }));
  }, []);

  const allVehicles: VehicleResultItem[] = useMemo(() => {
    const byId = new Map<string, VehicleResultItem>();
    remoteVehicles.forEach(v => byId.set(v.id, v));
    normalizedMockVehicles.forEach(v => {
      const existing = byId.get(v.id);
      if (!existing) {
        byId.set(v.id, v);
        return;
      }
      byId.set(v.id, {
        ...existing,
        title: existing.title || v.title,
        description: existing.description || v.description,
        currency: existing.currency || v.currency,
        location: existing.location || v.location,
        wilaya: existing.wilaya || v.wilaya,
        images: existing.images?.length ? existing.images : v.images,
        condition: existing.condition || v.condition,
        is_urgent: typeof existing.is_urgent === 'boolean' ? existing.is_urgent : v.is_urgent,
        created_at: existing.created_at || v.created_at,
        vehicleDetails: {
          ...v.vehicleDetails,
          ...existing.vehicleDetails,
          brand: existing.vehicleDetails.brand || v.vehicleDetails.brand,
          model: existing.vehicleDetails.model || v.vehicleDetails.model,
          year: existing.vehicleDetails.year || v.vehicleDetails.year,
          fuel: existing.vehicleDetails.fuel || v.vehicleDetails.fuel,
          transmission: existing.vehicleDetails.transmission || v.vehicleDetails.transmission,
          mileage: existing.vehicleDetails.mileage || v.vehicleDetails.mileage,
          color: existing.vehicleDetails.color || v.vehicleDetails.color,
          paper: existing.vehicleDetails.paper || v.vehicleDetails.paper,
          type: existing.vehicleDetails.type || v.vehicleDetails.type,
        },
      });
    });
    return Array.from(byId.values()).sort((a, b) => {
      const ta = a.created_at ? new Date(a.created_at).getTime() : 0;
      const tb = b.created_at ? new Date(b.created_at).getTime() : 0;
      return tb - ta;
    });
  }, [remoteVehicles, normalizedMockVehicles]);

  const filteredResults = useMemo(() => {
    return allVehicles.filter(item => {
      const haystack = normalizeText(
        `${item.title} ${item.description} ${item.vehicleDetails.brand} ${item.vehicleDetails.model} ${item.vehicleDetails.year} ${item.location}`,
      );

      const selectedWilaya = filters.wilaya
        ? wilayas.find(w => w.code.toString() === filters.wilaya)
        : undefined;

      // Filter by Wilaya (fallback sur location si la donnée wilaya n'est pas disponible)
      if (filters.wilaya) {
        const itemWilayaCode = item.wilaya ? coerceWilayaCode(item.wilaya) : null;
        if (itemWilayaCode) {
          if (itemWilayaCode !== filters.wilaya) return false;
        } else if (selectedWilaya) {
          const locationLatin = normalizeLatin(item.location);
          const wilayaLatin = normalizeLatin(selectedWilaya.name_fr || selectedWilaya.name);
          const locationArabic = normalizeArabicDiacritics(item.location);
          const wilayaArabic = selectedWilaya.name_ar ? normalizeArabicDiacritics(selectedWilaya.name_ar) : '';

          const matchesLatin = Boolean(wilayaLatin) && locationLatin.includes(wilayaLatin);
          const matchesArabic = Boolean(wilayaArabic) && locationArabic.includes(wilayaArabic);
          if (!matchesLatin && !matchesArabic) return false;
        } else {
          return false;
        }
      }

      // Filter by Brand
      if (filters.brand.length > 0 && !filters.brand.includes(item.vehicleDetails.brand)) return false;

      // Filter by Model
      if (filters.model.length > 0 && !filters.model.includes(item.vehicleDetails.model)) return false;

      // Filter by Type
      if (filters.type.length > 0 && !filters.type.includes(item.vehicleDetails.type)) return false;

      // Filter by Fuel
      if (filters.fuel.length > 0 && !filters.fuel.includes(item.vehicleDetails.fuel)) return false;

      // Filter by Transmission
      if (filters.transmission.length > 0 && !filters.transmission.includes(item.vehicleDetails.transmission)) return false;

      // Filter by Condition
      if (filters.condition.length > 0 && !filters.condition.some(c => conditionMatches(item.condition, c))) return false;

      // Filter by Paper
      if (filters.paper.length > 0 && !filters.paper.includes(item.vehicleDetails.paper)) return false;

      // Filter by Query (token-based, sans sur-filtrer avec "wilaya"/marque/modèle déjà détectés)
      if (filters.query) {
        const ignoreTokens = new Set<string>();
        [
          ...filters.brand,
          ...filters.model,
          ...filters.type,
          ...filters.fuel,
          ...filters.transmission,
          ...filters.condition,
          ...filters.paper,
        ]
          .flatMap(v => tokenizeQuery(v))
          .forEach(t => ignoreTokens.add(t));

        if (selectedWilaya) {
          tokenizeQuery(selectedWilaya.name_fr || selectedWilaya.name).forEach(t => ignoreTokens.add(t));
          tokenizeQuery(selectedWilaya.name_ar || '').forEach(t => ignoreTokens.add(t));
        }

        const effectiveTokens = tokenizeQuery(filters.query).filter(t => !ignoreTokens.has(t));
        if (effectiveTokens.length > 0 && !effectiveTokens.every(t => haystack.includes(t))) {
          return false;
        }
      }

      // Filter by Price
      if (item.price < filters.minPrice || item.price > filters.maxPrice) return false;

      // Filter by Year
      if (item.vehicleDetails.year < filters.minYear || item.vehicleDetails.year > filters.maxYear) return false;

      // Filter by Km
      if (item.vehicleDetails.mileage < filters.minKm || item.vehicleDetails.mileage > filters.maxKm) return false;

      if (filters.hasPhotos && (!item.images || item.images.length === 0)) return false;
      if (filters.isUrgent && !item.is_urgent) return false;

      return true;
    });
  }, [filters, allVehicles]);

  // Update URL when filters change
  useEffect(() => {
    const params = new URLSearchParams();
    if (filters.query) params.set('q', filters.query);
    filters.brand.forEach(b => params.append('brand', b));
    filters.model.forEach(m => params.append('model', m));
    filters.type.forEach(t => params.append('type', t));
    filters.fuel.forEach(f => params.append('fuel', f));
    filters.transmission.forEach(tr => params.append('transmission', tr));
    filters.condition.forEach(c => params.append('condition', c));
    filters.paper.forEach(p => params.append('paper', p));
    if (filters.wilaya) params.set('wilaya', filters.wilaya);
    if (filters.minPrice !== 0) params.set('minPrice', filters.minPrice.toString());
    if (filters.maxPrice !== 10000000) params.set('maxPrice', filters.maxPrice.toString());
    if (filters.minYear !== 1990) params.set('minYear', filters.minYear.toString());
    if (filters.maxYear !== new Date().getFullYear()) params.set('maxYear', filters.maxYear.toString());
    if (filters.minKm !== 0) params.set('minKm', filters.minKm.toString());
    if (filters.maxKm !== 500000) params.set('maxKm', filters.maxKm.toString());
    if (filters.hasPhotos) params.set('hasPhotos', 'true');
    if (filters.isUrgent) params.set('isUrgent', 'true');

    const nextSearch = params.toString();
    const currentSearch = searchParams.toString();
    if (nextSearch !== currentSearch) {
      setSearchParams(params, { replace: true });
    }
  }, [filters, searchParams, setSearchParams]);

  const toggleFilter = (category: 'brand' | 'model' | 'type' | 'fuel' | 'transmission' | 'condition' | 'paper', value: string) => {
    setFilters(prev => {
      const current = prev[category];
      const updated = current.includes(value)
        ? current.filter(item => item !== value)
        : [...current, value];
      return { ...prev, [category]: updated };
    });
  };

  // Helper to get localized label
  const getLabel = (item: any) => {
    const langKey = language === 'ar' ? 'ar' : language === 'en' ? 'en' : 'fr';
    return item.values[langKey]?.[0] || item.values.fr[0];
  };

  const clearAllFilters = () => {
    setFilters({
      query: '',
      brand: [],
      model: [],
      type: [],
      fuel: [],
      transmission: [],
      condition: [],
      paper: [],
      wilaya: '',
      minPrice: 0,
      maxPrice: 10000000,
      minYear: 1990,
      maxYear: new Date().getFullYear(),
      minKm: 0,
      maxKm: 500000,
      hasPhotos: false,
      isUrgent: false,
    });
  };

  return (
    <div className="min-h-screen bg-slate-50 dark:bg-slate-900">
      {/* Header Banner - Immersive */}
      <div className="bg-slate-900 text-white py-8 px-4 relative overflow-hidden">
        <div className="absolute inset-0 opacity-20 bg-[url('https://images.unsplash.com/photo-1492144534655-ae79c964c9d7?auto=format&fit=crop&q=80')] bg-cover bg-center" />
        <div className="container mx-auto relative z-10">
          <h1 className="text-3xl font-bold mb-2 flex items-center gap-2">
            <Car className="w-8 h-8 text-emerald-400" />
            {t('search.vehicles.title', 'Recherche Auto-Immersive')}
          </h1>
          <p className="text-slate-300">
            {t('search.vehicles.subtitle', 'Trouvez votre prochain véhicule avec notre moteur intelligent')}
          </p>
        </div>
      </div>

      <div className="container mx-auto px-4 py-6 flex flex-col lg:flex-row gap-6">
        
        {/* SIDEBAR "COCKPIT" */}
        <aside className="w-full lg:w-80 flex-shrink-0 space-y-6">
          <Card className="sticky top-24 border-none shadow-lg bg-white/80 dark:bg-slate-800/80 backdrop-blur-md">
            <CardContent className="p-6 space-y-6">
              
              {/* Search Bar */}
              <div className="relative">
                <Search className="absolute left-3 top-3 h-4 w-4 text-muted-foreground" />
                <Input 
                  placeholder={t('search.placeholder', 'Rechercher...')} 
                  className="pl-9 bg-slate-100 dark:bg-slate-900 border-none"
                  value={filters.query}
                  onChange={(e) => setFilters({...filters, query: e.target.value})}
                />
              </div>

              <Separator />

              {/* Wilaya Filter */}
              <div className="space-y-3">
                <label className="text-sm font-medium flex items-center gap-2">
                  <MapPin className="w-4 h-4 text-emerald-500" />
                  {language === 'ar' ? "الولاية" : "Wilaya"}
                </label>
                <WilayaFilter 
                  selectedWilaya={filters.wilaya}
                  onWilayaChange={(code) => setFilters(prev => ({ ...prev, wilaya: code }))}
                />
              </div>

              <Separator />

              {/* Price Range */}
              <div className="space-y-4">
                <div className="flex justify-between items-center">
                  <label className="text-sm font-medium flex items-center gap-2">
                    <Gauge className="w-4 h-4 text-emerald-500" />
                    {t('filters.price', 'Prix (DA)')}
                  </label>
                </div>
                <Slider 
                  value={[filters.minPrice, filters.maxPrice]}
                  onValueChange={(value) => {
                    const [minPrice, maxPrice] = value;
                    setFilters(prev => ({
                      ...prev,
                      minPrice: Math.min(minPrice, maxPrice),
                      maxPrice: Math.max(minPrice, maxPrice),
                    }));
                  }}
                  max={10000000} 
                  step={50000}
                  className="py-4"
                />
                <div className="flex justify-between text-xs text-muted-foreground">
                  <span>{filters.minPrice.toLocaleString()} DA</span>
                  <span>{filters.maxPrice.toLocaleString()} DA</span>
                </div>
              </div>

              <Separator />

              {/* Vehicle Type Filter */}
              <div className="space-y-3">
                <label className="text-sm font-medium flex items-center gap-2">
                  <Car className="w-4 h-4 text-emerald-500" />
                  {t('filters.type', 'Type de Véhicule')}
                </label>
                <div className="flex flex-wrap gap-2">
                  {types.map(type => (
                    <Badge 
                      key={type.id}
                      variant={filters.type.includes(type.values.fr[0]) ? "default" : "outline"}
                      className="cursor-pointer hover:bg-primary/20"
                      onClick={() => toggleFilter('type', type.values.fr[0])}
                    >
                      {getLabel(type)}
                    </Badge>
                  ))}
                </div>
              </div>

              <Separator />

              {/* Brands */}
              <div className="space-y-3">
                <label className="text-sm font-medium">{t('filters.brands', 'Marques')}</label>
                <div className="flex flex-wrap gap-2">
                  {brands.slice(0, 10).map(brand => (
                    <Badge 
                      key={brand.id}
                      variant={filters.brand.includes(brand.values.fr[0]) ? "default" : "outline"}
                      className="cursor-pointer hover:bg-primary/20"
                      onClick={() => toggleFilter('brand', brand.values.fr[0])}
                    >
                      {getLabel(brand)}
                    </Badge>
                  ))}
                </div>
              </div>

              <Separator />

              {/* Models */}
              <div className="space-y-3">
                <label className="text-sm font-medium">{t('filters.models', 'Modèles')}</label>
                <div className="flex flex-wrap gap-2">
                  {models.slice(0, 12).map(model => (
                    <Badge
                      key={model.id}
                      variant={filters.model.includes(model.values.fr[0]) ? "default" : "outline"}
                      className="cursor-pointer hover:bg-primary/20"
                      onClick={() => toggleFilter('model', model.values.fr[0])}
                    >
                      {getLabel(model)}
                    </Badge>
                  ))}
                </div>
              </div>

              <Separator />

              {/* Fuel & Transmission */}
              <div className="grid grid-cols-2 gap-4">
                <div className="space-y-3">
                  <label className="text-sm font-medium flex items-center gap-2">
                    <Fuel className="w-4 h-4 text-amber-500" />
                    {t('filters.fuel', 'Carburant')}
                  </label>
                  <div className="space-y-2">
                    {fuels.map(fuel => (
                      <div key={fuel.id} className="flex items-center space-x-2">
                        <Switch 
                          id={fuel.id} 
                          checked={filters.fuel.includes(fuel.values.fr[0])}
                          onCheckedChange={() => toggleFilter('fuel', fuel.values.fr[0])}
                        />
                        <label htmlFor={fuel.id} className="text-sm cursor-pointer">{getLabel(fuel)}</label>
                      </div>
                    ))}
                  </div>
                </div>
                
                <div className="space-y-3">
                  <label className="text-sm font-medium flex items-center gap-2">
                    <Zap className="w-4 h-4 text-blue-500" />
                    {t('filters.transmission', 'Boîte')}
                  </label>
                  <div className="space-y-2">
                    {transmissions.map(trans => (
                      <div key={trans.id} className="flex items-center space-x-2">
                        <Switch 
                          id={trans.id} 
                          checked={filters.transmission.includes(trans.values.fr[0])}
                          onCheckedChange={() => toggleFilter('transmission', trans.values.fr[0])}
                        />
                        <label htmlFor={trans.id} className="text-sm cursor-pointer">{getLabel(trans)}</label>
                      </div>
                    ))}
                  </div>
                </div>
              </div>

              <Separator />

              {/* Condition */}
              <div className="space-y-3">
                <label className="text-sm font-medium">{t('filters.condition', 'État')}</label>
                <div className="flex flex-wrap gap-2">
                  {conditions.map(cond => (
                    <Badge
                      key={cond.id}
                      variant={filters.condition.includes(cond.values.fr[0]) ? "default" : "outline"}
                      className="cursor-pointer hover:bg-primary/20"
                      onClick={() => toggleFilter('condition', cond.values.fr[0])}
                    >
                      {getLabel(cond)}
                    </Badge>
                  ))}
                </div>
              </div>

              <Separator />

              {/* Papers */}
              <div className="space-y-3">
                <label className="text-sm font-medium">{t('filters.papers', 'Papiers')}</label>
                <div className="flex flex-wrap gap-2">
                  {papers.map(paper => (
                    <Badge
                      key={paper.id}
                      variant={filters.paper.includes(paper.values.fr[0]) ? "default" : "outline"}
                      className="cursor-pointer hover:bg-primary/20"
                      onClick={() => toggleFilter('paper', paper.values.fr[0])}
                    >
                      {getLabel(paper)}
                    </Badge>
                  ))}
                </div>
              </div>

              <Separator />

              {/* Toggles */}
              <div className="space-y-3">
                <div className="flex items-center justify-between">
                  <label className="text-sm font-medium cursor-pointer" htmlFor="hasPhotos">
                    {t('filters.hasPhotos', 'Avec photos')}
                  </label>
                  <Switch
                    id="hasPhotos"
                    checked={filters.hasPhotos}
                    onCheckedChange={(checked) => setFilters(prev => ({ ...prev, hasPhotos: checked }))}
                  />
                </div>
                <div className="flex items-center justify-between">
                  <label className="text-sm font-medium cursor-pointer" htmlFor="isUrgent">
                    {t('filters.isUrgent', 'Urgent')}
                  </label>
                  <Switch
                    id="isUrgent"
                    checked={filters.isUrgent}
                    onCheckedChange={(checked) => setFilters(prev => ({ ...prev, isUrgent: checked }))}
                  />
                </div>
              </div>

            </CardContent>
          </Card>
        </aside>

        {/* MAIN CONTENT - RESULTS GRID */}
        <main className="flex-1">
          {/* Active Filters Bar */}
          <div className="mb-6 flex flex-wrap gap-2">
            {filters.query && (
              <Badge variant="secondary" className="pl-2 pr-1 py-1 flex items-center gap-1">
                {filters.query} <X className="w-3 h-3 cursor-pointer" onClick={() => setFilters(prev => ({ ...prev, query: '' }))} />
              </Badge>
            )}
            {filters.wilaya && (
              <Badge variant="secondary" className="pl-2 pr-1 py-1 flex items-center gap-1">
                {wilayas.find(w => w.code.toString() === filters.wilaya)?.name || filters.wilaya}
                <X className="w-3 h-3 cursor-pointer" onClick={() => setFilters(prev => ({ ...prev, wilaya: '' }))} />
              </Badge>
            )}
            {filters.brand.map(b => (
              <Badge key={b} variant="secondary" className="pl-2 pr-1 py-1 flex items-center gap-1">
                {b} <X className="w-3 h-3 cursor-pointer" onClick={() => toggleFilter('brand', b)} />
              </Badge>
            ))}
            {filters.model.map(m => (
              <Badge key={m} variant="secondary" className="pl-2 pr-1 py-1 flex items-center gap-1">
                {m} <X className="w-3 h-3 cursor-pointer" onClick={() => toggleFilter('model', m)} />
              </Badge>
            ))}
            {filters.type.map(tp => (
              <Badge key={tp} variant="secondary" className="pl-2 pr-1 py-1 flex items-center gap-1">
                {tp} <X className="w-3 h-3 cursor-pointer" onClick={() => toggleFilter('type', tp)} />
              </Badge>
            ))}
            {filters.fuel.map(f => (
              <Badge key={f} variant="secondary" className="pl-2 pr-1 py-1 flex items-center gap-1">
                {f} <X className="w-3 h-3 cursor-pointer" onClick={() => toggleFilter('fuel', f)} />
              </Badge>
            ))}
            {filters.transmission.map(tr => (
              <Badge key={tr} variant="secondary" className="pl-2 pr-1 py-1 flex items-center gap-1">
                {tr} <X className="w-3 h-3 cursor-pointer" onClick={() => toggleFilter('transmission', tr)} />
              </Badge>
            ))}
            {filters.condition.map(c => (
              <Badge key={c} variant="secondary" className="pl-2 pr-1 py-1 flex items-center gap-1">
                {c} <X className="w-3 h-3 cursor-pointer" onClick={() => toggleFilter('condition', c)} />
              </Badge>
            ))}
            {filters.paper.map(p => (
              <Badge key={p} variant="secondary" className="pl-2 pr-1 py-1 flex items-center gap-1">
                {p} <X className="w-3 h-3 cursor-pointer" onClick={() => toggleFilter('paper', p)} />
              </Badge>
            ))}
            {(filters.hasPhotos || filters.isUrgent) && (
              <>
                {filters.hasPhotos && (
                  <Badge variant="secondary" className="pl-2 pr-1 py-1 flex items-center gap-1">
                    {t('filters.hasPhotos', 'Avec photos')}
                    <X className="w-3 h-3 cursor-pointer" onClick={() => setFilters(prev => ({ ...prev, hasPhotos: false }))} />
                  </Badge>
                )}
                {filters.isUrgent && (
                  <Badge variant="secondary" className="pl-2 pr-1 py-1 flex items-center gap-1">
                    {t('filters.isUrgent', 'Urgent')}
                    <X className="w-3 h-3 cursor-pointer" onClick={() => setFilters(prev => ({ ...prev, isUrgent: false }))} />
                  </Badge>
                )}
              </>
            )}

            {(filters.query ||
              filters.brand.length > 0 ||
              filters.model.length > 0 ||
              filters.type.length > 0 ||
              filters.fuel.length > 0 ||
              filters.transmission.length > 0 ||
              filters.condition.length > 0 ||
              filters.paper.length > 0 ||
              filters.wilaya ||
              filters.hasPhotos ||
              filters.isUrgent ||
              filters.minPrice !== 0 ||
              filters.maxPrice !== 10000000) && (
              <Button variant="ghost" className="h-7 px-2" onClick={clearAllFilters}>
                {t('filters.reset', 'Réinitialiser')}
              </Button>
            )}
          </div>

          {/* Results Grid */}
          <div className="grid grid-cols-1 md:grid-cols-2 xl:grid-cols-3 gap-6">
            {filteredResults.map((item) => {
              const createdAt =
                item.created_at ||
                (item as any)?.createdAt ||
                (typeof (item as any)?.date === 'string' ? (item as any).date : '');

              const hasCreatedAt = typeof createdAt === 'string' && createdAt.trim().length > 0;
              const year = Number(item.vehicleDetails.year) || 0;
              const fuel = String(item.vehicleDetails.fuel || '').trim();
              const transmission = String(item.vehicleDetails.transmission || '').trim();
              const mileage = Number(item.vehicleDetails.mileage) || 0;
              const hasMileage = Number.isFinite(mileage) && mileage > 0;
              const hasTransmission = transmission.length > 0;
              const specsCount = (hasMileage ? 1 : 0) + (hasTransmission ? 1 : 0);
              const specsColumns = specsCount <= 1 ? 'grid-cols-1' : 'grid-cols-2';

              const imageUrl = item.images?.[0] || '';
              const rawCommune = String(item.location || '').trim();
              const wilayaLabel = item.wilaya
                ? wilayas.find((w) => w.code.toString() === item.wilaya)?.name || item.wilaya
                : '';
              const delim = language === 'ar' ? '، ' : ', ';
              const locationLabel =
                rawCommune && normalizeText(rawCommune) !== normalizeText(wilayaLabel)
                  ? `${wilayaLabel}${delim}${rawCommune}`
                  : wilayaLabel || rawCommune;

              const announcementUrl = `${window.location.origin}/annonce/${item.id}`;
              const shareTitle = item.title;
              const favorite = isFavorite(item.id);

              const copyToClipboard = () => {
                navigator.clipboard.writeText(announcementUrl);
                toast.success(t('common.linkCopied') || 'Lien copié !', {
                  description: t('common.linkCopiedDesc') || 'Le lien a été copié dans votre presse-papiers.',
                });
              };

              const handleShare = (e: MouseEvent) => {
                e.stopPropagation();
                if (navigator.share) {
                  navigator
                    .share({
                      title: shareTitle,
                      url: announcementUrl,
                    })
                    .catch(() => {
                      copyToClipboard();
                    });
                } else {
                  copyToClipboard();
                }
              };

              const handleWhatsAppShare = (e: MouseEvent) => {
                e.stopPropagation();
                const whatsappUrl = `https://api.whatsapp.com/send?text=${encodeURIComponent(
                  shareTitle + ' - ' + announcementUrl,
                )}`;
                window.open(whatsappUrl, '_blank');
              };

              const handleFavorite = async (e: MouseEvent) => {
                e.stopPropagation();
                await toggleFavorite(item.id);
              };

              return (
                <div
                  key={item.id}
                  className="group flex flex-col transition-all duration-300 transform hover:scale-[1.02] hover:-translate-y-1 rounded-[24px] overflow-hidden relative h-full bg-slate-50 shadow-[0_10px_30px_-10px_rgba(22,163,74,0.25),0_6px_10px_-2px_rgba(22,163,74,0.15)] border border-[rgba(22,163,74,0.05)] dark:bg-[linear-gradient(145deg,#1e293b,#0f172a)] dark:shadow-[0_0_20px_rgba(255,255,255,0.25)] dark:border-none cursor-pointer"
                  onClick={() => navigateWithLanguage(`/annonce/${item.id}`)}
                >
                  <div className="p-2 pb-0">
                    <div className="relative h-48 overflow-hidden rounded-[24px] border-[3px] border-red-500/80 bg-white p-1.5 shadow-[0_8px_16px_rgba(0,0,0,0.1)] group-hover:border-red-600 group-hover:shadow-[0_12px_24px_rgba(220,38,38,0.2)] transition-all duration-300">
                      <div className="w-full h-full overflow-hidden rounded-[16px] shadow-[inset_0_10px_20px_rgba(0,0,0,0.25),inset_0_-2px_6px_rgba(255,255,255,0.3)] bg-slate-100 relative">
                        {/* Badge incurvé style "Boutique" */}
                        <div className={`absolute top-0 ${isRTL ? 'left-0' : 'right-0'} z-30`}>
              <div className={`bg-white/70 backdrop-blur-md pb-3 pr-1 pt-1 ${isRTL ? 'pl-1 rounded-br-[25px] border-r' : 'pl-3 rounded-bl-[25px] border-l'} shadow-lg flex items-center gap-1.5 border-b border-white/40`}>
                <div className="flex flex-col items-end">
                  <span className="text-xs font-extrabold text-slate-900 leading-none mb-0.5 drop-shadow-sm">
                    {isRTL ? "علاء الدين" : "Aladdin"}
                  </span>
                  <span className="text-[9px] font-bold text-red-600 uppercase tracking-wider leading-none drop-shadow-sm">
                    {isRTL ? "الإختيار الأفضل" : "Sélection Or"}
                  </span>
                </div>
                <div className="w-8 h-8 bg-white/50 backdrop-blur-sm rounded-lg shadow-inner flex items-center justify-center border border-white/50 p-1 group-hover:scale-110 transition-transform duration-300">
                   <img 
                     src="/lovable-uploads/19d6e319-1c10-44f0-a889-e4babb7d2e97.png" 
                     alt="Aladdin" 
                     className="w-full h-full object-contain"
                   />
                </div>
              </div>
            </div>

                    {imageUrl ? (
                      <img
                        src={imageUrl}
                        alt={item.title}
                        className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                      />
                    ) : (
                      <div className="w-full h-full bg-slate-200 dark:bg-slate-700" />
                    )}

                    {item.is_urgent || year ? (
                      <div className={cn("absolute top-2 z-20 flex flex-col gap-1", isRTL ? "left-2 items-start" : "left-2 items-start")}>
                        {item.is_urgent ? (
                          <span className="bg-red-500 text-white px-2 py-1 rounded text-xs font-bold animate-pulse">
                            Urgent
                          </span>
                        ) : null}
                        {year ? (
                          <span className="bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400 px-2 py-1 rounded text-xs font-bold border border-blue-100 dark:border-blue-800">
                            {year}
                          </span>
                        ) : null}
                      </div>
                    ) : null}

                    {fuel ? (
                      <div className={cn("absolute bottom-2 bg-emerald-500 text-white px-2 py-1 rounded text-xs font-bold flex items-center gap-1", isRTL ? "left-2" : "left-2")}>
                        <Fuel className="w-3 h-3" /> {fuel}
                      </div>
                    ) : null}
                  </div>
                </div>
              </div>

                  <div className="bg-white border rounded-lg p-4 space-y-3 dark:bg-slate-800 dark:border-slate-700 shadow-sm hover:shadow-md transition-shadow">
                    <div className="flex justify-between items-start mb-2">
                      <h3 className="font-bold text-lg line-clamp-1">{item.title}</h3>
                    </div>

                    <div className="flex items-center justify-between text-sm text-muted-foreground mb-4">
                      <div className="flex flex-col">
                        <span className="flex items-center mb-1">
                          <MapPin className="w-3 h-3 mr-1" />
                          {locationLabel}
                        </span>
                        <span className="text-sm font-bold text-slate-500 dark:text-slate-400">
                          {hasCreatedAt ? formatRelativeTime(createdAt) : 'Récent'}
                        </span>
                      </div>
                      {item.price ? (
                        <span className="font-bold text-emerald-600 whitespace-nowrap">
                          {formatPriceMillions(item.price)}
                        </span>
                      ) : null}
                    </div>

                    {specsCount > 0 ? (
                      <div className={`grid ${specsColumns} gap-2 text-xs`}>
                        {hasMileage ? (
                          <div className="bg-green-50 dark:bg-green-900/20 text-green-600 dark:text-green-400 p-2 rounded flex items-center justify-center gap-1 border border-green-100 dark:border-green-800">
                            <Gauge className="w-3 h-3" /> {`${mileage.toLocaleString()} km`}
                          </div>
                        ) : null}
                        {hasTransmission ? (
                          <div className="bg-purple-50 dark:bg-purple-900/20 text-purple-600 dark:text-purple-400 p-2 rounded flex items-center justify-center gap-1 border border-purple-100 dark:border-purple-800">
                            <Zap className="w-3 h-3" /> {transmission}
                          </div>
                        ) : null}
                      </div>
                    ) : null}

                    <div className="overflow-hidden h-0 group-hover:h-12 transition-all duration-300 ease-in-out">
                      <div className="pt-2 transform -translate-y-full group-hover:translate-y-0 transition-transform duration-300 ease-in-out">
                        <div className="bg-gradient-to-r from-slate-100 via-slate-50 to-slate-100 dark:from-slate-800 dark:via-slate-700 dark:to-slate-800 text-slate-700 dark:text-slate-200 py-2 rounded-lg font-bold text-sm shadow-sm border border-slate-200 dark:border-slate-700 flex items-center justify-between px-3">
                          <span className="flex-1 text-center" dir={isRTL ? 'rtl' : 'ltr'}>
                            {t('common.viewDetail')}
                          </span>
                          <div className="flex gap-1.5 ms-2 border-s border-slate-200 dark:border-slate-600 ps-2">
                            <button
                              onClick={handleFavorite}
                              className="p-1 hover:bg-rose-50 dark:hover:bg-rose-500/10 rounded-full transition-colors group/fav"
                              title={t('mesFavoris.title') || 'Favoris'}
                            >
                              <Heart
                                className={[
                                  'w-4 h-4 transition-transform group-hover/fav:scale-110',
                                  favorite
                                    ? 'text-rose-700 dark:text-rose-500'
                                    : 'text-rose-400 dark:text-rose-400 animate-pulse group-hover/fav:text-rose-500',
                                ].join(' ')}
                                fill={favorite ? 'currentColor' : 'none'}
                              />
                            </button>
                            <button
                              onClick={handleWhatsAppShare}
                              className="p-1 hover:bg-emerald-50 dark:hover:bg-emerald-500/10 rounded-full transition-colors group/wa"
                              title="WhatsApp"
                            >
                              <MessageCircle className="w-4 h-4 text-emerald-500 group-hover/wa:scale-110 transition-transform" />
                            </button>
                            <button
                              onClick={handleShare}
                              className="p-1 hover:bg-blue-50 dark:hover:bg-blue-500/10 rounded-full transition-colors group/sh"
                              title="Partager"
                            >
                              <Share2 className="w-4 h-4 text-blue-500 group-hover/sh:scale-110 transition-transform" />
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              );
            })}
          </div>
          
          {/* No Results State */}
          {filteredResults.length === 0 && (
            <div className="mt-12 text-center p-8 border-2 border-dashed border-slate-200 rounded-xl">
               <Car className="w-12 h-12 text-slate-300 mx-auto mb-4" />
               <h3 className="text-lg font-medium text-slate-600">Aucun résultat trouvé</h3>
               <p className="text-slate-400">Essayez de modifier vos filtres ou votre recherche.</p>
               <Button variant="outline" className="mt-4" onClick={clearAllFilters}>
                 Réinitialiser les filtres
               </Button>
            </div>
          )}

        </main>
      </div>
    </div>
  );
};

export default VehicleSearchResultsPage;
