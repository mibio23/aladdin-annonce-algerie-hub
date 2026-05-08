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
    toast.success(t('common.linkCopied') || "Lien copiÃ© !", {
      description: t('common.linkCopiedDesc') || "Le lien a Ã©tÃ© copiÃ© dans votre presse-papiers."
    });
  };
  const localizeLabel = (s: string | undefined, language: string, kind?: string) => {
    if (!s) return s;
    let r = String(s);
    if (language === 'ar') {
      r = r.replace(/\bGB\b|\bGo\b/gi, 'ØºÙŠØºØ§Ø¨Ø§ÙŠØª');
      r = r.replace(/\bTB\b|\bTo\b/gi, 'ØªÙŠØ±Ø§Ø¨Ø§ÙŠØª');
      r = r.replace(/\bHz\b/gi, 'Ù‡Ø±ØªØ²');
      r = r.replace(/(\d{1,2}(?:\.\d)?)"/g, '$1 Ø¨ÙˆØµØ©');
      r = r.replace(/\bcarbone\b|carbon/gi, 'ÙƒØ±Ø¨ÙˆÙ†');
      r = r.replace(/\baluminium\b|alu/gi, 'Ø£Ù„Ù…Ù†ÙŠÙˆÙ…');
      r = r.replace(/\bacier\b|steel/gi, 'ÙÙˆÙ„Ø§Ø°');
      r = r.replace(/\bfull[- ]?suspension\b|tout\s?suspendu|full/gi, 'ØªØ¹Ù„ÙŠÙ‚ ÙƒØ§Ù…Ù„');
      r = r.replace(/\bsemi[- ]?rigide\b|hardtail/gi, 'ØªØ¹Ù„ÙŠÙ‚ Ø£Ù…Ø§Ù…ÙŠ ÙÙ‚Ø·');
      r = r.replace(/\bdisque\b|disc/gi, 'Ù‚Ø±ØµÙŠ');
      r = r.replace(/\bhydraulique\b/gi, 'Ù‡ÙŠØ¯Ø±ÙˆÙ„ÙŠÙƒ');
      r = r.replace(/\bv[- ]?brake\b|patins/gi, 'Ø­Ø°ÙˆØ©');
      r = r.replace(/\bkg\b/gi, 'ÙƒÙ„Øº');
      if (kind === 'gears') {
        const m = r.match(/^\d{1,2}$/);
        if (m) r = `${m[0]} Ø³Ø±Ø¹Ø§Øª`;
      }
      if (kind === 'os') {
        r = r.replace(/windows/gi, 'ÙˆÙŠÙ†Ø¯ÙˆØ²').replace(/macos/gi, 'Ù…Ø§Ùƒ Ø£Ùˆ Ø¥Ø³').replace(/linux/gi, 'Ù„ÙŠÙ†ÙƒØ³').replace(/ubuntu/gi, 'Ø£ÙˆØ¨ÙˆÙ†ØªÙˆ');
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
    if (!price || price === 0) {
      return (
        <Badge variant="secondary" className="bg-emerald-100 text-emerald-800 border-emerald-200 px-2 py-0.5 text-[10px] font-bold uppercase tracking-wider">
          {t('createAd.priceByContact') || 'Prix par contact'}
        </Badge>
      );
    }
    
    // Conversion en millions de centimes (standard algÃ©rien)
    // 1 million de centimes = 10 000 DZD
    const millionsCentimes = Math.floor(price / 10_000);
    return `${millionsCentimes.toLocaleString()} M`;
  };

  const getConditionBadge = (condition: string | null) => {
    const badges = {
      new: { label: t('announcements.condition.new') || 'Neuf', variant: 'default' as const },
      like_new: { label: t('announcements.condition.likeNew') || 'Comme neuf', variant: 'secondary' as const },
      good: { label: t('announcements.condition.good') || 'Bon état', variant: 'outline' as const },
      fair: { label: t('announcements.condition.fair') || 'État correct', variant: 'outline' as const },
      poor: { label: t('announcements.condition.poor') || 'À rénover', variant: 'destructive' as const },
    };
    return badges[(condition as keyof typeof badges)] || badges.good;
  };

  const conditionBadge = getConditionBadge(announcement.condition);
  const isFav = isFavorite(announcement.id);

  const hasStorage = announcement.storage || announcement.attributes?.storage;
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

  const pickAttributeValue = (attributes: Record<string, unknown> | undefined | null, candidateKeys: string[]): unknown => {
    if (!attributes || typeof attributes !== "object") return undefined;
    const normalizedCandidates = candidateKeys.map(normalizeKey).filter(Boolean);
    const exact = new Set(normalizedCandidates);
    for (const [rawKey, rawValue] of Object.entries(attributes)) {
      const nk = normalizeKey(rawKey);
      if (!exact.has(nk)) continue;
      if (Array.isArray(rawValue)) return rawValue.length ? rawValue[0] : undefined;
      return rawValue;
    }
    for (const [rawKey, rawValue] of Object.entries(attributes)) {
      const nk = normalizeKey(rawKey);
      if (!nk) continue;
      const matches = normalizedCandidates.some((c) => (c.length >= 4 ? nk.includes(c) || c.includes(nk) : nk === c));
      if (!matches) continue;
      if (Array.isArray(rawValue)) return rawValue.length ? rawValue[0] : undefined;
      return rawValue;
    }
    return undefined;
  };

  const compStorage =
    (typeof announcement.storage === "string" ? announcement.storage : undefined) ??
    (typeof pickAttributeValue(announcement.attributes, ["storage","stockage","ssd","hdd","disque","disque_dur","carte_memoire","ØªØ®Ø²ÙŠÙ†","Ø§Ø³_Ø§Ø³_Ø¯ÙŠ","Ø§ØªØ´_Ø¯ÙŠ_Ø¯ÙŠ","Ø§Ù„Ù‚Ø±Øµ","Ø§Ù„Ù‚Ø±Øµ_Ø§Ù„ØµÙ„Ø¨"]) === "string"
      ? (pickAttributeValue(announcement.attributes, ["storage","stockage","ssd","hdd","disque","disque_dur","carte_memoire","ØªØ®Ø²ÙŠÙ†","Ø§Ø³_Ø§Ø³_Ø¯ÙŠ","Ø§ØªØ´_Ø¯ÙŠ_Ø¯ÙŠ","Ø§Ù„Ù‚Ø±Øµ","Ø§Ù„Ù‚Ø±Øµ_Ø§Ù„ØµÙ„Ø¨"]) as string)
      : undefined);
  const compRam =
    (typeof announcement.ram === "string" ? announcement.ram : undefined) ??
    (typeof pickAttributeValue(announcement.attributes, ["ram","memoire","mÃ©moire","mÃ©moire_vive","memory","Ø±Ø§Ù…","Ø°Ø§ÙƒØ±Ø©","Ø°Ø§ÙƒØ±Ø©_Ø¹Ø´ÙˆØ§Ø¦ÙŠØ©"]) === "string"
      ? (pickAttributeValue(announcement.attributes, ["ram","memoire","mÃ©moire","mÃ©moire_vive","memory","Ø±Ø§Ù…","Ø°Ø§ÙƒØ±Ø©","Ø°Ø§ÙƒØ±Ø©_Ø¹Ø´ÙˆØ§Ø¦ÙŠØ©"]) as string)
      : undefined);
  const compScreen =
    (typeof announcement.screen_size === "string" ? announcement.screen_size : undefined) ??
    (typeof pickAttributeValue(announcement.attributes, ["screen_size","taille_ecran","ecran","Ã©cran","pouces","inch","Ø­Ø¬Ù…_Ø§Ù„Ø´Ø§Ø´Ø©","Ø§Ù„Ø´Ø§Ø´Ø©","Ø¨ÙˆØµØ©"]) === "string"
      ? (pickAttributeValue(announcement.attributes, ["screen_size","taille_ecran","ecran","Ã©cran","pouces","inch","Ø­Ø¬Ù…_Ø§Ù„Ø´Ø§Ø´Ø©","Ø§Ù„Ø´Ø§Ø´Ø©","Ø¨ÙˆØµØ©"]) as string)
      : undefined);
  const titleText = (announcement.title || '').toLowerCase();
  const screenMatch = titleText.match(/(\d{1,2}(?:\.\d)?)\s*(?:"|inch|pouce|pouces|in|Ø¨ÙˆØµØ©)/);
  const compScreenResolved = compScreen ?? (screenMatch ? `${screenMatch[1]}"` : undefined);

  const frameSize =
    (typeof announcement.frame_size === "string" ? announcement.frame_size : undefined) ??
    (typeof pickAttributeValue(announcement.attributes, ["frame_size","taille_cadre","cadre","Ù…Ù‚Ø§Ø³_Ø§Ù„Ø¥Ø·Ø§Ø±","Ø§Ù„Ø¥Ø·Ø§Ø±"]) === "string"
      ? (pickAttributeValue(announcement.attributes, ["frame_size","taille_cadre","cadre","Ù…Ù‚Ø§Ø³_Ø§Ù„Ø¥Ø·Ø§Ø±","Ø§Ù„Ø¥Ø·Ø§Ø±"]) as string)
      : undefined);
  const wheelSize =
    (typeof announcement.wheel_size === "string" ? announcement.wheel_size : undefined) ??
    (typeof pickAttributeValue(announcement.attributes, ["wheel_size","taille_roue","roue","diametre_roue","Ø­Ø¬Ù…_Ø§Ù„Ø¹Ø¬Ù„Ø©","Ø§Ù„Ø¹Ø¬Ù„Ø©","Ù‚Ø·Ø±_Ø§Ù„Ø¹Ø¬Ù„Ø©"]) === "string"
      ? (pickAttributeValue(announcement.attributes, ["wheel_size","taille_roue","roue","diametre_roue","Ø­Ø¬Ù…_Ø§Ù„Ø¹Ø¬Ù„Ø©","Ø§Ù„Ø¹Ø¬Ù„Ø©","Ù‚Ø·Ø±_Ø§Ù„Ø¹Ø¬Ù„Ø©"]) as string)
      : undefined);
  const wheelMatch = titleText.match(/(\d{2}(?:\.\d)?)\s*(?:"|pouces|inch|in|Ø¨ÙˆØµØ©)/);
  const wheelResolved = wheelSize ?? (wheelMatch ? `${wheelMatch[1]}"` : undefined);
  const isElectricAttr = pickAttributeValue(announcement.attributes, ["electric","electrique","Ã©lectrique","e_bike","velo_electrique","ÙƒÙ‡Ø±Ø¨Ø§Ø¦ÙŠ","Ø¯Ø±Ø§Ø¬Ø©_ÙƒÙ‡Ø±Ø¨Ø§Ø¦ÙŠØ©"]);
  const isElectric =
    typeof announcement.bikeElectric === "boolean"
      ? announcement.bikeElectric
      : (typeof isElectricAttr === "string"
          ? ["oui","true","electrique","Ã©lectrique","e_bike","electric","ÙƒÙ‡Ø±Ø¨Ø§Ø¦ÙŠ"].some(s => (isElectricAttr as string).toLowerCase().includes(s))
          : (/(electri|Ã©lectri|ÙƒÙ‡Ø±Ø¨)/.test(titleText) ? true : undefined));
  const motorizedAttr = pickAttributeValue(announcement.attributes, ["motorized","velo_motorise","vÃ©lo_motorisÃ©","motorise","moteur","Ù…Ø²ÙˆØ¯ Ø¨Ù…Ø­Ø±Ùƒ","Ù…Ø²ÙˆÙ‘Ø¯ Ø¨Ù…Ø­Ø±Ùƒ","sans_moteur","ØºÙŠØ±_Ù…Ø²ÙˆØ¯Ø©_Ø¨Ù…Ø­Ø±Ùƒ","Ø¨Ø¯ÙˆÙ†_Ù…Ø­Ø±Ùƒ"]);
  const isMotorized =
    typeof announcement.bikeMotorized === "boolean"
      ? announcement.bikeMotorized
      : (typeof motorizedAttr === "boolean"
          ? motorizedAttr
          : Array.isArray(motorizedAttr) && motorizedAttr.length > 0 && typeof motorizedAttr[0] === "string"
            ? (() => {
                const v = (motorizedAttr[0] as string).toLowerCase();
                if (["oui","yes","true","motorise","motorisÃ©","moteur","Ù…Ø²ÙˆØ¯ Ø¨Ù…Ø­Ø±Ùƒ","Ù…Ø­Ø±Ùƒ"].some(s => v.includes(s))) return true;
                if (["non","no","false","sans","not","ØºÙŠØ±","Ø¨Ø¯ÙˆÙ†"].some(s => v.includes(s))) return false;
                return undefined;
              })()
            : (typeof motorizedAttr === "string"
                ? (() => {
                    const v = (motorizedAttr as string).toLowerCase();
                    if (["oui","yes","true","motorise","motorisÃ©","moteur","Ù…Ø²ÙˆØ¯ Ø¨Ù…Ø­Ø±Ùƒ","Ù…Ø­Ø±Ùƒ"].some(s => v.includes(s))) return true;
                    if (["non","no","false","sans","not","ØºÙŠØ±","Ø¨Ø¯ÙˆÙ†"].some(s => v.includes(s))) return false;
                    return undefined;
                  })()
                : (/(motoris|Ù…Ø­Ø±Ùƒ)/.test(titleText) ? true : undefined)));
  const ramMatch = titleText.match(/(\d{1,2})\s*(?:go|gb)\s*(?:ram|mÃ©moire|memory|Ø±Ø§Ù…|Ø°Ø§ÙƒØ±Ø©)/);
  const compRamResolved = compRam ?? (ramMatch ? `${ramMatch[1]} GB RAM` : undefined);
  const storageMatch = titleText.match(/(\d{2,4})\s*(?:go|gb|to|tb)\s*(?:ssd|hdd|storage|stockage|Ø§Ø³ ?Ø§Ø³ ?Ø¯ÙŠ|Ø§ØªØ´ ?Ø¯ÙŠ ?Ø¯ÙŠ)?/);
  const compStorageResolved = compStorage ?? (storageMatch ? `${storageMatch[1]} ${storageMatch[0].includes('to') || storageMatch[0].includes('tb') ? 'TB' : 'GB'}${storageMatch[0].includes('ssd') ? ' SSD' : storageMatch[0].includes('hdd') ? ' HDD' : ''}` : undefined);
  const cpuAttr = pickAttributeValue(announcement.attributes, ["processor","processeur","cpu","chip","puce","Ø§Ù„Ù…Ø¹Ø§Ù„Ø¬","Ø¨Ø±ÙˆØ³ÙŠØ³ÙˆØ±"]);
  const compCpuResolved = typeof cpuAttr === "string" ? cpuAttr : (titleText.match(/(i[3579][- ]?\d{3,5}[a-z]?|ryzen\s?\d\s?\d{3,4}|m[1-3](?:\spro|\smax)?)/i)?.[1]);
  const gpuAttr = pickAttributeValue(announcement.attributes, ["gpu","graphics","graphics_card","carte_graphique","graphiques","Ø¨Ø·Ø§Ù‚Ø©_Ø±Ø³ÙˆÙ…Ø§Øª","ÙƒØ§Ø±Øª_ØºØ±Ø§ÙÙŠÙƒ"]);
  const compGpuResolved = typeof gpuAttr === "string" ? gpuAttr : (titleText.match(/(rtx\s?\d{3,4}|gtx\s?\d{3,4}|rx\s?\d{3,4}|radeon\s?\w+|iris\s\w+|arc\s\w+)/i)?.[1]);
  const osAttr = pickAttributeValue(announcement.attributes, ["os","operating_system","systeme","systÃ¨me","windows","macos","linux","ubuntu","manjaro","Ù†Ø¸Ø§Ù…","ÙˆÙŠÙ†Ø¯ÙˆØ²","Ù…Ø§Ùƒ","Ù„ÙŠÙ†ÙƒØ³"]);
  const compOsResolved = typeof osAttr === "string" ? osAttr : (titleText.match(/(windows\s?\d{1,2}|macos|linux|ubuntu|sonoma|ventura)/i)?.[1]);
  const hzAttr = pickAttributeValue(announcement.attributes, ["refresh_rate","hz","frequence","frÃ©quence","ØªØ±Ø¯Ø¯","Ù‡Ø±ØªØ²"]);
  const hzMatch = titleText.match(/(\d{2,3})\s?hz/i);
  const compHzResolved = typeof hzAttr === "string" ? hzAttr : (hzMatch ? `${hzMatch[1]}Hz` : undefined);
  const frameMaterialAttr = pickAttributeValue(announcement.attributes, ["frame_material","material","materiau","matÃ©riau","cadre_materiau","cadre_matÃ©riau","Ù…Ø§Ø¯Ø©_Ø§Ù„Ø¥Ø·Ø§Ø±","Ø§Ù„Ù…Ø§Ø¯Ø©"]);
  const frameMaterialResolved = typeof frameMaterialAttr === "string" ? frameMaterialAttr : (titleText.match(/(carbone|aluminium|alu|acier|steel|carbon)/)?.[1]);
  const suspensionAttr = pickAttributeValue(announcement.attributes, ["suspension","suspension_avant","suspension_arriere","type_suspension","Ø³uspension","ØªØ¹Ù„ÙŠÙ‚"]);
  const suspensionResolved = typeof suspensionAttr === "string" ? suspensionAttr : (titleText.match(/(full|tout\s?suspendu|full[- ]suspension|semi[- ]rigide|hardtail)/)?.[1]);
  const brakeAttr = pickAttributeValue(announcement.attributes, ["brake","brake_type","freins","type_de_frein","Ø§Ù„ÙØ±Ø§Ù…Ù„","Ù†ÙˆØ¹_Ø§Ù„ÙØ±Ø§Ù…Ù„"]);
  const brakeResolved = typeof brakeAttr === "string" ? brakeAttr : (titleText.match(/(disque|hydraulique|v[- ]?brake|patins|disc)/)?.[1]);
  const gearsAttr = pickAttributeValue(announcement.attributes, ["gears","vitesses","nbr_vitesses","nombre_vitesses","Ø¹Ø¯Ø¯_Ø§Ù„Ø³Ø±Ø¹Ø§Øª"]);
  const gearsResolved = typeof gearsAttr === "string" ? gearsAttr : (titleText.match(/(\d{1,2})\s?(?:vitesses|v|speeds)/)?.[1]);
  const bikeTypeAttr = pickAttributeValue(announcement.attributes, ["bike_type","type","style","categorie","catÃ©gorie","Ù†ÙˆØ¹"]);
  const bikeTypeResolved = typeof bikeTypeAttr === "string" ? bikeTypeAttr : (titleText.match(/(vtt|route|gravel|bmx|fixie|hybride|city)/)?.[1]);
  const weightAttr = pickAttributeValue(announcement.attributes, ["weight","poids","Ø§Ù„ÙˆØ²Ù†"]);
  const weightResolved = typeof weightAttr === "string" ? weightAttr : (titleText.match(/(\d{1,2}(?:\.\d)?)\s?kg/)?.[1]);

  const vehicleDetailsRaw = announcement.vehicleDetails || announcement.vehicle_details;
  const vehicleDetails = Array.isArray(vehicleDetailsRaw) ? vehicleDetailsRaw[0] : vehicleDetailsRaw;
  const registrationDate =
    (vehicleDetails && typeof vehicleDetails.registration_date === "string" ? vehicleDetails.registration_date : undefined) ||
    (typeof announcement.registration_date === "string" ? announcement.registration_date : undefined) ||
    (typeof pickAttributeValue(announcement.attributes, ["registration_date","registrationDate","date_mise_en_circulation","date_de_mise_en_circulation","date_immatriculation","mise_en_circulation"]) === "string"
      ? (pickAttributeValue(announcement.attributes, ["registration_date","registrationDate","date_mise_en_circulation","date_de_mise_en_circulation","date_immatriculation","mise_en_circulation"]) as string)
      : undefined);
  const yearFromDetails = typeof vehicleDetails?.year === "number" ? vehicleDetails.year : undefined;
  const yearFromRegistration =
    typeof registrationDate === "string" && registrationDate ? new Date(registrationDate).getFullYear() : undefined;
  const yearAttr = pickAttributeValue(announcement.attributes, ["year","annee","annÃ©e","an","vehicle_year","annee_de_mise_en_circulation","Ø³Ù†Ø©","Ø³Ù†Ø©_Ø§Ù„Ù…ÙˆØ¯ÙŠÙ„","Ø³Ù†Ø©_Ø§Ù„ØªØµÙ†ÙŠØ¹"]);
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
                  loading="lazy"
                  decoding="async"
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
                <span className="truncate">{announcement.location || (t('common.notSpecified') || 'Non spécifié')}</span>
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
      {/* Cadre supÃ©rieur - Photo avec effet de retrait (recessed) */}
      <div className="p-2 pb-0">
        <div className="relative aspect-[4/3] overflow-hidden rounded-[24px] border-[3px] border-red-500/80 bg-white p-1.5 shadow-[0_8px_16px_rgba(0,0,0,0.1)] group-hover:border-red-600 group-hover:shadow-[0_12px_24px_rgba(220,38,38,0.2)] transition-all duration-300">
          <div className="w-full h-full overflow-hidden rounded-[16px] shadow-[inset_0_10px_20px_rgba(0,0,0,0.25),inset_0_-2px_6px_rgba(255,255,255,0.3)] bg-slate-100 relative">
            {/* Badge incurvÃ© style "Boutique" */}
            <div className={`absolute top-0 ${isRTL ? 'left-0' : 'right-0'} z-30`}>
                <div className={`bg-white/70 backdrop-blur-md pb-3 pt-1 shadow-lg flex items-center gap-1.5 border-b border-white/40 ${
                  isRTL 
                    ? 'px-3 rounded-bl-[25px] rounded-br-[25px] border-x' 
                    : 'pl-3 pr-1 rounded-bl-[25px] border-l'
                }`}>
                  <div className={cn("flex flex-col", isRTL ? "items-start" : "items-end")}>
                    <span className="text-xs font-extrabold text-slate-900 leading-none mb-0.5 drop-shadow-sm">
                      {isRTL ? "Ø¹Ù„Ø§Ø¡ Ø§Ù„Ø¯ÙŠÙ†" : "Aladdin"}
                    </span>
                    <span className="text-[9px] font-bold text-red-600 uppercase tracking-wider leading-none drop-shadow-sm">
                      {isRTL ? "Ø§Ù„Ø¥Ø®ØªÙŠØ§Ø± Ø§Ù„Ø£ÙØ¶Ù„" : "SÃ©lection Or"}
                    </span>
                  </div>
                  <div className="w-8 h-8 bg-white/50 backdrop-blur-sm rounded-lg shadow-inner flex items-center justify-center border border-white/50 p-1 group-hover:scale-110 transition-transform duration-300">
                     <img 
                       src="/lovable-uploads/19d6e319-1c10-44f0-a889-e4babb7d2e97.png" 
                       alt="Aladdin" 
                       loading="lazy"
                       decoding="async"
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
                    {t('common.featuredPick') || 'Coup de cœur'}
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
                  {t('common.sold') || 'VENDU'}
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
                  {t('urgent') || 'Urgent'}
                </Badge>
              </div>
            )}
            {isVehicle && (announcement.is_urgent || vehicleYear) && (
              <div className={cn("absolute top-2 z-20 flex flex-col gap-1", isRTL ? "left-2 items-start" : "left-2 items-start")}>
                {announcement.is_urgent ? (
                  <Badge variant="destructive" className="animate-pulse">
                    {t('urgent') || 'Urgent'}
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
                      ? "Ù…Ø²ÙˆØ¯Ø© Ø¨Ù…Ø­Ø±Ùƒ"
                      : language === 'en'
                        ? "Motorized"
                        : language === 'de'
                          ? "Motorisiert"
                          : language === 'it'
                            ? "Motorizzata"
                            : language === 'es'
                              ? "Motorizada"
                              : "MotorisÃ©")
                  : (language === 'ar'
                      ? "ØºÙŠØ± Ù…Ø²ÙˆØ¯Ø© Ø¨Ù…Ø­Ø±Ùƒ"
                      : language === 'en'
                        ? "Not motorized"
                        : language === 'de'
                          ? "Nicht motorisiert"
                          : language === 'it'
                            ? "Non motorizzata"
                            : language === 'es'
                              ? "No motorizada"
                              : "Non motorisÃ©")}
              </span>
            </div>
        )}
      </div>
      
      {/* Cadre infÃ©rieur - Informations principales */}
      <div className="p-4 space-y-3 flex-1 flex flex-col relative z-10">
        {/* CaractÃ©ristiques spÃ©cifiques (ex: TÃ©lÃ©phonie) */}
        {(isTelephonie || hasStorage) && (
          <div className="flex flex-wrap gap-2 mb-1">
            {hasStorage && (
              <div className="flex items-center gap-1 bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-blue-100 dark:border-blue-800 shadow-sm">
                <HardDrive className="w-3 h-3" />
                {localizeLabel(
                  compStorageResolved ?? announcement.storage ?? announcement.attributes?.storage,
                  language,
                  'storage'
                )}
              </div>
            )}
            {(announcement.ram || announcement.attributes?.ram || compRamResolved) && (
              <div className="flex items-center gap-1 bg-purple-50 dark:bg-purple-900/20 text-purple-600 dark:text-purple-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-purple-100 dark:border-purple-800 shadow-sm">
                <Smartphone className="w-3 h-3" />
                {localizeLabel(
                  compRamResolved ?? announcement.ram ?? announcement.attributes?.ram,
                  language,
                  'ram'
                )}
              </div>
            )}
            {(announcement.battery_health || announcement.attributes?.battery_health) && (
              <div className="flex items-center gap-1 bg-green-50 dark:bg-green-900/20 text-green-600 dark:text-green-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-green-100 dark:border-green-800 shadow-sm">
                <Zap className="w-3 h-3" />
                {announcement.battery_health || announcement.attributes?.battery_health}
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
                {isElectric ? (isRTL ? "ÙƒÙ‡Ø±Ø¨Ø§Ø¦ÙŠ" : "Ã‰lectrique") : (isRTL ? "ØºÙŠØ± ÙƒÙ‡Ø±Ø¨Ø§Ø¦ÙŠ" : "Non Ã©lectrique")}
              </div>
            )}
            {typeof isMotorized === 'boolean' && (
              <div className="flex items-center gap-1 bg-amber-50 dark:bg-amber-900/20 text-amber-600 dark:text-amber-400 text-[10px] font-bold px-2 py-0.5 rounded-full border border-amber-100 dark:border-amber-800 shadow-sm">
                <Cog className="w-3 h-3" />
                {isMotorized ? (isRTL ? "Ù…Ø²ÙˆØ¯Ø© Ø¨Ù…Ø­Ø±Ùƒ" : "MotorisÃ©") : (isRTL ? "ØºÙŠØ± Ù…Ø²ÙˆØ¯Ø© Ø¨Ù…Ø­Ø±Ùƒ" : "Non motorisÃ©")}
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
            alt={announcement.profiles?.full_name || (t('common.user') || 'Utilisateur')}
            fallback={announcement.profiles?.full_name?.charAt(0)?.toUpperCase() || 'U'}
            size="sm"
            className="border-2 border-white dark:border-slate-700 shadow-sm"
          />
          <div className="flex-1 min-w-0">
            <p className="text-xs font-medium text-muted-foreground truncate">
              {announcement.profiles?.full_name || (t('common.user') || 'Utilisateur')}
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
            const delim = language === 'ar' ? 'ØŒ ' : ', ';
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
          {/* Ligne wilaya + prix deja affichee au-dessus; on ne repete pas ici */}
          
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
              <span className="truncate">{t('common.contact') || 'Contacter'}</span>
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

        {/* Overlay "AperÃ§u" avec effet jupe */}
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

