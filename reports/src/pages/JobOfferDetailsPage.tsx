
import React, { useEffect, useState } from "react";
import { useParams, Link } from "react-router-dom";
import { MapPin, Info, Clock, Phone, Mail, Briefcase, GraduationCap, CheckCircle, ArrowLeft, Truck, ShieldCheck, Eye, Flag } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import AvatarDisplay from "@/components/avatar/AvatarDisplay";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { supabase } from '@/integrations/supabase/client';
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Breadcrumb, BreadcrumbItem, BreadcrumbLink, BreadcrumbList, BreadcrumbPage, BreadcrumbSeparator } from "@/components/ui/breadcrumb";
import { format } from 'date-fns';
import { fr } from 'date-fns/locale';
import { useAuth } from "@/contexts/useAuth";
import { useToast } from "@/hooks/use-toast";
import { useLanguageNavigation } from "@/hooks/useLanguageNavigation";
import AdaptiveImageCarousel from "@/components/common/AdaptiveImageCarousel";
import ReportModal from "@/components/common/ReportModal";

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
  const { t, isRTL } = useSafeI18nWithRouter();
  const { user } = useAuth();
  const { toast } = useToast();
  const { navigateWithLanguage } = useLanguageNavigation();
  const [offer, setOffer] = useState<JobOffer | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [reportOpen, setReportOpen] = useState(false);

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

  const professionAliases: Record<string, string> = {
    plombier: 'plumber',
    electricien: 'electrician',
    mecanicien: 'mechanic',
    menuisier: 'woodworker',
    peintre: 'painter',
    macon: 'mason',
    couvreur: 'roofer',
    carreleur: 'tiler',
    jardinier: 'gardener',
    tailleur: 'tailor',
    cuisinier: 'cook',
    coiffeur: 'hairdresser',
    estheticienne: 'beautician',
    informaticien: 'computerTechnician',
    'technicien informatique': 'computerTechnician',
    'technicien informatiques': 'computerTechnician',
    'maintenance informatique': 'computerTechnician',
  };

  const experienceAliases: Record<string, string> = {
    debutant: 'beginner',
    intermediaire: 'intermediate',
    confirme: 'confirmed',
    expert: 'expert',
  };

  const availabilityAliases: Record<string, string> = {
    'temps plein': 'fullTime',
    'plein temps': 'fullTime',
    'temps partiel': 'partTime',
    weekend: 'weekend',
    'week end': 'weekend',
    'week-end': 'weekend',
    soiree: 'evenings',
    soirees: 'evenings',
    saisonnier: 'seasonal',
    occasionnel: 'occasional',
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

    return availability;
  };

  const handleStartChat = async () => {
    if (!user) {
      toast({
        title: translateOrFallback('auth.loginRequired', ''),
        description: translateOrFallback('messages.loginRequiredDesc', ''),
        variant: 'destructive',
      });
      navigateWithLanguage('/connexion');
      return;
    }

    if (!offer || !offer.user_id) {
      toast({
        title: translateOrFallback('messages.error', ''),
        description: translateOrFallback('messages.errorFetchingConversations', ''),
        variant: 'destructive',
      });
      return;
    }

    if (offer.user_id === user.id) {
      return;
    }

    try {
      const { data: existingConversation, error: fetchError } = await supabase
        .from('conversations')
        .select('id')
        .or(`and(participant_1_id.eq.${user.id},participant_2_id.eq.${offer.user_id}),and(participant_1_id.eq.${offer.user_id},participant_2_id.eq.${user.id})`)
        .eq('subject_type', 'job_offer')
        .eq('subject_id', offer.id)
        .limit(1)
        .maybeSingle();

      if (fetchError) throw fetchError;

      let conversationId = existingConversation?.id as string | undefined;

      if (!conversationId) {
        const now = new Date().toISOString();
        const { data: newConversation, error: createError } = await supabase
          .from('conversations')
          .insert({
            participant_1_id: user.id,
            participant_2_id: offer.user_id,
            subject_type: 'job_offer',
            subject_id: offer.id,
            title: offer.title,
            updated_at: now,
            last_message_at: now,
          })
          .select('id')
          .single();

        if (createError) throw createError;
        conversationId = newConversation.id;
      }

      navigateWithLanguage(`/messages?conversation=${conversationId}`);
    } catch {
      toast({
        title: translateOrFallback('messages.error', ''),
        description: translateOrFallback('messages.errorSending', ''),
        variant: 'destructive',
      });
    }
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
            await (supabase as any).rpc('increment_professional_job_offer_view_count', { job_offer_uuid: id });
            setOffer((prev) =>
              prev
                ? {
                    ...prev,
                    view_count: (prev.view_count ?? 0) + 1,
                  }
                : prev
            );
          } catch (incrementError) {
            console.error('Error incrementing job offer view count:', incrementError);
          }
        }
      } catch (err) {
        console.error('Error fetching job offer:', err);
        setError('Impossible de charger l\'offre');
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

  return (
    <div className="min-h-screen bg-slate-50 dark:bg-slate-950 py-8" dir={isRTL ? 'rtl' : 'ltr'}>
      <div className="container mx-auto px-4">
        {/* Breadcrumb */}
        <Breadcrumb className="mb-6">
          <BreadcrumbList>
            <BreadcrumbItem>
              <BreadcrumbLink href="/">{t('breadcrumb.home')}</BreadcrumbLink>
            </BreadcrumbItem>
            <BreadcrumbSeparator />
            <BreadcrumbItem>
              <BreadcrumbLink href="/metiers-reparateurs">{t('sections.tradesAndRepairers')}</BreadcrumbLink>
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
                        {offer.wilaya}{offer.commune ? `, ${offer.commune}` : ''}
                      </div>
                      <div className="flex items-center gap-1">
                        <Clock className="h-4 w-4" />
                        {format(new Date(offer.created_at), 'dd MMM yyyy', { locale: fr })}
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
                    <span className="font-medium">{offer.wilaya}</span>
                  </div>
                  <div className="flex justify-between py-2 border-b last:border-0">
                    <span className="text-muted-foreground">{t('jobOffer.commune')}</span>
                    <span className="font-medium">{offer.commune || '-'}</span>
                  </div>
                  <div className="flex justify-between py-2 border-b last:border-0">
                    <span className="text-muted-foreground">{t('profile.address')}</span>
                    <span className="font-medium truncate max-w-[150px]" title={offer.address || ''}>{offer.address || '-'}</span>
                  </div>
                  <div className="flex justify-between py-2 border-b last:border-0">
                    <span className="text-muted-foreground">{t('jobOffer.preciseLocation')}</span>
                    <span className="font-medium truncate max-w-[150px]" title={offer.location || ''}>{offer.location || '-'}</span>
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
    </div>
  );
};

export default JobOfferDetailsPage;
