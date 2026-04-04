
import React, { useMemo, useState, useEffect } from 'react';
import { Card, CardContent } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Badge } from '@/components/ui/badge';

import { useParams } from 'react-router-dom';
import { Link } from 'react-router-dom';
import {
  Search,
  Star,
  Users,
  Clock,
  Wrench,
  CheckCircle,
  ShieldCheck,
  Home as HomeIcon,
  Award,
  Eye,
  MapPin,
  MessageCircle,
  Phone,
  Share2,
  Heart
} from 'lucide-react';
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { useMetiersAnnouncements, type MetierAnnouncement } from '@/hooks/useMetiersAnnouncements';
import { Skeleton } from '@/components/ui/skeleton';
import { wilayas } from '@/data/wilayaData';
import { logger } from '@/utils/silentLogger';
import { LocalizedLink } from '@/utils/linkUtils';
import { translationFallback } from '@/lib/i18n/utils/fallback';
import { languageConfig } from '@/lib/i18n/config';
import SEOHead from '@/components/SEO/SEOHead';
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';
import { Breadcrumb, BreadcrumbItem, BreadcrumbLink, BreadcrumbList, BreadcrumbPage, BreadcrumbSeparator } from '@/components/ui/breadcrumb';
import { cn } from '@/lib/utils';
import { toast } from 'sonner';
import SmartAnnouncementsGrid from '@/components/home/SmartAnnouncementsGrid';
import { useFavorites } from '@/hooks/useFavorites';
import { formatRelativeTime } from '@/lib/utils/dateUtils';

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
  const { t, isRTL, language } = useSafeI18nWithRouter();
  const { getLocalizedPath, navigateWithLanguage } = useLanguageNavigation();
  const { toggleFavorite, isFavorite, fetchFavorites } = useFavorites();
  const params = useParams();
  const professionSlug = params.profession;
  
  useEffect(() => {
    fetchFavorites();
  }, [fetchFavorites]);

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

  const tradesTitle = t('sections.tradesAndRepairers') !== 'sections.tradesAndRepairers'
    ? t('sections.tradesAndRepairers')
    : 'Métiers & Réparateurs';
  const tradesPageUrl = professionSlug
    ? getLocalizedPath(`/metiers-reparateurs/${professionSlug}`)
    : getLocalizedPath('/metiers-reparateurs');
  const tradesSeoTitle = professionSlug && professionLabel
    ? `${tradesTitle} - ${professionLabel}`
    : tradesTitle;
  const tradesSeoDescription = professionSlug && professionLabel
    ? `${professionLabel} sur Aladdin Annonces Algérie. Trouvez des professionnels qualifiés, artisans et prestataires disponibles.`
    : 'Métiers & Réparateurs sur Aladdin Annonces Algérie. Trouvez des professionnels qualifiés, artisans et services spécialisés.';
  const tradesBreadcrumbs = [
    { label: t('breadcrumb.home'), href: getLocalizedPath('/') },
    { label: tradesTitle, href: getLocalizedPath('/metiers-reparateurs') },
    ...(professionSlug && professionLabel ? [{ label: professionLabel, href: tradesPageUrl }] : []),
  ];
  const tradesStructuredData = {
    '@context': 'https://schema.org',
    '@type': 'ItemList',
    itemListElement: sortedAnnouncements.slice(0, 24).map((announcement, index) => ({
      '@type': 'ListItem',
      position: index + 1,
      url: `${window.location.origin}${getLocalizedPath(`/offre-metier/${announcement.id}`)}`,
      name: announcement.title || `Offre de service ${index + 1}`,
    })),
  };

  if (error) {
    logger.error('Error in MetiersReparateurs:', error);
    return (
      <>
        <SEOHead
          title={tradesSeoTitle}
          description={tradesSeoDescription}
          category={tradesTitle}
          subcategory={professionSlug ? professionLabel : undefined}
          url={tradesPageUrl}
          keywords={[tradesTitle, professionLabel]}
          breadcrumbs={tradesBreadcrumbs}
        />
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
      </>
    );
  }

  return (
    <div className="container mx-auto px-4 py-6">
      <SEOHead
        title={tradesSeoTitle}
        description={tradesSeoDescription}
        category={tradesTitle}
        subcategory={professionSlug ? professionLabel : undefined}
        url={tradesPageUrl}
        keywords={[tradesTitle, professionLabel]}
        breadcrumbs={tradesBreadcrumbs}
        structuredData={sortedAnnouncements.length > 0 ? tradesStructuredData : undefined}
      />
      <Breadcrumb className="mb-6">
        <BreadcrumbList>
          <BreadcrumbItem>
            <BreadcrumbLink asChild>
              <Link to={getLocalizedPath('/')}>{t('breadcrumb.home')}</Link>
            </BreadcrumbLink>
          </BreadcrumbItem>
          <BreadcrumbSeparator />
          <BreadcrumbItem>
            {professionSlug ? (
              <BreadcrumbLink asChild>
                <Link to={getLocalizedPath('/metiers-reparateurs')}>{tradesTitle}</Link>
              </BreadcrumbLink>
            ) : (
              <BreadcrumbPage>{tradesTitle}</BreadcrumbPage>
            )}
          </BreadcrumbItem>
          {professionSlug ? (
            <>
              <BreadcrumbSeparator />
              <BreadcrumbItem>
                <BreadcrumbPage>{professionLabel}</BreadcrumbPage>
              </BreadcrumbItem>
            </>
          ) : null}
        </BreadcrumbList>
      </Breadcrumb>
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
            <SmartAnnouncementsGrid itemsPerRow={3}>
              {sortedAnnouncements.map((announcement) => {
                const imageUrl = announcement.images && announcement.images.length > 0 ? announcement.images[0] : '';
                const hasPrice = typeof announcement.price === 'number' && Number.isFinite(announcement.price) && announcement.price > 0;
                const shareUrl = `${window.location.origin}/offre-metier/${announcement.id}`;
                const favorite = isFavorite(announcement.id);

                const copyToClipboard = () => {
                  navigator.clipboard.writeText(shareUrl);
                  toast.success(t('common.linkCopied') || "Lien copié !", {
                    description: t('common.linkCopiedDesc') || "Le lien a été copié dans votre presse-papiers."
                  });
                };

                const handleShare = (e: React.MouseEvent) => {
                  e.stopPropagation();
                  if (navigator.share) {
                    navigator.share({
                      title: announcement.title,
                      url: shareUrl,
                    }).catch(() => {
                      copyToClipboard();
                    });
                  } else {
                    copyToClipboard();
                  }
                };

                const handleWhatsAppShare = (e: React.MouseEvent) => {
                  e.stopPropagation();
                  const whatsappUrl = `https://api.whatsapp.com/send?text=${encodeURIComponent(announcement.title + " - " + shareUrl)}`;
                  window.open(whatsappUrl, '_blank');
                };

                const handleFavorite = async (e: React.MouseEvent) => {
                  e.stopPropagation();
                  await toggleFavorite(announcement.id);
                };

                return (
                  <div
                    key={announcement.id}
                    className="group flex flex-col transition-all duration-300 transform hover:scale-[1.02] hover:-translate-y-1 rounded-[24px] overflow-hidden relative h-full bg-slate-50 shadow-[0_10px_30px_-10px_rgba(22,163,74,0.25),0_6px_10px_-2px_rgba(22,163,74,0.15)] border border-[rgba(22,163,74,0.05)] dark:bg-[linear-gradient(145deg,#1e293b,#0f172a)] dark:shadow-[0_0_20px_rgba(255,255,255,0.25)] dark:border-none cursor-pointer"
                    onClick={() => navigateWithLanguage(`/offre-metier/${announcement.id}`)}
                  >
                    <div className="p-2 pb-0">
                      <div className="relative h-48 overflow-hidden rounded-[24px] border-[3px] border-red-500/80 bg-white p-1.5 shadow-[0_8px_16px_rgba(0,0,0,0.1)] group-hover:border-red-600 group-hover:shadow-[0_12px_24px_rgba(220,38,38,0.2)] transition-all duration-300">
                        <div className="w-full h-full overflow-hidden rounded-[16px] shadow-[inset_0_10px_20px_rgba(0,0,0,0.25),inset_0_-2px_6px_rgba(255,255,255,0.3)] bg-slate-100 relative">
                          <div className={`absolute top-0 ${isRTL ? 'left-0' : 'right-0'} z-30`}>
                            <div className={`bg-white/70 backdrop-blur-md pb-3 pt-1 shadow-lg flex items-center gap-1.5 border-b border-white/40 ${
                              isRTL
                                ? 'px-3 rounded-bl-[25px] rounded-br-[25px] border-x'
                                : 'pl-3 pr-1 rounded-bl-[25px] border-l'
                            }`}>
                              <div className={cn("flex flex-col", isRTL ? "items-start" : "items-end")}>
                                <span className="text-xs font-extrabold text-slate-900 leading-none mb-0.5 drop-shadow-sm">
                                  {isRTL ? "علاء الدين" : "Aladdin"}
                                </span>
                                <span className="text-[9px] font-bold text-red-600 uppercase tracking-wider leading-none drop-shadow-sm">
                                  {language === 'ar' 
                                    ? "الاحترافية والمهن"
                                    : language === 'es'
                                      ? "Profesionalismo y Oficios"
                                      : language === 'it'
                                        ? "Professionalità e Mestieri"
                                        : language === 'de'
                                          ? "Professionalität & Handwerk"
                                          : "professionnalisme et Métiers"}
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
                          <button
                            onClick={(e) => {
                              e.stopPropagation();
                              handleFavorite(e);
                            }}
                            title={t('mesFavoris.title') || 'Favoris'}
                            className={`absolute top-2 z-30 ${isRTL ? 'right-2' : 'left-2'} p-2 rounded-full bg-white/80 hover:bg-white shadow-md border border-white/70 transition-colors`}
                            aria-label="Favori"
                          >
                            <Heart
                              className={['w-4 h-4', favorite ? 'text-rose-600' : 'text-rose-400'].join(' ')}
                              fill={favorite ? 'currentColor' : 'none'}
                            />
                          </button>

                          {imageUrl ? (
                            <img
                              src={imageUrl}
                              alt={announcement.title}
                              className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                            />
                          ) : (
                            <div className="w-full h-full bg-slate-200 dark:bg-slate-700 flex items-center justify-center">
                              <span className="text-slate-500 text-sm font-medium">
                                {announcement.profession || 'Service professionnel'}
                              </span>
                            </div>
                          )}

                          {/* Badges déplacés sous la description */}

                          {!announcement.is_active && (
                            <div className="absolute inset-0 bg-black/50 flex items-center justify-center z-30">
                              <Badge variant="destructive" className="text-lg px-4 py-2">
                                Inactif
                              </Badge>
                            </div>
                          )}
                        </div>
                      </div>
                    </div>

                    <div className="p-4">
                      <div className="flex justify-between items-start mb-2">
                        <h3 className="font-bold text-lg line-clamp-1">{announcement.title}</h3>
                      </div>

                      {/* Description supprimée sur cette carte */}

                      {(() => {
                        const isGraduate = (announcement as any)?.is_graduate === true || (announcement as any)?.diplome === true;
                        const homeService = (announcement as any)?.home_service === true || (announcement as any)?.deplacement === true;
                        const years = typeof (announcement as any)?.years_experience === 'number' ? (announcement as any)?.years_experience : undefined;
                        const level = (announcement as any)?.experience_level;
                        const isExpert = (typeof years === 'number' && years >= 10) || level === 'expert';

                        const graduateLabel = language === 'ar' ? "دبلوم/معتمد" : language === 'es' ? "Titulado/Certificado" : language === 'it' ? "Diplomato/Certificato" : language === 'de' ? "Zertifiziert" : "Diplômé/Certifié";
                        const homeLabel = language === 'ar' ? "خدمة منزلية متاحة" : language === 'es' ? "Servicio a domicilio" : language === 'it' ? "Disponibile a domicilio" : language === 'de' ? "Hausbesuche möglich" : "Déplacement à domicile possible";
                        const expertLabel = language === 'ar' ? "خبير (أكثر من 10 سنوات)" : language === 'es' ? "Experto (más de 10 años)" : language === 'it' ? "Esperto (oltre 10 anni)" : language === 'de' ? "Experte (über 10 Jahre)" : "Expert (plus de 10 ans)";

                        const locale = language === 'ar' ? 'ar-DZ' : language === 'es' ? 'es-ES' : language === 'it' ? 'it-IT' : language === 'de' ? 'de-DE' : language === 'en' ? 'en-US' : 'fr-FR';
                        const publishedAt = new Date(announcement.created_at).toLocaleString(locale, { day: '2-digit', month: '2-digit', year: 'numeric', hour: '2-digit', minute: '2-digit' });

                        return (
                          <>
                            <div className="flex flex-wrap gap-2 mb-3">
                              {isGraduate ? (
                                <span className="flex items-center gap-1 bg-blue-50 text-blue-700 dark:bg-blue-900/20 dark:text-blue-300 px-2 py-0.5 rounded-full text-[11px] font-semibold border border-blue-100 dark:border-blue-800">
                                  <ShieldCheck className="w-3 h-3" /> {graduateLabel}
                                </span>
                              ) : null}
                              {homeService ? (
                                <span className="flex items-center gap-1 bg-emerald-50 text-emerald-700 dark:bg-emerald-900/20 dark:text-emerald-300 px-2 py-0.5 rounded-full text-[11px] font-semibold border border-emerald-100 dark:border-emerald-800">
                                  <HomeIcon className="w-3 h-3" /> {homeLabel}
                                </span>
                              ) : null}
                              {isExpert ? (
                                <span className="flex items-center gap-1 bg-slate-100 text-slate-700 dark:bg-slate-800 dark:text-slate-300 px-2 py-0.5 rounded-full text-[11px] font-semibold border border-slate-200 dark:border-slate-700">
                                  <Award className="w-3 h-3" /> {expertLabel}
                                </span>
                              ) : null}
                            </div>

                            <div className="flex items-center justify-between text-sm text-muted-foreground mb-4">
                              <span className="flex items-center gap-2 truncate">
                                <MapPin className="w-3 h-3 text-primary" />
                                <span className="truncate">{announcement.wilaya || 'Non spécifiée'}</span>
                                <span className="text-slate-400">•</span>
                                <span className="text-sm font-bold text-slate-500 dark:text-slate-400">
                                  {formatRelativeTime(announcement.created_at)}
                                </span>
                              </span>
                              {hasPrice ? (
                                <span className="font-bold text-emerald-600 whitespace-nowrap">
                                  {announcement.price?.toLocaleString()} DZD
                                </span>
                              ) : (
                                <span className="text-xs font-bold text-slate-500">Prix par contact</span>
                              )}
                            </div>
                          </>
                        );
                      })()}

                      <div className="flex items-center justify-end text-xs text-muted-foreground mb-4">
                        <div className="flex items-center bg-primary/5 px-2 py-0.5 rounded-full">
                          <Eye className="w-3 h-3 mr-1 text-primary" />
                          <span className="font-medium text-primary">{announcement.view_count || 0}</span>
                        </div>
                      </div>

                      <div className="flex gap-3 w-full justify-center">
                        <button
                          onClick={(e) => {
                            e.stopPropagation();
                            handleFavorite(e);
                          }}
                          className="flex-shrink-0 w-9 h-9 flex items-center justify-center rounded-lg border bg-transparent hover:bg-muted transition-colors"
                          aria-label="Favori"
                          title={t('mesFavoris.title') || 'Favoris'}
                        >
                          <Heart className="h-4 w-4 text-rose-600" fill={favorite ? 'currentColor' : 'none'} />
                        </button>
                        <button
                          onClick={(e) => {
                            e.stopPropagation();
                            handleShare(e);
                          }}
                          className="flex-shrink-0 w-9 h-9 flex items-center justify-center rounded-lg border bg-transparent hover:bg-muted transition-colors"
                          aria-label="Partager"
                        >
                          <Share2 className="h-4 w-4 text-blue-500" />
                        </button>
                      </div>

                      {/* Barre "voir détail" supprimée pour la carte Métiers & Réparateurs */}
                    </div>
                  </div>
                );
              })}
            </SmartAnnouncementsGrid>
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
