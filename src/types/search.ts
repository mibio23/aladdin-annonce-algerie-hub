
export interface SearchResult {
  type: 'announcement' | 'category' | 'suggestion' | 'keyword';
  id: string;
  title: string;
  description?: string;
  score: number;
  relevance: string;
  data: Record<string, unknown>;
}

export interface SmartSearchResponse {
  results: SearchResult[];
  totalCount: number;
  searchId?: string;
  suggestions: string[];
  trending: string[];
  isApproximate?: boolean;
}

export interface SearchFilters {
  category?: string;
  subcategory?: string;
  wilaya?: string;
  priceRange?: [number, number];
  condition?: string;
  specialization?: string;
  attributes?: Record<string, any>;
  location?: string;
  distance?: number;
}

export type SortOption = 'relevance' | 'date_desc' | 'date_asc' | 'price_asc' | 'price_desc' | 'views_desc';

export interface SearchOptions {
  context?: string;
  limit?: number;
  offset?: number;
  trackingEnabled?: boolean;
  filters?: SearchFilters;
  language?: string;
  sortBy?: SortOption;
}

export interface UserPattern {
  searchSequence: string[];
  categories: string[];
  timespan: number;
  conversionAchieved: boolean;
  patternType: 'exploration' | 'targeted' | 'comparison';
}
