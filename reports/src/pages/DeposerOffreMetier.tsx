import { useState, Suspense, lazy, useEffect, Component, useMemo } from 'react';
import type { ReactNode } from 'react';
import { useAuth } from '@/contexts/useAuth';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { supabase } from '@/integrations/supabase/client';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Switch } from '@/components/ui/switch';
import { useToast } from '@/hooks/use-toast';
import { logger } from '@/utils/silentLogger';
import { Navigate, useNavigate } from 'react-router-dom';
import { Briefcase, Loader2, FileText, MapPin, DollarSign, Camera, Check, Phone, Mail, Clock, AlertTriangle, RefreshCw, Plus, X, Sparkles, UserCheck, ShieldCheck, GraduationCap, Truck } from 'lucide-react';
import { GeolocationCoords } from '@/hooks/useGeolocation';
import { wilayas } from '@/data/wilayaData';
import { communes } from '@/data/communeData';
import { AnimatePresence, motion } from 'framer-motion';

// Import dynamique pour éviter les erreurs de chargement
const GeolocationPicker = lazy(() => import('@/components/geolocation/GeolocationPicker'));
const ImageUpload = lazy(() => import('@/components/ui/ImageUpload'));

// Composant Error Boundary pour capturer les erreurs de rendu
class ErrorBoundary extends Component<
  { children: ReactNode; fallback: ReactNode },
  { hasError: boolean; error?: Error }
> {
  constructor(props: { children: ReactNode; fallback: ReactNode }) {
    super(props);
    this.state = { hasError: false };
  }

  static getDerivedStateFromError(error: Error) {
    return { hasError: true, error };
  }

  componentDidCatch(error: Error, errorInfo: React.ErrorInfo) {
    logger.error('ErrorBoundary caught an error:', error, errorInfo);
  }

  render() {
    if (this.state.hasError) {
      return (
        <div className="p-4 border border-red-500 rounded bg-red-50 text-red-900">
          <h3 className="font-bold">Une erreur est survenue (ErrorBoundary) :</h3>
          <pre className="mt-2 text-sm whitespace-pre-wrap">{this.state.error?.toString()}</pre>
          <pre className="mt-2 text-xs text-slate-500">{this.state.error?.stack}</pre>
          <button 
            className="mt-4 px-4 py-2 bg-red-600 text-white rounded hover:bg-red-700"
            onClick={() => window.location.reload()}
          >
            Recharger la page
          </button>
        </div>
      );
    }

    return this.props.children;
  }
}

const PROFESSION_IMAGES: Record<string, [string, string]> = {
  plumber: ['/images/professions/plumber_1.jpg', '/images/professions/plumber_2.jpg'],
  electrician: ['/images/professions/electrician_1.jpg', '/images/professions/electrician_2.jpg'],
  mechanic: ['/images/professions/mechanic_1.jpg', '/images/professions/mechanic_2.jpg'],
  woodworker: ['/images/professions/woodworker_1.jpg', '/images/professions/woodworker_2.jpg'],
  painter: ['/images/professions/painter_1.jpg', '/images/professions/painter_2.jpg'],
  mason: ['/images/professions/mason_1.jpg', '/images/professions/mason_2.jpg'],
  roofer: ['/images/professions/roofer_1.jpg', '/images/professions/roofer_2.jpg'],
  tiler: ['/images/professions/tiler_1.jpg', '/images/professions/tiler_2.jpg'],
  gardener: ['/images/professions/gardener_1.jpg', '/images/professions/gardener_2.jpg'],
  tailor: ['/images/professions/tailor_1.jpg', '/images/professions/tailor_2.jpg'],
  cook: ['/images/professions/cook_1.jpg', '/images/professions/cook_2.jpg'],
  hairdresser: ['/images/professions/hairdresser_1.jpg', '/images/professions/hairdresser_2.jpg'],
  beautician: ['/images/professions/beautician_1.jpg', '/images/professions/beautician_2.jpg'],
  computerTechnician: ['/images/professions/computerTechnician_1.jpg', '/images/professions/computerTechnician_2.jpg'],
  heatingTechnician: ['/images/professions/heatingTechnician_1.jpg', '/images/professions/heatingTechnician_2.jpg'],
  applianceRepairman: ['/images/professions/applianceRepairman_1.jpg', '/images/professions/applianceRepairman_2.jpg'],
  welder: ['/images/professions/welder_1.jpg', '/images/professions/welder_2.jpg'],
  ironworker: ['/images/professions/ironworker_1.jpg', '/images/professions/ironworker_2.jpg'],
  glazier: ['/images/professions/glazier_1.jpg', '/images/professions/glazier_2.jpg'],
  bodyworker: ['/images/professions/bodyworker_1.jpg', '/images/professions/bodyworker_2.jpg'],
  cabinetmaker: ['/images/professions/cabinetmaker_1.jpg', '/images/professions/cabinetmaker_2.jpg'],
  upholsterer: ['/images/professions/upholsterer_1.jpg', '/images/professions/upholsterer_2.jpg'],
  airConditioningTechnician: ['/images/professions/airConditioningTechnician_1.jpg', '/images/professions/airConditioningTechnician_2.jpg'],
  photographer: ['/images/professions/photographer_1.jpg', '/images/professions/photographer_2.jpg'],
  videographer: ['/images/professions/videographer_1.jpg', '/images/professions/videographer_2.jpg'],
  translator: ['/images/professions/translator_1.jpg', '/images/professions/translator_2.jpg'],
  secretary: ['/images/professions/secretary_1.jpg', '/images/professions/secretary_2.jpg'],
  accountant: ['/images/professions/accountant_1.jpg', '/images/professions/accountant_2.jpg'],
  privateTeacher: ['/images/professions/privateTeacher_1.jpg', '/images/professions/privateTeacher_2.jpg'],
  otherProfessions: ['/images/professions/otherProfessions_1.jpg', '/images/professions/otherProfessions_2.jpg']
};

const DeposerOffreMetier = () => {
  logger.info('DeposerOffreMetier component loaded');
  const { t, language, isRTL } = useSafeI18nWithRouter();
  logger.info('Current language:', language);
  const { user, loading: authLoading } = useAuth();
  logger.info('User authenticated:', !!user);
  const { toast } = useToast();
  const navigate = useNavigate();
  const [loading, setLoading] = useState(false);
  const [logoUrl, setLogoUrl] = useState<string | null>(null);
  const [images, setImages] = useState<string[]>([]);
  const [selectedLocation, setSelectedLocation] = useState<GeolocationCoords | null>(null);
  const [hoveredProfession, setHoveredProfession] = useState<string | null>(null);

  const [formData, setFormData] = useState({
    title: '',
    description: '',
    profession: '',
    specialite: '',
    experience: '',
    disponibilite: '',
    salaire: '',
    devise: 'DZD',
    telephones: ['', '', ''],
    email: '',
    wilaya: '',
    commune: '',
    adresse: '',
    location: '',
    diplome: false,
    deplacement: false,
    urgent: false,
    expires_at: ''
  });

  const selectedWilayaCode = useMemo(() => {
    const selected = wilayas.find(w => w.name === formData.wilaya);
    return selected?.code != null ? String(selected.code) : '';
  }, [formData.wilaya]);

  const availableCommunes = useMemo(() => {
    return selectedWilayaCode ? (communes[selectedWilayaCode] ?? []) : [];
  }, [selectedWilayaCode]);

  // Vérifier si l'utilisateur est connecté
  useEffect(() => {
    if (!authLoading && !user) {
      toast({
        title: t('auth.loginRequired') || 'Connexion requise',
        description: t('auth.loginRequiredDesc') || 'Vous devez vous connecter pour accéder à ce formulaire.',
      });
      // Stocker l'URL de redirection avant de rediriger vers la page de connexion
      sessionStorage.setItem('authRedirectUrl', window.location.pathname + window.location.search + window.location.hash);
      navigate('/', { state: { openAuth: 'login' }, replace: true });
    }
  }, [user, authLoading, navigate, toast, t, language]);

  // Gestionnaire d'erreurs pour capturer les erreurs de rendu
  // useEffect(() => {
  //   const handleError = (event: ErrorEvent) => {
  //     logger.error('Error in DeposerOffreMetier:', event.error);
  //     // Ne pas bloquer l'interface pour des erreurs mineures
  //     // setComponentError(event.error?.message || 'Une erreur est survenue');
  //   };

  //   window.addEventListener('error', handleError);
  //   return () => window.removeEventListener('error', handleError);
  // }, []);

  // Si l'authentification est en cours de chargement
  if (authLoading) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-primary"></div>
      </div>
    );
  }

  // Si l'utilisateur n'est pas connecté
  if (!user) {
    return null;
  }
  
  

  // Liste des métiers les plus courants en Algérie
  const metiers = [
    { key: 'plumber', value: t('jobOffer.professions.plumber') },
    { key: 'electrician', value: t('jobOffer.professions.electrician') },
    { key: 'mechanic', value: t('jobOffer.professions.mechanic') },
    { key: 'woodworker', value: t('jobOffer.professions.woodworker') },
    { key: 'painter', value: t('jobOffer.professions.painter') },
    { key: 'mason', value: t('jobOffer.professions.mason') },
    { key: 'roofer', value: t('jobOffer.professions.roofer') },
    { key: 'tiler', value: t('jobOffer.professions.tiler') },
    { key: 'gardener', value: t('jobOffer.professions.gardener') },
    { key: 'tailor', value: t('jobOffer.professions.tailor') },
    { key: 'cook', value: t('jobOffer.professions.cook') },
    { key: 'hairdresser', value: t('jobOffer.professions.hairdresser') },
    { key: 'beautician', value: t('jobOffer.professions.beautician') },
    { key: 'computerTechnician', value: t('jobOffer.professions.computerTechnician') },
    { key: 'heatingTechnician', value: t('jobOffer.professions.heatingTechnician') },
    { key: 'applianceRepairman', value: t('jobOffer.professions.applianceRepairman') },
    { key: 'welder', value: t('jobOffer.professions.welder') },
    { key: 'ironworker', value: t('jobOffer.professions.ironworker') },
    { key: 'glazier', value: t('jobOffer.professions.glazier') },
    { key: 'bodyworker', value: t('jobOffer.professions.bodyworker') },
    { key: 'cabinetmaker', value: t('jobOffer.professions.cabinetmaker') },
    { key: 'upholsterer', value: t('jobOffer.professions.upholsterer') },
    { key: 'airConditioningTechnician', value: t('jobOffer.professions.airConditioningTechnician') },
    { key: 'photographer', value: t('jobOffer.professions.photographer') },
    { key: 'videographer', value: t('jobOffer.professions.videographer') },
    { key: 'translator', value: t('jobOffer.professions.translator') },
    { key: 'secretary', value: t('jobOffer.professions.secretary') },
    { key: 'accountant', value: t('jobOffer.professions.accountant') },
    { key: 'privateTeacher', value: t('jobOffer.professions.privateTeacher') },
    { key: 'otherProfessions', value: t('jobOffer.professions.otherProfessions') }
  ];

  // Niveaux d'expérience
  const niveauxExperience = [
    { key: 'beginner', value: t('jobOffer.experienceLevels.beginner') },
    { key: 'intermediate', value: t('jobOffer.experienceLevels.intermediate') },
    { key: 'confirmed', value: t('jobOffer.experienceLevels.confirmed') },
    { key: 'expert', value: t('jobOffer.experienceLevels.expert') }
  ];

  // Disponibilités
  const disponibilites = [
    { key: 'fullTime', value: t('jobOffer.availability.fullTime') },
    { key: 'partTime', value: t('jobOffer.availability.partTime') },
    { key: 'weekend', value: t('jobOffer.availability.weekend') },
    { key: 'evenings', value: t('jobOffer.availability.evenings') },
    { key: 'seasonal', value: t('jobOffer.availability.seasonal') },
    { key: 'occasional', value: t('jobOffer.availability.occasional') }
  ];


  // Fonction pour gérer les changements dans les numéros de téléphone
  const handleTelephoneChange = (index: number, value: string) => {
    const newTelephones = [...formData.telephones];
    newTelephones[index] = value;
    setFormData(prev => ({ ...prev, telephones: newTelephones }));
  };

  // Fonction pour ajouter un nouveau champ de téléphone
  const addTelephoneField = () => {
    const emptyIndex = formData.telephones.findIndex(tel => tel === '');
    if (emptyIndex !== -1) {
      // Activer le champ vide existant
      const newTelephones = [...formData.telephones];
      setFormData(prev => ({ ...prev, telephones: newTelephones }));
    }
  };

  // Fonction pour supprimer un champ de téléphone
  const removeTelephoneField = (index: number) => {
    const newTelephones = [...formData.telephones];
    newTelephones[index] = '';
    setFormData(prev => ({ ...prev, telephones: newTelephones }));
  };

  const handleInputChange = (field: string, value: string | boolean) => {
    setFormData(prev => ({ ...prev, [field]: value }));
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    if (!user) {
      toast({
        title: t('auth.loginRequired') || 'Connexion requise',
        description: t('auth.loginRequiredDesc') || 'Vous devez vous connecter pour accéder à ce formulaire.',
      });
      return;
    }

    // Validation
    const hasValidTelephone = formData.telephones.some(tel => tel.trim() !== '');
    if (!formData.title.trim() || !formData.profession || !formData.description || !hasValidTelephone || !formData.wilaya) {
      toast({
        title: t('jobOffer.requiredFields') || "Champs obligatoires",
        description: t('jobOffer.requiredFieldsDesc') || "Veuillez remplir tous les champs obligatoires, y compris au moins un numéro de téléphone",
        variant: 'destructive',
      });
      return;
    }

    setLoading(true);

    try {

      const { data, error } = await supabase
        .from('professional_job_offers')
        .insert({
          user_id: user.id,
          title: formData.title,
          description: formData.description,
          profession: formData.profession,
          specialty: formData.specialite,
          experience_level: formData.experience,
          availability: formData.disponibilite,
          salary: formData.salaire ? parseFloat(formData.salaire) : null,
          currency: formData.devise,
          phone_numbers: formData.telephones.filter(tel => tel.trim() !== ''),
          email: formData.email,
          wilaya: formData.wilaya,
          commune: formData.commune,
          location: formData.location,
          logo_url: logoUrl,
          images: images.length ? images : null,
          is_graduate: formData.diplome,
          home_service: formData.deplacement,
          is_urgent: formData.urgent
        })
        .select()
        .single();

      if (error) {
        throw error;
      }

      const trimmedAddress = formData.adresse.trim();
      if (trimmedAddress) {
        const { error: addressError } = await supabase
          .from('professional_job_offer_addresses')
          .insert({
            job_offer_id: data.id,
            address: trimmedAddress
          });

        if (addressError) {
          await supabase.from('professional_job_offers').delete().eq('id', data.id);
          throw addressError;
        }
      }

      toast({
        title: t('jobOffer.offerPublishedSuccess') || "Offre publiée avec succès !",
        description: t('jobOffer.offerPublishedDesc') || "Votre offre de métier a été publiée avec succès",
      });

      // Rediriger vers la nouvelle offre (en tenant compte de la langue courante si nécessaire)
      // Note: L'URL doit être absolue pour éviter des problèmes de concaténation
      // Utiliser le hook de navigation pour gérer la langue
      // Comme on a déplacé la route en public, elle est accessible via /offre-metier/:id
      // ou /:lang/offre-metier/:id
      
      // Rediriger vers la nouvelle offre avec le préfixe de langue correct
      const targetPath = language ? `/${language}/offre-metier/${data.id}` : `/offre-metier/${data.id}`;
      navigate(targetPath);
      
    } catch (error) {
      logger.error('Error creating job offer:', error);
      toast({
        title: t('jobOffer.error') || "Erreur",
        description: t('jobOffer.publishErrorDesc') || "Impossible de publier l'offre. Veuillez réessayer.",
        variant: 'destructive',
      });
    } finally {
      setLoading(false);
    }
  };

  if (authLoading) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <div className="flex items-center space-x-2">
          <Loader2 className="h-4 w-4 animate-spin" />
          <span>{t('common.loading')}</span>
        </div>
      </div>
    );
  }

  if (!user) {
    return <Navigate to="/" state={{ openAuth: 'login' }} replace />;
  }

  const inputClassName =
    "text-base h-14 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-blue-500 focus:ring-4 focus:ring-blue-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-blue-300";
  const inputCompactClassName =
    "text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-blue-500 focus:ring-4 focus:ring-blue-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-blue-300";
  const textareaClassName =
    "text-base rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-blue-500 focus:ring-4 focus:ring-blue-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-blue-300 resize-none";
  const panelClassName =
    "bg-slate-50/50 dark:bg-slate-900/50 rounded-2xl shadow-sm border border-blue-100/50 dark:border-blue-900/20 overflow-hidden mb-4";
  const panelHeaderClassName =
    "bg-gradient-to-r from-blue-500/20 to-white dark:from-blue-500/20 dark:to-slate-900 p-4 flex items-center gap-3 border-b border-blue-100/50 dark:border-blue-900/20 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white";
  const panelIconContainerClassName = 
    "bg-white dark:bg-slate-800 p-2.5 rounded-xl shadow-sm border border-blue-100 dark:border-blue-800 flex items-center justify-center";
  const panelIconClassName = 
    "h-5 w-5 text-blue-600 dark:text-blue-400";
  const panelContentClassName = 
    "p-4 space-y-4";
  const panelTitleClassName = "text-lg font-bold text-slate-900 dark:text-white";
  const panelSubTitleClassName = "text-slate-500 dark:text-slate-400 text-sm font-medium";
  const inputGroupClassName = 
    "space-y-1 p-4 rounded-2xl bg-white dark:bg-slate-800 shadow-sm border border-blue-100/50 dark:border-blue-900/20 hover:shadow-md transition-all duration-300";

  return (
    <ErrorBoundary
      fallback={
        <div className="min-h-screen bg-background flex items-center justify-center">
          <div className="max-w-md mx-auto text-center p-6">
            <AlertTriangle className="h-12 w-12 mx-auto mb-4 text-red-500" />
            <h2 className="text-xl font-bold mb-2">{t('jobOffer.loadingError') || "Erreur de chargement"}</h2>
            <p className="text-muted-foreground mb-4">
              {t('jobOffer.loadingErrorDesc') || "Une erreur est survenue lors du chargement du formulaire. Veuillez réessayer."}
            </p>
            <Button onClick={() => window.location.reload()}>
              <RefreshCw className="h-4 w-4 mr-2" />
              {t('jobOffer.refreshPage') || "Actualiser la page"}
            </Button>
          </div>
        </div>
      }
    >
      <div className="min-h-screen bg-slate-50 dark:bg-slate-950 py-12" dir={isRTL ? 'rtl' : 'ltr'}>
        <div className="container mx-auto px-4">
          <div className="max-w-5xl mx-auto">
            
            <div className="bg-white/40 dark:bg-slate-800/40 backdrop-blur-xl rounded-[2rem] shadow-[0_20px_60px_-15px_rgba(0,0,0,0.15)] border border-white/50 dark:border-slate-700/50 overflow-hidden relative">
              
              {/* Header Section */}
              <div className="relative bg-gradient-to-br from-blue-600 via-indigo-600 to-cyan-600 p-8 text-white shadow-lg z-10">
                <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-10 mix-blend-soft-light"></div>
                <div className="absolute -bottom-10 -right-10 w-64 h-64 bg-white/10 rounded-full blur-3xl"></div>
                <div className={`relative flex items-center gap-6 ${isRTL ? 'justify-start' : ''}`}>
                  <div className="bg-white/20 backdrop-blur-md p-4 rounded-2xl shadow-[inset_0_0_20px_rgba(255,255,255,0.2)] border border-white/30 transform transition-transform hover:scale-105 duration-300">
                    <Briefcase className="h-10 w-10 text-white drop-shadow-md" />
                  </div>
                  <div className={isRTL ? 'text-right' : ''}>
                    <h1 className="text-4xl font-black tracking-tight drop-shadow-sm text-white">
                      {t('jobOffer.title')}
                    </h1>
                    <p className="text-blue-50 mt-2 text-lg font-medium opacity-90">
                      {t('jobOffer.subtitle')}
                    </p>
                  </div>
                </div>
              </div>

              <div className="p-6 md:p-8">
                <form onSubmit={handleSubmit}>
                  <div className="grid grid-cols-1 lg:grid-cols-3 gap-8">
                    
                    {/* Main Content - Left Column */}
                    <div className="lg:col-span-2 space-y-6">
                      
                      {/* General Info Panel */}
                      <div className={panelClassName}>
                        <div className={panelHeaderClassName}>
                          <div className={panelIconContainerClassName}>
                            <FileText className={panelIconClassName} />
                          </div>
                          <div>
                            <h3 className={panelTitleClassName}>
                              {t('jobOffer.generalInfo')}
                            </h3>
                            <p className={panelSubTitleClassName}>
                              {t('jobOffer.generalInfoDesc')}
                            </p>
                          </div>
                        </div>
                        <div className={panelContentClassName}>
                          <div className={inputGroupClassName}>
                            <Label htmlFor="title" className="text-base font-bold text-slate-800 mb-1 block">
                              {t('jobOffer.offerTitle')} <span className="text-red-500">*</span>
                            </Label>
                            <div className="relative">
                              <FileText className="absolute left-3 top-1/2 -translate-y-1/2 h-5 w-5 text-blue-400" />
                              <Input
                                id="title"
                                value={formData.title}
                                onChange={(e) => handleInputChange('title', e.target.value)}
                                placeholder={t('jobOffer.offerTitlePlaceholder')}
                                required
                                className={`${inputClassName} pl-10`}
                              />
                            </div>
                          </div>

                          <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                            <div className={inputGroupClassName}>
                              <Label htmlFor="profession" className="text-base font-bold text-slate-800 mb-1 block">
                                {t('jobOffer.profession')} <span className="text-red-500">*</span>
                              </Label>
                              <Select value={formData.profession} onValueChange={(value) => handleInputChange('profession', value)}>
                                <SelectTrigger className={inputClassName}>
                                  <SelectValue placeholder={t('jobOffer.selectProfession')} />
                                </SelectTrigger>
                                <SelectContent>
                                  {metiers.map((metier) => (
                                    <SelectItem 
                                      key={metier.key} 
                                      value={metier.value}
                                      onMouseEnter={() => setHoveredProfession(metier.key)}
                                      onMouseLeave={() => setHoveredProfession(null)}
                                    >
                                      <span className="w-full block">
                                        {metier.value}
                                      </span>
                                    </SelectItem>
                                  ))}
                                </SelectContent>
                              </Select>
                            </div>

                            <div className={inputGroupClassName}>
                              <Label htmlFor="specialite" className="text-base font-bold text-slate-800 mb-1 block">
                                {t('jobOffer.specialty')}
                              </Label>
                              <div className="relative">
                                <Sparkles className="absolute left-3 top-1/2 -translate-y-1/2 h-5 w-5 text-blue-400" />
                                <Input
                                  id="specialite"
                                  value={formData.specialite}
                                  onChange={(e) => handleInputChange('specialite', e.target.value)}
                                  placeholder={t('jobOffer.specialtyPlaceholder')}
                                  className={`${inputClassName} pl-10`}
                                />
                              </div>
                            </div>
                          </div>

                          <div className={inputGroupClassName}>
                            <Label htmlFor="description" className="text-base font-bold text-slate-800 mb-1 block">
                              {t('jobOffer.description')} <span className="text-red-500">*</span>
                            </Label>
                            <Textarea
                              id="description"
                              value={formData.description}
                              onChange={(e) => handleInputChange('description', e.target.value)}
                              placeholder={t('jobOffer.descriptionPlaceholder')}
                              rows={6}
                              required
                              className={textareaClassName}
                            />
                          </div>
                        </div>
                      </div>

                      {/* Location Panel */}
                      <div className={panelClassName}>
                        <div className={panelHeaderClassName}>
                          <div className={panelIconContainerClassName}>
                            <MapPin className={panelIconClassName} />
                          </div>
                          <div>
                            <h3 className={panelTitleClassName}>
                              {t('jobOffer.workArea')}
                            </h3>
                          </div>
                        </div>
                        <div className={panelContentClassName}>
                          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <div className={inputGroupClassName}>
                              <Label htmlFor="wilaya" className="text-base font-bold text-slate-800 mb-1 block">
                                {t('jobOffer.wilaya')} <span className="text-red-500">*</span>
                              </Label>
                              <Select value={formData.wilaya} onValueChange={(value) => {
                                setFormData(prev => ({ ...prev, wilaya: value, commune: '' }));
                              }}>
                                <SelectTrigger className={inputClassName}>
                                  <SelectValue placeholder={t('jobOffer.selectWilaya')} />
                                </SelectTrigger>
                                <SelectContent>
                                  {wilayas.map((wilaya) => (
                                    <SelectItem key={wilaya.code} value={wilaya.name}>
                                      {wilaya.code.toString().padStart(2, '0')} - {language === 'ar' ? (wilaya.name_ar || wilaya.name) : wilaya.name}
                                    </SelectItem>
                                  ))}
                                </SelectContent>
                              </Select>
                            </div>

                            <div className={inputGroupClassName}>
                              <Label htmlFor="commune" className="text-base font-bold text-slate-800 mb-1 block">
                                {t('jobOffer.commune')}
                              </Label>
                              <Select 
                                value={formData.commune} 
                                onValueChange={(value) => handleInputChange('commune', value)}
                                disabled={!formData.wilaya}
                              >
                                <SelectTrigger className={inputClassName}>
                                  <SelectValue placeholder={t('jobOffer.selectCommune')} />
                                </SelectTrigger>
                                <SelectContent>
                                  {availableCommunes.map((commune) => (
                                    <SelectItem key={commune.fr} value={commune.fr}>
                                      {language === 'ar' ? (commune.ar || commune.fr) : commune.fr}
                                    </SelectItem>
                                  ))}
                                </SelectContent>
                              </Select>
                            </div>
                          </div>

                          <div className={inputGroupClassName}>
                            <Label htmlFor="adresse" className="text-base font-bold text-slate-800 mb-1 block">
                              {t('profile.address')}
                            </Label>
                            <div className="relative">
                              <MapPin className="absolute left-3 top-1/2 -translate-y-1/2 h-5 w-5 text-blue-400" />
                              <Input
                                id="adresse"
                                value={formData.adresse}
                                onChange={(e) => handleInputChange('adresse', e.target.value)}
                                placeholder={t('createAd.addressLine1Placeholder')}
                                className={`${inputClassName} pl-10`}
                              />
                            </div>
                          </div>

                          <div className={inputGroupClassName}>
                            <Label className="text-base font-bold text-slate-800 mb-1 block">{t('jobOffer.preciseLocation')}</Label>
                            <Suspense fallback={<div className="h-12 w-full bg-gray-100 animate-pulse rounded-md" />}>
                              <GeolocationPicker
                                onLocationSelect={(coords) => {
                                  setSelectedLocation(coords);
                                  handleInputChange('location', coords.address || `${coords.lat.toFixed(4)}, ${coords.lng.toFixed(4)}`);
                                }}
                                selectedLocation={selectedLocation?.address}
                              />
                            </Suspense>
                            {selectedLocation && (
                              <div className="flex items-center gap-2 mt-2 text-sm text-blue-600 bg-blue-50 p-2 rounded-md border border-blue-100">
                                <Check className="h-4 w-4" />
                                {selectedLocation.address}
                              </div>
                            )}
                          </div>
                        </div>
                      </div>

                      {/* Images Panel */}
                      <div className={panelClassName}>
                        <div className={panelHeaderClassName}>
                          <div className={panelIconContainerClassName}>
                            <Camera className={panelIconClassName} />
                          </div>
                          <div>
                            <h3 className={panelTitleClassName}>
                              {t('jobOffer.photos')}
                            </h3>
                          </div>
                        </div>
                        <div className={panelContentClassName}>
                          <Suspense fallback={<div className="h-32 w-full bg-gray-100 animate-pulse rounded-md" />}>
                            <ImageUpload
                              onImagesChange={setImages}
                              maxImages={6}
                              bucket="job-offer-images"
                              initialImages={images}
                              hideStats={true}
                              placeholder={t('jobOffer.photosDesc')}
                            />
                          </Suspense>
                        </div>
                      </div>

                    </div>

                    {/* Sidebar - Right Column */}
                    <div className="space-y-6">
                      
                      {/* Professional Details Panel */}
                      <div className={panelClassName}>
                        <div className={panelHeaderClassName}>
                          <div className={panelIconContainerClassName}>
                            <UserCheck className={panelIconClassName} />
                          </div>
                          <div>
                            <h3 className={panelTitleClassName}>
                              {t('jobOffer.proDetails')}
                            </h3>
                          </div>
                        </div>
                        <div className={panelContentClassName}>
                          <div className={inputGroupClassName}>
                            <Label className="text-base font-bold text-slate-800 mb-1 block">
                              {t('jobOffer.logo')}
                            </Label>
                            <Suspense fallback={<div className="h-32 w-full bg-gray-100 animate-pulse rounded-md" />}>
                              <ImageUpload
                                onImagesChange={(urls) => setLogoUrl(urls[0] ?? null)}
                                maxImages={1}
                                bucket="job-offer-images"
                                initialImages={logoUrl ? [logoUrl] : []}
                                hideStats={true}
                                placeholder={t('jobOffer.logoUploadText')}
                              />
                            </Suspense>
                          </div>

                          <div className={inputGroupClassName}>
                            <Label className="text-base font-bold text-slate-800 mb-1 block">{t('jobOffer.experience')}</Label>
                            <Select value={formData.experience} onValueChange={(value) => handleInputChange('experience', value)}>
                              <SelectTrigger className={inputClassName}>
                                <SelectValue placeholder={t('jobOffer.selectExperience')} />
                              </SelectTrigger>
                              <SelectContent>
                                {niveauxExperience.map((niveau) => (
                                  <SelectItem key={niveau.key} value={niveau.value}>
                                    {niveau.value}
                                  </SelectItem>
                                ))}
                              </SelectContent>
                            </Select>
                          </div>

                          <div className={inputGroupClassName}>
                            <Label className="text-base font-bold text-slate-800 mb-1 block">{t('jobOffer.availability')}</Label>
                            <Select value={formData.disponibilite} onValueChange={(value) => handleInputChange('disponibilite', value)}>
                              <SelectTrigger className={inputClassName}>
                                <SelectValue placeholder={t('jobOffer.selectAvailability')} />
                              </SelectTrigger>
                              <SelectContent>
                                {disponibilites.map((disp) => (
                                  <SelectItem key={disp.key} value={disp.value}>
                                    {disp.value}
                                  </SelectItem>
                                ))}
                              </SelectContent>
                            </Select>
                          </div>

                          <div className={inputGroupClassName}>
                            <Label className="text-base font-bold text-slate-800 mb-1 block">{t('jobOffer.rate')}</Label>
                            <div className="flex gap-2">
                              <div className="relative flex-1">
                                <DollarSign className="absolute left-3 top-1/2 -translate-y-1/2 h-5 w-5 text-blue-400" />
                                <Input
                                  type="number"
                                  value={formData.salaire}
                                  onChange={(e) => handleInputChange('salaire', e.target.value)}
                                  placeholder="0.00"
                                  min="0"
                                  className={`${inputClassName} pl-10`}
                                />
                              </div>
                              <Select value={formData.devise} onValueChange={(value) => handleInputChange('devise', value)}>
                                <SelectTrigger className="w-24 h-14 rounded-xl border-2 border-slate-100">
                                  <SelectValue />
                                </SelectTrigger>
                                <SelectContent>
                                  <SelectItem value="DZD">DZD</SelectItem>
                                  <SelectItem value="EUR">EUR</SelectItem>
                                  <SelectItem value="USD">USD</SelectItem>
                                </SelectContent>
                              </Select>
                            </div>
                          </div>
                        </div>
                      </div>

                      {/* Contact Info Panel */}
                      <div className={panelClassName}>
                        <div className={panelHeaderClassName}>
                          <div className={panelIconContainerClassName}>
                            <Phone className={panelIconClassName} />
                          </div>
                          <div>
                            <h3 className={panelTitleClassName}>
                              {t('jobOffer.contactInfo')}
                            </h3>
                          </div>
                        </div>
                        <div className={panelContentClassName}>
                          <div className={inputGroupClassName}>
                            <Label className="text-base font-bold text-slate-800 mb-1 block">{t('jobOffer.phoneNumbers')} <span className="text-red-500">*</span></Label>
                            <div className="space-y-3">
                              {formData.telephones.map((telephone, index) => (
                                <div key={index} className="flex items-center gap-2">
                                  <div className="relative flex-1">
                                    <Phone className="absolute left-3 top-1/2 -translate-y-1/2 h-5 w-5 text-blue-400" />
                                    <Input
                                      type="tel"
                                      value={telephone}
                                      onChange={(e) => handleTelephoneChange(index, e.target.value)}
                                      placeholder={`Tél ${index + 1}`}
                                      className={`${inputCompactClassName} pl-10`}
                                    />
                                  </div>
                                  {index > 0 && (
                                    <Button
                                      type="button"
                                      variant="ghost"
                                      size="icon"
                                      onClick={() => removeTelephoneField(index)}
                                      className="h-12 w-12 text-red-500 hover:text-red-700 hover:bg-red-50 rounded-xl"
                                    >
                                      <X className="h-5 w-5" />
                                    </Button>
                                  )}
                                </div>
                              ))}
                            </div>
                            {formData.telephones.filter(t => t).length < 3 && (
                              <Button
                                type="button"
                                variant="outline"
                                onClick={addTelephoneField}
                                className="mt-3 w-full h-10 rounded-lg border-dashed border-slate-300 text-slate-600 hover:border-blue-400 hover:text-blue-700 hover:bg-blue-50 transition-colors text-sm font-medium"
                              >
                                <Plus className="h-4 w-4 mr-2" />
                                {t('jobOffer.addNumber')}
                              </Button>
                            )}
                          </div>

                          <div className={inputGroupClassName}>
                            <Label className="text-base font-bold text-slate-800 mb-1 block">{t('jobOffer.email')}</Label>
                            <div className="relative">
                              <Mail className="absolute left-3 top-1/2 -translate-y-1/2 h-5 w-5 text-blue-400" />
                              <Input
                                type="email"
                                value={formData.email}
                                onChange={(e) => handleInputChange('email', e.target.value)}
                                placeholder="votre@email.com"
                                className={`${inputClassName} pl-10`}
                              />
                            </div>
                          </div>
                        </div>
                      </div>

                      {/* Additional Options Panel */}
                      <div className={panelClassName}>
                        <div className={panelHeaderClassName}>
                          <div className={panelIconContainerClassName}>
                            <ShieldCheck className={panelIconClassName} />
                          </div>
                          <div>
                            <h3 className={panelTitleClassName}>
                              {t('jobOffer.optionsTitle')}
                            </h3>
                          </div>
                        </div>
                        <div className={panelContentClassName}>
                          {/* Diplôme / Certifié */}
                          <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-800/50 rounded-2xl border border-slate-100 hover:border-blue-200 transition-colors">
                            <div className="flex items-center gap-3">
                              <div className="p-2 bg-blue-100 dark:bg-blue-900/30 rounded-full">
                                <GraduationCap className="h-5 w-5 text-blue-600 dark:text-blue-400" />
                              </div>
                              <Label htmlFor="diplome" className="font-semibold text-slate-700 dark:text-slate-200 cursor-pointer">
                                {t('jobOffer.graduateCertified')}
                              </Label>
                            </div>
                            <Switch
                              id="diplome"
                              checked={formData.diplome}
                              onCheckedChange={(c) => handleInputChange('diplome', c)}
                              className="data-[state=checked]:bg-blue-600"
                            />
                          </div>

                          {/* Se déplace à domicile */}
                          <div className="flex items-center justify-between p-4 bg-slate-50 dark:bg-slate-800/50 rounded-2xl border border-slate-100 hover:border-green-200 transition-colors">
                            <div className="flex items-center gap-3">
                              <div className="p-2 bg-green-100 dark:bg-green-900/30 rounded-full">
                                <Truck className="h-5 w-5 text-green-600 dark:text-green-400" />
                              </div>
                              <Label htmlFor="deplacement" className="font-semibold text-slate-700 dark:text-slate-200 cursor-pointer">
                                {t('jobOffer.homeVisit')}
                              </Label>
                            </div>
                            <Switch
                              id="deplacement"
                              checked={formData.deplacement}
                              onCheckedChange={(c) => handleInputChange('deplacement', c)}
                              className="data-[state=checked]:bg-green-600"
                            />
                          </div>

                          {/* Urgent */}
                          <div className="flex items-center justify-between p-4 bg-red-50 dark:bg-red-900/10 rounded-2xl border border-red-100 hover:border-red-200 transition-colors">
                            <div className="flex items-center gap-3">
                              <div className="p-2 bg-red-100 dark:bg-red-900/30 rounded-full">
                                <AlertTriangle className="h-5 w-5 text-red-600 dark:text-red-400" />
                              </div>
                              <Label htmlFor="urgent" className="font-semibold text-slate-700 dark:text-slate-200 cursor-pointer">
                                {t('jobOffer.emergencyAvailable')}
                              </Label>
                            </div>
                            <Switch
                              id="urgent"
                              checked={formData.urgent}
                              onCheckedChange={(c) => handleInputChange('urgent', c)}
                              className="data-[state=checked]:bg-red-600"
                            />
                          </div>

                          {/* Date d'expiration (Added back) */}
                          <div className={inputGroupClassName}>
                            <Label htmlFor="expires_at" className="text-base font-bold text-slate-800 mb-1 block">
                              {t('jobOffer.expirationDate')}
                            </Label>
                            <div className="relative">
                              <Clock className="absolute left-3 top-1/2 -translate-y-1/2 h-5 w-5 text-blue-400" />
                              <Input
                                id="expires_at"
                                type="date"
                                value={formData.expires_at}
                                onChange={(e) => handleInputChange('expires_at', e.target.value)}
                                min={new Date().toISOString().split('T')[0]}
                                className={`${inputClassName} pl-10`}
                              />
                            </div>
                          </div>
                        </div>
                      </div>

                    </div>
                  </div>

                  {/* Submit Section */}
                  <div className="mt-8">
                    <div className="bg-gradient-to-r from-blue-600 to-indigo-600 rounded-2xl shadow-lg text-white overflow-hidden">
                      <div className="p-8 flex flex-col md:flex-row items-center justify-between gap-6">
                        <div className="flex items-start gap-5">
                          <div className="p-4 bg-white/20 rounded-full backdrop-blur-sm">
                            <Check className="h-8 w-8 text-white" />
                          </div>
                          <div>
                            <h3 className="text-2xl font-bold mb-1">{t('jobOffer.readyToPublish')}</h3>
                            <p className="text-blue-100 text-base opacity-90 max-w-xl">
                              {t('jobOffer.termsAcceptance')}
                            </p>
                          </div>
                        </div>
                        <Button 
                          type="submit" 
                          size="lg" 
                          className="w-full md:w-auto bg-white text-blue-600 hover:bg-blue-50 font-bold text-lg h-16 px-10 shadow-xl transition-all transform hover:scale-105 rounded-xl border-0"
                          disabled={loading}
                        >
                          {loading ? (
                            <>
                              <Loader2 className="mr-2 h-6 w-6 animate-spin" />
                              Publication...
                            </>
                          ) : (
                            t('jobOffer.publishOffer')
                          )}
                        </Button>
                      </div>
                    </div>
                  </div>
                </form>

              </div>
            </div>
          </div>
        </div>
      </div>

      {/* Floating Profession Preview */}
      <AnimatePresence>
        {hoveredProfession && (PROFESSION_IMAGES[hoveredProfession] || PROFESSION_IMAGES.otherProfessions) && (
          <motion.div
            initial={{ opacity: 0, x: 20, scale: 0.95 }}
            animate={{ opacity: 1, x: 0, scale: 1 }}
            exit={{ opacity: 0, x: 20, scale: 0.95 }}
            transition={{ duration: 0.2, ease: "easeOut" }}
            className={`fixed top-1/2 -translate-y-1/2 z-[10000] pointer-events-none hidden xl:block ${isRTL ? 'right-1/2 mr-[34rem]' : 'left-1/2 ml-[34rem]'}`}
          >
            <div className="bg-white/15 dark:bg-slate-900/15 backdrop-blur-xl p-4 rounded-[2.5rem] border border-white/20 dark:border-slate-700/30 shadow-[0_32px_64px_-16px_rgba(0,0,0,0.1)] w-[320px] overflow-hidden relative group">
              <div className="grid grid-cols-2 gap-3 relative z-10">
                {(PROFESSION_IMAGES[hoveredProfession] || PROFESSION_IMAGES.otherProfessions).map((img, idx) => (
                  <div key={idx} className="relative aspect-square rounded-2xl overflow-hidden shadow-sm border border-white/10">
                    <img 
                      src={img} 
                      alt="" 
                      className="w-full h-full object-cover transition-transform duration-700 group-hover:scale-110" 
                    />
                    <div className="absolute inset-0 bg-gradient-to-t from-black/10 to-transparent"></div>
                  </div>
                ))}
              </div>
            </div>
          </motion.div>
        )}
      </AnimatePresence>
    </ErrorBoundary>
  );
};

export default DeposerOffreMetier;
