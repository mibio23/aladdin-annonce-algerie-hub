/**
 * Calcul de distance entre deux points GPS en utilisant la formule de Haversine
 * @param lat1 Latitude du premier point
 * @param lng1 Longitude du premier point
 * @param lat2 Latitude du deuxième point
 * @param lng2 Longitude du deuxième point
 * @returns Distance en kilomètres
 */
import { wilayas } from "../data/wilayaData";

export const calculateDistance = (lat1: number, lng1: number, lat2: number, lng2: number): number => {
    const R = 6371; // Rayon de la Terre en km
    const dLat = deg2rad(lat2 - lat1);
    const dLon = deg2rad(lng2 - lng1);
    const a = 
        Math.sin(dLat/2) * Math.sin(dLat/2) +
        Math.cos(deg2rad(lat1)) * Math.cos(deg2rad(lat2)) * 
        Math.sin(dLon/2) * Math.sin(dLon/2);
    const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1-a));
    return R * c; // Distance en km
};

/**
 * Conversion de degrés à radians
 */
const deg2rad = (deg: number): number => {
    return deg * (Math.PI/180);
};

/**
 * Coordonnées GPS des 58 wilayas d'Algérie (centre géographique)
 */
export const wilayaCoordinates = {
    1: { lat: 27.8667, lng: -0.2833 }, // Adrar
    2: { lat: 36.1667, lng: 1.3333 }, // Chlef
    3: { lat: 33.8000, lng: 2.8667 }, // Laghouat
    4: { lat: 35.8742, lng: 7.1136 }, // Oum El Bouaghi
    5: { lat: 35.5667, lng: 6.1833 }, // Batna
    6: { lat: 36.7525, lng: 5.0642 }, // Béjaïa
    7: { lat: 34.8500, lng: 5.7167 }, // Biskra
    8: { lat: 31.6167, lng: -2.2167 }, // Béchar
    9: { lat: 36.4203, lng: 2.8277 }, // Blida
    10: { lat: 36.3833, lng: 3.9000 }, // Bouira
    11: { lat: 22.7850, lng: 5.5228 }, // Tamanrasset
    12: { lat: 35.4000, lng: 8.1167 }, // Tébessa
    13: { lat: 34.8780, lng: -1.3157 }, // Tlemcen
    14: { lat: 35.3667, lng: 1.3167 }, // Tiaret
    15: { lat: 36.7167, lng: 4.0500 }, // Tizi Ouzou
    16: { lat: 36.7538, lng: 3.0588 }, // Alger
    17: { lat: 34.6667, lng: 3.2500 }, // Djelfa
    18: { lat: 36.8167, lng: 5.7667 }, // Jijel
    19: { lat: 36.1833, lng: 5.4000 }, // Sétif
    20: { lat: 34.8667, lng: 0.1500 }, // Saïda
    21: { lat: 36.8667, lng: 6.9000 }, // Skikda
    22: { lat: 35.1833, lng: -0.6333 }, // Sidi Bel Abbès
    23: { lat: 36.9000, lng: 7.7667 }, // Annaba
    24: { lat: 36.4667, lng: 7.4333 }, // Guelma
    25: { lat: 36.3650, lng: 6.6147 }, // Constantine
    26: { lat: 36.2667, lng: 2.7500 }, // Médéa
    27: { lat: 35.9333, lng: 0.0833 }, // Mostaganem
    28: { lat: 35.7000, lng: 4.4833 }, // M'Sila
    29: { lat: 35.3833, lng: 0.1333 }, // Mascara
    30: { lat: 31.9500, lng: 5.3333 }, // Ouargla
    31: { lat: 35.6976, lng: -0.6337 }, // Oran
    32: { lat: 33.6833, lng: 1.0000 }, // El Bayadh
    33: { lat: 26.5000, lng: 8.4833 }, // Illizi
    34: { lat: 36.0667, lng: 4.7667 }, // Bordj Bou Arreridj
    35: { lat: 36.7667, lng: 3.4833 }, // Boumerdès
    36: { lat: 36.7667, lng: 8.3167 }, // El Tarf
    37: { lat: 27.6667, lng: -8.1333 }, // Tindouf
    38: { lat: 35.6000, lng: 1.8167 }, // Tissemsilt
    39: { lat: 33.3667, lng: 6.8667 }, // El Oued
    40: { lat: 35.4333, lng: 7.1333 }, // Khenchela
    41: { lat: 36.2833, lng: 7.9500 }, // Souk Ahras
    42: { lat: 36.5833, lng: 2.4333 }, // Tipaza
    43: { lat: 36.4500, lng: 6.2667 }, // Mila
    44: { lat: 36.2667, lng: 1.9667 }, // Aïn Defla
    45: { lat: 33.2667, lng: -0.3167 }, // Naâma
    46: { lat: 35.3000, lng: -1.0500 }, // Aïn Témouchent
    47: { lat: 32.4833, lng: 3.6667 }, // Ghardaïa
    48: { lat: 35.7333, lng: 0.5333 }, // Relizane
    49: { lat: 29.2500, lng: 0.2167 }, // Timimoun
    50: { lat: 21.3333, lng: 0.9167 }, // Bordj Badji Mokhtar
    51: { lat: 34.3833, lng: 5.9000 }, // Ouled Djellal
    52: { lat: 30.1333, lng: -2.1667 }, // Béni Abbès
    53: { lat: 27.2167, lng: 2.4833 }, // In Salah
    54: { lat: 19.5667, lng: 5.7667 }, // In Guezzam
    55: { lat: 33.1000, lng: 6.0667 }, // Touggourt
    56: { lat: 24.5533, lng: 9.4844 }, // Djanet
    57: { lat: 33.9000, lng: 6.1333 }, // El M'Ghair
    58: { lat: 30.5833, lng: 2.8833 } // El Meniaa
};

/**
 * Récupère les coordonnées GPS d'une wilaya à partir de son code
 * @param wilayaCode Code de la wilaya
 * @returns Coordonnées GPS ou null si le code est invalide
 */
export const getWilayaCoordinates = (wilayaCode: number | string): { lat: number; lng: number } | null => {
    const code = typeof wilayaCode === 'string' ? parseInt(wilayaCode) : wilayaCode;
    if (code >= 1 && code <= 58) {
        return wilayaCoordinates[code as keyof typeof wilayaCoordinates];
    }
    return null;
};

export const isArabicText = (text: string): boolean => {
    const arabicRegex = /[\u0600-\u06FF\u0750-\u077F\u08A0-\u08FF]/;
    return arabicRegex.test(text || '');
};

export const normalizeArabicDiacritics = (text: string): string => {
    return (text || '')
        .replace(/[\u064B-\u0652\u0670\u0640]/g, '')
        .replace(/[\u0671]/g, 'ا')
        .replace(/[\u0622\u0623\u0625]/g, 'ا')
        .replace(/[\u0629]/g, 'ة')
        .replace(/\s+/g, ' ')
        .trim();
};

export const normalizeLatin = (text: string): string => {
    return (text || '')
        .toLowerCase()
        .normalize('NFD')
        .replace(/[\u0300-\u036f]/g, '')
        .replace(/[^a-z0-9]+/g, ' ')
        .replace(/\s+/g, ' ')
        .trim();
};

const escapeRegExp = (value: string) => value.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');

export const buildLooseBoundaryRegex = (needle: string) => {
    const parts = needle.split(/\s+/g).filter(Boolean).map(escapeRegExp);
    if (parts.length === 0) return null;
    const inner = parts.join('\\s+');
    return new RegExp(`(?:^|[\\s、،,.;:()\\-_/])${inner}(?:$|[\\s、،,.;:()\\-_/])`, 'i');
};

const findWilayaByNameVariant = (value: string) => {
    const raw = (value || '').trim();
    if (!raw) return null;

    const valueIsArabic = isArabicText(raw);
    const normalizedArabicValue = normalizeArabicDiacritics(raw);
    const normalizedLatinValue = normalizeLatin(raw);

    for (const w of wilayas) {
        const variants = [w.name, w.name_fr, w.name_ar].filter(Boolean) as string[];
        for (const v of variants) {
            const vIsArabic = isArabicText(v);
            if (valueIsArabic || vIsArabic) {
                if (normalizeArabicDiacritics(v) === normalizedArabicValue) return w;
            } else {
                if (normalizeLatin(v) === normalizedLatinValue) return w;
            }
        }
    }
    return null;
};

const findWilayaInText = (text: string) => {
    if (!text.trim()) return null;

    const wantsArabicMatch = isArabicText(text);
    const haystackArabic = normalizeArabicDiacritics(text);
    const haystackLatin = normalizeLatin(text);

    for (const w of wilayas) {
        const variants = [w.name_ar, w.name_fr, w.name].filter(Boolean) as string[];
        for (const variant of variants) {
            const isVariantArabic = isArabicText(variant);
            if (wantsArabicMatch && !isVariantArabic) continue;

            const needle = isVariantArabic ? normalizeArabicDiacritics(variant) : normalizeLatin(variant);
            const haystack = isVariantArabic ? haystackArabic : haystackLatin;
            const regex = buildLooseBoundaryRegex(needle);
            if (regex && regex.test(haystack)) return w;
        }
    }

    return null;
};

export const extractWilayaCodeFromText = (text: string): string | null => {
    const w = findWilayaInText(text);
    return w ? w.code.toString() : null;
};

export const extractWilayaNameFromText = (text: string): string | null => {
    const w = findWilayaInText(text);
    return w ? w.name : null;
};

export const extractWilayaFromText = (text: string): { code: string; name: string } | null => {
    const w = findWilayaInText(text);
    return w ? { code: w.code.toString(), name: w.name } : null;
};

export const coerceWilayaCode = (value: string | undefined | null): string | null => {
    if (!value) return null;
    const trimmed = value.trim();
    if (!trimmed) return null;
    if (/^\d+$/.test(trimmed)) return trimmed;
    const w = findWilayaByNameVariant(trimmed);
    return w ? w.code.toString() : null;
};

/**
 * Récupère le code de wilaya à partir de son nom
 * @param wilayaName Nom de la wilaya (français, arabe ou anglais)
 * @returns Code de la wilaya ou null si le nom n'est pas trouvé
 */
export const getWilayaCodeByName = (wilayaName: string): number | null => {
    const raw = (wilayaName || '').trim();
    if (!raw) return null;
    if (/^\d+$/.test(raw)) {
        const parsed = parseInt(raw, 10);
        return parsed >= 1 && parsed <= 58 ? parsed : null;
    }

    const normalizedLatinValue = normalizeLatin(raw);
    if (normalizedLatinValue === 'algiers') return 16;

    const direct = findWilayaByNameVariant(raw);
    if (direct) return direct.code;

    const extracted = extractWilayaCodeFromText(raw);
    if (extracted && /^\d+$/.test(extracted)) {
        const parsed = parseInt(extracted, 10);
        return parsed >= 1 && parsed <= 58 ? parsed : null;
    }
    return null;
};

/**
 * Calcul la distance entre deux wilayas
 * @param wilayaCode1 Code de la première wilaya
 * @param wilayaCode2 Code de la deuxième wilaya
 * @returns Distance en kilomètres ou null si les codes sont invalides
 */
export const calculateDistanceBetweenWilayas = (wilayaCode1: number | string, wilayaCode2: number | string): number | null => {
    const coords1 = getWilayaCoordinates(wilayaCode1);
    const coords2 = getWilayaCoordinates(wilayaCode2);
    
    if (coords1 && coords2) {
        return calculateDistance(coords1.lat, coords1.lng, coords2.lat, coords2.lng);
    }
    
    return null;
};

/**
 * Trouve les wilayas dans un rayon autour d'une wilaya donnée
 * @param centerWilayaCode Code de la wilaya centrale
 * @param radius Rayon en kilomètres
 * @returns Liste des codes de wilayas dans le rayon
 */
export const findWilayasInRadius = (centerWilayaCode: number | string, radius: number): number[] => {
    const centerCoords = getWilayaCoordinates(centerWilayaCode);
    
    if (!centerCoords) {
        return [];
    }
    
    const wilayasInRadius: number[] = [];
    
    for (let code = 1; code <= 58; code++) {
        if (code === Number(centerWilayaCode)) {
            wilayasInRadius.push(code);
            continue;
        }
        
        const coords = getWilayaCoordinates(code);
        if (coords) {
            const distance = calculateDistance(centerCoords.lat, centerCoords.lng, coords.lat, coords.lng);
            if (distance <= radius) {
                wilayasInRadius.push(code);
            }
        }
    }
    
    return wilayasInRadius;
};
