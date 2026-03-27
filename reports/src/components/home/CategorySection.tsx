import { useEffect } from "react";
import { Link } from "react-router-dom";
import { ArrowRight, Fuel, Gauge, Heart, MapPin, Zap, Share2, MessageCircle, HardDrive, Smartphone, BatteryCharging, Ruler, Bed, DoorOpen, Home, Layers, Cpu, Monitor, Circle, Globe, Activity, Bike, Feather, Disc, Cog, Waves } from "lucide-react";
import { toast } from "sonner";
import type { ExplorerCategory } from "@/data/categoryTypes";
import type { Announcement } from "@/data/types/homePageTypes";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import SmartAnnouncementsGrid from "./SmartAnnouncementsGrid";
import { wilayas } from "@/data/wilayaData";
import { useLanguageNavigation } from "@/hooks/useLanguageNavigation";
import { formatRelativeTime } from "@/lib/utils/dateUtils";
import { useFavorites } from "@/hooks/useFavorites";
import { cn } from "@/lib/utils";

interface CategorySectionProps {
  category: ExplorerCategory;
  announcements: Announcement[];
  showViewAll?: boolean;
  viewAllText?: string;
}

const formatPriceMillions = (priceDzd: number) => {
  // Conversion en millions de centimes (standard algérien)
  // 1 million de centimes = 10 000 DZD
  const millionsCentimes = Math.floor(priceDzd / 10_000);
  return `${millionsCentimes.toLocaleString()} M`;
};

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

const toNumberOrUndefined = (value: unknown) => {
  if (typeof value === "number" && Number.isFinite(value)) return value;
  if (typeof value !== "string") return undefined;
  const cleaned = value.replace(/[^\d]/g, "");
  if (!cleaned) return undefined;
  const n = Number(cleaned);
  return Number.isFinite(n) ? n : undefined;
};

const normalizeText = (value: string) =>
  value
    .toLowerCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .trim();

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
    r = r.replace(/(\d{1,2}(?:\.\d)?)\s?("?pouce[s]?"?|inch|in)/gi, (_, n) => `${n}"`);
    if (kind === 'gears') {
      const m = r.match(/^\d{1,2}$/);
      if (m) r = `${m[0]} vitesses`;
    }
  }
  return r;
};

const getVehicleCardData = (announcement: any) => {
  const details =
    announcement?.vehicleDetails ??
    announcement?.vehicle_details ??
    announcement?.vehicleDetailsPublic ??
    undefined;
  const attributes = announcement?.attributes;

  const registrationDate =
    details?.registration_date ??
    pickAttributeValue(attributes, [
      "registration_date",
      "registrationDate",
      "date_mise_en_circulation",
      "date_de_mise_en_circulation",
      "date_immatriculation",
      "mise_en_circulation",
    ]);

  const yearFromDetails =
    typeof details?.year === "number"
      ? details.year
      : typeof details?.registration_date === "string"
        ? new Date(details.registration_date).getFullYear()
        : undefined;
  const yearFromRegistration =
    typeof registrationDate === "string" ? new Date(registrationDate).getFullYear() : undefined;
  const yearFromAttributes = toNumberOrUndefined(
    pickAttributeValue(attributes, [
      "year",
      "annee",
      "année",
      "an",
      "vehicle_year",
      "annee_de_mise_en_circulation",
      // Arabic synonyms
      "سنة",
      "سنة_الموديل",
      "سنة_التصنيع"
    ]),
  );

  const year =
    (yearFromDetails && Number.isFinite(yearFromDetails) ? yearFromDetails : undefined) ??
    (yearFromRegistration && Number.isFinite(yearFromRegistration) ? yearFromRegistration : undefined) ??
    yearFromAttributes;

  const fuel =
    (typeof details?.fuel === "string" ? details.fuel : undefined) ??
    (typeof details?.fuel_type === "string" ? details.fuel_type : undefined) ??
    (typeof pickAttributeValue(attributes, [
      "fuel",
      "fuel_type",
      "carburant",
      "energie",
      "énergie",
      "carburant_energie",
      "energie_carburant",
      // Arabic synonyms
      "وقود",
      "طاقة"
    ]) === "string"
      ? (pickAttributeValue(attributes, [
          "fuel",
          "fuel_type",
          "carburant",
          "energie",
          "énergie",
          "carburant_energie",
          "energie_carburant",
          "وقود",
          "طاقة"
        ]) as string)
      : undefined);

  const transmission =
    (typeof details?.transmission === "string" ? details.transmission : undefined) ??
    (typeof details?.gearbox === "string" ? details.gearbox : undefined) ??
    (typeof pickAttributeValue(attributes, [
      "gearbox",
      "transmission",
      "boite",
      "boite_de_vitesse",
      "boite_de_vitesses",
      "boîte",
      // Arabic synonyms
      "ناقل_الحركة",
      "علبة_سرعة",
      "علبة_التروس"
    ]) === "string"
      ? (pickAttributeValue(attributes, [
          "gearbox",
          "transmission",
          "boite",
          "boite_de_vitesse",
          "boite_de_vitesses",
          "boîte",
          "ناقل_الحركة",
          "علبة_سرعة",
          "علبة_التروس"
        ]) as string)
      : undefined);

  const mileage =
    (typeof details?.mileage === "number" ? details.mileage : undefined) ??
    toNumberOrUndefined(
      pickAttributeValue(attributes, [
        "mileage",
        "kilometrage",
        "kilométrage",
        "km",
        "distance",
        // Arabic synonyms
        "كيلومتر",
        "كم",
        "المسافة",
        "المسافة_المقطوعة"
      ]),
    );

  return { year, fuel, transmission, mileage };
};

const getTelephonieCardData = (announcement: any) => {
  const attributes = announcement?.attributes;

  const storage =
    (typeof announcement?.storage === "string" ? announcement.storage : undefined) ??
    (typeof pickAttributeValue(attributes, [
      "storage",
      "stockage",
      "capacite",
      "capacite_stockage",
      "memoire",
      "mémoire",
      // Arabic synonyms
      "سعة",
      "سعة_التخزين",
      "التخزين",
      "الذاكرة_الداخلية"
    ]) === "string"
      ? (pickAttributeValue(attributes, [
          "storage",
          "stockage",
          "capacite",
          "capacite_stockage",
          "memoire",
          "mémoire",
          "سعة",
          "سعة_التخزين",
          "التخزين",
          "الذاكرة_الداخلية"
        ]) as string)
      : undefined);

  const ram =
    (typeof announcement?.ram === "string" ? announcement.ram : undefined) ??
    (typeof pickAttributeValue(attributes, [
      "ram",
      "memoire_vive",
      "mémoire_vive",
      // Arabic synonyms
      "رام",
      "ذاكرة_عشوائية",
      "الرام"
    ]) === "string"
      ? (pickAttributeValue(attributes, [
          "ram",
          "memoire_vive",
          "mémoire_vive",
          "رام",
          "ذاكرة_عشوائية",
          "الرام"
        ]) as string)
      : undefined);

  const batteryHealth =
    (typeof announcement?.battery_health === "string" ? announcement.battery_health : undefined) ??
    (typeof announcement?.batteryHealth === "string" ? announcement.batteryHealth : undefined) ??
    (typeof pickAttributeValue(attributes, [
      "battery_health",
      "sante_batterie",
      "santé_batterie",
      "battery",
      "batterie",
      // Arabic synonyms
      "صحة_البطارية",
      "البطارية"
    ]) === "string"
      ? (pickAttributeValue(attributes, [
          "battery_health",
          "sante_batterie",
          "santé_batterie",
          "battery",
          "batterie",
          "صحة_البطارية",
          "البطارية"
        ]) as string)
      : undefined);

  return { storage, ram, batteryHealth };
};

const getComputerCardData = (announcement: any) => {
  const attributes = announcement?.attributes;
  const titleText = typeof announcement?.title === "string" ? announcement.title.toLowerCase() : "";
  const storage =
    (typeof announcement?.storage === "string" ? announcement.storage : undefined) ??
    (typeof pickAttributeValue(attributes, ["storage","stockage","ssd","hdd","disque","disque_dur","carte_memoire","تخزين","اس_اس_دي","اتش_دي_دي","القرص","القرص_الصلب"]) === "string"
      ? (pickAttributeValue(attributes, ["storage","stockage","ssd","hdd","disque","disque_dur","carte_memoire","تخزين","اس_اس_دي","اتش_دي_دي","القرص","القرص_الصلب"]) as string)
      : undefined);
  const ram =
    (typeof announcement?.ram === "string" ? announcement.ram : undefined) ??
    (typeof pickAttributeValue(attributes, ["ram","memoire","mémoire","mémoire_vive","memory","رام","ذاكرة","ذاكرة_عشوائية"]) === "string"
      ? (pickAttributeValue(attributes, ["ram","memoire","mémoire","mémoire_vive","memory","رام","ذاكرة","ذاكرة_عشوائية"]) as string)
      : undefined);
  const screen =
    (typeof announcement?.screen_size === "string" ? announcement.screen_size : undefined) ??
    (typeof pickAttributeValue(attributes, ["screen_size","taille_ecran","ecran","écran","pouces","inch","حجم_الشاشة","الشاشة","بوصة"]) === "string"
      ? (pickAttributeValue(attributes, ["screen_size","taille_ecran","ecran","écran","pouces","inch","حجم_الشاشة","الشاشة","بوصة"]) as string)
      : undefined) ??
    (typeof announcement?.purchase_year === "number" ? String(announcement.purchase_year) : undefined);
  const screenMatch = titleText.match(/(\d{1,2}(?:\.\d)?)\s*(?:"|inch|pouce|pouces|in|بوصة)/);
  const ramMatch = titleText.match(/(\d{1,2})\s*(?:go|gb)\s*(?:ram|mémoire|memory|رام|ذاكرة)/);
  const storageMatch = titleText.match(/(\d{2,4})\s*(?:go|gb|to|tb)\s*(?:ssd|hdd|storage|stockage)/);
  const screenResolved = screen ?? (screenMatch ? `${screenMatch[1]}"` : undefined);
  const ramResolved = ram ?? (ramMatch ? `${ramMatch[1]} GB RAM` : undefined);
  const storageResolved = storage ?? (storageMatch ? `${storageMatch[1]} ${storageMatch[0].includes('to') || storageMatch[0].includes('tb') ? 'TB' : 'GB'}${storageMatch[0].includes('ssd') ? ' SSD' : storageMatch[0].includes('hdd') ? ' HDD' : ''}` : undefined);
  const cpuAttr = pickAttributeValue(attributes, ["processor","processeur","cpu","chip","puce","المعالج","بروسيسور"]);
  const cpuResolved = typeof cpuAttr === "string" ? cpuAttr : (titleText.match(/(i[3579][- ]?\d{3,5}[a-z]?|ryzen\s?\d\s?\d{3,4}|m[1-3](?:\spro|\smax)?)/i)?.[1]);
  const gpuAttr = pickAttributeValue(attributes, ["gpu","graphics","graphics_card","carte_graphique","graphiques","بطاقة_رسومات","كارت_غرافيك"]);
  const gpuResolved = typeof gpuAttr === "string" ? gpuAttr : (titleText.match(/(rtx\s?\d{3,4}|gtx\s?\d{3,4}|rx\s?\d{3,4}|radeon\s?\w+|iris\s\w+|arc\s\w+)/i)?.[1]);
  const osAttr = pickAttributeValue(attributes, ["os","operating_system","systeme","système","windows","macos","linux","ubuntu","manjaro","نظام","ويندوز","ماك","لينكس"]);
  const osResolved = typeof osAttr === "string" ? osAttr : (titleText.match(/(windows\s?\d{1,2}|macos|linux|ubuntu|sonoma|ventura)/i)?.[1]);
  const hzMatch = titleText.match(/(\d{2,3})\s?hz/i);
  const hzAttr = pickAttributeValue(attributes, ["refresh_rate","hz","frequence","fréquence","تردد","هرتز"]);
  const hzResolved = typeof hzAttr === "string" ? hzAttr : (hzMatch ? `${hzMatch[1]}Hz` : undefined);
  return { storage: storageResolved, ram: ramResolved, screen: screenResolved, cpu: cpuResolved, gpu: gpuResolved, os: osResolved, hz: hzResolved };
};

const getBikeCardData = (announcement: any) => {
  const attributes = announcement?.attributes;
  const titleText = typeof announcement?.title === "string" ? announcement.title.toLowerCase() : "";
  const frameSize =
    (typeof announcement?.frame_size === "string" ? announcement.frame_size : undefined) ??
    (typeof pickAttributeValue(attributes, ["frame_size","taille_cadre","cadre","مقاس_الإطار","الإطار"]) === "string"
      ? (pickAttributeValue(attributes, ["frame_size","taille_cadre","cadre","مقاس_الإطار","الإطار"]) as string)
      : undefined);
  const wheelSize =
    (typeof announcement?.wheel_size === "string" ? announcement.wheel_size : undefined) ??
    (typeof pickAttributeValue(attributes, ["wheel_size","taille_roue","roue","diametre_roue","حجم_العجلة","العجلة","قطر_العجلة"]) === "string"
      ? (pickAttributeValue(attributes, ["wheel_size","taille_roue","roue","diametre_roue","حجم_العجلة","العجلة","قطر_العجلة"]) as string)
      : undefined);
  const wheelMatch = titleText.match(/(\d{2}(?:\.\d)?)\s*(?:"|pouces|inch|in)/);
  const isElectricRaw = typeof announcement?.bikeElectric === "boolean" ? announcement.bikeElectric : undefined;
  const isElectricAttr = pickAttributeValue(attributes, ["electric","electrique","électrique","e_bike","velo_electrique","كهربائي","دراجة_كهربائية"]);
  const electric = typeof isElectricRaw === "boolean"
    ? isElectricRaw
    : (typeof isElectricAttr === "string"
        ? ["oui","true","electrique","électrique","e_bike","electric","كهربائي"].some(s => normalizeText(isElectricAttr as string).includes(normalizeText(s)))
        : (/(electri|électri|كهرب)/.test(titleText) ? true : undefined));
  const wheelResolved = wheelSize ?? (wheelMatch ? `${wheelMatch[1]}"` : undefined);
  const motorizedRaw = typeof announcement?.bikeMotorized === "boolean" ? announcement.bikeMotorized : undefined;
  const motorizedAttr = pickAttributeValue(attributes, ["motorized","velo_motorise","vélo_motorisé","motorise","moteur","مزود بمحرك","مزوّد بمحرك"]);
  const motorized = typeof motorizedRaw === "boolean"
    ? motorizedRaw
    : (typeof motorizedAttr === "string"
        ? ["oui","true","motorise","motorisé","moteur"].some(s => normalizeText(motorizedAttr as string).includes(normalizeText(s)))
        : (/(motoris|محرك)/.test(titleText) ? true : undefined));
  const frameMaterial =
    (typeof announcement?.frame_material === "string" ? announcement.frame_material : undefined) ??
    (typeof pickAttributeValue(attributes, ["frame_material","material","materiau","matériau","cadre_materiau","cadre_matériau","مادة_الإطار","المادة"]) === "string"
      ? (pickAttributeValue(attributes, ["frame_material","material","materiau","matériau","cadre_materiau","cadre_matériau","مادة_الإطار","المادة"]) as string)
      : (titleText.match(/(carbone|aluminium|alu|acier|steel|carbon)/)?.[1]));
  const suspension =
    (typeof announcement?.suspension === "string" ? announcement.suspension : undefined) ??
    (typeof pickAttributeValue(attributes, ["suspension","suspension_avant","suspension_arriere","type_suspension","سuspension","تعليق"]) === "string"
      ? (pickAttributeValue(attributes, ["suspension","suspension_avant","suspension_arriere","type_suspension","سuspension","تعليق"]) as string)
      : (titleText.match(/(full|tout\s?suspendu|suspendu\s?total|full[- ]suspension|semi[- ]rigide|hardtail)/)?.[1]));
  const brake =
    (typeof announcement?.brake_type === "string" ? announcement.brake_type : undefined) ??
    (typeof pickAttributeValue(attributes, ["brake","brake_type","freins","type_de_frein","الفرامل","نوع_الفرامل"]) === "string"
      ? (pickAttributeValue(attributes, ["brake","brake_type","freins","type_de_frein","الفرامل","نوع_الفرامل"]) as string)
      : (titleText.match(/(disque|hydraulique|v[- ]?brake|patins|disc)/)?.[1]));
  const gears =
    (typeof announcement?.gears === "string" ? announcement.gears : undefined) ??
    (typeof pickAttributeValue(attributes, ["gears","vitesses","nbr_vitesses","nombre_vitesses","عدد_السرعات"]) === "string"
      ? (pickAttributeValue(attributes, ["gears","vitesses","nbr_vitesses","nombre_vitesses","عدد_السرعات"]) as string)
      : (titleText.match(/(\d{1,2})\s?(?:vitesses|v|speeds)/)?.[1]));
  const bikeType =
    (typeof announcement?.bike_type === "string" ? announcement.bike_type : undefined) ??
    (typeof pickAttributeValue(attributes, ["bike_type","type","style","categorie","catégorie","نوع"]) === "string"
      ? (pickAttributeValue(attributes, ["bike_type","type","style","categorie","catégorie","نوع"]) as string)
      : (titleText.match(/(vtt|route|gravel|bmx|fixie|hybride|city)/)?.[1]));
  const weight =
    (typeof announcement?.weight === "string" ? announcement.weight : undefined) ??
    (typeof pickAttributeValue(attributes, ["weight","poids","الوزن"]) === "string"
      ? (pickAttributeValue(attributes, ["weight","poids","الوزن"]) as string)
      : (titleText.match(/(\d{1,2}(?:\.\d)?)\s?kg/)?.[1]));
  return { frameSize, wheelSize: wheelResolved, electric, motorized, frameMaterial, suspension, brake, gears, bikeType, weight };
};
const getRealEstateCardData = (announcement: any) => {
  const attributes = announcement?.attributes;

  const surfaceRaw =
    typeof announcement?.surface === "number" ? announcement.surface : undefined;
  const surfaceAttr = toNumberOrUndefined(
    pickAttributeValue(attributes || {}, ["surface", "superficie", "area", "m2", "m²", "مساحة", "متر", "متر_مربع"])
  );
  const surface = typeof surfaceRaw === "number" ? surfaceRaw : surfaceAttr;

  const roomsRaw =
    typeof announcement?.rooms === "number" ? announcement.rooms : undefined;
  const roomsAttr = toNumberOrUndefined(
    pickAttributeValue(attributes || {}, ["rooms", "pieces", "pièces", "غرف", "غرفة"])
  );
  const rooms = typeof roomsRaw === "number" ? roomsRaw : roomsAttr;

  const bedroomsRaw =
    typeof announcement?.bedrooms === "number" ? announcement.bedrooms : undefined;
  const bedroomsAttr = toNumberOrUndefined(
    pickAttributeValue(attributes || {}, ["bedrooms", "chambres", "غرف_نوم", "غرف-نوم", "غرفنوم"])
  );
  const bedrooms = typeof bedroomsRaw === "number" ? bedroomsRaw : bedroomsAttr;

  const floorRaw =
    typeof announcement?.floor === "number" ? announcement.floor : undefined;
  const floorAttr = toNumberOrUndefined(
    pickAttributeValue(attributes || {}, ["floor", "etage", "étage", "طابق"])
  );
  const floor = typeof floorRaw === "number" ? floorRaw : floorAttr;

  const furnishedRaw =
    typeof announcement?.furnished === "boolean" ? announcement.furnished : undefined;
  const furnishedAttr = pickAttributeValue(attributes || {}, ["furnished", "meuble", "meublé", "مفروش", "غير_مفروش"]);
  const furnishedText = typeof furnishedAttr === "string" ? normalizeText(furnishedAttr) : "";
  const furnished =
    typeof furnishedRaw === "boolean"
      ? furnishedRaw
      : furnishedText
        ? (["oui", "true", "meuble", "meubl"].some((t) => furnishedText.includes(t))
            ? true
            : ["non", "false"].some((t) => furnishedText.includes(t))
              ? false
              : undefined)
        : undefined;

  return { surface, rooms, bedrooms, floor, furnished };
};

const CategorySection = ({ 
  category, 
  announcements, 
  showViewAll = false,
  viewAllText = "Voir tout"
}: CategorySectionProps) => {
  const { t, isRTL, language } = useSafeI18nWithRouter();
  const { navigateWithLanguage, getLocalizedPath } = useLanguageNavigation();
  const { fetchFavorites, toggleFavorite, isFavorite } = useFavorites();
  // Toutes les catégories affichent maintenant 24 cartes suivant le modèle des véhicules
  const maxItems = 24;

  useEffect(() => {
    fetchFavorites();
  }, [fetchFavorites]);
  
  const getCategoryName = () => {
    if (category.slug === 'education-loisirs') {
      return t('categories.education-loisirs');
    }

    const translationKey = `categories.${category.slug}`;
    const translation = t(translationKey);
    
    if (translation && translation !== translationKey) {
      return translation;
    }
    
    return category.name;
  };

  const getAnnouncementsCount = () => {
    const count = announcements.length;
    if (count === 1) {
      return `${count} ${t('categories.announcement')}`;
    }
    return `${count} ${t('categories.announcements')}`;
  };

  return (
    <section className="bg-white border rounded-lg p-4 dark:bg-slate-800 dark:border-slate-700">
      <div className="flex items-center mb-4" style={{ justifyContent: 'space-between' }}>
        <div className="flex items-center">
          <div className={`${isRTL ? 'ml-2' : 'mr-2'}`}>
            <img 
              src={category.imageUrl} 
              alt=""
              className="w-8 h-8 object-contain" 
            />
          </div>
          <div>
            <h2 className="text-2xl font-bold text-blue-600 dark:text-blue-400 hover:text-blue-800 dark:hover:text-blue-300 transition-colors duration-200 cursor-pointer">{getCategoryName()}</h2>
            <p className="text-sm text-gray-500 dark:text-slate-400">({getAnnouncementsCount()})</p>
          </div>
        </div>
        {showViewAll && (
          (() => {
            const targetPath =
              category.slug === "vehicules-equipements" ? "/search/vehicles" : `/category/${category.slug}`;
            const to =
              category.slug === "vehicules-equipements" ? getLocalizedPath(targetPath) : targetPath;
            return (
          <Link 
            to={to} 
            className="text-sm font-bold text-black dark:text-white hover:text-gray-700 dark:hover:text-gray-300 flex items-center transition-colors duration-200"
          >
            {viewAllText} <ArrowRight className={`h-4 w-4 ${isRTL ? 'mr-1' : 'ml-1'}`} />
          </Link>
            );
          })()
        )}
      </div>
      
      {announcements.length > 0 ? (
        <SmartAnnouncementsGrid itemsPerRow={3}>
          {announcements.slice(0, maxItems).map((announcement) => {
            const { year, fuel, transmission, mileage } = getVehicleCardData(announcement as any);
            const { storage, ram, batteryHealth } = getTelephonieCardData(announcement as any);
            const { surface, rooms, bedrooms, floor, furnished } = getRealEstateCardData(announcement as any);
            const { storage: compStorage, ram: compRam, screen: compScreen, cpu: compCpu, gpu: compGpu, os: compOs, hz: compHz } = getComputerCardData(announcement as any);
            const { frameSize, wheelSize, electric, motorized, frameMaterial, suspension, brake, gears, bikeType, weight } = getBikeCardData(announcement as any);
            const anyAnnouncement = announcement as any;
            const createdAt =
              anyAnnouncement?.created_at ??
              anyAnnouncement?.createdAt ??
              (typeof (announcement as any)?.date === "string" ? (announcement as any).date : undefined);
            const hasCreatedAt = createdAt != null && String(createdAt).trim().length > 0;
            const rawWilaya = anyAnnouncement.wilaya;
            const wilayaLabel = (() => {
              if (rawWilaya == null) return "";
              const s = String(rawWilaya).trim();
              // Numeric code -> lookup table
              if (/^\d+$/.test(s)) {
                const obj = wilayas.find(w => w.code.toString() === s);
                if (obj) return language === 'ar' ? obj.name_ar : obj.name;
              }
              // Label -> try match by FR name then prefer AR if interface is arabic
              const byName = wilayas.find(w => w.name === s || w.name_ar === s);
              if (byName) return language === 'ar' ? byName.name_ar : byName.name;
              // Fallback: use raw
              return s;
            })();
            const rawCommune = typeof anyAnnouncement.commune === "string" ? anyAnnouncement.commune : "";
            const rawLocation = typeof announcement.location === "string" ? announcement.location : "";
            const locality = rawCommune.trim() || rawLocation.trim();
            const imageUrl = announcement.imageUrl || announcement.imageUrls?.[0] || "";
            const hasPrice = typeof announcement.price === "number" && Number.isFinite(announcement.price) && announcement.price > 0;
            const hasMileage = typeof mileage === "number" && Number.isFinite(mileage) && mileage > 0;
            const hasTransmission = typeof transmission === "string" && transmission.trim().length > 0;
            const showSpecs = hasMileage || hasTransmission;
            const specsColumns = hasMileage && hasTransmission ? "grid-cols-2" : "grid-cols-1";

            const isTelephonie =
              category.slug === "telephonie" ||
              anyAnnouncement.category_id === "telephonie" ||
              anyAnnouncement.categorySlug === "telephonie" ||
              anyAnnouncement.categories?.slug === "telephonie";
            const hasStorage = typeof storage === "string" && storage.trim().length > 0;
            const hasRam = typeof ram === "string" && ram.trim().length > 0;
            const hasBatteryHealth = typeof batteryHealth === "string" && batteryHealth.trim().length > 0;
            const showTelSpecs = isTelephonie && (hasStorage || hasRam || hasBatteryHealth);
            
            const isRealEstate =
              category.slug === "immobilier-maison" ||
              anyAnnouncement.category_id === "immobilier-maison" ||
              anyAnnouncement.categorySlug === "immobilier-maison" ||
              anyAnnouncement.categories?.slug === "immobilier-maison";
            const hasSurface = typeof surface === "number" && Number.isFinite(surface) && surface > 0;
            const hasRooms = typeof rooms === "number" && Number.isFinite(rooms) && rooms > 0;
            const hasBedrooms = typeof bedrooms === "number" && Number.isFinite(bedrooms) && bedrooms > 0;
            const showImmoSpecs = isRealEstate && (hasSurface || hasRooms || hasBedrooms);
            
            const isComputer =
              category.slug === "informatique-electronique" ||
              anyAnnouncement.category_id === "informatique-electronique" ||
              anyAnnouncement.categorySlug === "informatique-electronique" ||
              anyAnnouncement.categories?.slug === "informatique-electronique";
            const hasCompStorage = typeof compStorage === "string" && compStorage.trim().length > 0;
            const hasCompRam = typeof compRam === "string" && compRam.trim().length > 0;
            const hasCompScreen = typeof compScreen === "string" && compScreen.trim().length > 0;
            const hasCompCpu = typeof compCpu === "string" && compCpu.trim().length > 0;
            const hasCompGpu = typeof compGpu === "string" && compGpu.trim().length > 0;
            const hasCompOs = typeof compOs === "string" && compOs.trim().length > 0;
            const hasCompHz = typeof compHz === "string" && compHz.trim().length > 0;
            const showComputerSpecs = isComputer && (hasCompStorage || hasCompRam || hasCompScreen || hasCompCpu || hasCompGpu || hasCompOs || hasCompHz);

            const isBike =
              category.slug === "velo-cyclisme-equipements" ||
              anyAnnouncement.category_id === "velo-cyclisme-equipements" ||
              anyAnnouncement.categorySlug === "velo-cyclisme-equipements" ||
              anyAnnouncement.categories?.slug === "velo-cyclisme-equipements";
            const isVehicle =
              category.slug === "vehicules" ||
              anyAnnouncement.category_id === "vehicules" ||
              anyAnnouncement.categorySlug === "vehicules" ||
              anyAnnouncement.categories?.slug === "vehicules" ||
              category.slug === "vehicules-equipements" ||
              anyAnnouncement.category_id === "vehicules-equipements" ||
              anyAnnouncement.categorySlug === "vehicules-equipements" ||
              anyAnnouncement.categories?.slug === "vehicules-equipements" ||
              category.slug === "vehicules-camions-motos" ||
              anyAnnouncement.category_id === "vehicules-camions-motos" ||
              anyAnnouncement.categorySlug === "vehicules-camions-motos" ||
              anyAnnouncement.categories?.slug === "vehicules-camions-motos";
            const hasFrame = typeof frameSize === "string" && frameSize.trim().length > 0;
            const hasWheel = typeof wheelSize === "string" && wheelSize.trim().length > 0;
            const hasFrameMaterial = typeof frameMaterial === "string" && frameMaterial.trim().length > 0;
            const hasSuspension = typeof suspension === "string" && suspension.trim().length > 0;
            const hasBrake = typeof brake === "string" && brake.trim().length > 0;
            const hasGears = typeof gears === "string" && gears.trim().length > 0;
            const hasBikeType = typeof bikeType === "string" && bikeType.trim().length > 0;
            const hasWeight = typeof weight === "string" && weight.trim().length > 0;
            const showBikeSpecs = isBike && (hasFrame || hasWheel || typeof electric === "boolean" || typeof motorized === "boolean" || hasFrameMaterial || hasSuspension || hasBrake || hasGears || hasBikeType || hasWeight);
            
            const announcementUrl = `${window.location.origin}/annonce/${announcement.id}`;
            const shareTitle = announcement.title;
            const favorite = isFavorite(announcement.id);

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

            const handleFavorite = async (e: React.MouseEvent) => {
              e.stopPropagation();
              await toggleFavorite(announcement.id);
            };

            const copyToClipboard = () => {
              navigator.clipboard.writeText(announcementUrl);
              toast.success(t('common.linkCopied') || "Lien copié !", {
                description: t('common.linkCopiedDesc') || "Le lien a été copié dans votre presse-papiers."
              });
            };

            return (
              <div
                key={announcement.id}
                className="group flex flex-col transition-all duration-300 transform hover:scale-[1.02] hover:-translate-y-1 rounded-[24px] overflow-hidden relative h-full bg-slate-50 shadow-[0_10px_30px_-10px_rgba(22,163,74,0.25),0_6px_10px_-2px_rgba(22,163,74,0.15)] border border-[rgba(22,163,74,0.05)] dark:bg-[linear-gradient(145deg,#1e293b,#0f172a)] dark:shadow-[0_0_20px_rgba(255,255,255,0.25)] dark:border-none cursor-pointer"
                onClick={() => navigateWithLanguage(`/annonce/${announcement.id}`)}
              >
                {/* Cadre supérieur - Photo avec effet de retrait (recessed) */}
                <div className="p-2 pb-0">
                  <div className="relative h-48 overflow-hidden rounded-[24px] border-[3px] border-red-500/80 bg-white p-1.5 shadow-[0_8px_16px_rgba(0,0,0,0.1)] group-hover:border-red-600 group-hover:shadow-[0_12px_24px_rgba(220,38,38,0.2)] transition-all duration-300">
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

                      {imageUrl ? (
                        <img
                          src={imageUrl}
                          alt={announcement.title}
                          className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-500"
                        />
                      ) : (
                        <div className="w-full h-full bg-slate-200 dark:bg-slate-700" />
                      )}

                      {/* Overlay Badges inside Recessed Container */}
                      {isVehicle && ((announcement as any).is_urgent || announcement.isUrgent || year) ? (
                        <div className={cn("absolute top-2 z-20 flex flex-col gap-1", isRTL ? "left-2 items-start" : "left-2 items-start")}>
                          {(announcement as any).is_urgent || announcement.isUrgent ? (
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
                      ) : year ? (
                        <div className={cn("absolute top-2 bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400 px-2 py-1 rounded text-xs font-bold border border-blue-100 dark:border-blue-800", isRTL ? "left-2" : "left-2")}>
                          {year}
                        </div>
                      ) : null}

                      {fuel ? (
                        <div className={cn("absolute bottom-2 bg-emerald-500 text-white px-2 py-1 rounded text-xs font-bold flex items-center gap-1", isRTL ? "left-2" : "left-2")}>
                          <Fuel className="w-3 h-3" /> {fuel}
                        </div>
                      ) : null}

                      {/* Informatique & Électronique - overlay badges */}
                      {isComputer && (hasCompScreen || hasCreatedAt) ? (
                        <div className={cn("absolute top-2 z-20 flex flex-col gap-1", isRTL ? "left-2 items-start" : "left-2 items-start")}>
                          {hasCompScreen ? (
                            <span className="bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400 px-2 py-1 rounded text-xs font-bold border border-blue-100 dark:border-blue-800">
                              {localizeLabel(compScreen, language, 'screen')}
                            </span>
                          ) : null}
                        </div>
                      ) : null}

                      {isComputer && hasCompStorage ? (
                        <div className={cn("absolute bottom-2 bg-emerald-500 text-white px-2 py-1 rounded text-xs font-bold flex items-center gap-1", isRTL ? "left-2" : "left-2")}>
                          <HardDrive className="w-3 h-3" /> {localizeLabel(compStorage, language, 'storage')}
                        </div>
                      ) : null}

                      {/* Vélo, Cyclisme & Équipements - overlay badges */}
                      {isBike && (hasWheel || typeof electric === "boolean" || typeof motorized === "boolean") ? (
                        <>
                          {hasWheel ? (
                            <div className={cn("absolute top-2 bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400 px-2 py-1 rounded text-xs font-bold border border-blue-100 dark:border-blue-800", isRTL ? "left-2" : "left-2")}>
                              {localizeLabel(wheelSize, language, 'wheel')}
                            </div>
                          ) : null}
                          {(typeof electric === "boolean" || typeof motorized === "boolean") ? (
                            <div className={cn("absolute bottom-2 flex items-center gap-2", isRTL ? "left-2" : "left-2")}>
                              {typeof electric === "boolean" ? (
                                <div className="bg-emerald-500 text-white px-2 py-1 rounded text-xs font-bold flex items-center gap-1 shadow-sm">
                                  <Zap className="w-3 h-3" /> {electric ? (isRTL ? "كهربائي" : "Électrique") : (isRTL ? "غير كهربائي" : "Non électrique")}
                                </div>
                              ) : null}
                              {typeof motorized === "boolean" ? (
                                <div className="bg-amber-500 text-white px-2 py-1 rounded text-xs font-bold flex items-center gap-1 shadow-sm">
                                  <Cog className="w-3 h-3" /> {motorized ? (
                                    language === 'ar' ? "مزودة بمحرك" :
                                    language === 'en' ? "Motorized" :
                                    language === 'de' ? "Motorisiert" :
                                    language === 'it' ? "Motorizzata" :
                                    language === 'es' ? "Motorizada" : "Motorisé"
                                  ) : (
                                    language === 'ar' ? "غير مزودة بمحرك" :
                                    language === 'en' ? "Not motorized" :
                                    language === 'de' ? "Nicht motorisiert" :
                                    language === 'it' ? "Non motorizzata" :
                                    language === 'es' ? "No motorizada" : "Non motorisé"
                                  )}
                                </div>
                              ) : null}
                            </div>
                          ) : null}
                        </>
                      ) : null}

                      {announcement.isUrgent ? (
                        <div className={cn("absolute top-2 bg-red-500 text-white px-2 py-1 rounded text-xs font-bold animate-pulse", isRTL ? "left-2" : "left-2")}>
                          URGENT
                        </div>
                      ) : null}
                    </div>
                  </div>
                </div>

                <div className="p-4">
                  <div className="flex justify-between items-start mb-2">
                    <h3 className="font-bold text-lg line-clamp-1">{announcement.title}</h3>
                  </div>

                  <div className="flex items-center justify-between text-sm text-muted-foreground mb-4">
                    <div className="flex flex-col">
                      <span className="flex items-center mb-1">
                        <MapPin className="w-3 h-3 mr-1" />
                        {(() => {
                          const communeLabel = rawCommune.trim();
                          const delim = language === 'ar' ? '، ' : ', ';
                          if (communeLabel && normalizeText(communeLabel) !== normalizeText(wilayaLabel)) {
                            return `${wilayaLabel}${delim}${communeLabel}`;
                          }
                          return wilayaLabel || (locality || '');
                        })()}
                      </span>
                      {hasCreatedAt ? (
                        <span className="text-sm font-bold text-slate-500 dark:text-slate-400">
                          {formatRelativeTime(createdAt)}
                        </span>
                      ) : null}
                    </div>
                    {hasPrice ? (
                      <span className="font-bold text-emerald-600 whitespace-nowrap">
                        {formatPriceMillions(announcement.price)}
                      </span>
                    ) : null}
                  </div>

                  {showImmoSpecs ? (
                    <div className="flex flex-wrap gap-2 text-xs text-slate-600 dark:text-slate-400 -mt-2 mb-4">
                      {hasSurface ? (
                        <div className="bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-blue-100 dark:border-blue-800">
                          <Ruler className="w-3 h-3" /> {surface} m²
                        </div>
                      ) : null}
                      {hasRooms ? (
                        <div className="bg-purple-50 dark:bg-purple-900/20 text-purple-600 dark:text-purple-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-purple-100 dark:border-purple-800">
                          <DoorOpen className="w-3 h-3" /> {rooms} pièces
                        </div>
                      ) : null}
                      {hasBedrooms ? (
                        <div className="bg-green-50 dark:bg-green-900/20 text-green-600 dark:text-green-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-green-100 dark:border-green-800">
                          <Bed className="w-3 h-3" /> {bedrooms} ch
                        </div>
                      ) : null}
                      {typeof floor === "number" && Number.isFinite(floor) && floor >= 0 ? (
                        <div className="bg-slate-100 dark:bg-slate-800 px-2 py-1 rounded flex items-center justify-center gap-1">
                          <Layers className="w-3 h-3" /> Étage {floor}
                        </div>
                      ) : null}
                      {typeof furnished === "boolean" ? (
                        <div className="bg-slate-100 dark:bg-slate-800 px-2 py-1 rounded flex items-center justify-center gap-1">
                          <Home className="w-3 h-3" /> {furnished ? "Meublé" : "Non meublé"}
                        </div>
                      ) : null}
                    </div>
                  ) : null}

                  {showBikeSpecs ? (
                    <div className="flex flex-wrap gap-2 text-xs -mt-2 mb-4">
                      {hasFrame ? (
                        <div className="bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-blue-100 dark:border-blue-800">
                          <Ruler className="w-3 h-3" /> {frameSize}
                        </div>
                      ) : null}
                      {hasWheel ? (
                        <div className="bg-purple-50 dark:bg-purple-900/20 text-purple-600 dark:text-purple-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-purple-100 dark:border-purple-800">
                          <Circle className="w-3 h-3" /> {localizeLabel(wheelSize, language, 'wheel')}
                        </div>
                      ) : null}
                      {typeof electric === "boolean" ? (
                        <div className="bg-green-50 dark:bg-green-900/20 text-green-600 dark:text-green-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-green-100 dark:border-green-800">
                          <Zap className="w-3 h-3" /> {electric ? (isRTL ? "كهربائي" : "Électrique") : (isRTL ? "غير كهربائي" : "Non électrique")}
                        </div>
                      ) : null}
                      {typeof motorized === "boolean" ? (
                        <div className="bg-amber-50 dark:bg-amber-900/20 text-amber-600 dark:text-amber-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-amber-100 dark:border-amber-800">
                          <Cog className="w-3 h-3" /> {motorized ? (isRTL ? "مزودة بمحرك" : "Motorisé") : (isRTL ? "غير مزودة بمحرك" : "Non motorisé")}
                        </div>
                      ) : null}
                      {hasBikeType ? (
                        <div className="bg-slate-100 dark:bg-slate-800 px-2 py-1 rounded flex items-center justify-center gap-1">
                          <Bike className="w-3 h-3" /> {localizeLabel(bikeType, language, 'bikeType')}
                        </div>
                      ) : null}
                      {hasFrameMaterial ? (
                        <div className="bg-teal-50 dark:bg-teal-900/20 text-teal-600 dark:text-teal-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-teal-100 dark:border-teal-800">
                          <Feather className="w-3 h-3" /> {localizeLabel(frameMaterial, language, 'material')}
                        </div>
                      ) : null}
                      {hasSuspension ? (
                        <div className="bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-blue-100 dark:border-blue-800">
                          <Waves className="w-3 h-3" /> {localizeLabel(suspension, language, 'suspension')}
                        </div>
                      ) : null}
                      {hasBrake ? (
                        <div className="bg-purple-50 dark:bg-purple-900/20 text-purple-600 dark:text-purple-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-purple-100 dark:border-purple-800">
                          <Disc className="w-3 h-3" /> {localizeLabel(brake, language, 'brake')}
                        </div>
                      ) : null}
                      {hasGears ? (
                        <div className="bg-slate-100 dark:bg-slate-800 px-2 py-1 rounded flex items-center justify-center gap-1">
                          <Cog className="w-3 h-3" /> {localizeLabel(gears, language, 'gears')}
                        </div>
                      ) : null}
                      {hasWeight ? (
                        <div className="bg-green-50 dark:bg-green-900/20 text-green-600 dark:text-green-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-green-100 dark:border-green-800">
                          <Feather className="w-3 h-3" /> {localizeLabel(weight, language, 'weight')}
                        </div>
                      ) : null}
                    </div>
                  ) : null}

                  {showTelSpecs ? (
                    <div className="flex flex-wrap gap-2 text-xs text-slate-600 dark:text-slate-400 -mt-2 mb-4">
                      {hasStorage ? (
                        <div className="bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-blue-100 dark:border-blue-800">
                          <HardDrive className="w-3 h-3" /> {storage}
                        </div>
                      ) : null}
                      {hasRam ? (
                        <div className="bg-purple-50 dark:bg-purple-900/20 text-purple-600 dark:text-purple-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-purple-100 dark:border-purple-800">
                          <Smartphone className="w-3 h-3" /> {ram}
                        </div>
                      ) : null}
                      {hasBatteryHealth ? (
                        <div className="bg-green-50 dark:bg-green-900/20 text-green-600 dark:text-green-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-green-100 dark:border-green-800">
                          <BatteryCharging className="w-3 h-3" /> {batteryHealth}
                        </div>
                      ) : null}
                    </div>
                  ) : null}

                  {showComputerSpecs ? (
                    <div className="flex flex-wrap gap-2 text-xs -mt-2 mb-4">
                      {hasCompStorage ? (
                        <div className="bg-blue-50 dark:bg-blue-900/20 text-blue-600 dark:text-blue-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-blue-100 dark:border-blue-800">
                          <HardDrive className="w-3 h-3" /> {localizeLabel(compStorage, language, 'storage')}
                        </div>
                      ) : null}
                      {hasCompRam ? (
                        <div className="bg-purple-50 dark:bg-purple-900/20 text-purple-600 dark:text-purple-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-purple-100 dark:border-purple-800">
                          <Cpu className="w-3 h-3" /> {localizeLabel(compRam, language, 'ram')}
                        </div>
                      ) : null}
                      {hasCompScreen ? (
                        <div className="bg-green-50 dark:bg-green-900/20 text-green-600 dark:text-green-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-green-100 dark:border-green-800">
                          <Monitor className="w-3 h-3" /> {localizeLabel(compScreen, language, 'screen')}
                        </div>
                      ) : null}
                      {hasCompCpu ? (
                        <div className="bg-purple-50 dark:bg-purple-900/20 text-purple-600 dark:text-purple-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-purple-100 dark:border-purple-800">
                          <Cpu className="w-3 h-3" /> {compCpu}
                        </div>
                      ) : null}
                      {hasCompGpu ? (
                        <div className="bg-teal-50 dark:bg-teal-900/20 text-teal-600 dark:text-teal-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-teal-100 dark:border-teal-800">
                          <Activity className="w-3 h-3" /> {compGpu}
                        </div>
                      ) : null}
                      {hasCompOs ? (
                        <div className="bg-slate-100 dark:bg-slate-800 text-slate-700 dark:text-slate-300 px-2 py-1 rounded flex items-center justify-center gap-1 border border-slate-200 dark:border-slate-700">
                          <Globe className="w-3 h-3" /> {localizeLabel(compOs, language, 'os')}
                        </div>
                      ) : null}
                      {hasCompHz ? (
                        <div className="bg-green-50 dark:bg-green-900/20 text-green-600 dark:text-green-400 px-2 py-1 rounded flex items-center justify-center gap-1 border border-green-100 dark:border-green-800">
                          <Activity className="w-3 h-3" /> {localizeLabel(compHz, language, 'hz')}
                        </div>
                      ) : null}
                    </div>
                  ) : null}

                  {showSpecs ? (
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

                  {/* Overlay "Aperçu" avec effet jupe */}
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
        </SmartAnnouncementsGrid>
      ) : (
        <p className="w-full py-4 text-gray-500 !text-center dark:text-slate-400">
          {t('announcements.noResults')}
        </p>
      )}
    </section>
  );
};

export default CategorySection;
