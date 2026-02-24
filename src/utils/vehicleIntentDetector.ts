
import { vehicleDictionary } from '@/data/search/vehicleDictionary';
import { wilayas } from '@/data/wilayaData';
import { mockVehicleAnnouncements } from '@/data/mock/vehicleAnnouncements';
import { normalizeArabicDiacritics } from '@/services/arabicSearchEnhancer';

export interface VehicleIntent {
  isVehicleSearch: boolean;
  confidence: number;
  filters: {
    brand: string[];
    model: string[];
    type: string[];
    fuel: string[];
    transmission: string[];
    condition: string[];
    paper: string[];
    years: number[];
    region: string[];
    wilaya: string[];
  };
  originalQuery: string;
  remainingQuery: string; // Query with detected terms removed
}

const normalizeText = (text: string): string => {
  const normalizedArabic = normalizeArabicDiacritics(text);
  return normalizedArabic.toLowerCase()
    .normalize("NFD").replace(/[\u0300-\u036f]/g, "") // Remove accents
    .trim();
};

const tokenize = (text: string): string[] => {
  const normalized = normalizeText(text).replace(/[^a-z0-9]+/g, ' ').trim();
  if (!normalized) return [];
  const STOPWORDS = new Set([
    'de', 'du', 'des', 'la', 'le', 'les', 'et', 'a', 'au', 'aux', 'en', 'avec',
    'pack', 'line', 'full', 'option', 'options', 'edition', 'serie',
    'r', 'rs', 'rline', 'r-line', 'gt', 'gti', 'tdi', 'tce', 'dci', 'hdi', 'mpi',
  ]);
  return normalized
    .split(/\s+/g)
    .map(t => t.trim())
    .filter(Boolean)
    .filter(t => !STOPWORDS.has(t))
    .filter(t => (/[a-z]/.test(t) ? t.length >= 3 : t.length >= 2));
};

const mockAnnouncementTokenSets: Array<Set<string>> = mockVehicleAnnouncements.map(a => {
  const tokens = new Set<string>();
  tokenize(a.title).forEach(t => tokens.add(t));
  tokenize(a.vehicleDetails.brand).forEach(t => tokens.add(t));
  tokenize(a.vehicleDetails.model).forEach(t => tokens.add(t));
  tokenize(a.vehicleDetails.type).forEach(t => tokens.add(t));
  return tokens;
});

const matchesMockVehicleAnnouncement = (query: string): boolean => {
  const queryTokens = tokenize(query);
  if (queryTokens.length === 0) return false;

  for (const tokenSet of mockAnnouncementTokenSets) {
    let intersection = 0;
    let hasLongTokenMatch = false;

    for (const token of queryTokens) {
      if (tokenSet.has(token)) {
        intersection += 1;
        if (token.length >= 5) hasLongTokenMatch = true;
      }
    }

    if (intersection >= 2) return true;
    if (intersection >= 1 && hasLongTokenMatch) return true;
  }

  return false;
};

const REGION_KEYWORDS: Record<string, string[]> = {
  'eu': ['europeen', 'europeenne', 'allemande', 'francaise', 'italienne', 'europe', 'germany', 'france', 'italy'],
  'us': ['americain', 'americaine', 'usa', 'us', 'etats-unis', 'american'],
  'asia': ['asiatique', 'japonaise', 'coreenne', 'asian', 'japan', 'korea', 'toyota', 'honda'], // Toyota/Honda imply asian if not matched by brand dictionary logic specifically
  'cn': ['chinois', 'chinoise', 'chinese', 'china'],
  'dz': ['algerien', 'algerienne', 'local', 'algerie', 'dz']
};

export const detectVehicleIntent = (query: string): VehicleIntent => {
  const normalizedQuery = normalizeText(query);
  let remainingQuery = normalizedQuery;
  let _matchCount = 0;
  
  const result: VehicleIntent = {
    isVehicleSearch: false,
    confidence: 0,
    filters: {
      brand: [],
      model: [],
      type: [],
      fuel: [],
      transmission: [],
      condition: [],
      paper: [],
      years: [],
      region: [],
      wilaya: []
    },
    originalQuery: query,
    remainingQuery: query
  };

  // 0. Detect Regions
  Object.entries(REGION_KEYWORDS).forEach(([regionCode, keywords]) => {
    keywords.forEach(keyword => {
      const regex = new RegExp(`\\b${keyword}\\b`, 'i');
      if (regex.test(normalizedQuery)) {
        if (!result.filters.region.includes(regionCode)) {
          result.filters.region.push(regionCode);
          _matchCount += 0.5;
          remainingQuery = remainingQuery.replace(regex, '').trim();
        }
      }
    });
  });

  // 0.5 Detect Wilayas (Algerian Cities)
  wilayas.forEach(wilaya => {
    const names = [wilaya.name, wilaya.name_ar, wilaya.name_fr];
    for (const name of names) {
      if (!name) continue;
      const normalizedWilaya = normalizeText(name);
      // Avoid short matches like "or" (Oran is safe, but be careful)
      // Most wilaya names are distinct enough.
      
      const regex = new RegExp(`\\b${normalizedWilaya}\\b`, 'i');
      if (regex.test(normalizedQuery)) {
        // Store the Code or Name? Using Code is better for filtering but Name is better for display.
        // Let's store the Code as string
        const wilayaCodeStr = wilaya.code.toString();
        if (!result.filters.wilaya.includes(wilayaCodeStr)) {
          result.filters.wilaya.push(wilayaCodeStr);
          _matchCount += 0.5;
          remainingQuery = remainingQuery.replace(regex, '').trim();
        }
        break; // Found this wilaya, stop checking other names for it
      }
    }
  });

  // 1. Detect Years (4 digits between 1980 and current year + 1)
  const yearRegex = /\b(19[8-9][0-9]|20[0-2][0-9]|2030)\b/g;
  const yearMatches = normalizedQuery.match(yearRegex);
  
  if (yearMatches) {
    yearMatches.forEach(year => {
      result.filters.years.push(parseInt(year));
      _matchCount += 1.0; // Boost year score to help context
      remainingQuery = remainingQuery.replace(year, '').trim();
    });
  }

  // 1.5 Detect Generations/Series (Small numbers 1-99 often used with models like "Golf 7", "Clio 4")
  const genRegex = /\b([1-9]|[1-9][0-9])\b/g;
  const genMatches = normalizedQuery.match(genRegex);
  let hasGenerationNumber = false;
  if (genMatches) {
    hasGenerationNumber = true;
    // We don't remove them yet, just note presence for scoring boost
  }

  // 2. Detect Dictionary Terms
  let score = 0;
  
  // Add base scores from previous steps
  score += result.filters.region.length * 0.5;
  score += result.filters.years.length * 1.0;

  vehicleDictionary.forEach((item) => {
    const allSynonyms = [
      ...item.values.fr, 
      ...item.values.ar, 
      ...item.values.en,
      ...(item.values.es || []),
      ...(item.values.de || []),
      ...(item.values.it || []),
      ...(item.values.other || [])
    ];

    let found = false;
    let matchedSynonymWordCount = 0;

    for (const synonym of allSynonyms) {
      const normalizedSynonym = normalizeText(synonym);
      const regex = new RegExp(`\\b${normalizedSynonym}\\b`, 'i');
      
      if (regex.test(normalizedQuery)) {
        found = true;
        matchedSynonymWordCount = normalizedSynonym.split(/\s+/).length;
        remainingQuery = remainingQuery.replace(regex, '').trim();
        break; 
      }
    }

    if (found) {
      _matchCount++;
      
      // Calculate Item Score
      let itemScore = 0;
      const isAmbiguous = item.metadata?.isAmbiguous;

      // Smart Ambiguity Check:
      // If the term is flagged ambiguous BUT the user matched a multi-word specific synonym (e.g. "Golf 7" vs "Golf", "Remorque Frigo" vs "Frigo"),
      // we treat it as specific (not ambiguous).
      if (isAmbiguous && matchedSynonymWordCount === 1) {
        itemScore = 0.5; // Ambiguous terms need context (year, type, etc.) to pass
      } else {
        // Standard scores
        switch (item.type) {
          case 'brand':
          case 'model':
            itemScore = 2.0; // Strongest indicators
            break;
          case 'type':
            itemScore = 1.5; // Strong indicator (Camion, Moto, etc.)
            break;
          default:
            itemScore = 1.0; // Fuel, Transmission, etc.
        }
      }
      
      score += itemScore;

      switch (item.type) {
        case 'brand':
          result.filters.brand.push(item.values.fr[0]); 
          break;
        case 'model':
          result.filters.model.push(item.values.fr[0]);
          break;
        case 'type':
          result.filters.type.push(item.values.fr[0]);
          break;
        case 'fuel':
          result.filters.fuel.push(item.values.fr[0]);
          break;
        case 'transmission':
          result.filters.transmission.push(item.values.fr[0]);
          break;
        case 'condition':
          result.filters.condition.push(item.values.fr[0]);
          break;
        case 'paper':
          result.filters.paper.push(item.values.fr[0]);
          break;
      }
    }
  });

  // Context Boosts
  // If we have a model (ambiguous or not) AND a generation number, boost score
  if (result.filters.model.length > 0 && hasGenerationNumber) {
    score += 0.5;
  }

  // Final Decision
  // Threshold 1.5 allows:
  // - "Camion" (1.5) -> Pass
  // - "Golf 7" (0.5 + 0.5 + 0.5 boost?? No wait)
  //   Golf (0.5) + GenNumber (0.5 boost) = 1.0. Fail.
  //   Need boost to be 1.0?
  //   Or Ambiguous Model = 1.0?
  
  // Let's adjust: Ambiguous Model = 0.8. Gen Boost = 0.7. Total = 1.5.
  // "Golf" (0.5) + GenBoost (1.0) = 1.5. Pass.
  
  if (result.filters.model.length > 0 && hasGenerationNumber) {
     score += 1.0; // Boost significantly if we have "Model + Number"
  }

  // "Golf" (0.5). Fail.
  // "Golf 7" (0.5 + 1.0) = 1.5. Pass.
  // "Frigo" (0.5). Fail.
  // "Camion Frigo" (1.5 + 0.5) = 2.0. Pass.

  if (score < 1.5 && matchesMockVehicleAnnouncement(normalizedQuery)) {
    score = 1.5;
  }

  if (score >= 1.5) {
    result.isVehicleSearch = true;
    result.confidence = Math.min(score / 4, 1);
  }

  result.remainingQuery = remainingQuery.replace(/\s+/g, ' ').trim();
  
  return result;
};
