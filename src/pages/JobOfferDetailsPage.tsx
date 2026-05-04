
import React, { useEffect, useState } from "react";
import { useParams, Link } from "react-router-dom";
import { MapPin, Info, Clock, Phone, Mail, Briefcase, GraduationCap, CheckCircle, ArrowLeft, Truck, ShieldCheck, Eye, Flag } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import AvatarDisplay from "@/components/avatar/AvatarDisplay";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { supabase } from '@/integrations/supabase/client';
import { logger } from '@/utils/silentLogger';
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Breadcrumb, BreadcrumbItem, BreadcrumbLink, BreadcrumbList, BreadcrumbPage, BreadcrumbSeparator } from "@/components/ui/breadcrumb";
import { useAuth } from "@/contexts/useAuth";
import { useToast } from "@/hooks/use-toast";
import { useLanguageNavigation } from "@/hooks/useLanguageNavigation";
import AdaptiveImageCarousel from "@/components/common/AdaptiveImageCarousel";
import ReportModal from "@/components/common/ReportModal";
import JobOfferContactModal from "@/components/job_offer/JobOfferContactModal";
import SEOHead from "@/components/SEO/SEOHead";
import { wilayas } from "@/data/wilayaData";
import { communes } from "@/data/communeData";

interface JobOffer {
  id: string;
  user_id: string;
  title: string;
  description: string;
  profession: string;
  specialty: string | null;
  experience_level: string | null;
  availability: string | null;
  salary: number | null;
  currency: string;
  phone_numbers: string[];
  email: string | null;
  wilaya: string;
  commune: string | null;
  logo_url: string | null;
  address?: string | null;
  location: string | null;
  images: string[] | null;
  is_graduate: boolean;
  home_service: boolean;
  is_urgent: boolean;
  view_count?: number | null;
  global_listing_number?: number | null;
  created_at: string;
  updated_at: string;
  is_active: boolean;
  profiles?: {
    display_name: string | null;
    avatar_url: string | null;
  };
}

const JobOfferDetailsPage = () => {
  const { id } = useParams<{ id: string }>();
  const { t, isRTL, language } = useSafeI18nWithRouter();
  const { user } = useAuth();
  const { toast } = useToast();
  const { navigateWithLanguage, getLocalizedPath } = useLanguageNavigation();
  const [offer, setOffer] = useState<JobOffer | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [reportOpen, setReportOpen] = useState(false);
  const [showContactModal, setShowContactModal] = useState(false);

  const translateOrFallback = (key: string, fallback: string) => {
    const translated = t(key);
    return translated === key ? fallback : translated;
  };

  const normalizeToken = (value: string) =>
    value
      .normalize('NFD')
      .replace(/[\u0300-\u036f]/g, '')
      .toLowerCase()
      .trim();

  const localeByLanguage: Record<string, string> = {
    fr: 'fr-FR',
    en: 'en-US',
    es: 'es-ES',
    it: 'it-IT',
    de: 'de-DE',
    ar: 'ar-DZ',
  };

  const findWilaya = (value?: string | null) => {
    if (!value) return null;
    const normalized = normalizeToken(value);
    return (
      wilayas.find((entry) =>
        [
          entry.code.toString(),
          entry.name,
          entry.name_fr,
          entry.name_ar,
        ]
          .filter(Boolean)
          .some((candidate) => normalizeToken(String(candidate)) === normalized)
      ) || null
    );
  };

  const localizeWilayaOrCommune = (value?: string | null) => {
    if (!value) return '-';
    const wilayaMatch = findWilaya(value);
    if (!wilayaMatch) return value;
    return language === 'ar' ? wilayaMatch.name_ar || wilayaMatch.name_fr || wilayaMatch.name : wilayaMatch.name_fr || wilayaMatch.name;
  };

  const escapeRegExp = (value: string) => value.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');

  const replaceInsensitive = (source: string, search: string, replacement: string) => {
    if (!search.trim()) return source;
    return source.replace(new RegExp(escapeRegExp(search), 'gi'), replacement);
  };

  const findCommuneEntry = (communeValue?: string | null, wilayaValue?: string | null) => {
    if (!communeValue) return null;
    const normalizedCommune = normalizeToken(communeValue);
    const wilayaMatch = findWilaya(wilayaValue || communeValue);
    const scopedCommunes = wilayaMatch ? communes[String(wilayaMatch.code)] || [] : [];
    const allCommunes = scopedCommunes.length ? scopedCommunes : Object.values(communes).flat();

    return (
      allCommunes.find((entry) =>
        [entry.fr, entry.ar]
          .filter(Boolean)
          .some((candidate) => normalizeToken(String(candidate)) === normalizedCommune)
      ) || null
    );
  };

  const getCommuneLabel = (communeValue?: string | null, wilayaValue?: string | null) => {
    if (!communeValue) return '-';
    const communeMatch = findCommuneEntry(communeValue, wilayaValue);
    if (!communeMatch) return communeValue;
    return language === 'ar' ? communeMatch.ar || communeMatch.fr : communeMatch.fr;
  };

  const localizeFreeLocationText = (value?: string | null, wilayaValue?: string | null, communeValue?: string | null) => {
    if (!value) return '-';
    let localized = value;

    const replacements = [
      { from: 'Algerie', to: language === 'ar' ? 'الجزائر' : 'Algérie' },
      { from: 'Algérie', to: language === 'ar' ? 'الجزائر' : 'Algérie' },
      { from: 'Algeria', to: language === 'ar' ? 'الجزائر' : 'Algérie' },
    ];

    if (wilayaValue) {
      const wilayaMatch = findWilaya(wilayaValue);
      const localizedWilaya = localizeWilayaOrCommune(wilayaValue);
      replacements.push({ from: wilayaValue, to: localizedWilaya });
      if (wilayaMatch) {
        [wilayaMatch.name, wilayaMatch.name_fr, wilayaMatch.name_ar]
          .filter(Boolean)
          .forEach((candidate) => replacements.push({ from: String(candidate), to: localizedWilaya }));
      }
    }

    if (communeValue) {
      const communeMatch = findCommuneEntry(communeValue, wilayaValue);
      const localizedCommune = getCommuneLabel(communeValue, wilayaValue);
      replacements.push({ from: communeValue, to: localizedCommune });
      if (communeMatch) {
        [communeMatch.fr, communeMatch.ar]
          .filter(Boolean)
          .forEach((candidate) => replacements.push({ from: String(candidate), to: localizedCommune }));
      }
    }

    for (const replacement of replacements) {
      localized = replaceInsensitive(localized, replacement.from, replacement.to);
    }

    return localized;
  };

  const formatOfferDate = (value?: string | null) => {
    if (!value) return '-';
    const date = new Date(value);
    if (Number.isNaN(date.getTime())) return value;
    return date.toLocaleDateString(localeByLanguage[language] || 'fr-FR', {
      day: '2-digit',
      month: 'short',
      year: 'numeric',
    });
  };

  const professionAliases: Record<string, string> = {
    plumber: 'plumber',
    plombier: 'plumber',
    electrician: 'electrician',
    electricien: 'electrician',
    mechanic: 'mechanic',
    mecanicien: 'mechanic',
    woodworker: 'woodworker',
    menuisier: 'woodworker',
    painter: 'painter',
    peintre: 'painter',
    mason: 'mason',
    macon: 'mason',
    roofer: 'roofer',
    couvreur: 'roofer',
    tiler: 'tiler',
    carreleur: 'tiler',
    gardener: 'gardener',
    jardinier: 'gardener',
    tailor: 'tailor',
    tailleur: 'tailor',
    cook: 'cook',
    cuisinier: 'cook',
    hairdresser: 'hairdresser',
    coiffeur: 'hairdresser',
    beautician: 'beautician',
    estheticienne: 'beautician',
    computertechnician: 'computerTechnician',
    informaticien: 'computerTechnician',
    'technicien informatique': 'computerTechnician',
    'technicien informatiques': 'computerTechnician',
    'maintenance informatique': 'computerTechnician',
    chauffagiste: 'heatingTechnician',
    heatingtechnician: 'heatingTechnician',
    'reparateur appareils': 'applianceRepairman',
    'reparateur electromenager': 'applianceRepairman',
    appliancerepairman: 'applianceRepairman',
    welder: 'welder',
    soudeur: 'welder',
    ironworker: 'ironworker',
    ferronnier: 'ironworker',
    glazier: 'glazier',
    vitrier: 'glazier',
    bodyworker: 'bodyworker',
    carrossier: 'bodyworker',
    cabinetmaker: 'cabinetmaker',
    ebeniste: 'cabinetmaker',
    upholsterer: 'upholsterer',
    tapissier: 'upholsterer',
    'air conditioning technician': 'airConditioningTechnician',
    climaticien: 'airConditioningTechnician',
    photographer: 'photographer',
    photographe: 'photographer',
    videographer: 'videographer',
    videaste: 'videographer',
    translator: 'translator',
    traducteur: 'translator',
    secretary: 'secretary',
    secretaire: 'secretary',
    accountant: 'accountant',
    comptable: 'accountant',
    privateteacher: 'privateTeacher',
    'professeur particulier': 'privateTeacher',
    otherprofessions: 'otherProfessions',
    'autres metiers': 'otherProfessions',
  };

  const experienceAliases: Record<string, string> = {
    beginner: 'beginner',
    debutant: 'beginner',
    intermediate: 'intermediate',
    intermediaire: 'intermediate',
    confirmed: 'confirmed',
    confirme: 'confirmed',
    expert: 'expert',
    principiante: 'beginner',
    anfanger: 'beginner',
    مبتدئ: 'beginner',
    intermedio: 'intermediate',
    zwischenstufe: 'intermediate',
    متوسط: 'intermediate',
    erfahren: 'confirmed',
    confermato: 'confirmed',
    confirmado: 'confirmed',
    خبير_مؤكد: 'confirmed',
    experto: 'expert',
    esperto: 'expert',
    خبير: 'expert',
  };

  const availabilityAliases: Record<string, string> = {
    fulltime: 'fullTime',
    'temps plein': 'fullTime',
    'plein temps': 'fullTime',
    'tiempo completo': 'fullTime',
    'tempo pieno': 'fullTime',
    vollzeit: 'fullTime',
    'دوام كامل': 'fullTime',
    parttime: 'partTime',
    'temps partiel': 'partTime',
    'tiempo parcial': 'partTime',
    'tempo parziale': 'partTime',
    teilzeit: 'partTime',
    'دوام جزئي': 'partTime',
    weekend: 'weekend',
    'week end': 'weekend',
    'week-end': 'weekend',
    'fin de semana': 'weekend',
    'fine settimana': 'weekend',
    wochenende: 'weekend',
    'نهاية الاسبوع': 'weekend',
    'نهاية الأسبوع': 'weekend',
    soiree: 'evenings',
    soirees: 'evenings',
    evenings: 'evenings',
    noche: 'evenings',
    sera: 'evenings',
    abends: 'evenings',
    مساء: 'evenings',
    saisonnier: 'seasonal',
    seasonal: 'seasonal',
    estacional: 'seasonal',
    stagionale: 'seasonal',
    saisonal: 'seasonal',
    موسمي: 'seasonal',
    occasionnel: 'occasional',
    occasional: 'occasional',
    ocasional: 'occasional',
    occasionale: 'occasional',
    gelegentlich: 'occasional',
    عرضي: 'occasional',
  };

  const getProfessionLabel = (profession: string) => {
    const directKey = `jobOffer.professions.${profession}`;
    const direct = t(directKey);
    if (direct !== directKey) return direct;

    const normalized = normalizeToken(profession);
    const alias = professionAliases[normalized];
    if (alias) {
      const aliasedKey = `jobOffer.professions.${alias}`;
      const aliased = t(aliasedKey);
      if (aliased !== aliasedKey) return aliased;
    }

    for (const [token, key] of Object.entries(professionAliases)) {
      if (token && normalized.includes(token)) {
        const aliasedKey = `jobOffer.professions.${key}`;
        const aliased = t(aliasedKey);
        if (aliased !== aliasedKey) return aliased;
      }
    }

    return profession;
  };

  const getExperienceLabel = (experience: string | null) => {
    if (!experience) return '-';
    const directKey = `jobOffer.experienceLevels.${experience}`;
    const direct = t(directKey);
    if (direct !== directKey) return direct;

    const normalized = normalizeToken(experience);
    const alias = experienceAliases[normalized];
    if (alias) {
      const aliasedKey = `jobOffer.experienceLevels.${alias}`;
      const aliased = t(aliasedKey);
      if (aliased !== aliasedKey) return aliased;
    }

    for (const [token, key] of Object.entries(experienceAliases)) {
      if (token && normalized.includes(token)) {
        const aliasedKey = `jobOffer.experienceLevels.${key}`;
        const aliased = t(aliasedKey);
        if (aliased !== aliasedKey) return aliased;
      }
    }

    return experience;
  };

  const getAvailabilityLabel = (availability: string | null) => {
    if (!availability) return '-';
    const directKey = `jobOffer.availability.${availability}`;
    const direct = t(directKey);
    if (direct !== directKey) return direct;

    const normalized = normalizeToken(availability);
    const alias = availabilityAliases[normalized];
    if (alias) {
      const aliasedKey = `jobOffer.availability.${alias}`;
      const aliased = t(aliasedKey);
      if (aliased !== aliasedKey) return aliased;
    }

    for (const [token, key] of Object.entries(availabilityAliases)) {
      if (token && normalized.includes(token)) {
        const aliasedKey = `jobOffer.availability.${key}`;
        const aliased = t(aliasedKey);
        if (aliased !== aliasedKey) return aliased;
      }
    }

    return availability;
  };

  const handleStartChat = () => {
    if (!user) {
      window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'login' }));
      return;
    }

    setShowContactModal(true);
  };

  useEffect(() => {
    const fetchOffer = async () => {
      if (!id) return;

      try {
        setLoading(true);

        const { data: offerData, error: offerError } = await supabase
          .from('professional_job_offers')
          .select('*')
          .eq('id', id)
          .single();

        if (offerError) throw offerError;
        if (!offerData) throw new Error('Offer not found');

        const { data: profileRaw } = await supabase
          .from('profiles')
          .select('first_name, last_name, avatar_url')
          .eq('user_id', offerData.user_id)
          .maybeSingle();

        const profileData = profileRaw ? {
          display_name: [profileRaw.first_name, profileRaw.last_name].filter(Boolean).join(' ') || 'Utilisateur',
          avatar_url: profileRaw.avatar_url || ''
        } : undefined;

        const { data: addressData } = await supabase
          .from('professional_job_offer_addresses')
          .select('address')
          .eq('job_offer_id', offerData.id)
          .maybeSingle();

        setOffer({
          ...(offerData as unknown as JobOffer),
          address: addressData?.address ?? null,
          profiles: profileData || undefined
        });

        const viewKey = `viewed_job_offer_${id}`;
        if (!sessionStorage.getItem(viewKey)) {
          sessionStorage.setItem(viewKey, '1');
          try {
            await supabase.rpc('increment_professional_job_offer_view_count', { job_offer_uuid: id });
            setOffer((prev) =>
              prev
                ? {
                    ...prev,
                    view_count: (prev.view_count ?? 0) + 1,
                  }
                : prev
            );
          } catch (incrementError) {
            logger.error('Error incrementing job offer view count:', incrementError);
          }
        }
      } catch (err) {
        logger.error('Error fetching job offer:', err);
        setError(t('jobOffer.loadError'));
      } finally {
        setLoading(false);
      }
    };

    fetchOffer();
  }, [id]);

  if (loading) {
    return (
      <div className="container mx-auto px-4 py-8">
        <div className="animate-pulse space-y-4">
          <div className="h-8 bg-gray-200 rounded w-1/3"></div>
          <div className="h-64 bg-gray-200 rounded"></div>
          <div className="h-4 bg-gray-200 rounded w-1/2"></div>
        </div>
      </div>
    );
  }

  if (error || !offer) {
    return (
      <div className="container mx-auto px-4 py-8 text-center">
        <h1 className="text-2xl font-bold text-red-600 mb-4">
          {error || t('jobOffer.loadingError')}
        </h1>
        <Link to="/">
          <Button variant="outline">
            <ArrowLeft className="mr-2 h-4 w-4" />
            {translateOrFallback('common.backToHome', '')}
          </Button>
        </Link>
      </div>
    );
  }

  const tradesLabel = translateOrFallback('sections.tradesAndRepairers', 'Métiers & Réparateurs');
  const jobOfferUrl = getLocalizedPath(`/offre-metier/${offer.id}`);
  const jobOfferDescription = (() => {
    const rawDescription = typeof offer.description === "string" ? offer.description.trim() : "";
    if (!rawDescription) {
      return `${offer.title} - ${tradesLabel} - Aladdin Annonces Algérie`;
    }
    return rawDescription.length > 180 ? `${rawDescription.slice(0, 177)}...` : rawDescription;
  })();
  const jobOfferBreadcrumbs = [
    { label: t('breadcrumb.home'), href: getLocalizedPath('/') },
    { label: tradesLabel, href: getLocalizedPath('/metiers-reparateurs') },
    { label: offer.title, href: jobOfferUrl },
  ];

  return (
    <div className="min-h-screen bg-slate-50 dark:bg-slate-950 py-8" dir={isRTL ? 'rtl' : 'ltr'}>
      <SEOHead
        title={offer.title}
        description={jobOfferDescription}
        category={tradesLabel}
        subcategory={getProfessionLabel(offer.profession)}
        image={offer.logo_url || offer.images?.[0] || '/og-image.jpg'}
        url={jobOfferUrl}
        breadcrumbs={jobOfferBreadcrumbs}
      />
      <div className="container mx-auto px-4">
        {/* Breadcrumb */}
        <Breadcrumb className="mb-6">
          <BreadcrumbList>
            <BreadcrumbItem>
              <BreadcrumbLink asChild>
                <Link to={getLocalizedPath('/')}>{t('breadcrumb.home')}</Link>
              </BreadcrumbLink>
            </BreadcrumbItem>
            <BreadcrumbSeparator />
            <BreadcrumbItem>
              <BreadcrumbLink asChild>
                <Link to={getLocalizedPath('/metiers-reparateurs')}>{tradesLabel}</Link>
              </BreadcrumbLink>
            </BreadcrumbItem>
            <BreadcrumbSeparator />
            <BreadcrumbItem>
              <BreadcrumbPage>{offer.title}</BreadcrumbPage>
            </BreadcrumbItem>
          </BreadcrumbList>
        </Breadcrumb>

        <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
          {/* Main Content */}
          <div className="lg:col-span-2 space-y-6">
            {/* Header Card */}
            <Card className="overflow-hidden border-none shadow-md">
              <div className="bg-gradient-to-r from-blue-600 to-indigo-600 p-6 text-white">
                <div className="flex flex-col md:flex-row justify-between items-start md:items-center gap-4">
                  <div>
                    <div className="flex items-center gap-3 mb-2">
                      {offer.logo_url && (
                        <img
                          src={offer.logo_url}
                          alt={offer.title}
                          className="h-12 w-12 rounded-xl object-cover bg-white/20 border border-white/30"
                        />
                      )}
                      <div className="flex items-center gap-2">
                        <Badge variant="secondary" className="bg-white/20 text-white hover:bg-white/30 border-none">
                          {getProfessionLabel(offer.profession)}
                        </Badge>
                        {offer.is_urgent && (
                          <Badge variant="destructive" className="animate-pulse">
                            {t('jobOffer.urgent')}
                          </Badge>
                        )}
                      </div>
                    </div>
                    <h1 className="text-2xl md:text-3xl font-bold mb-2">{offer.title}</h1>
                    <div className="flex items-center gap-4 text-blue-100 text-sm">
                      <div className="flex items-center gap-1">
                        <MapPin className="h-4 w-4" />
                        {localizeWilayaOrCommune(offer.wilaya)}
                        {offer.commune ? `, ${getCommuneLabel(offer.commune, offer.wilaya)}` : ''}
                      </div>
                      <div className="flex items-center gap-1">
                        <Clock className="h-4 w-4" />
                        {formatOfferDate(offer.created_at)}
                      </div>
                      {typeof offer.global_listing_number === "number" ? (
                        <div className="flex items-center gap-1">
                          <Info className="h-4 w-4" />
                          N° {offer.global_listing_number}
                        </div>
                      ) : null}
                      <div className="flex items-center gap-1">
                        <Eye className="h-4 w-4" />
                        {offer.view_count ?? 0} {t('createAd.views')}
                      </div>
                    </div>
                  </div>
                  <div className="flex items-start gap-2">
                    <Button
                      variant="ghost"
                      size="icon"
                      className="text-white/80 hover:text-white hover:bg-white/10"
                      onClick={() => setReportOpen(true)}
                      aria-label={t("report.title")}
                    >
                      <Flag className="h-5 w-5" />
                    </Button>
                    {offer.salary && (
                      <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl border border-white/30">
                        <p className="text-xs text-blue-100 uppercase font-semibold">{t('jobOffer.rate')}</p>
                        <p className="text-xl font-bold">
                          {offer.salary.toLocaleString()} <span className="text-sm">{offer.currency}</span>
                        </p>
                      </div>
                    )}
                  </div>
                </div>
              </div>
              
              <CardContent className="p-6">
                {offer.images && offer.images.length > 0 && (
                  <div className="mb-6">
                    <AdaptiveImageCarousel
                      images={offer.images}
                      alt={offer.title}
                      showControls={true}
                      showIndicators={true}
                      aspectRatio="video"
                    />
                  </div>
                )}
                <div className="flex flex-wrap gap-2 mb-6">
                  {offer.is_graduate && (
                    <Badge variant="outline" className="gap-1 border-blue-200 bg-blue-50 text-blue-700 dark:bg-blue-900/20 dark:text-blue-300">
                      <GraduationCap className="h-3 w-3" />
                      {t('jobOffer.graduateCertified')}
                    </Badge>
                  )}
                  {offer.home_service && (
                    <Badge variant="outline" className="gap-1 border-green-200 bg-green-50 text-green-700 dark:bg-green-900/20 dark:text-green-300">
                      <Truck className="h-3 w-3" />
                      {t('jobOffer.homeVisit')}
                    </Badge>
                  )}
                  {offer.experience_level && (
                    <Badge variant="outline" className="gap-1">
                      <Briefcase className="h-3 w-3" />
                      {getExperienceLabel(offer.experience_level)}
                    </Badge>
                  )}
                </div>

                <div className="prose dark:prose-invert max-w-none">
                  <h3 className="text-lg font-semibold mb-2 flex items-center gap-2">
                    <Info className="h-5 w-5 text-blue-600" />
                    {t('jobOffer.description')}
                  </h3>
                  <p className="whitespace-pre-wrap text-gray-700 dark:text-gray-300 leading-relaxed">
                    {offer.description}
                  </p>
                </div>

                {offer.specialty && (
                  <div className="mt-6">
                    <h3 className="text-sm font-semibold text-muted-foreground mb-2">{t('jobOffer.specialty')}</h3>
                    <p className="text-base font-medium">{offer.specialty}</p>
                  </div>
                )}
              </CardContent>
            </Card>

            {/* Details Grid */}
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <Card>
                <CardHeader className="pb-2">
                  <CardTitle className="text-base font-medium flex items-center gap-2">
                    <Briefcase className="h-4 w-4 text-primary" />
                    {t('jobOffer.proDetails')}
                  </CardTitle>
                </CardHeader>
                <CardContent className="space-y-3">
                  <div className="flex justify-between py-2 border-b last:border-0">
                    <span className="text-muted-foreground">{t('jobOffer.profession')}</span>
                    <span className="font-medium">{getProfessionLabel(offer.profession)}</span>
                  </div>
                  <div className="flex justify-between py-2 border-b last:border-0">
                    <span className="text-muted-foreground">{t('jobOffer.experience')}</span>
                    <span className="font-medium">{getExperienceLabel(offer.experience_level)}</span>
                  </div>
                  <div className="flex justify-between py-2 border-b last:border-0">
                    <span className="text-muted-foreground">{t('jobOffer.availability')}</span>
                    <span className="font-medium">{getAvailabilityLabel(offer.availability)}</span>
                  </div>
                </CardContent>
              </Card>

              <Card>
                <CardHeader className="pb-2">
                  <CardTitle className="text-base font-medium flex items-center gap-2">
                    <MapPin className="h-4 w-4 text-primary" />
                    {t('jobOffer.workArea')}
                  </CardTitle>
                </CardHeader>
                <CardContent className="space-y-3">
                  <div className="flex justify-between py-2 border-b last:border-0">
                    <span className="text-muted-foreground">{t('jobOffer.wilaya')}</span>
                    <span className="font-medium">{localizeWilayaOrCommune(offer.wilaya)}</span>
                  </div>
                  <div className="flex justify-between py-2 border-b last:border-0">
                    <span className="text-muted-foreground">{t('jobOffer.commune')}</span>
                    <span className="font-medium">{getCommuneLabel(offer.commune, offer.wilaya)}</span>
                  </div>
                  <div className="flex justify-between py-2 border-b last:border-0">
                    <span className="text-muted-foreground">{t('profile.address')}</span>
                    <span className="font-medium truncate max-w-[150px]" title={offer.address || ''}>
                      {localizeFreeLocationText(offer.address, offer.wilaya, offer.commune)}
                    </span>
                  </div>
                  <div className="flex justify-between py-2 border-b last:border-0">
                    <span className="text-muted-foreground">{t('jobOffer.preciseLocation')}</span>
                    <span className="font-medium truncate max-w-[150px]" title={offer.location || ''}>
                      {localizeFreeLocationText(offer.location, offer.wilaya, offer.commune)}
                    </span>
                  </div>
                </CardContent>
              </Card>
            </div>
          </div>

          {/* Sidebar */}
          <div className="space-y-6">
            {/* Contact Card */}
            <Card className="border-blue-100 dark:border-blue-900 shadow-lg overflow-hidden">
              <div className="bg-slate-50 dark:bg-slate-900 p-6 text-center border-b border-slate-100 dark:border-slate-800">
                <AvatarDisplay 
                  src={offer.profiles?.avatar_url} 
                  alt={offer.profiles?.display_name || 'User'} 
                  fallback={(offer.profiles?.display_name || 'U').substring(0, 2).toUpperCase()}
                  className="h-20 w-20 mx-auto mb-3 border-4 border-white dark:border-slate-800 shadow-sm" 
                />
                <h3 className="font-bold text-lg mb-1">{offer.profiles?.display_name || translateOrFallback('common.user', '')}</h3>
                <p className="text-sm text-muted-foreground flex items-center justify-center gap-1">
                  <CheckCircle className="h-3 w-3 text-green-500" />
                  {translateOrFallback('common.verifiedMember', '')}
                </p>
              </div>
              <CardContent className="p-6 space-y-4">
                <Button 
                  className="w-full h-12 text-lg font-semibold shadow-md transition-all hover:shadow-lg hover:-translate-y-0.5" 
                  size="lg"
                  onClick={() => {
                    const primaryPhone = offer.phone_numbers[0];
                    if (primaryPhone) {
                      window.location.href = `tel:${primaryPhone}`;
                    }
                  }}
                  disabled={!offer.phone_numbers.length}
                >
                  <Phone className="mr-2 h-5 w-5" />
                  {offer.phone_numbers[0] || translateOrFallback('common.noPhone', '')}
                </Button>
                
                {offer.phone_numbers.length > 0 && (
                  <div className="bg-green-50 dark:bg-green-900/20 p-4 rounded-xl border border-green-100 dark:border-green-900/30 animate-in fade-in slide-in-from-top-2">
                    <p className="text-xs text-green-600 dark:text-green-400 font-semibold mb-2 text-center uppercase tracking-wide">
                      {t('jobOffer.phoneNumbers')}
                    </p>
                    <div className="space-y-2">
                      {offer.phone_numbers.map((phone, idx) => (
                        <a 
                          key={idx} 
                          href={`tel:${phone}`}
                          className="flex items-center justify-center gap-2 text-lg font-bold text-slate-800 dark:text-white hover:text-green-600 transition-colors bg-white dark:bg-slate-800 p-2 rounded-lg shadow-sm"
                        >
                          <Phone className="h-4 w-4 text-green-500" />
                          {phone}
                        </a>
                      ))}
                    </div>
                  </div>
                )}

                <Button variant="outline" className="w-full" onClick={handleStartChat}>
                  <Mail className="mr-2 h-4 w-4" />
                  {translateOrFallback('common.sendMessage', '')}
                </Button>
              </CardContent>
            </Card>

            {/* Safety Tips */}
            <Card className="bg-orange-50 dark:bg-orange-950/20 border-orange-100 dark:border-orange-900/30">
              <CardContent className="p-4">
                <h4 className="font-semibold text-orange-800 dark:text-orange-300 mb-2 flex items-center gap-2">
                  <ShieldCheck className="h-4 w-4" />
                  {translateOrFallback('safety.title', '')}
                </h4>
                <ul className="text-sm text-orange-700 dark:text-orange-400 space-y-2 list-disc list-inside">
                  <li>{translateOrFallback('safety.tip1', '')}</li>
                  <li>{translateOrFallback('safety.tip2', '')}</li>
                  <li>{translateOrFallback('safety.tip3', '')}</li>
                </ul>
              </CardContent>
            </Card>
          </div>
        </div>
      </div>

      <ReportModal
        open={reportOpen}
        onClose={() => setReportOpen(false)}
        target={{
          type: "job_offer",
          id: offer.id,
          globalNumber: offer.global_listing_number ?? null,
          ownerUserId: offer.user_id ?? null,
          title: offer.title ?? null,
          wilaya: offer.wilaya ?? null,
        }}
      />
      {showContactModal && (
        <JobOfferContactModal
          offer={offer}
          onClose={() => setShowContactModal(false)}
        />
      )}
    </div>
  );
};

export default JobOfferDetailsPage;
