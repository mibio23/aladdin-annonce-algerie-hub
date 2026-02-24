import { Badge } from '@/components/ui/badge';
import { Button } from '@/components/ui/button';
import { Card, CardContent } from '@/components/ui/card';
import { useEffect } from 'react';
import { 
  Heart, 
  MapPin, 
  Eye, 
  Phone, 
  MessageCircle,
  Share2,
  Smartphone,
  Zap,
  HardDrive,
  Cpu,
  Monitor,
  Ruler,
  Circle,
  Globe,
  Activity,
  Bike,
  Feather,
  Disc,
  Cog,
  Waves
} from 'lucide-react';
import { Announcement } from '@/hooks/useAnnouncements';
import { useFavorites } from '@/hooks/useFavorites';
import { formatRelativeTime } from '@/lib/utils/dateUtils';
import { cn } from '@/lib/utils';
import Button3D from './Button3D';
import AnnouncementImageCarousel from './AnnouncementImageCarousel';
import AvatarDisplay from '@/components/avatar/AvatarDisplay';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { wilayas } from '@/data/wilayaData';
import { toast } from "sonner";

interface AnnouncementCardProps {
  announcement: Announcement;
  onView?: (announcement: Announcement) => void;
  onContact?: (announcement: Announcement) => void;
  onShare?: (announcement: Announcement) => void;
  variant?: 'default' | 'compact' | 'featured';
  showActions?: boolean;
}

const AnnouncementCard: React.FC<AnnouncementCardProps> = ({
  announcement,
  onView,
  onContact,
  onShare,
  variant = 'default',
  showActions = true
}) => {
  const { fetchFavorites, isFavorite, toggleFavorite } = useFavorites();
  const { t, isRTL, language } = useSafeI18nWithRouter();

  const announcementUrl = `${window.location.origin}/annonce/${announcement.id}`;
  const shareTitle = announcement.title;

  useEffect(() => {
    fetchFavorites();
  }, [fetchFavorites]);

  const handleShare = (e: React.MouseEvent) => {
    e.stopPropagation();
    if (navigator.share) {
      navigator.share({
        title: shareTitle,
        url: announcementUrl,
      }).catch(() => {
        copyToClipboard();
      });
    } else {
      copyToClipboard();
    }
  };

  const handleWhatsAppShare = (e: React.MouseEvent) => {
    e.stopPropagation();
    const whatsappUrl = `https://api.whatsapp.com/send?text=${encodeURIComponent(shareTitle + " - " + announcementUrl)}`;
    window.open(whatsappUrl, '_blank');
  };

  const copyToClipboard = () => {
    navigator.clipboard.writeText(announcementUrl);
    toast.success(t('common.linkCopied') || "Lien copié !", {
      description: t('common.linkCopiedDesc') || "Le lien a été copié dans votre presse-papiers."
    });
  };
  const localizeLabel = (s: string | undefined, language: string, kind?: string) => {
    if (!s) return s as any;
    let r = String(s);
    if (language === 'ar') {
      r = r.replace(/\bGB\b|\bGo\b/gi, 'غيغابايت');
      r = r.replace(/\bTB\b|\bTo\b/gi, 'تيرابايت');
      r = r.replace(/\bHz\b/gi, 'هرتز');
      r = r.replace(/(\d{1,2}(?:\.\d)?)"/g, '$1 بوصة');
      r = r.replace(/\bcarbone\b|carbon/gi, 'كربون');
      r = r.replace(/\baluminium\b|alu/gi, 'ألمنيوم');
      r = r.replace(/\bacier\b|steel/gi, 'فولاذ');
      r = r.replace(/\bfull[- ]?suspension\b|tout\s?suspendu|full/gi, 'تعليق كامل');
      r = r.replace(/\bsemi[- ]?rigide\b|hardtail/gi, 'تعليق أمامي فقط');
      r = r.replace(/\bdisque\b|disc/gi, 'قرصي');
      r = r.replace(/\bhydraulique\b/gi, 'هيدروليك');
      r = r.replace(/\bv[- ]?brake\b|patins/gi, 'حذوة');
      r = r.replace(/\bkg\b/gi, 'كلغ');
      if (kind === 'gears') {
        const m = r.match(/^\d{1,2}$/);
        if (m) r = `${m[0]} سرعات`;
      }
      if (kind === 'os') {
        r = r.replace(/windows/gi, 'ويندوز').replace(/macos/gi, 'ماك أو إس').replace(/linux/gi, 'لينكس').replace(/ubuntu/gi, 'أوبونتو');
      }
    } else {
      r = r.replace(/\bGB\b|\bGo\b/gi, 'Go');
      r = r.replace(/\bTB\b|\bTo\b/gi, 'To');
      r = r.replace(/\bHz\b/gi, 'Hz');
      r = r.replace(/(\d{1,2}(?:\.\d)?)\s*(?:"|pouce|pouces|inch|in)/gi, (_, n) => `${n}"`);
      if (kind === 'gears') {
        const m = r.match(/^\d{1,2}$/);
        if (m) r = `${m[0]} vitesses`;
      }
    }
    return r;
  };

  const formatPrice = (price: number | null) => {
    if (!price) return t('announcements.priceNotSpecified') || 'Prix non spécifié';
    
    // Conversion en millions de centimes (standard algérien)
    // 1 million de centimes = 10 000 DZD
    const millionsCentimes = Math.floor(price / 10_000);
    return `${millionsCentimes.toLocaleString()} M`;
  };

  const getConditionBadge = (condition: string | null) => {
    const badges = {
      new: { label: 'Neuf', variant: 'default' as const },
      like_new: { label: 'Comme neuf', variant: 'secondary' as const },
      good: { label: 'Bon état', variant: 'outline' as const },
      fair: { label: 'État correct', variant: 'outline' as const },
      poor: { label: 'À rénover', variant: 'destructive' as const },
    };
    return badges[(condition as keyof typeof badges)] || badges.good;
  };

  const conditionBadge = getConditionBadge(announcement.condition);
  const isFav = isFavorite(announcement.id);

  const hasStorage = announcement.storage || (announcement as any).attributes?.storage;
  const isTelephonie = announcement.category_id === 'telephonie' || announcement.categorySlug === 'telephonie' || announcement.categories?.slug === 'telephonie';
  const isComputer = announcement.category_id === 'informatique-electronique' || announcement.categorySlug === 'informatique-electronique' || announcement.categories?.slug === 'informatique-electronique';
  const isBike = announcement.category_id === 'velo-cyclisme-equipements' || announcement.categorySlug === 'velo-cyclisme-equipements' || announcement.categories?.slug === 'velo-cyclisme-equipements';
  const isVehicle =
    announcement.category_id === 'vehicules' ||
    announcement.categorySlug === 'vehicules' ||
    announcement.categories?.slug === 'vehicules' ||
    announcement.category_id === 'vehicules-equipements' ||
    announcement.categorySlug === 'vehicules-equipements' ||
    announcement.categories?.slug === 'vehicules-equipements' ||
    announcement.category_id === 'vehicules-camions-motos' ||
    announcement.categorySlug === 'vehicules-camions-motos' ||
    announcement.categories?.slug === 'vehicules-camions-motos';

  const normalizeKey = (key: string) =>
    (key || "")
      .toLowerCase()
      .normalize("NFKD")
      .replace(/[\u0300-\u036f]/g, "")
      .replace(/\s+/g, "_")
      .replace(/[^\p{L}\p{N}_]/gu, "")
      .trim();

  const pickAttributeValue = (attributes: any, candidateKeys: string[]) => {
    if (!attributes || typeof attributes !== "object") return undefined;
    const normalizedCandidates = candidateKeys.map(normalizeKey).filter(Boolean);
    const exact = new Set(normalizedCandidates);
    for (const [rawKey, rawValue] of Object.entries(attributes)) {
      const nk = normalizeKey(rawKey);
      if (!exact.has(nk)) continue;
      if (Array.isArray(rawValue)) return rawValue.length ? rawValue[0] : undefined;
      return rawValue as any;
    }
    for (const [rawKey, rawValue] of Object.entries(attributes)) {
      const nk = normalizeKey(rawKey);
      if (!nk) continue;
      const matches = normalizedCandidates.some((c) => (c.length >= 4 ? nk.includes(c) || c.includes(nk) : nk === c));
      if (!matches) continue;
      if (Array.isArray(rawValue)) return rawValue.length ? rawValue[0] : undefined;
      return rawValue as any;
    }
    return undefined;
  };

  const compStorage =
    (typeof (announcement as any).storage === "string" ? (announcement as any).storage : undefined) ??
    (typeof pickAttributeValue((announcement as any).attributes, ["storage","stockage","ssd","hdd","disque","disque_dur","carte_memoire","تخزين","اس_اس_دي","اتش_دي_دي","القرص","القرص_الصلب"]) === "string"
      ? (pickAttributeValue((announcement as any).attributes, ["storage","stockage","ssd","hdd","disque","disque_dur","carte_memoire","تخزين","اس_اس_دي","اتش_دي_دي","القرص","القرص_الصلب"]) as string)
      : undefined);
  const compRam =
    (typeof (announcement as any).ram === "string" ? (announcement as any).ram : undefined) ??
    (typeof pickAttributeValue((announcement as any).attributes, ["ram","memoire","mémoire","mémoire_vive","memory","رام","ذاكرة","ذاكرة_عشوائية"]) === "string"
      ? (pickAttributeValue((announcement as any).attributes, ["ram","memoire","mémoire","mémoire_vive","memory","رام","ذاكرة","ذاكرة_عشوائية"]) as string)
      : undefined);
  const compScreen =
    (typeof (announcement as any).screen_size === "string" ? (announcement as any).screen_size : undefined) ??
    (typeof pickAttributeValue((announcement as any).attributes, ["screen_size","taille_ecran","ecran","écran","pouces","inch","حجم_الشاشة","الشاشة","بوصة"]) === "string"
      ? (pickAttributeValue((announcement as any).attributes, ["screen_size","taille_ecran","ecran","écran","pouces","inch","حجم_الشاشة","الشاشة","بوصة"]) as string)
      : undefined);
  const titleText = (announcement.title || '').toLowerCase();
  const screenMatch = titleText.match(/(\d{1,2}(?:\.\d)?)\s*(?:"|inch|pouce|pouces|in|بوصة)/);
  const compScreenResolved = compScreen ?? (screenMatch ? `${screenMatch[1]}"` : undefined);

  const frameSize =
    (typeof (announcement as any).frame_size === "string" ? (announcement as any).frame_size : undefined) ??
    (typeof pickAttributeValue((announcement as any).attributes, ["frame_size","taille_cadre","cadre","مقاس_الإطار","الإطار"]) === "string"
      ? (pickAttributeValue((announcement as any).attributes, ["frame_size","taille_cadre","cadre","مقاس_الإطار","الإطار"]) as string)
      : undefined);
  const wheelSize =
    (typeof (announcement as any).wheel_size === "string" ? (announcement as any).wheel_size : undefined) ??
    (typeof pickAttributeValue((announcement as any).attributes, ["wheel_size","taille_roue","roue","diametre_roue","حجم_العجلة","العجلة","قطر_العجلة"]) === "string"
      ? (pickAttributeValue((announcement as any).attributes, ["wheel_size","taille_roue","roue","diametre_roue","حجم_العجلة","العجلة","قطر_العجلة"]) as string)
      : undefined);
  const wheelMatch = titleText.match(/(\d{2}(?:\.\d)?)\s*(?:"|pouces|inch|in|بوصة)/);
  const wheelResolved = wheelSize ?? (wheelMatch ? `${wheelMatch[1]}"` : undefined);
  const isElectricAttr = pickAttributeValue((announcement as any).attributes, ["electric","electrique","électrique","e_bike","velo_electrique","كهربائي","دراجة_كهربائية"]);
  const isElectric =
    typeof (announcement as any).bikeElectric === "boolean"
      ? (announcement as any).bikeElectric
      : (typeof isElectricAttr === "string"
          ? ["oui","true","electrique","électrique","e_bike","electric","كهربائي"].some(s => (isElectricAttr as string).toLowerCase().includes(s))
          : (/(electri|électri|كهرب)/.test(titleText) ? true : undefined));
  const motorizedAttr = pickAttributeValue((announcement as any).attributes, ["motorized","velo_motorise","vélo_motorisé","motorise","moteur","مزود بمحرك","مزوّد بمحرك","sans_moteur","غير_مزودة_بمحرك","بدون_محرك"]);
  const isMotorized =
    typeof (announcement as any).bikeMotorized === "boolean"
      ? (announcement as any).bikeMotorized
      : (typeof motorizedAttr === "boolean"
          ? motorizedAttr
          : Array.isArray(motorizedAttr) && motorizedAttr.length > 0 && typeof motorizedAttr[0] === "string"
            ? (() => {
                const v = (motorizedAttr[0] as string).toLowerCase();
                if (["oui","yes","true","motorise","motorisé","moteur","مزود بمحرك","محرك"].some(s => v.includes(s))) return true;
                if (["non","no","false","sans","not","غير","بدون"].some(s => v.includes(s))) return false;
                return undefined;
              })()
            : (typeof motorizedAttr === "string"
                ? (() => {
                    const v = (motorizedAttr as string).toLowerCase();
                    if (["oui","yes","true","motorise","motorisé","moteur","مزود بمحرك","محرك"].some(s => v.includes(s))) return true;
                    if (["non","no","false","sans","not","غير","بدون"].some(s => v.includes(s))) return false;
                    return undefined;
                  })()
                : (/(motoris|محرك)/.test(titleText) ? true : undefined)));
  const ramMatch = titleText.match(/(\d{1,2})\s*(?:go|gb)\s*(?:ram|mémoire|memory|رام|ذاكرة)/);
  const compRamResolved = compRam ?? (ramMatch ? `${ramMatch[1]} GB RAM` : undefined);
  const storageMatch = titleText.match(/(\d{2,4})\s*(?:go|gb|to|tb)\s*(?:ssd|hdd|storage|stockage|اس ?اس ?دي|اتش ?دي ?دي)?/);
  const compStorageResolved = compStorage ?? (storageMatch ? `${storageMatch[1]} ${storageMatch[0].includes('to') || storageMatch[0].includes('tb') ? 'TB' : 'GB'}${storageMatch[0].includes('ssd') ? ' SSD' : storageMatch[0].includes('hdd') ? ' HDD' : ''}` : undefined);
  const cpuAttr = pickAttributeValue((announcement as any).attributes, ["processor","processeur","cpu","chip","puce","المعالج","بروسيسور"]);
  const compCpuResolved = typeof cpuAttr === "string" ? cpuAttr : (titleText.match(/(i[3579][- ]?\d{3,5}[a-z]?|ryzen\s?\d\s?\d{3,4}|m[1-3](?:\spro|\smax)?)/i)?.[1]);
  const gpuAttr = pickAttributeValue((announcement as any).attributes, ["gpu","graphics","graphics_card","carte_graphique","graphiques","بطاقة_رسومات","كارت_غرافيك"]);
  const compGpuResolved = typeof gpuAttr === "string" ? gpuAttr : (titleText.match(/(rtx\s?\d{3,4}|gtx\s?\d{3,4}|rx\s?\d{3,4}|radeon\s?\w+|iris\s\w+|arc\s\w+)/i)?.[1]);
  const osAttr = pickAttributeValue((announcement as any).attributes, ["os","operating_system","systeme","système","windows","macos","linux","ubuntu","manjaro","نظام","ويندوز","ماك","لينكس"]);
  const compOsResolved = typeof osAttr === "string" ? osAttr : (titleText.match(/(windows\s?\d{1,2}|macos|linux|ubuntu|sonoma|ventura)/i)?.[1]);
  const hzAttr = pickAttributeValue((announcement as any).attributes, ["refresh_rate","hz","frequence","fréquence","تردد","هرتز"]);
  const hzMatch = titleText.match(/(\d{2,3})\s?hz/i);
  const compHzResolved = typeof hzAttr === "string" ? hzAttr : (hzMatch ? `${hzMatch[1]}Hz` : undefined);
  const frameMaterialAttr = pickAttributeValue((announcement as any).attributes, ["frame_material","material","materiau","matériau","cadre_materiau","cadre_matériau","مادة_الإطار","المادة"]);
  const frameMaterialResolved = typeof frameMaterialAttr === "string" ? frameMaterialAttr : (titleText.match(/(carbone|aluminium|alu|acier|steel|carbon)/)?.[1]);
  const suspensionAttr = pickAttributeValue((announcement as any).attributes, ["suspension","suspension_avant","suspension_arriere","type_suspension","سuspension","تعليق"]);
  const suspensionResolved = typeof suspensionAttr === "string" ? suspensionAttr : (titleText.match(/(full|tout\s?suspendu|full[- ]suspension|semi[- ]rigide|hardtail)/)?.[1]);
  const brakeAttr = pickAttributeValue((announcement as any).attributes, ["brake","brake_type","freins","type_de_frein","الفرامل","نوع_الفرامل"]);
  const brakeResolved = typeof brakeAttr === "string" ? brakeAttr : (titleText.match(/(disque|hydraulique|v[- ]?brake|patins|disc)/)?.[1]);
  const gearsAttr = pickAttributeValue((announcement as any).attributes, ["gears","vitesses","nbr_vitesses","nombre_vitesses","عدد_السرعات"]);
  const gearsResolved = typeof gearsAttr === "string" ? gearsAttr : (titleText.match(/(\d{1,2})\s?(?:vitesses|v|speeds)/)?.[1]);
  const bikeTypeAttr = pickAttributeValue((announcement as any).attributes, ["bike_type","type","style","categorie","catégorie","نوع"]);
  const bikeTypeResolved = typeof bikeTypeAttr === "string" ? bikeTypeAttr : (titleText.match(/(vtt|route|gravel|bmx|fixie|hybride|city)/)?.[1]);
  const weightAttr = pickAttributeValue((announcement as any).attributes, ["weight","poids","الوزن"]);
  const weightResolved = typeof weightAttr === "string" ? weightAttr : (titleText.match(/(\d{1,2}(?:\.\d)?)\s?kg/)?.[1]);

  const vehicleDetailsRaw = (announcement as any).vehicleDetails || (announcement as any).vehicle_details;
  const vehicleDetails = Array.isArray(vehicleDetailsRaw) ? vehicleDetailsRaw[0] : vehicleDetailsRaw;
  const registrationDate =
    (vehicleDetails && typeof vehicleDetails.registration_date === "string" ? vehicleDetails.registration_date : undefined) ||
    (typeof (announcement as any).registration_date === "string" ? (announcement as any).registration_date : undefined) ||
    (typeof pickAttributeValue((announcement as any).attributes, ["registration_date","registrationDate","date_mise_en_circulation","date_de_mise_en_circulation","date_immatriculation","mise_en_circulation"]) === "string"
      ? (pickAttributeValue((announcement as any).attributes, ["registration_date","registrationDate","date_mise_en_circulation","date_de_mise_en_circulation","date_immatriculation","mise_en_circulation"]) as string)
      : undefined);
  const yearFromDetails = typeof vehicleDetails?.year === "number" ? vehicleDetails.year : undefined;
  const yearFromRegistration =
    typeof registrationDate === "string" && registrationDate ? new Date(registrationDate).getFullYear() : undefined;
  const yearAttr = pickAttributeValue((announcement as any).attributes, ["year","annee","année","an","vehicle_year","annee_de_mise_en_circulation","سنة","سنة_الموديل","سنة_التصنيع"]);
  const yearFromAttr =
    typeof yearAttr === "number" ? yearAttr :
    typeof yearAttr === "string" ? (() => {
      const cleaned = yearAttr.replace(/[^\d]/g, "");
      const n = Number(cleaned);
      return Number.isFinite(n) ? n : undefined;
    })() : undefined;
  const yearFromTitle = (() => {
    const m = (announcement.title || "").match(/\b(19\d{2}|20\d{2})\b/);
    if (!m) return undefined;
    const n = Number(m[1]);
    return Number.isFinite(n) ? n : undefined;
  })();
  const vehicleYear =
    (typeof yearFromDetails === "number" && Number.isFinite(yearFromDetails) ? yearFromDetails : undefined) ??
    (typeof yearFromRegistration === "number" && Number.isFinite(yearFromRegistration) ? yearFromRegistration : undefined) ??
    (typeof yearFromAttr === "number" && Number.isFinite(yearFromAttr) ? yearFromAttr : undefined) ??
    (typeof yearFromTitle === "number" && Number.isFinite(yearFromTitle) ? yearFromTitle : undefined);

  const handleFavoriteClick = async (e: React.MouseEvent) => {
    e.stopPropagation();
    await toggleFavorite(announcement.id);
  };

  const handleViewClick = () => {
    onView?.(announcement);
  };

  const cardClass = cn(
    "group cursor-pointer transition-all duration-300 hover:shadow-lg flex-shrink-0",
    {
      'h-full w-full': variant === 'default',
      'h-32 w-full max-w-sm': variant === 'compact',
      'ring-2 ring-primary/20 bg-gradient-to-br from-primary/5 to-secondary/5 w-full': variant === 'featured'
    }
  );

  const imageClass = cn(
    "w-full object-cover rounded-t-lg",
    {
      'h-56 aspect-[4/3]': variant === 'default',
      'h-20 w-20 flex-shrink-0 aspect-square': variant === 'compact',
      'h-72 aspect-[4/3]': variant === 'featured'
    }
  );

  if (variant === 'compact') {
    return (
      <Card className={cardClass} onClick={handleViewClick}>
        <CardContent className="p-3">
          <div className="flex gap-3">
            {announcement.images?.[0] && (
              <div className="flex-shrink-0">
                <img
                  src={announcement.images[0]}
                  alt={announcement.title}
                  className={imageClass + " rounded-xl"}
                />
              </div>
            )}
           
            <div className="flex-1 min-w-0">
              <div className="flex justify-between items-start mb-1">
                <h3 className="font-semibold text-sm truncate">
                  {announcement.title}
                </h3>
                <Button
                  variant="ghost"
                  size="sm"
                  onClick={handleFavoriteClick}
                  className="p-1 h-auto"
                >
                  <Heart 
                    className={cn("w-4 h-4", {
                      "fill-red-500 text-red-500": isFav,
                      "text-muted-foreground": !isFav
                    })}
                  />
                </Button>
              </div>
              
              <p className="text-lg font-bold text-primary mb-1">
                {formatPrice(announcement.price)}
              </p>
              
              <div className="flex items-center text-xs text-muted-foreground">
                <MapPin className="w-3 h-3 mr-1" />
                <span className="truncate">{announcement.location || 'Non spécifié'}</span>
              </div>
            </div>
          </div>
        </CardContent>
      </Card>
    );
  }

  return (
    <div 
      className="group flex flex-col transition-all duration-300 transform hover:scale-[1.02] hover:-translate-y-1 rounded-[24px] overflow-hidden relative h-full bg-slate-50 shadow-[0_10px_30px_-10px_rgba(22,163,74,0.25),0_6px_10px_-2px_rgba(22,163,74,0.15)] border border-[rgba(22,163,74,0.05)] dark:bg-[linear-gradient(145deg,#1e293b,#0f172a)] dark:shadow-[0_0_20px_rgba(255,255,255,0.25)] dark:border-none" 
      onClick={handleViewClick}
    >
      {/* Cadre supérieur - Photo avec effet de retrait (recessed) */}
      <div className="p-2 pb-0">
        <div className="relative aspect-[4/3] overflow-hidden rounded-[24px] border-[3px] border-red-500/80 bg-white p-1.5 shadow-[0_8px_16px_rgba(0,0,0,0.1)] group-hover:border-red-600 group-hover:shadow-[0_12px_24px_rgba(220,38,38,0.2)] transition-all duration-300">
          <div className="w-full h-full overflow-hidden rounded-[16px] shadow-[inset_0_10px_20px_rgba(0,0,0,0.25),inset_0_-2px_6px_rgba(255,255,255,0.3)] bg-slate-100 relative">
            {/* Badge incurvé style "Boutique" */}
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

            {announcement.images && announcement.images.length > 0 && (
              <AnnouncementImageCarousel
                images={announcement.images}
                alt={announcement.title}
                className="w-full h-full object-cover transition-transform duration-500 group-hover:scale-105"
              />
            )}
            
            {!isVehicle && (
              <div className={cn("absolute top-3 z-20 flex flex-col gap-1", isRTL ? "left-3 items-start" : "left-3 items-start")}>
                {(variant === 'featured' || announcement.is_featured) ? (
                  <span className="bg-white/95 backdrop-blur-md text-black text-xs font-bold px-3 py-1.5 rounded-full shadow-sm">
                    Coup de cœur
                  </span>
                ) : null}
                <span className="bg-black/60 text-white px-2 py-1 rounded text-xs font-bold">
                  {formatRelativeTime(announcement.created_at)}
                </span>
              </div>
            )}
            
            <button
              onClick={handleFavoriteClick}
              className={cn("absolute top-3 z-40 p-2 rounded-full bg-white/20 backdrop-blur-sm hover:bg-black/10 transition-all duration-200 group/heart md:hidden", isRTL ? "left-3" : "left-3")}
            >
              <Heart 
                className={cn("w-6 h-6 transition-transform duration-200 group-hover/heart:scale-110", {
                  "fill-rose-700 text-rose-700 dark:fill-rose-500 dark:text-rose-500": isFav,
                  "fill-none text-rose-400 dark:text-rose-400 animate-pulse drop-shadow-md": !isFav
                })}
              />
            </button>

            {!announcement.is_active && (
              <div className="absolute inset-0 bg-black/50 flex items-center justify-center z-30">
                <Badge variant="destructive" className="text-lg px-4 py-2">
                  VENDU
                </Badge>
              </div>
            )}

            {announcement.condition && (
              <div className={cn("absolute bottom-2", isRTL ? "left-2" : "left-2")}>
                <Badge variant={conditionBadge.variant} className="backdrop-blur-md bg-opacity-90">
                  {conditionBadge.label}
                </Badge>
              </div>
            )}

            {!isVehicle && announcement.is_urgent && (
              <div className={cn("absolute bottom-2", isRTL ? "left-2" : "left-2")}>
                <Badge variant="destructive" className="animate-pulse">
                  Urgent
                </Badge>
              </div>
            )}
            {isVehicle && (announcement.is_urgent || vehicleYear) && (
              <div className={cn("absolute top-2 z-20 flex flex-col gap-1", isRTL ? "left-2 items-start" : "left-2 items-start")}>
                {announcement.is_urgent ? (
                  <Badge variant="destructive" className="animate-pulse">
                    Urgent
                  </Badge>
                ) : null}
                {typeof vehicleYear === "number" ? (
                  <span className="bg-black/60 text-white px-2 py-1 rounded text-xs font-bold">
                    {vehicleYear}
                  </span>
                ) : null}
                <span className="bg-black/60 text-white px-2 py-1 rounded text-xs font-bold">
                  {formatRelativeTime(announcement.created_at)}
                </span>
              </div>
            )}
          </div>
        </div>
          
          {typeof isMotorized === 'boolean' && (
            <div
              className={
                "absolute z-20 " +
                (announcement.condition ? "top-2 left-2" : "bottom-2 left-2")
              }
            >
              <span className="bg-amber-500 text-white px-2 py-1 rounded text-xs font-bold flex items-center gap-1 shadow-sm">
                <Cog className="w-3 h-3" />
                {isMotorized
                  ? (language === 'ar'
                      ? "مزودة بمحرك"
                      : language === 'en'
                        ? "Motorized"
                        : language === 'de'
                          ? "Motorisiert"
                          : language === 'it'
                            ? "Motorizzata"
                            : language === 'es'
                              ? "Motorizada"
                              : "Motorisé")
                  : (language === 'ar'
                      ? "غير مزودة بمحرك"
                      : language === 'en'
                        ? "Not motorized"
                        : language === 'de'
                          ? "Nicht motorisiert"
                          : language === 'it'
                            ? "Non motorizzata"
                            : language === 'es'
                              ? "No motorizada"
                              : "Non motorisé")}
              </span>
            </div>
        )}
      </div>
      
      {/* Cadre inférieur - Informations principales */}
      <div className="p-4 space-y-3 flex-1 flex flex-col relative z-10">
        {/* Caractéristiques spécifiques (ex: Téléphonie) */}
        {(isTelephonie || hasStorage) && (
          <div className="flex flex-wrap gap-2 mb-1">
            {hasStorage && (
              <div className="flex items-center gap-1 bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-blue-100 dark:border-blue-800 shadow-sm">
                <HardDrive className="w-3 h-3" />
                {localizeLabel(
                  compStorageResolved ?? (announcement as any).storage ?? (announcement as any).attributes?.storage,
                  language,
                  'storage'
                )}
              </div>
            )}
            {(announcement.ram || (announcement as any).attributes?.ram || compRamResolved) && (
              <div className="flex items-center gap-1 bg-purple-50 dark:bg-purple-900/20 text-purple-600 dark:text-purple-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-purple-100 dark:border-purple-800 shadow-sm">
                <Smartphone className="w-3 h-3" />
                {localizeLabel(
                  compRamResolved ?? (announcement as any).ram ?? (announcement as any).attributes?.ram,
                  language,
                  'ram'
                )}
              </div>
            )}
            {(announcement.battery_health || (announcement as any).attributes?.battery_health) && (
              <div className="flex items-center gap-1 bg-green-50 dark:bg-green-900/20 text-green-600 dark:text-green-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-green-100 dark:border-green-800 shadow-sm">
                <Zap className="w-3 h-3" />
                {announcement.battery_health || (announcement as any).attributes?.battery_health}
              </div>
            )}
          </div>
        )}

        {isComputer && (compStorageResolved || compRamResolved || compScreenResolved || compCpuResolved || compGpuResolved || compOsResolved || compHzResolved) && (
          <div className="flex flex-wrap gap-2 mb-1">
            {compStorageResolved && (
              <div className="flex items-center gap-1 bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-blue-100 dark:border-blue-800 shadow-sm">
                <HardDrive className="w-3 h-3" />
                {localizeLabel(compStorageResolved, language, 'storage')}
              </div>
            )}
            {compRamResolved && (
              <div className="flex items-center gap-1 bg-purple-50 dark:bg-purple-900/20 text-purple-600 dark:text-purple-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-purple-100 dark:border-purple-800 shadow-sm">
                <Cpu className="w-3 h-3" />
                {localizeLabel(compRamResolved, language, 'ram')}
              </div>
            )}
            {compScreenResolved && (
              <div className="flex items-center gap-1 bg-green-50 dark:bg-green-900/20 text-green-600 dark:text-green-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-green-100 dark:border-green-800 shadow-sm">
                <Monitor className="w-3 h-3" />
                {localizeLabel(compScreenResolved, language, 'screen')}
              </div>
            )}
            {compCpuResolved && (
              <div className="flex items-center gap-1 bg-purple-50 dark:bg-purple-900/20 text-purple-600 dark:text-purple-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-purple-100 dark:border-purple-800 shadow-sm">
                <Cpu className="w-3 h-3" />
                {compCpuResolved}
              </div>
            )}
            {compGpuResolved && (
              <div className="flex items-center gap-1 bg-teal-50 dark:bg-teal-900/20 text-teal-600 dark:text-teal-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-teal-100 dark:border-teal-800 shadow-sm">
                <Activity className="w-3 h-3" />
                {compGpuResolved}
              </div>
            )}
            {compOsResolved && (
              <div className="flex items-center gap-1 bg-slate-100 dark:bg-slate-800 text-slate-700 dark:text-slate-300 text-[10px] font-bold px-2 py-0.5 rounded-full border border-slate-200 dark:border-slate-700 shadow-sm">
                <Globe className="w-3 h-3" />
                {localizeLabel(compOsResolved, language, 'os')}
              </div>
            )}
            {compHzResolved && (
              <div className="flex items-center gap-1 bg-green-50 dark:bg-green-900/20 text-green-600 dark:text-green-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-green-100 dark:border-green-800 shadow-sm">
                <Activity className="w-3 h-3" />
                {localizeLabel(compHzResolved, language, 'hz')}
              </div>
            )}
          </div>
        )}

        {isBike && (frameSize || wheelResolved || typeof isElectric === 'boolean' || typeof isMotorized === 'boolean' || frameMaterialResolved || suspensionResolved || brakeResolved || gearsResolved || bikeTypeResolved || weightResolved) && (
          <div className="flex flex-wrap gap-2 mb-1">
            {frameSize && (
              <div className="flex items-center gap-1 bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-blue-100 dark:border-blue-800 shadow-sm">
                <Ruler className="w-3 h-3" />
                {frameSize}
              </div>
            )}
            {wheelResolved && (
              <div className="flex items-center gap-1 bg-purple-50 dark:bg-purple-900/20 text-purple-600 dark:text-purple-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-purple-100 dark:border-purple-800 shadow-sm">
                <Circle className="w-3 h-3" />
                {localizeLabel(wheelResolved, language, 'wheel')}
              </div>
            )}
            {typeof isElectric === 'boolean' && (
              <div className="flex items-center gap-1 bg-green-50 dark:bg-green-900/20 text-green-600 dark:text-green-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-green-100 dark:border-green-800 shadow-sm">
                <Zap className="w-3 h-3" />
                {isElectric ? (isRTL ? "كهربائي" : "Électrique") : (isRTL ? "غير كهربائي" : "Non électrique")}
              </div>
            )}
            {typeof isMotorized === 'boolean' && (
              <div className="flex items-center gap-1 bg-amber-50 dark:bg-amber-900/20 text-amber-600 dark:text-amber-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-amber-100 dark:border-amber-800 shadow-sm">
                <Cog className="w-3 h-3" />
                {isMotorized ? (isRTL ? "مزودة بمحرك" : "Motorisé") : (isRTL ? "غير مزودة بمحرك" : "Non motorisé")}
              </div>
            )}
            {bikeTypeResolved && (
              <div className="flex items-center gap-1 bg-slate-100 dark:bg-slate-800 text-slate-700 dark:text-slate-300 text-[10px] font-bold px-2 py-0.5 rounded-full border border-slate-200 dark:border-slate-700 shadow-sm">
                <Bike className="w-3 h-3" />
                {localizeLabel(bikeTypeResolved, language, 'bikeType')}
              </div>
            )}
            {frameMaterialResolved && (
              <div className="flex items-center gap-1 bg-teal-50 dark:bg-teal-900/20 text-teal-600 dark:text-teal-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-teal-100 dark:border-teal-800 shadow-sm">
                <Feather className="w-3 h-3" />
                {localizeLabel(frameMaterialResolved, language, 'material')}
              </div>
            )}
            {suspensionResolved && (
              <div className="flex items-center gap-1 bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-blue-100 dark:border-blue-800 shadow-sm">
                <Waves className="w-3 h-3" />
                {localizeLabel(suspensionResolved, language, 'suspension')}
              </div>
            )}
            {brakeResolved && (
              <div className="flex items-center gap-1 bg-purple-50 dark:bg-purple-900/20 text-purple-600 dark:text-purple-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-purple-100 dark:border-purple-800 shadow-sm">
                <Disc className="w-3 h-3" />
                {localizeLabel(brakeResolved, language, 'brake')}
              </div>
            )}
            {gearsResolved && (
              <div className="flex items-center gap-1 bg-slate-100 dark:bg-slate-800 text-slate-700 dark:text-slate-300 text-[10px] font-bold px-2 py-0.5 rounded-full border border-slate-200 dark:border-slate-700 shadow-sm">
                <Cog className="w-3 h-3" />
                {localizeLabel(gearsResolved, language, 'gears')}
              </div>
            )}
            {weightResolved && (
              <div className="flex items-center gap-1 bg-green-50 dark:bg-green-900/20 text-green-600 dark:text-green-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-green-100 dark:border-green-800 shadow-sm">
                <Feather className="w-3 h-3" />
                {localizeLabel(weightResolved, language, 'weight')}
              </div>
            )}
          </div>
        )}

        {/* Profil utilisateur */}
        <div className="flex items-center gap-3">
          <AvatarDisplay
            src={announcement.profiles?.avatar_url}
            alt={announcement.profiles?.full_name || 'Utilisateur'}
            fallback={announcement.profiles?.full_name?.charAt(0)?.toUpperCase() || 'U'}
            size="sm"
            className="border-2 border-white dark:border-slate-700 shadow-sm"
          />
          <div className="flex-1 min-w-0">
            <p className="text-xs font-medium text-muted-foreground truncate">
              {announcement.profiles?.full_name || 'Utilisateur'}
            </p>
          </div>
        </div>
        
        <div className="flex-1">
          <h3 className="font-bold text-lg leading-tight line-clamp-2 mb-2 text-foreground/90 group-hover:text-primary transition-colors">
            {announcement.title}
          </h3>
          
          {(() => {
            const rawWilaya = announcement.wilaya;
            const wilayaLabel = (() => {
              if (rawWilaya == null) return "";
              const s = String(rawWilaya).trim();
              if (/^\d+$/.test(s)) {
                const obj = wilayas.find(w => w.code.toString() === s);
                if (obj) return language === 'ar' ? obj.name_ar : obj.name;
              }
              const byName = wilayas.find(w => w.name === s || w.name_ar === s);
              if (byName) return language === 'ar' ? byName.name_ar : byName.name;
              return s;
            })();
            const loc = (announcement.location || '').trim();
            const delim = language === 'ar' ? '، ' : ', ';
            const label = loc && (loc.toLowerCase() !== wilayaLabel.toLowerCase())
              ? `${wilayaLabel}${delim}${loc}`
              : wilayaLabel || loc;
            return (
              <div className="flex items-center justify-between text-sm text-muted-foreground">
                <span className="flex items-center">
                  <MapPin className="w-3 h-3 mr-2 text-primary/70" />
                  <span className="truncate">{label}</span>
                </span>
                <span className="font-extrabold text-primary">
                  {formatPrice(announcement.price)}
                </span>
              </div>
            );
          })()}
        </div>

        <div className="space-y-2 text-xs text-muted-foreground pt-2 border-t border-border/10">
          {/* Ligne wilaya + prix déjà affichée au-dessus; on ne répète pas ici */}
          
          <div className="flex items-center justify-end">
            <div className="flex items-center bg-primary/5 px-2 py-0.5 rounded-full">
              <Eye className="w-3 h-3 mr-1 text-primary" />
              <span className="font-medium text-primary">{announcement.views_count || 0}</span>
            </div>
          </div>
        </div>

        {showActions && (
          <div className="flex gap-2 w-full pt-2 overflow-hidden mt-auto">
            <button 
              onClick={(e) => {
                e.stopPropagation();
                onContact?.(announcement);
              }}
              className="flex-1 flex items-center justify-center min-w-0 bg-primary text-primary-foreground hover:bg-primary/90 h-9 px-4 rounded-lg text-sm font-medium transition-colors shadow-sm"
            >
              <Phone className="w-3.5 h-3.5 mr-2 flex-shrink-0" />
              <span className="truncate">Contacter</span>
            </button>
           
            <Button3D 
              variant="secondary"
              onClick={(e) => {
                e.stopPropagation();
                onContact?.(announcement);
              }}
              className="flex-shrink-0 w-9 h-9 p-0 rounded-lg"
            >
              <MessageCircle className="w-4 h-4" />
            </Button3D>
           
            <Button3D 
              variant="outline"
              onClick={(e) => {
                e.stopPropagation();
                onShare?.(announcement);
              }}
              className="flex-shrink-0 w-9 h-9 p-0 rounded-lg bg-transparent hover:bg-muted"
            >
              <Share2 className="w-4 h-4" />
            </Button3D>
          </div>
        )}

        {/* Overlay "Aperçu" avec effet jupe */}
        <div className="overflow-hidden h-0 group-hover:h-12 transition-all duration-300 ease-in-out">
          <div className="pt-2 transform -translate-y-full group-hover:translate-y-0 transition-transform duration-300 ease-in-out">
            <div className="bg-gradient-to-r from-slate-100 via-slate-50 to-slate-100 dark:from-slate-800 dark:via-slate-700 dark:to-slate-800 text-slate-700 dark:text-slate-200 py-2 rounded-xl font-bold text-sm shadow-sm border border-slate-200 dark:border-slate-700 mb-2 flex items-center justify-between px-3">
              <span className="flex-1 text-center" dir={isRTL ? 'rtl' : 'ltr'}>
                {t('common.viewDetail')}
              </span>
              <div className="flex gap-1.5 ms-2 border-s border-slate-200 dark:border-slate-600 ps-2">
                <button
                  onClick={handleFavoriteClick}
                  className="p-1 hover:bg-rose-50 dark:hover:bg-rose-500/10 rounded-full transition-colors group/fav"
                  title={t('mesFavoris.title') || 'Favoris'}
                >
                  <Heart
                    className={cn('w-4 h-4 transition-transform group-hover/fav:scale-110', {
                      'text-rose-700 dark:text-rose-500': isFav,
                      'text-rose-400 dark:text-rose-400 animate-pulse group-hover/fav:text-rose-500': !isFav,
                    })}
                    fill={isFav ? 'currentColor' : 'none'}
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
};

export default AnnouncementCard;
