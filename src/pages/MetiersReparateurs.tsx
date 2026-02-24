
import React, { useMemo, useState } from 'react';
import { Card, CardContent } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';

import { useParams } from 'react-router-dom';
import { 
  Search,
  Star,
  Users,
  Clock,
  Wrench,
  CheckCircle
} from 'lucide-react';
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { useMetiersAnnouncements } from '@/hooks/useMetiersAnnouncements';
import AnnouncementCard from '@/components/announcements/AnnouncementCard';
import { Skeleton } from '@/components/ui/skeleton';
import { wilayas } from '@/data/wilayaData';
import { logger } from '@/utils/silentLogger';
import { LocalizedLink } from '@/utils/linkUtils';
import { translationFallback } from '@/lib/i18n/utils/fallback';
import { languageConfig } from '@/lib/i18n/config';

import { PROFESSION_KEYS, PROFESSION_KEYWORDS, ProfessionKey } from '@/data/searchKeywords';

const normalizeLookup = (value: string): string => {
  let decoded = value;
  try {
    decoded = decodeURIComponent(value);
  } catch {
    decoded = value;
  }

  return decoded
    .normalize('NFD')
    .replace(/[\u0300-\u036f]/g, '')
    .toLowerCase()
    .replace(/['’]/g, '')
    .replace(/[^a-z0-9\u0600-\u06ff]+/g, ' ')
    .trim()
    .replace(/\s+/g, ' ');
};

const getLabelVariants = (label: string): string[] => {
  const base = label.trim().replace(/\s+/g, ' ');
  if (!base) return [];

  const variants = new Set<string>([base]);

  const parenMatch = base.match(/^(.*?)\((.*?)\)\s*$/);
  if (parenMatch) {
    const before = parenMatch[1]?.trim();
    const inside = parenMatch[2]?.trim();
    if (before) variants.add(before);
    if (inside) variants.add(inside);
  }

  if (base.includes('/')) {
    base
      .split('/')
      .map((p) => p.trim())
      .filter(Boolean)
      .forEach((p) => variants.add(p));
  }

  if (base.includes('&')) {
    base
      .split('&')
      .map((p) => p.trim())
      .filter(Boolean)
      .forEach((p) => variants.add(p));
  }

  return Array.from(variants);
};

const slugToProfessionKey: Record<string, ProfessionKey> = {
  plombier: 'plumber',
  plomberie: 'plumber',
  sanitaire: 'plumber',
  plumber: 'plumber',

  electricien: 'electrician',
  electricite: 'electrician',
  electrician: 'electrician',

  mecanicien: 'mechanic',
  mecanique: 'mechanic',
  auto: 'mechanic',
  automobile: 'mechanic',
  moto: 'mechanic',
  mechanic: 'mechanic',

  menuisier: 'woodworker',
  menuiserie: 'woodworker',
  charpentier: 'woodworker',
  woodworker: 'woodworker',
  carpenter: 'woodworker',

  peintre: 'painter',
  peinture: 'painter',
  painter: 'painter',

  macon: 'mason',
  maconnerie: 'mason',
  mason: 'mason',

  couvreur: 'roofer',
  toiture: 'roofer',
  roofer: 'roofer',

  carreleur: 'tiler',
  carrelage: 'tiler',
  tiler: 'tiler',

  jardinier: 'gardener',
  jardinage: 'gardener',
  gardener: 'gardener',

  tailleur: 'tailor',
  couturier: 'tailor',
  tailor: 'tailor',

  cuisinier: 'cook',
  cuisine: 'cook',
  cook: 'cook',

  coiffeur: 'hairdresser',
  coiffure: 'hairdresser',
  hairdresser: 'hairdresser',

  estheticienne: 'beautician',
  esthetique: 'beautician',
  beautician: 'beautician',

  informaticien: 'computerTechnician',
  informatique: 'computerTechnician',
  ordinateurs: 'computerTechnician',
  'technicien informatique': 'computerTechnician',
  'reparateur informatique': 'computerTechnician',
  'reparateur-informatique': 'computerTechnician',
  it: 'computerTechnician',
  computer: 'computerTechnician',
  'computer technician': 'computerTechnician',

  chauffage: 'heatingTechnician',
  chauffagiste: 'heatingTechnician',
  heating: 'heatingTechnician',

  appareils: 'applianceRepairman',
  electromenager: 'applianceRepairman',
  'reparateur electromenager': 'applianceRepairman',
  'reparateur-electromenager': 'applianceRepairman',
  appliance: 'applianceRepairman',

  climatisation: 'airConditioningTechnician',
  clim: 'airConditioningTechnician',
  'air conditioning': 'airConditioningTechnician',

  soudeur: 'welder',
  soudure: 'welder',
  welder: 'welder',

  ferronnier: 'ironworker',
  ironworker: 'ironworker',

  vitrier: 'glazier',
  glazier: 'glazier',

  tolier: 'bodyworker',
  carrossier: 'bodyworker',
  bodyworker: 'bodyworker',

  ebeniste: 'cabinetmaker',
  cabinetmaker: 'cabinetmaker',

  tapissier: 'upholsterer',
  upholsterer: 'upholsterer',

  photographe: 'photographer',
  photographer: 'photographer',

  videaste: 'videographer',
  videographer: 'videographer',

  traducteur: 'translator',
  translator: 'translator',

  secretaire: 'secretary',
  secretary: 'secretary',

  comptable: 'accountant',
  accountant: 'accountant',

  enseignant: 'privateTeacher',
  professeur: 'privateTeacher',
  teacher: 'privateTeacher',
  'private teacher': 'privateTeacher',

  autre: 'otherProfessions',
  other: 'otherProfessions',
  'other profession': 'otherProfessions',
};

const resolveProfessionKey = (professionSlug: string): ProfessionKey | undefined => {
  const normalizedSlug = normalizeLookup(professionSlug);
  const direct = slugToProfessionKey[normalizedSlug];
  if (direct) return direct;

  for (const professionKey of PROFESSION_KEYS) {
    const translationKey = `jobOffer.professions.${professionKey}`;
    for (const lang of languageConfig.supportedLanguages) {
      const label = translationFallback.getTranslation(translationKey, lang);
      if (!label || label === translationKey) continue;
      const variants = getLabelVariants(label);
      for (const variant of variants) {
        if (normalizeLookup(variant) === normalizedSlug) {
          return professionKey;
        }
      }
    }
  }

  return undefined;
};

const getProfessionValuesForKey = (professionKey: ProfessionKey): string[] => {
  const values = new Set<string>([professionKey]);
  const translationKey = `jobOffer.professions.${professionKey}`;

  for (const lang of languageConfig.supportedLanguages) {
    const label = translationFallback.getTranslation(translationKey, lang);
    if (!label || label === translationKey) continue;
    for (const variant of getLabelVariants(label)) {
      values.add(variant);
    }
  }

  return Array.from(values);
};

const MetiersReparateurs: React.FC = () => {
  const { t, language } = useSafeI18nWithRouter();
  const params = useParams();
  const professionSlug = params.profession;

  const { professionValues, isUnknownProfessionSlug, professionLabel } = useMemo(() => {
    if (!professionSlug) {
      return { professionValues: undefined, isUnknownProfessionSlug: false, professionLabel: '' };
    }

    const professionKey = resolveProfessionKey(professionSlug);
    if (!professionKey) {
      let label = professionSlug;
      try {
        label = decodeURIComponent(professionSlug);
      } catch {
        label = professionSlug;
      }
      return { professionValues: undefined, isUnknownProfessionSlug: true, professionLabel: label };
    }

    const translationKey = `jobOffer.professions.${professionKey}`;
    const currentLabel = t(translationKey);
    const label =
      currentLabel && currentLabel !== translationKey
        ? currentLabel
        : translationFallback.getTranslation(translationKey, language);

    return {
      professionValues: getProfessionValuesForKey(professionKey),
      isUnknownProfessionSlug: false,
      professionLabel: label === translationKey ? professionKey : label,
    };
  }, [professionSlug, t, language]);
  
  const [searchTerm, setSearchTerm] = useState('');
  const [selectedWilaya, setSelectedWilaya] = useState<string>('all');
  // Removed selectedCondition filter as requested
  const [sortBy, setSortBy] = useState<string>('recent');

  const { announcements = [], isLoading, error } = useMetiersAnnouncements(
    professionValues ? { professionValues } : undefined
  );

  const searchProfessionValuesNormalized = useMemo(() => {
    const rawTerm = searchTerm.trim();
    if (!rawTerm) return null;
    
    const normalizedTerm = normalizeLookup(rawTerm);
    const matchedProfessionKeys = new Set<ProfessionKey>();

    // 1. Check direct slug/translation match
    const slugMatch = resolveProfessionKey(rawTerm);
    if (slugMatch) {
      matchedProfessionKeys.add(slugMatch);
    }

    // 2. Check keywords
    Object.entries(PROFESSION_KEYWORDS).forEach(([key, keywords]) => {
      const professionKey = key as ProfessionKey;
      // Optimisation: if we already have this profession, skip
      if (matchedProfessionKeys.has(professionKey)) return;

      const hasMatch = keywords.some(keyword => {
        const normalizedKeyword = normalizeLookup(keyword);
        // Match full keyword string against full term, OR word-boundary match
        return new RegExp(`\\b${normalizedKeyword}\\b`, 'i').test(normalizedTerm);
      });
      
      if (hasMatch) {
        matchedProfessionKeys.add(professionKey);
      }
    });

    if (matchedProfessionKeys.size === 0) return null;

    const allValues = new Set<string>();
    matchedProfessionKeys.forEach(key => {
      const values = getProfessionValuesForKey(key);
      values.forEach(v => allValues.add(normalizeLookup(v)));
    });
    
    return allValues;
  }, [searchTerm]);

  // Filtrer les annonces selon les critères
  const filteredAnnouncements = announcements.filter(announcement => {
    const normalizedSearchTerm = searchTerm.trim().toLowerCase();
    const title = announcement.title?.toLowerCase() ?? '';
    const description = announcement.description?.toLowerCase() ?? '';

    const matchesTextSearch =
      !normalizedSearchTerm ||
      title.includes(normalizedSearchTerm) ||
      description.includes(normalizedSearchTerm);

    const matchesProfessionSearch = (() => {
      if (!searchProfessionValuesNormalized) return false;
      const storedProfession = announcement.profession ?? '';
      return searchProfessionValuesNormalized.has(normalizeLookup(storedProfession));
    })();

    const matchesSearch = matchesTextSearch || matchesProfessionSearch;
    
    const matchesWilaya = (() => {
      if (selectedWilaya === 'all') return true;
      const normalize = (s: string) => s?.toLowerCase().trim() || '';
      const selected = normalize(selectedWilaya);
      
      // 1. Vérification prioritaire sur le champ wilaya (donnée structurée)
      const announcementWilaya = normalize(announcement.wilaya || '');
      if (announcementWilaya && announcementWilaya === selected) return true;
      if (announcementWilaya && announcementWilaya.includes(selected)) return true;

      // 2. Vérification secondaire sur la location (donnée libre)
      const location = normalize(announcement.location || '');
      return location.includes(selected);
    })();
    
    return matchesSearch && matchesWilaya;
  });

  // Trier les annonces
  const sortedAnnouncements = useMemo(() => {
    return [...filteredAnnouncements].sort((a, b) => {
      switch (sortBy) {
        case 'views':
          return (b.view_count || 0) - (a.view_count || 0);
        case 'recent':
        default: {
          // Utilisation de Date.parse pour plus de robustesse
          const dateA = new Date(a.created_at).getTime();
          const dateB = new Date(b.created_at).getTime();
          return dateB - dateA;
        }
      }
    });
  }, [filteredAnnouncements, sortBy]);

  const _getPageTitle= () => {
    return t('metiers.title');
  };

  if (error) {
    logger.error('Error in MetiersReparateurs:', error);
    return (
      <div className="container mx-auto px-4 py-8">
        <div className="text-center">
          <h1 className="text-2xl font-bold text-red-600 mb-4">
            Erreur de chargement
          </h1>
          <p className="text-gray-600 mb-4">
            Une erreur s'est produite lors du chargement des annonces.
          </p>
          <Button onClick={() => window.location.reload()}>
            Réessayer
          </Button>
        </div>
      </div>
    );
  }

  return (
    <div className="container mx-auto px-4 py-6">
      {/* Header Section - Style exact from image */}
      <div className="mb-6">
        <div className="flex items-center gap-3 mb-3">
          <div className="text-2xl">📈</div>
          <h1 className="text-2xl font-bold text-red-500">
            Métiers & Réparateurs 🔥
          </h1>
        </div>

        {professionSlug && (
          <div className="mb-4">
            {isUnknownProfessionSlug ? (
              <Card>
                <CardContent className="p-4 flex items-center justify-between gap-3">
                  <div className="text-sm">
                    <div className="font-semibold text-gray-900 dark:text-white">
                      Filtre indisponible
                    </div>
                    <div className="text-gray-600 dark:text-gray-300">
                      Le métier "{professionLabel}" n’est pas reconnu. Affichage de toutes les annonces.
                    </div>
                  </div>
                  <Button asChild variant="outline">
                    <LocalizedLink to="/metiers-reparateurs">
                      Voir tout
                    </LocalizedLink>
                  </Button>
                </CardContent>
              </Card>
            ) : (
              <div className="flex flex-wrap items-center gap-2">
                <span className="text-sm text-muted-foreground bg-muted px-2 py-1 rounded">
                  Filtré par : {professionLabel}
                </span>
                <Button asChild variant="outline" size="sm">
                  <LocalizedLink to="/metiers-reparateurs">
                    Retirer le filtre
                  </LocalizedLink>
                </Button>
              </div>
            )}
          </div>
        )}

        <p className="text-black dark:text-white text-sm flex items-center gap-2 mb-4">
          <span>⚡</span>
          Trouvez des professionnels qualifiés et des artisans expérimentés pour tous vos projets de réparation, rénovation et services spécialisés
        </p>
        
        {/* Examples Section */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mb-6">
          {/* Métiers & Réparateurs Examples */}
          <div className="bg-gradient-to-br from-blue-50 to-indigo-50 dark:from-blue-900/20 dark:to-indigo-900/20 p-4 rounded-lg border border-blue-200 dark:border-blue-800">
            <h3 className="text-lg font-semibold text-blue-700 dark:text-blue-300 mb-3 flex items-center gap-2">
              🔧 Métiers & Réparateurs
            </h3>
            <div className="grid grid-cols-2 gap-2 text-sm">
              <div className="flex items-center gap-2 text-gray-700 dark:text-gray-300">
                <span className="text-orange-500">⚡</span> Électricien
              </div>
              <div className="flex items-center gap-2 text-gray-700 dark:text-gray-300">
                <span className="text-blue-500">🔧</span> Plombier
              </div>
              <div className="flex items-center gap-2 text-gray-700 dark:text-gray-300">
                <span className="text-green-500">🏠</span> Maçon
              </div>
              <div className="flex items-center gap-2 text-gray-700 dark:text-gray-300">
                <span className="text-purple-500">🎨</span> Peintre
              </div>
              <div className="flex items-center gap-2 text-gray-700 dark:text-gray-300">
                <span className="text-red-500">🔩</span> Mécanicien
              </div>
              <div className="flex items-center gap-2 text-gray-700 dark:text-gray-300">
                <span className="text-amber-500">🪚</span> Menuisier
              </div>
            </div>
          </div>

          {/* Services Professionnels Examples */}
          <div className="bg-gradient-to-br from-green-50 to-emerald-50 dark:from-green-900/20 dark:to-emerald-900/20 p-4 rounded-lg border border-green-200 dark:border-green-800">
            <h3 className="text-lg font-semibold text-green-700 dark:text-green-300 mb-3 flex items-center gap-2">
              💼 Services Professionnels
            </h3>
            <div className="grid grid-cols-2 gap-2 text-sm">
              <div className="flex items-center gap-2 text-gray-700 dark:text-gray-300">
                <span className="text-blue-500">🧹</span> Nettoyage
              </div>
              <div className="flex items-center gap-2 text-gray-700 dark:text-gray-300">
                <span className="text-purple-500">📱</span> Dépannage IT
              </div>
              <div className="flex items-center gap-2 text-gray-700 dark:text-gray-300">
                <span className="text-orange-500">🚛</span> Déménagement
              </div>
              <div className="flex items-center gap-2 text-gray-700 dark:text-gray-300">
                <span className="text-red-500">🎭</span> Animation
              </div>
              <div className="flex items-center gap-2 text-gray-700 dark:text-gray-300">
                <span className="text-green-500">🌱</span> Jardinage
              </div>
              <div className="flex items-center gap-2 text-gray-700 dark:text-gray-300">
                <span className="text-indigo-500">📚</span> Formation
              </div>
            </div>
          </div>
        </div>

        <div className="flex items-center gap-3 mb-2">
          <span className="text-sm text-muted-foreground bg-muted px-2 py-1 rounded">
            ({sortedAnnouncements.length} Annonces disponibles)
          </span>
        </div>
      </div>

      {/* Barre de recherche et filtres */}
      <Card className="mb-6">
        <CardContent className="p-6">
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
            {/* Recherche */}
            <div className="lg:col-span-2">
              <div className="relative">
                <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400 w-4 h-4" />
                <Input
                  placeholder={t('metiers.search.placeholder')}
                  value={searchTerm}
                  onChange={(event) => setSearchTerm(event.target.value)}
                  className="pl-10"
                />
              </div>
            </div>

            {/* Wilaya */}
            <div>
              <Select value={selectedWilaya} onValueChange={setSelectedWilaya}>
                <SelectTrigger>
                  <SelectValue placeholder="Toutes les wilayas" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="all">{t('common.allWilayas') || "Toutes les wilayas"}</SelectItem>
                  {wilayas.map((wilaya) => (
                    <SelectItem key={wilaya.code} value={wilaya.name}>
                      {wilaya.code.toString().padStart(2, '0')} - {language === 'ar' ? (wilaya.name_ar || wilaya.name) : wilaya.name}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>

            {/* Tri */}
            <div>
              <Select value={sortBy} onValueChange={setSortBy}>
                <SelectTrigger>
                  <SelectValue placeholder="Trier par" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="recent">Plus récent</SelectItem>
                  <SelectItem value="views">Plus de vus</SelectItem>
                </SelectContent>
              </Select>
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Statistiques */}
      {!isLoading && (
        <div className="grid grid-cols-1 md:grid-cols-4 gap-4 mb-6">
          <Card>
            <CardContent className="p-4 flex items-center gap-3">
              <div className="bg-blue-100 p-2 rounded-full">
                <Users className="w-5 h-5 text-blue-600" />
              </div>
              <div>
                <p className="text-sm text-gray-600">Total annonces</p>
                <p className="text-xl font-semibold">{sortedAnnouncements.length}</p>
              </div>
            </CardContent>
          </Card>

          <Card>
            <CardContent className="p-4 flex items-center gap-3">
              <div className="bg-green-100 p-2 rounded-full">
                <CheckCircle className="w-5 h-5 text-green-600" />
              </div>
              <div>
                <p className="text-sm text-gray-600">Professionnels vérifiés</p>
                <p className="text-xl font-semibold">0</p>
              </div>
            </CardContent>
          </Card>

          <Card>
            <CardContent className="p-4 flex items-center gap-3">
              <div className="bg-orange-100 p-2 rounded-full">
                <Clock className="w-5 h-5 text-orange-600" />
              </div>
              <div>
                <p className="text-sm text-gray-600">Disponibles</p>
                <p className="text-xl font-semibold">
                  {sortedAnnouncements.filter(a => a.is_active).length}
                </p>
              </div>
            </CardContent>
          </Card>

          <Card>
            <CardContent className="p-4 flex items-center gap-3">
              <div className="bg-purple-100 p-2 rounded-full">
                <Star className="w-5 h-5 text-purple-600" />
              </div>
              <div>
                <p className="text-sm text-gray-600">Note moyenne</p>
                <p className="text-xl font-semibold">4.8</p>
              </div>
            </CardContent>
          </Card>
        </div>
      )}

      {/* Liste des annonces */}
      <div className="space-y-4">
        {isLoading ? (
          // Skeleton loading
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {Array.from({ length: 6 }).map((_, index) => (
            <Card key={index}>
                <CardContent className="p-4">
                  <Skeleton className="h-48 w-full mb-4" />
                  <Skeleton className="h-4 w-3/4 mb-2" />
                  <Skeleton className="h-4 w-1/2 mb-2" />
                  <Skeleton className="h-6 w-1/4" />
                </CardContent>
              </Card>
            ))}
          </div>
        ) : sortedAnnouncements.length > 0 ? (
          <div>
            <h2 className="text-xl font-semibold mb-4 flex items-center gap-2">
              <Wrench className="w-5 h-5 text-primary" />
              Annonces de Métiers & Réparateurs et Services Professionnels
            </h2>
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
              {sortedAnnouncements.map(announcement => {
                // Transform MetierAnnouncement to Announcement format
                const transformedAnnouncement = {
                  ...announcement,
                  category_id: 'metier-reparateur',
                  condition: 'new',
                  images: announcement.images || [],
                  wilaya: announcement.location || '',
                  contact_phone: announcement.contact_phone || '',
                  contact_email: announcement.contact_email || '',
                  user_id: 'system',
                  updated_at: announcement.created_at,
                  is_featured: false,
                  is_urgent: false,
                  views_count: announcement.view_count || 0,
                  currency: 'DZD',
                  expires_at: null,
                  delivery_options: [],
                  description: announcement.description || '',
                  price: announcement.price || 0,
                  location: announcement.location || ''
                };
                
                return (
                  <div key={announcement.id} onClick={() => window.location.href = `/offre-metier/${announcement.id}`} className="cursor-pointer">
                    <AnnouncementCard
                      announcement={transformedAnnouncement}
                      variant="default"
                    />
                  </div>
                );
              })}
            </div>
          </div>
        ) : (
          <Card>
            <CardContent className="p-8 text-center">
              <Wrench className="w-16 h-16 text-gray-400 mx-auto mb-4" />
              <h3 className="text-lg font-semibold text-gray-900 dark:text-white mb-2">
                Aucune annonce trouvée
              </h3>
              <p className="text-gray-600 dark:text-gray-300 mb-4">
                Aucune annonce de métiers et réparateurs disponible avec les critères sélectionnés.
              </p>
              <Button 
                onClick={() => {
                  setSearchTerm('');
                  setSelectedWilaya('all');
                }}
                variant="outline"
              >
                Réinitialiser les filtres
              </Button>
            </CardContent>
          </Card>
        )}
      </div>
    </div>
  );
};

export default MetiersReparateurs;
