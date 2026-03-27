import { useState, useEffect, useCallback, useMemo } from 'react';
import { useNavigate } from 'react-router-dom';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Switch } from '@/components/ui/switch';
import { Badge } from '@/components/ui/badge';
import { Dialog, DialogContent, DialogHeader, DialogTitle } from '@/components/ui/dialog';
import { ScrollArea } from '@/components/ui/scroll-area';
import { Upload, Plus, MapPin, Phone, Store, AlertCircle, Loader2, Camera, Star, CreditCard, Globe, Clock, Video, Trash2, Save, Eye, Facebook, Instagram, Twitter, Linkedin, Youtube, Truck, Copy } from 'lucide-react';
import { AnimatePresence, motion } from 'framer-motion';
import LocationPicker from '@/components/ui/LocationPicker';
import { useToast } from '@/hooks/use-toast';
import { useAuth } from '@/contexts/useAuth';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';
import { wilayas } from '@/data/wilayaData';
import { communes } from '@/data/communeData';
import { SimpleSubCategory } from '@/data/subcategories';
import { safeStringify } from '@/utils/safeStringify';
import { logger } from '@/utils/silentLogger';
import { compressImage, optimizeVideo, getMediaSettings } from '@/utils/mediaCompression';
import { supabase } from "@/integrations/supabase/client";

const SHOP_STATUS_PREVIEW_IMAGES: Record<string, string[]> = {
  'shops': [
    '/images/shop-status/clothing-store.jpg',
    '/images/shop-status/cafe-interior.jpg',
    '/images/shop-status/store-front.jpg',
    '/images/shop-status/supermarket.jpg'
  ],
  'onlineShop': [
    '/images/shop-status/boutique en ligne1.png',
    '/images/shop-status/boutique en ligne2.png',
    '/images/shop-status/boutique en ligne3.png',
    '/images/shop-status/boutique en ligne4.png'
  ],
  'cabinets': [
    '/images/shop-status/cabinets1.png',
    '/images/shop-status/cabinets2.png',
    '/images/shop-status/cabinets3.png',
    '/images/shop-status/cabinets4.png'
  ],
  'privateCompanies': [
    '/images/shop-status/privateCompanies1.png',
    '/images/shop-status/privateCompanies2.png',
    '/images/shop-status/privateCompanies3.png',
    '/images/shop-status/privateCompanies4.png'
  ],
  'nationalCompanies': [
    '/images/shop-status/nationalCompanies1.png',
    '/images/shop-status/nationalCompanies2.png',
    '/images/shop-status/nationalCompanies3.png',
    '/images/shop-status/nationalCompanies4.png'
  ],
  'mobileCommerce': [
    '/images/shop-status/mobileCommerce1.png',
    '/images/shop-status/mobileCommerce2.png',
    '/images/shop-status/mobileCommerce3.png',
    '/images/shop-status/mobileCommerce4.png'
  ],
  'associations': [
    '/images/shop-status/associations1.png',
    '/images/shop-status/associations2.png',
    '/images/shop-status/associations3.png',
    '/images/shop-status/associations4.png'
  ]
};

const CreateShopPage: React.FC = () => {
  const navigate = useNavigate();
  const { toast } = useToast();
  const { user } = useAuth();
  const { getLocalizedPath } = useLanguageNavigation();
  const { t, isRTL, language } = useSafeI18nWithRouter();

  const [isVideoEnabled, setIsVideoEnabled] = useState(true);
  const [hoveredShopStatus, setHoveredShopStatus] = useState<string | null>(null);

  useEffect(() => {
    const fetchSettings = async () => {
      const settings = await getMediaSettings();
      setIsVideoEnabled(settings.isVideoEnabled);
    };
    fetchSettings();
  }, []);

  const INITIAL_FORM_DATA = useMemo(() => ({
    name: '',
    description: '',
    wilaya: '',
    commune: '',
    shopStatus: '',
    phoneNumbers: [''],
    landlinePhone: '',
    logoUrl: '',
    productImageUrls: [] as string[],
    isOnline: false,
    isPhysical: false,
    isVerified: false,
    
    // Nouveaux champs - Localisation avancée
    address: '',
    postalCode: '',
    gpsCoordinates: { lat: 0, lng: 0 },
    openingHours: {
      monday: { open: '', close: '' },
      tuesday: { open: '', close: '' },
      wednesday: { open: '', close: '' },
      thursday: { open: '', close: '' },
      friday: { open: '', close: '' },
      saturday: { open: '', close: '' },
      sunday: { open: '', close: '' }
    },
    landmark: '',
    
    // Nouveaux champs - Contact étendu
    website: '',
    socialMedia: {
      facebook: '',
      instagram: '',
      twitter: '',
      linkedin: '',
      youtube: ''
    },
    secondaryEmail: '',
    whatsappNumber: '',
    
    // Nouveaux champs - Catégorisation
    mainCategory: '',
    subcategories: [] as string[],
    keywords: [] as string[],
    brandsDistributed: [] as string[],
    
    // Nouveaux champs - Services et options
    deliveryOptions: {
      available: false,
      method: 'hand_to_hand',
      areas: [] as string[],
      fees: '',
      estimatedTime: '',
      locationName: '',
      additionalInfo: ''
    },
    paymentMethods: {
      cash: false,
      card: false,
      transfer: false,
      check: false,
      cashOnDelivery: false
    },
    warrantyInfo: '',
    afterSalesService: '',
    
    // Nouveaux champs - Médias
    presentationVideo: '',
    interiorPhotos: [] as string[],
    catalogPdf: '',
    usefulLinks: ['', '']
  }), []);

  const [formData, setFormData] = useState(INITIAL_FORM_DATA);

  const [logoFile, setLogoFile] = useState<File | null>(null);
  const [bannerFile, setBannerFile] = useState<File | null>(null);
  const [productFiles, setProductFiles] = useState<File[]>([]);
  const [videoFiles, setVideoFiles] = useState<File[]>([]);
  const [loading, setLoading] = useState(false);
  const [lastSaved, setLastSaved] = useState<Date | null>(null);
  const [showPreview, setShowPreview] = useState(false);
  const [_createdShopId, _setCreatedShopId] = useState<string | null>(null);
  const [_subcategories, _setSubcategories] = useState<SimpleSubCategory[]>([]);
  
  // Fonctionnalités techniques communes
  // Désactivation temporaire de l'auto-save pour résoudre les problèmes d'interaction
  // const { loadDraft, clearDraft } = useAutoSave(formData, 'shop-draft');
  
  // Fonctions de gestion du brouillon manuelles
  const loadDraft = useCallback(() => {
    try {
      const savedData = localStorage.getItem('shop-draft');
      if (savedData) {
        const parsed = JSON.parse(savedData);
        return parsed.data;
      }
    } catch (error) {
      logger.error('Failed to load draft:', error);
    }
    return null;
  }, []);
  
  const clearDraft = useCallback(() => {
    localStorage.removeItem('shop-draft');
  }, []);

  const handleManualSave = useCallback(() => {
    const draftData = {
      data: formData,
      savedAt: new Date().toISOString(),
    };
    localStorage.setItem('shop-draft', safeStringify(draftData));
    setLastSaved(new Date());
    toast({
      title: (() => { const key = 'createShop.draftSaved'; const s = t(key); return s && s !== key ? s : 'Brouillon sauvegardé'; })(),
      description: (() => { const key = 'createShop.draftSavedDesc'; const s = t(key); return s && s !== key ? s : 'Le brouillon a été sauvegardé.'; })(),
    });
  }, [formData, toast, t]);

  const handleReset = useCallback(() => {
    const confirmText = (() => { const key = 'createShop.confirmReset'; const s = t(key); return s && s !== key ? s : 'Êtes-vous sûr de vouloir réinitialiser tout le formulaire ?'; })();
    if (!window.confirm(confirmText)) return;
    setFormData(INITIAL_FORM_DATA);
    setLogoFile(null);
    setBannerFile(null);
    setProductFiles([]);
    setVideoFiles([]);
    clearDraft();
    setLastSaved(null);
    window.scrollTo({ top: 0, behavior: 'smooth' });
    toast({
      title: (() => { const key = 'createShop.formReset'; const s = t(key); return s && s !== key ? s : 'Formulaire réinitialisé'; })(),
      description: (() => { const key = 'createShop.formResetDesc'; const s = t(key); return s && s !== key ? s : 'Le formulaire a été réinitialisé.'; })(),
    });
  }, [INITIAL_FORM_DATA, clearDraft, t, toast]);
  
  
  
  // Règles de validation
  const _validationRules = [
    {
      field: 'name',
      validate: (value: string) => value.trim().length >= 2,
      message: t('createShop.validation.nameMinLength')
    },
    {
      field: 'description',
      validate: (value: string) => value.trim().length >= 5,
      message: t('createShop.validation.descriptionMinLength')
    },
    {
      field: 'wilaya',
      validate: (value: string) => value.trim().length > 0,
      message: t('createShop.validation.wilayaRequired')
    }
  ];

  useEffect(() => {
    if (!user) {
      // Stocker l'URL de redirection actuelle pour après la connexion
      sessionStorage.setItem('authRedirectUrl', window.location.pathname);
      navigate(getLocalizedPath('/connexion'));
      return;
    }
    
    // Charger le brouillon s'il existe
    const draft = loadDraft();
    if (draft) {
      setFormData(prev => ({ ...prev, ...draft }));
    }
  }, [user, navigate, getLocalizedPath, loadDraft]);

  const selectedWilayaCode = useMemo(() => {
    const selected = wilayas.find(w => w.name === formData.wilaya);
    return selected?.code != null ? String(selected.code) : '';
  }, [formData.wilaya]);

  const availableCommunes = useMemo(() => {
    return selectedWilayaCode ? (communes[selectedWilayaCode] ?? []) : [];
  }, [selectedWilayaCode]);

  // Gestion des changements dans les champs
  const handleInputChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    e.preventDefault();
    e.stopPropagation();
    const { name, value } = e.target;
    logger.debug('Input change:', { name, value });
    setFormData(prev => ({ ...prev, [name]: value }));
  };

  const _handleCategoryChange = (categoryId: string) => {
    setFormData(prev => ({ ...prev, mainCategory: categoryId, subcategories: [] }));
    _setSubcategories([]);
  };

  const _handleSubcategoryChange = (subcategoryId: string) => {
    // Pour le formulaire de boutique, nous utilisons un tableau de sous-catégories
    const isSelected = formData.subcategories.includes(subcategoryId);
    logger.debug('Subcategory change:', { subcategoryId, isSelected });
    
    if (isSelected) {
      // Retirer la sous-catégorie si elle est déjà sélectionnée
      const newSubcategories = formData.subcategories.filter(id => id !== subcategoryId);
      logger.debug('Removing subcategory. New list:', newSubcategories);
      setFormData(prev => ({
        ...prev,
        subcategories: newSubcategories
      }));
    } else {
      // Ajouter la sous-catégorie si elle n'est pas encore sélectionnée
      const newSubcategories = [...formData.subcategories, subcategoryId];
      logger.debug('Adding subcategory. New list:', newSubcategories);
      setFormData(prev => ({
        ...prev,
        subcategories: newSubcategories
      }));
    }
  };

  // Gestion des changements dans les sélecteurs
  const shopStatusOptions = [
    { value: 'shops', label: 'createShop.shopInfo.status.shops' },
    { value: 'onlineShop', label: 'createShop.shopInfo.status.onlineShop' },
    { value: 'cabinets', label: 'createShop.shopInfo.status.cabinets' },
    { value: 'privateCompanies', label: 'createShop.shopInfo.status.privateCompanies' },
    { value: 'nationalCompanies', label: 'createShop.shopInfo.status.nationalCompanies' },
    { value: 'mobileCommerce', label: 'createShop.shopInfo.status.mobileCommerce' },
    { value: 'associations', label: 'createShop.shopInfo.status.associations' },
  ];

  const handleSelectChange = (name: string, value: string) => {
    setFormData(prev => ({ ...prev, [name]: value }));
  };

  // Gestion des changements dans les champs imbriqués
  const _handleNestedChange = (category: string, field: string, value: unknown) => {
    setFormData(prev => {
      const newData: typeof prev & Record<string, unknown> = { ...prev } as typeof prev & Record<string, unknown>;
      const categoryObj = (newData as Record<string, unknown>)[category] as Record<string, unknown> | undefined;
      (newData as Record<string, unknown>)[category] = {
        ...(categoryObj || {}),
        [field]: value
      };
      return newData as typeof prev;
    });
  };

  // Gestion des changements dans les champs doublement imbriqués
  const _handleDoubleNestedChange = (category: string, subcategory: string, field: string, value: unknown) => {
    setFormData(prev => {
      const newData: typeof prev & Record<string, unknown> = { ...prev } as typeof prev & Record<string, unknown>;
      const catObj = (newData as Record<string, unknown>)[category] as Record<string, unknown> | undefined;
      const subObj = (catObj?.[subcategory] as Record<string, unknown>) || {};
      (newData as Record<string, unknown>)[category] = {
        ...(catObj || {}),
        [subcategory]: {
          ...subObj,
          [field]: value
        }
      } as unknown as typeof prev;
      return newData as typeof prev;
    });
  };

  // Gestion des numéros de téléphone
  const MAX_PHONE_FIELDS = 6;
  const SHOP_NAME_MAX_LENGTH = 100;
  const SHOP_DESCRIPTION_MAX_LENGTH = 3500;

  const handlePhoneChange = (index: number, value: string) => {
    const newPhoneNumbers = [...formData.phoneNumbers];
    newPhoneNumbers[index] = value;
    setFormData(prev => ({ ...prev, phoneNumbers: newPhoneNumbers }));
  };

  const addPhoneField = () => {
    if (formData.phoneNumbers.length >= MAX_PHONE_FIELDS) return;
    setFormData(prev => ({ ...prev, phoneNumbers: [...prev.phoneNumbers, ''] }));
  };

  const removePhoneField = (index: number) => {
    const newPhoneNumbers = formData.phoneNumbers.filter((_, i) => i !== index);
    setFormData(prev => ({ ...prev, phoneNumbers: newPhoneNumbers }));
  };

  // Appliquer les horaires du samedi à tous les jours
  const applySaturdayToAll = () => {
    const saturdayHours = formData.openingHours.saturday;
    setFormData(prev => ({
      ...prev,
      openingHours: {
        saturday: { ...saturdayHours },
        sunday: { ...saturdayHours },
        monday: { ...saturdayHours },
        tuesday: { ...saturdayHours },
        wednesday: { ...saturdayHours },
        thursday: { ...saturdayHours },
        friday: { ...saturdayHours },
      }
    }));
    toast({
      title: t('createShop.shopInfo.applySaturdayToAll'),
      duration: 2000,
    });
  };

  // Gestion de la sélection de localisation
  const handleLocationSelect = (lat: number, lng: number) => {
    logger.debug('Location selected:', lat, lng);
    setFormData(prev => ({
      ...prev,
      gpsCoordinates: { lat, lng }
    }));
  };

  // Gestion de l'upload du logo
  const handleLogoUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
    if (e.target.files && e.target.files[0]) {
      try {
        const compressedLogo = await compressImage(e.target.files[0]);
        setLogoFile(compressedLogo);
      } catch (err) {
        logger.error('Erreur compression logo:', err);
        setLogoFile(e.target.files[0]);
      }
    }
  };

  // Gestion de l'upload de la bannière
  const handleBannerUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
    if (e.target.files && e.target.files[0]) {
      try {
        const compressedBanner = await compressImage(e.target.files[0]);
        setBannerFile(compressedBanner);
      } catch (err) {
        logger.error('Erreur compression bannière:', err);
        setBannerFile(e.target.files[0]);
      }
    }
  };

  // Gestion de l'upload des images des produits
  const handleProductImagesUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
    if (e.target.files) {
      const files = Array.from(e.target.files);
      const remainingSlots = 15 - productFiles.length;
      const filesToProcess = files.slice(0, remainingSlots);

      const compressedFiles = await Promise.all(
        filesToProcess.map(async (file) => {
          try {
            return await compressImage(file);
          } catch (err) {
            logger.error('Erreur compression image produit:', err);
            return file;
          }
        })
      );

      setProductFiles(prev => [...prev, ...compressedFiles]);
    }
  };

  const handleProductVideosUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
    if (!isVideoEnabled) {
      toast({
        title: t('createShop.shopInfo.productVideos'),
        description: t('createShop.shopInfo.videoUploadDisabled') || "L'upload de vidéos est désactivé",
        variant: "destructive"
      });
      return;
    }
    if (e.target.files) {
      const MAX_SIZE = 15 * 1024 * 1024;
      const incoming = Array.from(e.target.files);
      const remainingSlots = 2 - videoFiles.length;
      const filesToProcess = incoming.slice(0, remainingSlots);

      const optimizedVideos = await Promise.all(
        filesToProcess.map(file => optimizeVideo(file, MAX_SIZE))
      );

      setVideoFiles(prev => [...prev, ...optimizedVideos]);
    }
  };

  const handlePaymentMethodToggle = (method: 'cash' | 'card' | 'transfer' | 'check' | 'cashOnDelivery', checked: boolean) => {
    setFormData(prev => ({
      ...prev,
      paymentMethods: {
        ...prev.paymentMethods,
        [method]: checked,
      },
    }));
  };

  const removeProductImage = (index: number) => {
    setProductFiles(prev => prev.filter((_, i) => i !== index));
  };

  const removeProductVideo = (index: number) => {
    setVideoFiles(prev => prev.filter((_, i) => i !== index));
  };

  const handleUsefulLinkChange = (index: number, value: string) => {
    setFormData(prev => {
      const links = [...prev.usefulLinks];
      links[index] = value;
      return { ...prev, usefulLinks: links };
    });
  };

  // Upload réel vers Supabase Storage
  const uploadFiles = async (files: File[], bucket: string = 'shop-content'): Promise<string[]> => {
    if (!user) return [];
    
    const uploadedUrls: string[] = [];

    for (const file of files) {
      const fileExt = file.name.split('.').pop();
      const fileName = `${Math.random().toString(36).substring(2)}_${Date.now()}.${fileExt}`;
      const filePath = `${user.id}/${fileName}`;

      try {
        const { error: uploadError } = await supabase.storage
          .from(bucket)
          .upload(filePath, file);

        if (uploadError) {
          console.error(`Error uploading file to ${bucket}:`, uploadError);
          toast({
             title: t('common.error'),
             description: `Erreur d'upload: ${uploadError.message}`,
             variant: "destructive"
          });
          throw uploadError;
        }

        const { data: { publicUrl } } = supabase.storage
          .from(bucket)
          .getPublicUrl(filePath);

        uploadedUrls.push(publicUrl);
      } catch (err) {
        console.error('Unexpected error during upload:', err);
        throw err;
      }
    }

    return uploadedUrls;
  };

  const uploadImages = (files: File[]) => uploadFiles(files, 'shop-content');
  const uploadVideos = (files: File[]) => uploadFiles(files, 'shop-content');

  // Soumission du formulaire
  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    if (!user) {
      toast({
        title: t('createShop.errors.loginRequiredTitle'),
        description: t('createShop.errors.loginRequiredDesc'),
        variant: "destructive"
      });
      return;
    }

    if (!formData.name || !formData.description || !formData.wilaya || !logoFile) {
      toast({
        title: t('createShop.errors.requiredFieldsTitle'),
        description: t('createShop.errors.requiredFieldsDesc'),
        variant: "destructive"
      });
      return;
    }

    try {
      setLoading(true);

      // Upload du logo
      const logoUrl = await uploadImages([logoFile]);

      // Upload de la bannière
      const bannerUrls = bannerFile ? await uploadImages([bannerFile]) : [];

      // Upload des images des produits
      const productImageUrls = productFiles.length > 0 
        ? await uploadImages(productFiles) 
        : [];
      const productVideoUrls = videoFiles.length > 0
        ? await uploadVideos(videoFiles)
        : [];

      // Création de la boutique dans Supabase
      const { data: shopData, error: shopError } = await supabase
        .from('shops')
        .insert({
          name: formData.name,
          description: formData.description,
          wilaya: formData.wilaya,
          commune: formData.commune,
          shop_status: formData.shopStatus,
          phone_numbers: formData.phoneNumbers.filter(phone => phone.trim() !== ''),
          landline_phone: formData.landlinePhone,
          logo_url: logoUrl[0],
          product_image_urls: productImageUrls,
          product_video_urls: productVideoUrls,
          banner_url: bannerUrls[0] || '',
          is_online: formData.isOnline,
          is_physical: formData.isPhysical,
          is_verified: false,
          user_id: user.id,
          address: formData.address,
          postal_code: formData.postalCode,
          gps_coordinates: formData.gpsCoordinates,
          opening_hours: formData.openingHours,
          landmark: formData.landmark,
          website: formData.website,
          social_media: formData.socialMedia,
          secondary_email: formData.secondaryEmail,
          whatsapp_number: formData.whatsappNumber,
          main_category: formData.mainCategory,
          subcategories: formData.subcategories,
          keywords: formData.keywords,
          brands_distributed: formData.brandsDistributed,
          delivery_options: formData.deliveryOptions,
          payment_methods: formData.paymentMethods,
          warranty_info: formData.warrantyInfo,
          after_sales_service: formData.afterSalesService,
          presentation_video: formData.presentationVideo,
          interior_photos: formData.interiorPhotos,
          catalog_pdf: formData.catalogPdf,
          useful_links: formData.usefulLinks.filter(u => u.trim() !== '')
        })
        .select()
        .single();

      if (shopError) throw shopError;

      _setCreatedShopId(shopData.id);

      toast({
        title: t('createShop.success.title'),
        description: t('createShop.success.description'),
      });

      // Redirection vers la page de la boutique
      setTimeout(() => {
        navigate(getLocalizedPath(`/boutique/${shopData.id}`));
      }, 2000);

  } catch (error) {
      logger.error('Error creating shop:', error);
      toast({
        title: t('createShop.errors.genericErrorTitle'),
        description: error instanceof Error ? error.message : t('createShop.errors.genericErrorDesc'),
        variant: "destructive"
      });
    } finally {
      setLoading(false);
    }
  };

  if (!user) {
    return null; // Will redirect to auth
  }

  const inputClassName =
    "text-base h-14 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-purple-500 focus:ring-4 focus:ring-purple-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-purple-300";
  const inputCompactClassName =
    "text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-purple-500 focus:ring-4 focus:ring-purple-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-purple-300";
  const textareaClassName =
    "text-base rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-purple-500 focus:ring-4 focus:ring-purple-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-purple-300 resize-none";
  const uploadBoxClassName =
    "inline-flex items-center justify-center w-full h-32 border-2 border-dashed border-slate-200 dark:border-slate-700 rounded-xl cursor-pointer bg-white dark:bg-slate-900/40 hover:bg-slate-50 dark:hover:bg-slate-900/60 transition-colors";
  const panelClassName =
    "bg-slate-50/50 dark:bg-slate-900/50 rounded-2xl shadow-sm border border-purple-100/50 dark:border-purple-900/20 overflow-hidden mb-4";
  const panelHeaderClassName =
    "bg-gradient-to-r from-purple-500/20 to-white dark:from-purple-500/20 dark:to-slate-900 p-4 flex items-center gap-3 border-b border-purple-100/50 dark:border-purple-900/20 relative overflow-hidden [&_*]:!text-slate-900 dark:[&_*]:!text-white";
  const panelIconContainerClassName = 
    "bg-white dark:bg-slate-800 p-2.5 rounded-xl shadow-sm border border-purple-100 dark:border-purple-800 flex items-center justify-center";
  const panelIconClassName = 
    "h-5 w-5 text-purple-600 dark:text-purple-400";
  const panelContentClassName = 
    "p-4 space-y-4";
  const panelTitleClassName = "text-lg font-bold text-slate-900 dark:text-white";
  const panelSubTitleClassName = "text-slate-500 dark:text-slate-400 text-sm font-medium";
  const inputGroupClassName = 
    "space-y-1 p-4 rounded-2xl bg-white dark:bg-slate-800 shadow-sm border border-purple-100/50 dark:border-purple-900/20 hover:shadow-md transition-all duration-300";
  const panelItemClassName = 
    "space-y-1 p-4 rounded-2xl bg-white dark:bg-slate-800 shadow-sm border border-purple-100/50 dark:border-purple-900/20 hover:shadow-md transition-all duration-300";
  const inputTightClassName = inputCompactClassName.replace('h-12', 'h-10');
  const inputGroupTightClassName =
    "space-y-1 p-3 rounded-2xl bg-white dark:bg-slate-800 shadow-sm border border-purple-100/50 dark:border-purple-900/20 hover:shadow-md transition-all duration-300";
  const panelItemTightClassName =
    "space-y-1 p-3 rounded-2xl bg-white dark:bg-slate-800 shadow-sm border border-purple-100/50 dark:border-purple-900/20 hover:shadow-md transition-all duration-300";

  return (
    <div className="min-h-screen bg-slate-50 dark:bg-slate-950 py-12" dir={isRTL ? 'rtl' : 'ltr'}>
      <div className="container mx-auto px-4">
        <div className="max-w-5xl mx-auto">
          <div className="bg-white/40 dark:bg-slate-800/40 backdrop-blur-xl rounded-[2rem] shadow-[0_20px_60px_-15px_rgba(0,0,0,0.15)] border border-white/50 dark:border-slate-700/50 overflow-hidden relative">
            <div className="relative bg-gradient-to-br from-purple-600 via-violet-600 to-fuchsia-600 p-8 text-white shadow-lg z-10">
              <div className="absolute inset-0 bg-[url('https://grainy-gradients.vercel.app/noise.svg')] opacity-10 mix-blend-soft-light"></div>
              <div className="absolute -bottom-10 -right-10 w-64 h-64 bg-white/10 rounded-full blur-3xl"></div>
              <div className={`relative flex items-center gap-6 ${isRTL ? 'justify-start' : ''}`} dir={isRTL ? 'rtl' : 'ltr'}>
                <div className="bg-white/20 backdrop-blur-md p-4 rounded-2xl shadow-[inset_0_0_20px_rgba(255,255,255,0.2)] border border-white/30 transform transition-transform hover:scale-105 duration-300">
                  <Store className="h-10 w-10 text-white drop-shadow-md" />
                </div>
                <div className={isRTL ? 'text-right' : ''}>
                  <h1 className="text-4xl font-black tracking-tight drop-shadow-sm text-white">{t('createShop.title')}</h1>
                  <p className="text-purple-50 mt-2 text-lg font-medium opacity-90">{t('createShop.subtitle')}</p>
                </div>
              </div>
            </div>

            <div className="p-6 md:p-8">
              <div className="bg-slate-50 dark:bg-slate-900/30 border border-slate-200 dark:border-slate-800 rounded-xl p-4 mb-6">
                <h3 className="font-semibold text-purple-900 dark:text-purple-100 mb-2 flex items-center gap-2">
                  <AlertCircle className="h-5 w-5" />
                  {t('createShop.tips.title')}
                </h3>
                <ul className="text-sm text-purple-800 dark:text-purple-200 space-y-1">
                  <li>• {t('createShop.tips.clearName')}</li>
                  <li>• {t('createShop.tips.qualityLogo')}</li>
                  <li>• {t('createShop.tips.attractivePhotos')}</li>
                  <li>• {t('createShop.tips.detailedDescription')}</li>
                  <li>• {t('createShop.tips.reliableContact')}</li>
                </ul>
              </div>
              
              <form onSubmit={handleSubmit}>
                <div className="space-y-6">
                  <div className="space-y-2 mb-6">
                    <Label
                      htmlFor="name"
                      className={`w-full text-lg font-bold flex items-center justify-between gap-2 ${isRTL ? 'text-right' : ''}`}
                    >
                      <div className={`flex items-center gap-2 ${isRTL ? 'order-2 justify-end' : ''}`}>
                        <Plus className="h-5 w-5 text-purple-600" />
                        <span className="text-slate-900 dark:text-white">
                          {t('createShop.shopInfo.name')} <span className="text-red-600">*</span>
                        </span>
                      </div>
                      <span
                        className={`text-sm font-medium px-2 py-0.5 rounded-md ${isRTL ? 'order-1' : ''} ${formData.name.length > SHOP_NAME_MAX_LENGTH - 10 ? 'bg-red-100 text-red-600 dark:bg-red-900/30 dark:text-red-300' : 'bg-slate-100 text-slate-600 dark:bg-slate-800 dark:text-slate-400'}`}
                      >
                        {formData.name.length}/{SHOP_NAME_MAX_LENGTH}
                      </span>
                    </Label>
                    <div className="relative group">
                      <Input
                        id="name"
                        name="name"
                        value={formData.name}
                        onChange={handleInputChange}
                        placeholder={t('createShop.shopInfo.namePlaceholder')}
                        required
                        maxLength={SHOP_NAME_MAX_LENGTH}
                        className={`${inputClassName} ${isRTL ? 'text-right' : ''}`}
                      />
                    </div>
                  </div>

                  <div className="space-y-2 mb-6">
                    <Label htmlFor="description" className="text-lg font-bold flex items-center gap-2">
                      <span className="text-slate-900 dark:text-white">
                        {t('createShop.shopInfo.description')} <span className="text-red-600">*</span>
                      </span>
                      <span className="text-sm font-medium text-slate-500 dark:text-slate-400">
                        {formData.description.length}/{SHOP_DESCRIPTION_MAX_LENGTH} {t('createShop.shopInfo.characters')}
                      </span>
                    </Label>
                    <Textarea
                      id="description"
                      name="description"
                      value={formData.description}
                      onChange={handleInputChange}
                      placeholder={t('createShop.shopInfo.descriptionPlaceholder')}
                      rows={6}
                      required
                      maxLength={SHOP_DESCRIPTION_MAX_LENGTH}
                      className={textareaClassName}
                    />
                  </div>

                  <div className="bg-white dark:bg-slate-800 p-6 rounded-2xl shadow-[0_8px_30px_rgb(0,0,0,0.04)] border border-slate-100 dark:border-slate-700 space-y-4 mb-6">
                    <div className="space-y-2">
                      <Label htmlFor="shopStatus" className="text-lg font-bold flex items-center gap-2">
                        <Store className="h-5 w-5 text-purple-600" />
                        <span className="text-slate-900 dark:text-white">{t('createShop.shopInfo.shopStatus')}</span>
                        <span className="ml-2 text-red-600 animate-pulse font-bold text-sm">
                          {t('createShop.form.required')}
                        </span>
                      </Label>
                      <div onClick={(e) => e.stopPropagation()}>
                        <Select onValueChange={(value) => {
                          logger.debug('ShopStatus select change:', value);
                          handleSelectChange('shopStatus', value);
                        }}>
                          <SelectTrigger className="text-base h-14 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-purple-500 focus:ring-4 focus:ring-purple-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-purple-300">
                            <SelectValue placeholder={t('createShop.shopInfo.selectShopStatus')} />
                          </SelectTrigger>
                          <SelectContent className="rounded-xl shadow-2xl border-slate-100 min-w-[240px] p-2">
                            {shopStatusOptions.map((option) => (
                              <SelectItem 
                                key={option.value} 
                                value={option.value} 
                                className="h-12 cursor-pointer transition-all duration-200 rounded-lg hover:bg-slate-50 dark:hover:bg-slate-800 focus:bg-slate-50 dark:focus:bg-slate-800 my-1"
                                onMouseEnter={() => setHoveredShopStatus(option.value)}
                                onMouseLeave={() => setHoveredShopStatus(null)}
                              >
                                <span className="font-medium text-base">{t(option.label)}</span>
                              </SelectItem>
                            ))}
                          </SelectContent>
                        </Select>
                      </div>
                    </div>
                  </div>

                  <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                    {/* Colonne gauche */}
                    <div className="space-y-6">
                      <div className={panelClassName}>
                      <div className={panelHeaderClassName}>
                        <div className={panelIconContainerClassName}>
                          <MapPin className={panelIconClassName} />
                        </div>
                        <div>
                          <h3 className={panelTitleClassName}>
                            {t('createShop.shopInfo.locationAsterisk')}
                          </h3>
                          <p className={panelSubTitleClassName}>{t('createShop.shopInfo.locationSubtitle')}</p>
                        </div>
                      </div>

                      <div className={panelContentClassName}>
                        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                          <div className={inputGroupClassName}>
                            <Label htmlFor="wilaya" className="text-base font-bold text-slate-800 mb-1 block">
                              {t('createShop.shopInfo.wilaya')} <span className="text-red-600">*</span>
                            </Label>
                            <div onClick={(e) => e.stopPropagation()}>
                              <Select
                                value={formData.wilaya}
                                onValueChange={(value) => {
                                  logger.debug('Wilaya select change:', value);
                                  setFormData(prev => ({ ...prev, wilaya: value, commune: '' }));
                                }}
                                required
                              >
                                <SelectTrigger className={inputCompactClassName}>
                                  <SelectValue placeholder={t('createShop.shopInfo.selectWilaya')} />
                                </SelectTrigger>
                                <SelectContent>
                                  {wilayas.map(wilaya => (
                                    <SelectItem key={wilaya.code} value={wilaya.name}>
                                      {wilaya.code.toString().padStart(2, '0')} - {language === 'ar' ? wilaya.name_ar : wilaya.name}
                                    </SelectItem>
                                  ))}
                                </SelectContent>
                              </Select>
                            </div>
                          </div>

                          <div className={inputGroupClassName}>
                            <Label htmlFor="commune" className="text-base font-bold text-slate-800 mb-1 block">
                              {t('createShop.shopInfo.commune')}
                            </Label>
                            <div onClick={(e) => e.stopPropagation()}>
                              <Select
                                value={formData.commune}
                                onValueChange={(value) => handleSelectChange('commune', value)}
                                disabled={!formData.wilaya}
                              >
                                <SelectTrigger className={inputCompactClassName}>
                                  <SelectValue placeholder={t('createShop.shopInfo.selectCommune')} />
                                </SelectTrigger>
                                <SelectContent>
                                  {availableCommunes.map((commune) => (
                                    <SelectItem key={commune.fr} value={commune.fr}>
                                      {language === 'ar' ? commune.ar : commune.fr}
                                    </SelectItem>
                                  ))}
                                </SelectContent>
                              </Select>
                            </div>
                          </div>
                        </div>

                        <div className={inputGroupClassName}>
                          <Label htmlFor="address" className="text-base font-bold text-slate-800 mb-1 block">
                            {t('createShop.shopInfo.address')}
                          </Label>
                          <div className="relative">
                            <MapPin className="absolute left-3 top-1/2 transform -translate-y-1/2 h-5 w-5 text-purple-400" />
                            <Input
                              id="address"
                              name="address"
                              value={formData.address}
                              onChange={handleInputChange}
                              placeholder={t('createShop.shopInfo.addressPlaceholder')}
                              className={`${inputCompactClassName} pl-10`}
                            />
                          </div>
                          
                          <div className="mt-6 pt-4 border-t border-slate-200/60">
                             <Label className="text-sm font-medium mb-3 block flex items-center gap-2 text-purple-700">
                                <MapPin className="h-4 w-4" />
                                {t('professions.improvements.geolocalization') || 'Géolocalisation précise'}
                             </Label>
                             <LocationPicker 
                                initialLat={formData.gpsCoordinates.lat || 36.75} 
                                initialLng={formData.gpsCoordinates.lng || 3.06}
                                onLocationSelect={handleLocationSelect} 
                             />
                             <p className="text-xs text-slate-500 mt-2 flex items-center gap-1">
                               <MapPin className="h-3 w-3" />
                               {formData.gpsCoordinates.lat !== 0 
                                 ? `${formData.gpsCoordinates.lat.toFixed(6)}, ${formData.gpsCoordinates.lng.toFixed(6)}` 
                                 : t('professions.improvements.geolocalizationDesc')}
                             </p>
                          </div>
                        </div>

                        <div className={inputGroupClassName}>
                          <Label htmlFor="postalCode" className="text-base font-bold text-slate-800 mb-1 block">
                            {t('createShop.shopInfo.postalCode')}
                          </Label>
                          <div className="relative">
                            <MapPin className="absolute left-3 top-1/2 transform -translate-y-1/2 h-5 w-5 text-purple-400" />
                            <Input
                              id="postalCode"
                              name="postalCode"
                              value={formData.postalCode}
                              onChange={handleInputChange}
                              placeholder={t('createShop.shopInfo.postalCodePlaceholder')}
                              className={`${inputCompactClassName} pl-10`}
                            />
                          </div>
                        </div>
                      </div>
                    </div>

                    {/* Numéros de téléphone */}
                    <div className={panelClassName}>
                      <div className={panelHeaderClassName}>
                        <div className={panelIconContainerClassName}>
                          <Phone className={panelIconClassName} />
                        </div>
                        <div>
                          <h3 className={panelTitleClassName}>
                            {t('createShop.shopInfo.contactTitle')}
                          </h3>
                          <p className={panelSubTitleClassName}>{t('createShop.shopInfo.contactSubtitle')}</p>
                        </div>
                      </div>
                      
                      <div className={panelContentClassName}>
                        <div className={inputGroupClassName}>
                          <Label className="text-base font-bold text-slate-800 mb-1 block">
                             {t('createShop.shopInfo.phoneNumbers')} <span className="text-red-600">*</span>
                          </Label>
                          <div className="space-y-3">
                            {formData.phoneNumbers.map((phone, index) => (
                              <div key={index} className="flex items-center gap-3">
                                <div className="relative flex-1">
                                  <Phone className="absolute left-3 top-1/2 transform -translate-y-1/2 h-5 w-5 text-purple-400" />
                                  <Input
                                    value={phone}
                                    onChange={(e) => handlePhoneChange(index, e.target.value)}
                                    placeholder={t('createShop.shopInfo.phonePlaceholder')}
                                    required={index === 0}
                                    className={`pl-10 ${inputCompactClassName} ${index === 0 ? 'bg-white' : ''}`}
                                  />
                                </div>
                                {formData.phoneNumbers.length > 1 && (
                                  <Button
                                    type="button"
                                    variant="outline"
                                    size="icon"
                                    onClick={() => removePhoneField(index)}
                                    className="h-12 w-12 rounded-xl border-slate-200 hover:bg-red-50 hover:border-red-200 hover:text-red-600 transition-all"
                                  >
                                    ×
                                  </Button>
                                )}
                              </div>
                            ))}
                          </div>
                          
                          <Button
                            type="button"
                            variant="outline"
                            onClick={addPhoneField}
                            disabled={formData.phoneNumbers.length >= MAX_PHONE_FIELDS}
                            className="mt-3 w-full h-10 rounded-lg border-dashed border-slate-300 text-slate-600 hover:border-purple-400 hover:text-purple-700 hover:bg-purple-50 transition-colors text-sm font-medium"
                          >
                            <Plus className="h-4 w-4 mr-2" />
                            {t('createShop.shopInfo.addPhone')}
                          </Button>
                        </div>

                        <div className={inputGroupClassName}>
                          <Label htmlFor="landlinePhone" className="text-base font-bold text-slate-800 mb-1 block">
                            {t('createShop.shopInfo.landlineOptional')}
                          </Label>
                          <div className="relative">
                            <Phone className="absolute left-3 top-1/2 transform -translate-y-1/2 h-5 w-5 text-purple-400" />
                            <Input
                              id="landlinePhone"
                              name="landlinePhone"
                              type="tel"
                              value={formData.landlinePhone}
                              onChange={handleInputChange}
                              placeholder={t('createShop.shopInfo.landlinePhonePlaceholder')}
                              className={`pl-10 ${inputCompactClassName}`}
                            />
                          </div>
                        </div>
                      </div>
                    </div>

                    <div className={panelClassName}>
                      <div className={panelHeaderClassName}>
                        <div className={panelIconContainerClassName}>
                          <Store className={panelIconClassName} />
                        </div>
                        <div>
                          <h3 className={panelTitleClassName}>
                            {t('createShop.shopInfo.socialMedia')}
                          </h3>
                          <p className={panelSubTitleClassName}>{t('createShop.shopInfo.socialMediaSubtitle')}</p>
                        </div>
                      </div>
                      <div className={panelContentClassName}>
                        <div className="space-y-2">
                          <div className={inputGroupTightClassName}>
                            <Label htmlFor="facebook" className="text-base font-medium flex items-center gap-2">
                              <Facebook className="h-5 w-5" style={{ color: '#1877F2' }} />
                              {t('createShop.shopInfo.facebook')}
                            </Label>
                            <Input id="facebook" value={formData.socialMedia.facebook} onChange={(e) => _handleNestedChange('socialMedia', 'facebook', e.target.value)} placeholder={t('createShop.shopInfo.socialPlaceholder')} className={inputTightClassName} />
                          </div>
                          <div className={inputGroupTightClassName}>
                            <Label htmlFor="instagram" className="text-base font-medium flex items-center gap-2">
                              <Instagram className="h-5 w-5" style={{ color: '#E4405F' }} />
                              {t('createShop.shopInfo.instagram')}
                            </Label>
                            <Input id="instagram" value={formData.socialMedia.instagram} onChange={(e) => _handleNestedChange('socialMedia', 'instagram', e.target.value)} placeholder={t('createShop.shopInfo.socialPlaceholder')} className={inputTightClassName} />
                          </div>
                          <div className={inputGroupTightClassName}>
                            <Label htmlFor="twitter" className="text-base font-medium flex items-center gap-2">
                              <Twitter className="h-5 w-5" style={{ color: '#1DA1F2' }} />
                              {t('createShop.shopInfo.twitter')}
                            </Label>
                            <Input id="twitter" value={formData.socialMedia.twitter} onChange={(e) => _handleNestedChange('socialMedia', 'twitter', e.target.value)} placeholder={t('createShop.shopInfo.socialPlaceholder')} className={inputTightClassName} />
                          </div>
                          <div className={inputGroupTightClassName}>
                            <Label htmlFor="linkedin" className="text-base font-medium flex items-center gap-2">
                              <Linkedin className="h-5 w-5" style={{ color: '#0A66C2' }} />
                              {t('createShop.shopInfo.linkedin')}
                            </Label>
                            <Input id="linkedin" value={formData.socialMedia.linkedin} onChange={(e) => _handleNestedChange('socialMedia', 'linkedin', e.target.value)} placeholder={t('createShop.shopInfo.socialPlaceholder')} className={inputTightClassName} />
                          </div>
                          <div className={inputGroupTightClassName}>
                            <Label htmlFor="youtube" className="text-base font-medium flex items-center gap-2">
                              <Youtube className="h-5 w-5" style={{ color: '#FF0000' }} />
                              {t('createShop.shopInfo.youtube')}
                            </Label>
                            <Input id="youtube" value={formData.socialMedia.youtube} onChange={(e) => _handleNestedChange('socialMedia', 'youtube', e.target.value)} placeholder={t('createShop.shopInfo.socialPlaceholder')} className={inputTightClassName} />
                          </div>
                        </div>
                      </div>
                    </div>

                    <div className={panelClassName}>
                      <div className={panelHeaderClassName}>
                        <div className={panelIconContainerClassName}>
                          <Clock className={panelIconClassName} />
                        </div>
                        <div className="flex-1">
                          <h3 className={panelTitleClassName}>
                            {t('createShop.shopInfo.openingHours')}
                          </h3>
                          <p className={`${panelSubTitleClassName} whitespace-nowrap`}>{t('createShop.shopInfo.openingHoursSubtitle')}</p>
                          <Button 
                            type="button" 
                            variant="outline" 
                            size="sm" 
                            onClick={applySaturdayToAll}
                            className="mt-2 text-xs h-8 gap-1 bg-purple-50 text-purple-700 border-purple-200 hover:bg-purple-100 whitespace-nowrap"
                            title={t('createShop.shopInfo.applySaturdayToAll')}
                          >
                            <Copy className="h-3 w-3" />
                            <span>{t('createShop.shopInfo.applySaturdayToAll')}</span>
                          </Button>
                        </div>
                      </div>

                      <div className={panelContentClassName}>
                        <div className="grid grid-cols-3 gap-2 text-sm text-gray-500 mb-2 font-bold px-3 uppercase tracking-wider">
                          <div>{t('createShop.shopInfo.day')}</div>
                          <div>{t('createShop.shopInfo.open')}</div>
                          <div>{t('createShop.shopInfo.close')}</div>
                        </div>
                        <div className="space-y-1">
                          <div className={`grid grid-cols-3 gap-2 items-center ${panelItemTightClassName}`}>
                            <div className="text-base font-bold text-slate-700 dark:text-slate-200">{t('createShop.shopInfo.days.saturday')}</div>
                            <Input type="time" value={formData.openingHours.saturday.open} onChange={(e) => _handleDoubleNestedChange('openingHours', 'saturday', 'open', e.target.value)} className={inputTightClassName} />
                            <Input type="time" value={formData.openingHours.saturday.close} onChange={(e) => _handleDoubleNestedChange('openingHours', 'saturday', 'close', e.target.value)} className={inputTightClassName} />
                          </div>
                          <div className={`grid grid-cols-3 gap-2 items-center ${panelItemTightClassName}`}>
                            <div className="text-base font-bold text-slate-700 dark:text-slate-200">{t('createShop.shopInfo.days.sunday')}</div>
                            <Input type="time" value={formData.openingHours.sunday.open} onChange={(e) => _handleDoubleNestedChange('openingHours', 'sunday', 'open', e.target.value)} className={inputTightClassName} />
                            <Input type="time" value={formData.openingHours.sunday.close} onChange={(e) => _handleDoubleNestedChange('openingHours', 'sunday', 'close', e.target.value)} className={inputTightClassName} />
                          </div>
                          <div className={`grid grid-cols-3 gap-2 items-center ${panelItemTightClassName}`}>
                            <div className="text-base font-bold text-slate-700 dark:text-slate-200">{t('createShop.shopInfo.days.monday')}</div>
                            <Input type="time" value={formData.openingHours.monday.open} onChange={(e) => _handleDoubleNestedChange('openingHours', 'monday', 'open', e.target.value)} className={inputTightClassName} />
                            <Input type="time" value={formData.openingHours.monday.close} onChange={(e) => _handleDoubleNestedChange('openingHours', 'monday', 'close', e.target.value)} className={inputTightClassName} />
                          </div>
                          <div className={`grid grid-cols-3 gap-2 items-center ${panelItemTightClassName}`}>
                            <div className="text-base font-bold text-slate-700 dark:text-slate-200">{t('createShop.shopInfo.days.tuesday')}</div>
                            <Input type="time" value={formData.openingHours.tuesday.open} onChange={(e) => _handleDoubleNestedChange('openingHours', 'tuesday', 'open', e.target.value)} className={inputTightClassName} />
                            <Input type="time" value={formData.openingHours.tuesday.close} onChange={(e) => _handleDoubleNestedChange('openingHours', 'tuesday', 'close', e.target.value)} className={inputTightClassName} />
                          </div>
                          <div className={`grid grid-cols-3 gap-2 items-center ${panelItemTightClassName}`}>
                            <div className="text-base font-bold text-slate-700 dark:text-slate-200">{t('createShop.shopInfo.days.wednesday')}</div>
                            <Input type="time" value={formData.openingHours.wednesday.open} onChange={(e) => _handleDoubleNestedChange('openingHours', 'wednesday', 'open', e.target.value)} className={inputTightClassName} />
                            <Input type="time" value={formData.openingHours.wednesday.close} onChange={(e) => _handleDoubleNestedChange('openingHours', 'wednesday', 'close', e.target.value)} className={inputTightClassName} />
                          </div>
                          <div className={`grid grid-cols-3 gap-2 items-center ${panelItemTightClassName}`}>
                            <div className="text-base font-bold text-slate-700 dark:text-slate-200">{t('createShop.shopInfo.days.thursday')}</div>
                            <Input type="time" value={formData.openingHours.thursday.open} onChange={(e) => _handleDoubleNestedChange('openingHours', 'thursday', 'open', e.target.value)} className={inputTightClassName} />
                            <Input type="time" value={formData.openingHours.thursday.close} onChange={(e) => _handleDoubleNestedChange('openingHours', 'thursday', 'close', e.target.value)} className={inputTightClassName} />
                          </div>
                          <div className={`grid grid-cols-3 gap-2 items-center ${panelItemTightClassName}`}>
                            <div className="text-base font-bold text-slate-700 dark:text-slate-200">{t('createShop.shopInfo.days.friday')}</div>
                            <Input type="time" value={formData.openingHours.friday.open} onChange={(e) => _handleDoubleNestedChange('openingHours', 'friday', 'open', e.target.value)} className={inputTightClassName} />
                            <Input type="time" value={formData.openingHours.friday.close} onChange={(e) => _handleDoubleNestedChange('openingHours', 'friday', 'close', e.target.value)} className={inputTightClassName} />
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  
                    {/* Colonne droite */}
                  <div className="space-y-6">
                    <div className="flex flex-col sm:flex-row gap-3">
                      <Button
                        type="button"
                        variant="secondary"
                        onClick={handleReset}
                        className="flex-1 gap-2 h-12 rounded-full bg-slate-200 dark:bg-slate-700 hover:bg-slate-300 dark:hover:bg-slate-600 text-slate-900 dark:text-white shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_10px_18px_rgba(15,23,42,0.16)] hover:shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_14px_22px_rgba(15,23,42,0.18)] active:translate-y-0.5 active:shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_6px_14px_rgba(15,23,42,0.14)] transition-all duration-300"
                      >
                        <Trash2 className="h-5 w-5" />
                        {(() => { const key = 'createShop.resetButton'; const s = t(key); return s && s !== key ? s : 'Réinitialiser'; })()}
                      </Button>
                      <Button
                        type="button"
                        variant="secondary"
                        onClick={handleManualSave}
                        className="flex-1 gap-2 h-12 rounded-full bg-slate-200 dark:bg-slate-700 hover:bg-slate-300 dark:hover:bg-slate-600 text-slate-900 dark:text-white shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_10px_18px_rgba(15,23,42,0.16)] hover:shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_14px_22px_rgba(15,23,42,0.18)] active:translate-y-0.5 active:shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_6px_14px_rgba(15,23,42,0.14)] transition-all duration-300"
                      >
                        <Save className="h-5 w-5" />
                        {(() => { const key = 'createShop.saveButton'; const s = t(key); return s && s !== key ? s : 'Sauvegarder'; })()}
                      </Button>
                    </div>

                    {/* Options */}
                    <div className={panelClassName}>
                      <div className={panelHeaderClassName}>
                        <div className={panelIconContainerClassName}>
                          <Star className={panelIconClassName} />
                        </div>
                        <div>
                          <h3 className={panelTitleClassName}>
                            {t('createShop.options.options')}
                          </h3>
                          <p className={panelSubTitleClassName}>{t('createShop.options.panelSubtitle')}</p>
                        </div>
                      </div>
                      <div className={panelContentClassName}>
                        <div className={`flex items-center justify-between ${panelItemClassName}`}>
                          <div>
                            <Label htmlFor="isOnline" className="text-lg font-bold cursor-pointer">
                              <span className="text-slate-900 dark:text-slate-100">{t('createShop.options.isOnline')}</span>
                            </Label>
                            <p className="text-sm text-slate-600 dark:text-slate-300">
                              <Badge variant="secondary" className="text-xs mt-1">
                                <Store className="h-3 w-3 mr-1" />
                                {t('createShop.options.isOnlineBadge')}
                              </Badge>
                            </p>
                          </div>
                          <Switch
                            id="isOnline"
                            checked={formData.isOnline}
                            onCheckedChange={(checked) => {
                              logger.debug('isOnline switch changed:', checked);
                              setFormData(prev => ({ ...prev, isOnline: checked === true }));
                            }}
                            className="data-[state=checked]:bg-purple-600 data-[state=unchecked]:bg-slate-400"
                          />
                        </div>

                        <div className={`flex items-center justify-between ${panelItemClassName}`}>
                          <div>
                            <Label htmlFor="isPhysical" className="text-lg font-bold cursor-pointer">
                              <span className="text-slate-900 dark:text-slate-100">{t('createShop.options.hasPhysicalShop')}</span>
                            </Label>
                            <p className="text-sm text-slate-600 dark:text-slate-300">
                              <Badge variant="secondary" className="text-xs mt-1">
                                <MapPin className="h-3 w-3 mr-1" />
                                {t('createShop.options.hasPhysicalShopBadge')}
                              </Badge>
                            </p>
                          </div>
                          <Switch
                            id="isPhysical"
                            checked={formData.isPhysical}
                            onCheckedChange={(checked) => {
                              logger.debug('isPhysical switch changed:', checked);
                              setFormData(prev => ({ ...prev, isPhysical: checked === true }));
                            }}
                            className="data-[state=checked]:bg-purple-600 data-[state=unchecked]:bg-slate-400"
                          />
                        </div>
                      </div>
                    </div>

                    {/* Logo */}
                    <div className={panelClassName}>
                      <div className={panelHeaderClassName}>
                        <div className={panelIconContainerClassName}>
                          <Store className={panelIconClassName} />
                        </div>
                        <div>
                          <h3 className={panelTitleClassName}>
                             {t('createShop.shopInfo.logo')} <span className="text-red-600">*</span>
                          </h3>
                          <p className={panelSubTitleClassName}>{t('createShop.shopInfo.logoSubtitle')}</p>
                        </div>
                      </div>
                      
                      <div className={panelContentClassName}>
                        <div className={inputGroupClassName}>
                          <input
                            type="file"
                            accept="image/*"
                            onChange={handleLogoUpload}
                            className="hidden"
                            id="logo-upload"
                          />
                        <label
                          htmlFor="logo-upload"
                          className={uploadBoxClassName}
                        >
                          {logoFile ? (
                            <div className="text-center">
                              <img
                                src={URL.createObjectURL(logoFile)}
                                alt="Logo preview"
                                className="mx-auto h-20 w-20 object-cover rounded-xl mb-2"
                              />
                              <span className="text-sm text-slate-700 dark:text-slate-200">
                                {logoFile.name}
                              </span>
                            </div>
                          ) : (
                            <div className="text-center">
                              <Upload className="mx-auto h-8 w-8 text-gray-400" />
                              <span className="mt-2 block text-sm text-slate-700 dark:text-slate-200">
                                {t('createShop.shopInfo.addLogo')}
                              </span>
                            </div>
                          )}
                        </label>
                      </div>
                    </div>
                  </div>

                    {/* Bannière */}
                    <div className={panelClassName}>
                      <div className={panelHeaderClassName}>
                        <div className={panelIconContainerClassName}>
                          <Store className={panelIconClassName} />
                        </div>
                        <div>
                          <h3 className={panelTitleClassName}>
                            {t('createShop.shopInfo.banner')}
                          </h3>
                          <p className={panelSubTitleClassName}>{t('createShop.shopInfo.bannerSubtitle')}</p>
                        </div>
                      </div>
                      <div className={panelContentClassName}>
                        <div className={inputGroupClassName}>
                          <input
                            type="file"
                            accept="image/*"
                            onChange={handleBannerUpload}
                            className="hidden"
                            id="banner-upload"
                          />
                          <label
                            htmlFor="banner-upload"
                            className={uploadBoxClassName}
                          >
                            {bannerFile ? (
                              <div className="text-center">
                                <img
                                  src={URL.createObjectURL(bannerFile)}
                                  alt="Banner preview"
                                  className="mx-auto h-20 w-32 object-cover rounded-xl mb-2"
                                />
                                <span className="text-sm text-slate-700 dark:text-slate-200 font-medium">
                                  {bannerFile.name}
                                </span>
                              </div>
                            ) : (
                              <div className="text-center">
                                <Upload className="mx-auto h-8 w-8 text-purple-600 dark:text-purple-400 mb-2" />
                                <span className="block text-sm text-slate-700 dark:text-slate-200 font-bold">
                                  {t('createShop.shopInfo.addBanner')}
                                </span>
                                <span className="text-xs text-slate-500 dark:text-slate-400 mt-1 block">{t('createShop.shopInfo.bannerRecommendedFormat')}</span>
                              </div>
                            )}
                          </label>
                        </div>
                      </div>
                    </div>

                    {/* Images des produits */}
                    <div className={panelClassName}>
                      <div className={panelHeaderClassName}>
                        <div className={panelIconContainerClassName}>
                          <Camera className={panelIconClassName} />
                        </div>
                        <div>
                          <h3 className={panelTitleClassName}>
                            {t('createShop.shopInfo.productImages')}
                          </h3>
                          <p className={panelSubTitleClassName}>{t('createShop.shopInfo.productImagesSubtitle')}</p>
                        </div>
                      </div>
                      <div className={panelContentClassName}>
                        <div className={inputGroupClassName}>
                          <input
                            type="file"
                            multiple
                            accept="image/*"
                            onChange={handleProductImagesUpload}
                            className="hidden"
                            id="product-images-upload"
                          />
                          <label
                            htmlFor="product-images-upload"
                            className={uploadBoxClassName}
                          >
                            <div className="text-center">
                              <Upload className="mx-auto h-8 w-8 text-purple-600 dark:text-purple-400 mb-2" />
                              <span className="block text-sm text-slate-700 dark:text-slate-200 font-bold">
                                {t('createShop.shopInfo.addImages')}
                              </span>
                            </div>
                          </label>
                        </div>
                       
                        {productFiles.length > 0 && (
                          <div className="mt-4 grid grid-cols-4 gap-4">
                            {productFiles.map((file, index) => (
                              <div key={index} className="relative group">
                                <img
                                  src={URL.createObjectURL(file)}
                                  alt={`Product ${index + 1}`}
                                  className="w-full h-24 object-cover rounded-xl border border-slate-200 dark:border-slate-700 shadow-sm transition-transform group-hover:scale-105"
                                />
                                <button
                                  type="button"
                                  onClick={() => removeProductImage(index)}
                                  className="absolute -top-2 -right-2 bg-red-600 hover:bg-red-700 text-white rounded-full w-7 h-7 flex items-center justify-center text-sm shadow-lg transition-all transform hover:scale-110"
                                >
                                  ×
                                </button>
                              </div>
                            ))}
                          </div>
                        )}
                      </div>
                    </div>

                    {/* Vidéos des produits */}
                    {isVideoEnabled && (
                      <div className={panelClassName}>
                        <div className={panelHeaderClassName}>
                          <div className={panelIconContainerClassName}>
                            <Video className={panelIconClassName} />
                          </div>
                          <div>
                            <h3 className={panelTitleClassName}>
                              {t('createShop.shopInfo.productVideos')}
                            </h3>
                            <p className={panelSubTitleClassName}>{t('createShop.shopInfo.productVideosSubtitle')}</p>
                          </div>
                        </div>
                        <div className={panelContentClassName}>
                          <div className={inputGroupClassName}>
                            <input
                              type="file"
                              multiple
                              accept="video/*"
                              onChange={handleProductVideosUpload}
                              className="hidden"
                              id="product-videos-upload"
                            />
                            <label
                              htmlFor="product-videos-upload"
                              className={uploadBoxClassName}
                            >
                              <div className="text-center">
                                <Upload className="mx-auto h-8 w-8 text-purple-600 dark:text-purple-400 mb-2" />
                                <span className="block text-sm text-slate-700 dark:text-slate-200 font-bold">
                                  {t('createShop.shopInfo.addVideos')}
                                </span>
                              </div>
                            </label>
                          </div>

                          {videoFiles.length > 0 && (
                            <div className="mt-4 grid grid-cols-2 gap-4">
                              {videoFiles.map((file, index) => (
                                <div key={index} className="relative group">
                                  <video
                                    src={URL.createObjectURL(file)}
                                    className="w-full h-32 object-cover rounded-xl border border-slate-200 dark:border-slate-700 shadow-sm"
                                    controls
                                  />
                                  <button
                                    type="button"
                                    onClick={() => removeProductVideo(index)}
                                    className="absolute -top-2 -right-2 bg-red-600 hover:bg-red-700 text-white rounded-full w-7 h-7 flex items-center justify-center text-sm shadow-lg transition-all transform hover:scale-110"
                                  >
                                    ×
                                  </button>
                                </div>
                              ))}
                            </div>
                          )}
                        </div>
                      </div>
                    )}

                    <div className={panelClassName}>
                      <div className={panelHeaderClassName}>
                        <div className={panelIconContainerClassName}>
                          <Globe className={panelIconClassName} />
                        </div>
                        <div>
                          <h3 className={panelTitleClassName}>
                            {t('createShop.shopInfo.website')}
                          </h3>
                          <p className={panelSubTitleClassName}>{t('createShop.shopInfo.websiteSubtitle')}</p>
                        </div>
                      </div>
                      <div className={panelContentClassName}>
                        <div className={inputGroupClassName}>
                          <Label htmlFor="website" className="text-base font-bold text-slate-700 dark:text-slate-200 mb-2 block">
                            {t('createShop.shopInfo.website')}
                          </Label>
                          <div className="relative">
                            <Globe className="absolute left-3 top-1/2 transform -translate-y-1/2 h-5 w-5 text-gray-400" />
                            <Input
                              id="website"
                              name="website"
                              value={formData.website}
                              onChange={handleInputChange}
                              placeholder={t('createShop.shopInfo.websitePlaceholder')}
                              className={`${inputCompactClassName} pl-10`}
                            />
                          </div>
                        </div>
                      </div>
                    </div>

                    <div className={panelClassName}>
                      <div className={panelHeaderClassName}>
                        <div className={panelIconContainerClassName}>
                          <Globe className={panelIconClassName} />
                        </div>
                        <div>
                          <h3 className={panelTitleClassName}>
                            {t('createShop.shopInfo.usefulLinks')}
                          </h3>
                          <p className={panelSubTitleClassName}>{t('createShop.shopInfo.usefulLinksSubtitle')}</p>
                        </div>
                      </div>
                      <div className={panelContentClassName}>
                        <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                          <div className={inputGroupClassName}>
                            <Label htmlFor="useful-link-1" className="text-base font-bold text-slate-700 dark:text-slate-200 mb-2 block">{t('createShop.shopInfo.usefulLink1')}</Label>
                            <div className="relative">
                              <Globe className="absolute left-3 top-1/2 transform -translate-y-1/2 h-5 w-5 text-gray-400" />
                              <Input
                                id="useful-link-1"
                                value={formData.usefulLinks[0] || ''}
                                onChange={(e) => handleUsefulLinkChange(0, e.target.value)}
                                placeholder={t('createShop.shopInfo.usefulLinkPlaceholder')}
                                className={`${inputCompactClassName} pl-10`}
                              />
                            </div>
                          </div>
                          <div className={inputGroupClassName}>
                            <Label htmlFor="useful-link-2" className="text-base font-bold text-slate-700 dark:text-slate-200 mb-2 block">{t('createShop.shopInfo.usefulLink2')}</Label>
                            <div className="relative">
                              <Globe className="absolute left-3 top-1/2 transform -translate-y-1/2 h-5 w-5 text-gray-400" />
                              <Input
                                id="useful-link-2"
                                value={formData.usefulLinks[1] || ''}
                                onChange={(e) => handleUsefulLinkChange(1, e.target.value)}
                                placeholder={t('createShop.shopInfo.usefulLinkPlaceholder')}
                                className={`${inputCompactClassName} pl-10`}
                              />
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>

                    {/* Livraison */}
                    <div className={panelClassName}>
                      <div className={panelHeaderClassName}>
                        <div className={panelIconContainerClassName}>
                          <Truck className={panelIconClassName} />
                        </div>
                        <div>
                          <h3 className={panelTitleClassName}>
                            {t('createAd.delivery') || 'Livraison'}
                          </h3>
                          <p className={panelSubTitleClassName}>{t('createShop.options.deliverySubtitle')}</p>
                        </div>
                      </div>
                      <div className={panelContentClassName}>
                        <div className={panelItemClassName}>
                          <div className="space-y-4">
                            <div className="space-y-2">
                              <Label className="text-base font-semibold text-slate-700 dark:text-slate-300">{t('createAd.delivery') || 'Livraison'}</Label>
                              <div onClick={(e) => e.stopPropagation()}>
                                <Select
                                  onValueChange={(value) => {
                                    const nextMethod =
                                      value === 'hand_to_hand' || value === 'delivery_agency' || value === 'mobile_courier'
                                        ? value
                                        : 'hand_to_hand';
                                    setFormData(prev => ({
                                      ...prev,
                                      deliveryOptions: {
                                        ...prev.deliveryOptions,
                                        method: nextMethod,
                                        available: nextMethod !== 'hand_to_hand',
                                        locationName: nextMethod === 'delivery_agency' ? prev.deliveryOptions.locationName : '',
                                      },
                                    }));
                                  }}
                                  value={formData.deliveryOptions.method as 'hand_to_hand' | 'delivery_agency' | 'mobile_courier'}
                                >
                                  <SelectTrigger className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-purple-500 focus:ring-4 focus:ring-purple-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-purple-300">
                                    <SelectValue placeholder={t('createAd.delivery.select') || 'Choisir une option'} />
                                  </SelectTrigger>
                                  <SelectContent className="rounded-xl shadow-xl border-slate-100">
                                    <SelectItem value="hand_to_hand">{t('createAd.delivery.methods.handToHand') || 'Remise en main propre'}</SelectItem>
                                    <SelectItem value="delivery_agency">{t('createAd.delivery.methods.deliveryAgency') || 'Agence de livraison'}</SelectItem>
                                    <SelectItem value="mobile_courier">{t('createAd.delivery.methods.mobileCourier') || 'Livreur ambulant'}</SelectItem>
                                  </SelectContent>
                                </Select>
                              </div>
                            </div>

                            {formData.deliveryOptions.method === 'delivery_agency' && (
                              <div className="space-y-2">
                                <Label htmlFor="deliveryLocationName" className="text-base font-semibold text-slate-700 dark:text-slate-300">
                                  {t('createAd.delivery.agencyName') || "Nom de l'agence"}
                                </Label>
                                <Input
                                  id="deliveryLocationName"
                                  value={formData.deliveryOptions.locationName}
                                  onChange={(e) => _handleNestedChange('deliveryOptions', 'locationName', e.target.value)}
                                  placeholder={t('createAd.delivery.agencyPlaceholder') || "Ex: Yalidine, ZR Express..."}
                                  className="text-base h-12 rounded-xl border-2 border-slate-100 dark:border-slate-700 bg-slate-50 dark:bg-slate-900/50 focus:border-purple-500 focus:ring-4 focus:ring-purple-500/20 shadow-sm transition-all duration-300 hover:shadow-md hover:border-purple-300"
                                />
                              </div>
                            )}

                            {formData.deliveryOptions.method !== 'hand_to_hand' && (
                              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <div className="space-y-2">
                                  <Label htmlFor="deliveryPrice" className="text-base font-medium">{t('createShop.options.deliveryPrice')}</Label>
                                  <Input
                                    id="deliveryPrice"
                                    value={formData.deliveryOptions.fees}
                                    onChange={(e) => _handleNestedChange('deliveryOptions', 'fees', e.target.value)}
                                    placeholder={t('createShop.options.deliveryPricePlaceholder')}
                                    className={inputCompactClassName}
                                  />
                                </div>
                                <div className="space-y-2 md:col-span-2">
                                  <Label htmlFor="deliveryAdditionalInfo" className="text-base font-medium">{t('createShop.options.deliveryAdditionalInfo')}</Label>
                                  <Textarea
                                    id="deliveryAdditionalInfo"
                                    value={formData.deliveryOptions.additionalInfo || ''}
                                    onChange={(e) => _handleNestedChange('deliveryOptions', 'additionalInfo', e.target.value)}
                                    placeholder={t('createShop.options.deliveryAdditionalInfoPlaceholder')}
                                    className={textareaClassName}
                                  />
                                </div>
                              </div>
                            )}
                          </div>
                        </div>
                      </div>
                    </div>

                    {/* Modes de paiement */}
                    <div className={panelClassName}>
                      <div className={panelHeaderClassName}>
                        <div className={panelIconContainerClassName}>
                          <CreditCard className={panelIconClassName} />
                        </div>
                        <div>
                          <h3 className={panelTitleClassName}>
                            {t('createShop.options.paymentMethods')}
                          </h3>
                          <p className={panelSubTitleClassName}>{t('createShop.options.paymentMethodsSubtitle')}</p>
                        </div>
                      </div>
                      <div className={panelContentClassName}>
                        <div className={panelItemClassName}>
                          <div className="grid grid-cols-2 gap-4">
                            <div className="flex items-center justify-between gap-3">
                              <Label htmlFor="payment-cash" className="text-base font-medium cursor-pointer">
                                {t('createShop.options.payment.cash')}
                              </Label>
                              <Switch
                                id="payment-cash"
                                checked={formData.paymentMethods.cash}
                                onCheckedChange={(checked) => handlePaymentMethodToggle('cash', checked === true)}
                                className="data-[state=checked]:bg-purple-600 data-[state=unchecked]:bg-slate-400"
                              />
                            </div>
                            <div className="flex items-center justify-between gap-3">
                              <Label htmlFor="payment-card" className="text-base font-medium cursor-pointer">
                                {t('createShop.options.payment.card')}
                              </Label>
                              <Switch
                                id="payment-card"
                                checked={formData.paymentMethods.card}
                                onCheckedChange={(checked) => handlePaymentMethodToggle('card', checked === true)}
                                className="data-[state=checked]:bg-purple-600 data-[state=unchecked]:bg-slate-400"
                              />
                            </div>
                            <div className="flex items-center justify-between gap-3">
                              <Label htmlFor="payment-transfer" className="text-base font-medium cursor-pointer">
                                {t('createShop.options.payment.transfer')}
                              </Label>
                              <Switch
                                id="payment-transfer"
                                checked={formData.paymentMethods.transfer}
                                onCheckedChange={(checked) => handlePaymentMethodToggle('transfer', checked === true)}
                                className="data-[state=checked]:bg-purple-600 data-[state=unchecked]:bg-slate-400"
                              />
                            </div>
                            <div className="flex items-center justify-between gap-3">
                              <Label htmlFor="payment-check" className="text-base font-medium cursor-pointer">
                                {t('createShop.options.payment.check')}
                              </Label>
                              <Switch
                                id="payment-check"
                                checked={formData.paymentMethods.check}
                                onCheckedChange={(checked) => handlePaymentMethodToggle('check', checked === true)}
                                className="data-[state=checked]:bg-purple-600 data-[state=unchecked]:bg-slate-400"
                              />
                            </div>
                            <div className="flex items-center justify-between gap-3">
                              <Label htmlFor="payment-cod" className="text-base font-medium cursor-pointer">
                                {t('createShop.options.payment.cashOnDelivery')}
                              </Label>
                              <Switch
                                id="payment-cod"
                                checked={formData.paymentMethods.cashOnDelivery}
                                onCheckedChange={(checked) => handlePaymentMethodToggle('cashOnDelivery', checked === true)}
                                className="data-[state=checked]:bg-purple-600 data-[state=unchecked]:bg-slate-400"
                              />
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div className="border-t pt-8">
                  <div className="bg-slate-50 dark:bg-slate-900/30 border border-slate-200 dark:border-slate-800 rounded-xl p-4 mb-6">
                    <h3 className="font-semibold text-purple-900 mb-2 flex items-center gap-2">
                      <AlertCircle className="h-5 w-5" />
                      {t('createShop.help.title')}
                    </h3>
                    <div className="grid grid-cols-1 md:grid-cols-3 gap-4 text-sm">
                      <div>
                        <h4 className="font-semibold mb-2">{t('createShop.help.increasedVisibility.title')}</h4>
                        <p className="text-purple-800">
                          {t('createShop.help.increasedVisibility.description')}
                        </p>
                      </div>
                      <div>
                        <h4 className="font-semibold mb-2">{t('createShop.help.simplifiedManagement.title')}</h4>
                        <p className="text-purple-800">
                          {t('createShop.help.simplifiedManagement.description')}
                        </p>
                      </div>
                      <div>
                        <h4 className="font-semibold mb-2">{t('createShop.help.directContact.title')}</h4>
                        <p className="text-purple-800">
                          {t('createShop.help.directContact.description')}
                        </p>
                      </div>
                    </div>
                  </div>

                  <div className="flex flex-col md:flex-row gap-4">
                    <Button
                      type="button"
                      variant="outline"
                      onClick={() => {
                        if (confirm("Voulez-vous vraiment supprimer ce brouillon et annuler ?")) {
                          clearDraft();
                          navigate(getLocalizedPath('/'));
                        }
                      }}
                      className="flex-1 h-14 rounded-full border-2 border-red-100 dark:border-red-900/30 text-red-600 dark:text-red-400 hover:bg-red-50 dark:hover:bg-red-900/20 hover:border-red-200 dark:hover:border-red-800 shadow-[inset_0_2px_6px_rgba(255,255,255,0.6),0_10px_18px_rgba(15,23,42,0.14)] hover:shadow-[inset_0_2px_6px_rgba(255,255,255,0.6),0_14px_22px_rgba(15,23,42,0.16)] active:translate-y-0.5 active:shadow-[inset_0_2px_6px_rgba(255,255,255,0.6),0_6px_14px_rgba(15,23,42,0.12)] transition-all duration-300"
                    >
                      <div className="flex flex-col items-center gap-1">
                        <div className="flex items-center gap-2 font-bold">
                          <Trash2 className="h-4 w-4" />
                          {t('common.cancel')}
                        </div>
                        {lastSaved && (
                          <span className="text-[10px] opacity-70 font-normal">
                            Sauvegardé à {lastSaved.toLocaleTimeString([], { hour: '2-digit', minute: '2-digit' })}
                          </span>
                        )}
                      </div>
                    </Button>
                    <Button
                      type="button"
                      variant="secondary"
                      onClick={() => setShowPreview(true)}
                      className="flex-1 h-14 rounded-full bg-slate-100 dark:bg-slate-800 text-slate-700 dark:text-slate-200 hover:bg-slate-200 dark:hover:bg-slate-700 border-2 border-slate-200 dark:border-slate-700 shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_10px_18px_rgba(15,23,42,0.14)] hover:shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_14px_22px_rgba(15,23,42,0.16)] active:translate-y-0.5 active:shadow-[inset_0_2px_6px_rgba(255,255,255,0.7),0_6px_14px_rgba(15,23,42,0.12)] transition-all duration-300 font-bold"
                    >
                      <Eye className="mr-2 h-5 w-5" />
                      {(() => { const key = 'createShop.previewButton'; const s = t(key); return s && s !== key ? s : 'Prévisualiser'; })()}
                    </Button>
                    <Button
                      type="submit"
                      disabled={loading}
                      className="flex-[1.5] h-14 text-lg font-bold rounded-full bg-gradient-to-r from-purple-600 via-indigo-600 to-fuchsia-600 hover:from-purple-700 hover:via-indigo-700 hover:to-fuchsia-700 border-2 border-purple-400 dark:border-purple-800 shadow-[inset_0_2px_6px_rgba(255,255,255,0.4),0_18px_45px_-18px_rgba(79,70,229,0.65)] hover:shadow-[inset_0_2px_6px_rgba(255,255,255,0.4),0_22px_55px_-20px_rgba(79,70,229,0.75)] active:translate-y-0.5 active:shadow-[inset_0_2px_6px_rgba(255,255,255,0.4),0_12px_35px_-15px_rgba(79,70,229,0.6)] transition-all duration-300"
                    >
                      {loading && <Loader2 className="mr-2 h-5 w-5 animate-spin" />}
                      {t('createShop.createShop')}
                    </Button>
                  </div>
                </div>
              </div>
            </form>
            </div>
          </div>
        </div>
      </div>

      <Dialog open={showPreview} onOpenChange={setShowPreview}>
        <DialogContent className="max-w-4xl h-[90vh] p-0 overflow-hidden flex flex-col bg-slate-50 dark:bg-slate-950 border-none shadow-2xl">
          <DialogHeader className="p-6 pb-4 border-b border-slate-200 dark:border-slate-800 bg-white dark:bg-slate-900 z-10 shadow-sm">
            <DialogTitle className="text-2xl font-bold flex items-center gap-2 text-slate-800 dark:text-white">
              <div className="bg-purple-100 dark:bg-purple-900/30 p-2 rounded-lg">
                <Eye className="h-6 w-6 text-purple-600 dark:text-purple-400" />
              </div>
              {(() => { const key = 'createShop.previewTitle'; const s = t(key); return s && s !== key ? s : 'Prévisualisation'; })()}
            </DialogTitle>
          </DialogHeader>

          <ScrollArea className="flex-1 p-6">
            <div className="max-w-3xl mx-auto space-y-8 pb-10">
              <div className="bg-white dark:bg-slate-800 p-8 rounded-3xl shadow-xl border border-slate-100 dark:border-slate-700 relative overflow-hidden">
                <div className="absolute top-0 left-0 w-full h-2 bg-gradient-to-r from-purple-500 to-fuchsia-600"></div>
                <h1 className="text-2xl md:text-4xl font-extrabold text-slate-900 dark:text-white mb-4 leading-tight">
                  {formData.name || (() => { const key = 'createShop.previewNoName'; const s = t(key); return s && s !== key ? s : 'Nom de la boutique'; })()}
                </h1>
                <div className="flex flex-wrap items-center gap-3 text-sm font-medium text-slate-600 dark:text-slate-300">
                  <div className="flex items-center gap-2 bg-slate-100 dark:bg-slate-700/50 px-3 py-1.5 rounded-full">
                    <MapPin className="h-4 w-4 text-purple-500" />
                    {formData.wilaya || (() => { const key = 'createShop.previewLocation'; const s = t(key); return s && s !== key ? s : 'Wilaya'; })()}
                  </div>
                  {formData.shopStatus ? (
                    <div className="flex items-center gap-2 bg-slate-100 dark:bg-slate-700/50 px-3 py-1.5 rounded-full">
                      <Store className="h-4 w-4 text-fuchsia-500" />
                      {formData.shopStatus}
                    </div>
                  ) : null}
                </div>
                {formData.description ? (
                  <p className="mt-6 text-slate-700 dark:text-slate-200 whitespace-pre-wrap leading-relaxed">
                    {formData.description}
                  </p>
                ) : null}
              </div>

              {(logoFile || bannerFile || productFiles.length > 0) ? (
                <div className="bg-white dark:bg-slate-800 p-6 rounded-3xl shadow-xl border border-slate-100 dark:border-slate-700 space-y-4">
                  <div className="text-lg font-bold text-slate-900 dark:text-white">{(() => { const key = 'createShop.previewMedia'; const s = t(key); return s && s !== key ? s : 'Médias'; })()}</div>
                  <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                    {logoFile ? (
                      <div className="aspect-square rounded-2xl overflow-hidden bg-slate-100 dark:bg-slate-900 shadow-md border border-slate-200 dark:border-slate-700">
                        <img src={URL.createObjectURL(logoFile)} alt="Logo" className="w-full h-full object-cover" />
                      </div>
                    ) : null}
                    {bannerFile ? (
                      <div className="aspect-square rounded-2xl overflow-hidden bg-slate-100 dark:bg-slate-900 shadow-md border border-slate-200 dark:border-slate-700">
                        <img src={URL.createObjectURL(bannerFile)} alt="Bannière" className="w-full h-full object-cover" />
                      </div>
                    ) : null}
                    {productFiles.slice(0, 2).map((file, i) => (
                      <div key={`${file.name}-${i}`} className="aspect-square rounded-2xl overflow-hidden bg-slate-100 dark:bg-slate-900 shadow-md border border-slate-200 dark:border-slate-700">
                        <img src={URL.createObjectURL(file)} alt={`Produit ${i + 1}`} className="w-full h-full object-cover" />
                      </div>
                    ))}
                  </div>
                </div>
              ) : null}

              <div className="bg-white dark:bg-slate-800 p-6 rounded-3xl shadow-xl border border-slate-100 dark:border-slate-700">
                <div className="text-lg font-bold text-slate-900 dark:text-white mb-4">{(() => { const key = 'createShop.previewContact'; const s = t(key); return s && s !== key ? s : 'Contact'; })()}</div>
                <div className="space-y-3 text-slate-700 dark:text-slate-200">
                  {formData.phoneNumbers.filter(p => p.trim() !== '').length > 0 ? (
                    <div className="flex items-start gap-3">
                      <Phone className="h-5 w-5 text-purple-500 mt-0.5" />
                      <div className="space-y-1">
                        {formData.phoneNumbers.filter(p => p.trim() !== '').map((p, i) => (
                          <div key={`${p}-${i}`}>{p}</div>
                        ))}
                      </div>
                    </div>
                  ) : null}
                  {formData.landlinePhone ? (
                    <div className="flex items-start gap-3">
                      <Phone className="h-5 w-5 text-fuchsia-500 mt-0.5" />
                      <div>{formData.landlinePhone}</div>
                    </div>
                  ) : null}
                  {formData.website ? (
                    <div className="flex items-start gap-3">
                      <Globe className="h-5 w-5 text-indigo-500 mt-0.5" />
                      <div className="break-all">{formData.website}</div>
                    </div>
                  ) : null}
                  {formData.usefulLinks.filter(l => l.trim() !== '').length > 0 ? (
                    <div className="flex items-start gap-3">
                      <Globe className="h-5 w-5 text-slate-500 mt-0.5" />
                      <div className="space-y-1">
                        <div className="text-sm font-bold text-slate-900 dark:text-slate-100">
                          {t('createShop.shopInfo.usefulLinks')}
                        </div>
                        {formData.usefulLinks
                          .filter(l => l.trim() !== '')
                          .map((l, i) => (
                            <div key={`${l}-${i}`} className="break-all">
                              {l}
                            </div>
                          ))}
                      </div>
                    </div>
                  ) : null}
                  {formData.address ? (
                    <div className="flex items-start gap-3">
                      <MapPin className="h-5 w-5 text-purple-500 mt-0.5" />
                      <div className="break-words">{formData.address}{formData.postalCode ? `, ${formData.postalCode}` : ''}</div>
                    </div>
                  ) : null}
                </div>
              </div>

              {(formData.socialMedia.facebook || formData.socialMedia.instagram || formData.socialMedia.twitter || formData.socialMedia.linkedin || formData.socialMedia.youtube) ? (
                <div className="bg-white dark:bg-slate-800 p-6 rounded-3xl shadow-xl border border-slate-100 dark:border-slate-700">
                  <div className="text-lg font-bold text-slate-900 dark:text-white mb-4">{t('createShop.shopInfo.socialMedia')}</div>
                  <div className="space-y-2 text-slate-700 dark:text-slate-200">
                    {formData.socialMedia.facebook ? (
                      <div className="flex items-center gap-3">
                        <Facebook className="h-5 w-5" style={{ color: '#1877F2' }} />
                        <span className="break-all">{formData.socialMedia.facebook}</span>
                      </div>
                    ) : null}
                    {formData.socialMedia.instagram ? (
                      <div className="flex items-center gap-3">
                        <Instagram className="h-5 w-5" style={{ color: '#E4405F' }} />
                        <span className="break-all">{formData.socialMedia.instagram}</span>
                      </div>
                    ) : null}
                    {formData.socialMedia.twitter ? (
                      <div className="flex items-center gap-3">
                        <Twitter className="h-5 w-5" style={{ color: '#1DA1F2' }} />
                        <span className="break-all">{formData.socialMedia.twitter}</span>
                      </div>
                    ) : null}
                    {formData.socialMedia.linkedin ? (
                      <div className="flex items-center gap-3">
                        <Linkedin className="h-5 w-5" style={{ color: '#0A66C2' }} />
                        <span className="break-all">{formData.socialMedia.linkedin}</span>
                      </div>
                    ) : null}
                    {formData.socialMedia.youtube ? (
                      <div className="flex items-center gap-3">
                        <Youtube className="h-5 w-5" style={{ color: '#FF0000' }} />
                        <span className="break-all">{formData.socialMedia.youtube}</span>
                      </div>
                    ) : null}
                  </div>
                </div>
              ) : null}
            </div>
          </ScrollArea>

          <div className="p-6 pt-4 border-t border-slate-200 dark:border-slate-800 bg-white dark:bg-slate-900 flex flex-col sm:flex-row gap-3 justify-end">
            <Button
              type="button"
              variant="outline"
              onClick={() => setShowPreview(false)}
              className="h-12 px-6 rounded-xl border-2 hover:bg-slate-50 text-slate-700 font-bold"
            >
              {(() => { const key = 'preview.close'; const s = t(key); return s && s !== key ? s : 'Fermer'; })()}
            </Button>
            <Button
              type="button"
              onClick={() => {
                setShowPreview(false);
                document.querySelector('form')?.requestSubmit();
              }}
              className="h-12 px-8 rounded-full bg-gradient-to-r from-purple-600 via-indigo-600 to-fuchsia-600 hover:from-purple-700 hover:via-indigo-700 hover:to-fuchsia-700 text-white font-bold shadow-[inset_0_2px_8px_rgba(255,255,255,0.35),0_14px_26px_rgba(79,70,229,0.32)] hover:shadow-[inset_0_2px_8px_rgba(255,255,255,0.35),0_18px_32px_rgba(79,70,229,0.36)] active:translate-y-0.5 active:shadow-[inset_0_2px_8px_rgba(255,255,255,0.35),0_10px_18px_rgba(79,70,229,0.26)]"
            >
              {t('createShop.createShop')}
            </Button>
          </div>
        </DialogContent>
      </Dialog>

      {/* Floating Shop Status Preview */}
      <AnimatePresence>
        {hoveredShopStatus && SHOP_STATUS_PREVIEW_IMAGES[hoveredShopStatus] && (
          <motion.div
            initial={{ opacity: 0, x: 20, scale: 0.95 }}
            animate={{ opacity: 1, x: 0, scale: 1 }}
            exit={{ opacity: 0, x: 20, scale: 0.95 }}
            transition={{ duration: 0.2, ease: "easeOut" }}
            className={`fixed top-1/2 -translate-y-1/2 z-[10000] pointer-events-none hidden xl:block ${isRTL ? 'right-1/2 mr-[34rem]' : 'left-1/2 ml-[34rem]'}`}
          >
            <div className="bg-white/15 dark:bg-slate-900/15 backdrop-blur-xl p-4 rounded-[2.5rem] border border-white/20 dark:border-slate-700/30 shadow-[0_32px_64px_-16px_rgba(0,0,0,0.1)] w-[320px] overflow-hidden relative group">
              <div className="grid grid-cols-2 gap-3 relative z-10">
                {SHOP_STATUS_PREVIEW_IMAGES[hoveredShopStatus].slice(0, 4).map((img, idx) => (
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
    </div>
  );
};

export default CreateShopPage;
