
import { supabase } from '@/integrations/supabase/client';
import { logger } from '@/utils/silentLogger';
import { SmartSearchResponse, SearchOptions, SearchResult } from '@/types/search';
import { PROFESSION_KEYWORDS } from '@/data/searchKeywords';
import { findWilayasInRadius, getWilayaCodeByName } from '@/utils/distanceUtils';
import { wilayas } from '@/data/wilayaData';

export const searchService = {
  // Validation des paramètres de recherche
  validateSearchParams(options: SearchOptions = {}) {
    const errors: string[] = [];
    
    if (options.filters) {
      // Validation de la plage de prix
      if (options.filters.priceRange) {
        const [min, max] = options.filters.priceRange;
        if (min < 0) errors.push("Le prix minimum ne peut pas être négatif");
        if (max < min) errors.push("Le prix maximum ne peut pas être inférieur au prix minimum");
        if (max > 1000000000) errors.push("Le prix maximum ne peut pas dépasser 1 milliard");
      }
      
      // Validation de la distance
      if (options.filters.distance) {
        if (options.filters.distance < 0) errors.push("La distance ne peut pas être négative");
        if (options.filters.distance > 500) errors.push("La distance ne peut pas dépasser 500 km");
      }
    }
    
    return errors;
  },
  
  async performSearch(
    query: string, 
    sessionId: string,
    options: SearchOptions = {}
  ): Promise<SmartSearchResponse | null> {
    // Validation des paramètres
    const validationErrors = this.validateSearchParams(options);
    if (validationErrors.length > 0) {
      logger.error('Validation errors:', validationErrors);
      return { 
        results: [], 
        totalCount: 0, 
        searchId: sessionId, 
        suggestions: [], 
        trending: [] 
      };
    }
    
    if (!query.trim() && !options.filters) return null;

    // Use client-side search if filters are present or explicitly requested
    // This bypasses the edge function to ensure advanced filters work correctly without deployment
    if (options.filters && Object.keys(options.filters).length > 0) {
      return this.performClientSideSearch(query, sessionId, options);
    }

    try {
      // Harmoniser les filtres pour l'edge function
      const edgeFilters = options.filters ? {
        ...options.filters,
        priceMin: options.filters.priceRange?.[0],
        priceMax: options.filters.priceRange?.[1]
      } : undefined;

      const { data, error } = await supabase.functions.invoke('smart-search-engine', {
        body: {
          query: query.trim(),
          context: options.context || 'general',
          limit: options.limit || 10,
          offset: options.offset || 0,
          sessionId,
          filters: edgeFilters
        }
      });

      if (error) {
        logger.error('Erreur de recherche:', error);
        // Fallback to client-side search on error
        return this.performClientSideSearch(query, sessionId, options);
      }

      // Check for fallback necessity
      const response = data as SmartSearchResponse;
      if (response && response.totalCount === 0 && query.trim()) {
         logger.info('Edge function returned 0 results, trying client-side fallback (OR logic)');
         return this.performClientSideSearch(query, sessionId, options, true);
      }

      return response;
    } catch (error) {
      logger.error('Erreur lors de la recherche:', error);
      return this.performClientSideSearch(query, sessionId, options);
    }
  },

  async performClientSideSearch(
    query: string,
    sessionId: string,
    options: SearchOptions,
    isFallback: boolean = false
  ): Promise<SmartSearchResponse | null> {
    try {
      // Use explicit foreign key for main category relation to avoid ambiguity
      // Optimization: Select only necessary columns instead of *
      const selectQuery = `
        id, title, description, price, currency, condition, category_id, 
        wilaya, location, created_at, updated_at, status, 
        is_urgent, is_featured, is_negotiable,
        images, image_urls, image_url,
        attributes,
        view_count, contact_count, expires_at,
        categories:categories!fk_announcements_category!inner(slug, name), 
        subcategories:categories!announcements_subcategory_id_fkey(slug, name)
      `.replace(/\s+/g, ' ').trim();
      
      let dbQuery: any = supabase
        .from('announcements')
        .select(selectQuery, { count: 'exact' })
        .eq('status', 'active');

      // 1. Text Search & Enrichment
      if (query.trim()) {
        let searchQuery = query.trim();
        
        // Enrichment logic
        const lowerQuery = query.toLowerCase();
        const extraTerms: string[] = [];
        
        Object.entries(PROFESSION_KEYWORDS).forEach(([key, keywords]) => {
          if (keywords.some(k => lowerQuery.includes(k.toLowerCase())) || lowerQuery.includes(key)) {
             // Add top 5 related keywords to avoid query too long
             extraTerms.push(...keywords.slice(0, 5));
          }
        });

        // FALLBACK LOGIC: Use OR instead of AND for terms
        if (isFallback) {
          const terms = query.trim().split(/\s+/).filter(t => t.length > 0);
          if (terms.length > 1) {
             searchQuery = terms.join(' OR ');
          }
        }

        // Si nous avons des termes supplémentaires, nous les ajoutons avec l'opérateur OR
        if (extraTerms.length > 0) {
          searchQuery = `${searchQuery} OR ${extraTerms.join(' OR ')}`;
        }

        // Determine text search configuration based on language
        const getTextSearchConfig = (lang?: string) => {
          switch (lang?.toLowerCase()) {
            case 'fr': return 'french';
            case 'en': return 'english';
            case 'de': return 'german';
            case 'es': return 'spanish';
            case 'it': return 'italian';
            // 'simple' works best for mixed content or when specific dictionary is missing
            // For Arabic, 'simple' provides basic matching without aggressive stemming
            case 'ar': return 'simple'; 
            default: return 'french';
          }
        };

        const langConfig = getTextSearchConfig(options.language);

        // Utilisation de la recherche plein texte (Full Text Search) sur search_vector
        // Cela permet de gérer :
        // 1. L'insensibilité à la casse (Majuscule/minuscule)
        // 2. L'insensibilité aux accents (é = e) via la configuration adaptée à la langue
        // 3. La recherche sémantique via websearch (supporte OR, -, "phrase")
        
        // Improvement: Use 'websearch' for natural language queries which handles many common patterns
        // We could also consider using 'plainto_tsquery' or fuzzy matching with ilike for very short queries
        if (searchQuery.length < 3 && !isFallback) {
           // For very short queries, simple ILIKE is often better/safer than FTS
           dbQuery = dbQuery.ilike('title', `%${searchQuery}%`);
        } else {
           dbQuery = dbQuery.textSearch('search_vector', searchQuery, {
             config: langConfig,
             type: 'websearch'
           });
        }
      }

      // 2. Apply Filters
      if (options.filters) {
        const { category, subcategory, wilaya, priceRange, condition, specialization, location, distance } = options.filters;

        if (category) {
           // Check if category is UUID or slug
           const isUuid = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(category);
           if (isUuid) {
             dbQuery = dbQuery.eq('category_id', category);
           } else {
             // Use inner join to filter by category slug
             dbQuery = dbQuery.eq('categories.slug', category);
           }
        }
        
        if (subcategory) {
          const isUuid = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(subcategory);
          if (isUuid) {
            dbQuery = dbQuery.eq('subcategory_id', subcategory);
          } else {
            dbQuery = dbQuery.eq('subcategories.slug', subcategory);
          }
        }
        
        // Gestion intelligente de la localisation et distance
        let locationFilterApplied = false;

        if (distance) {
          // Filtre de distance
          let centerWilayaCode: number | null = null;

          if (wilaya) {
            // Check if wilaya is a number or a string representation of a number
            const parsed = typeof wilaya === 'string' ? parseInt(wilaya) : wilaya;
            if (!isNaN(parsed) && parsed > 0) {
              centerWilayaCode = parsed;
            } else if (typeof wilaya === 'string') {
              // Try to resolve name to code
              centerWilayaCode = getWilayaCodeByName(wilaya);
            }
          } else if (location) {
            centerWilayaCode = getWilayaCodeByName(location);
          }

          if (centerWilayaCode) {
            const wilayasInRadiusCodes = findWilayasInRadius(centerWilayaCode, distance);
            
            if (wilayasInRadiusCodes.length > 0) {
              // Récupérer aussi les noms des wilayas pour filtrer (car la DB peut stocker "Alger" ou "16")
              const wilayaNames = wilayasInRadiusCodes.map(code => {
                  const w = wilayas.find(w => w.code === code);
                  return w ? w.name : null;
              }).filter((n): n is string => n !== null);

              const wilayaCriteria = [...wilayasInRadiusCodes.map(String), ...wilayaNames];
              dbQuery = dbQuery.in('wilaya', wilayaCriteria);
              locationFilterApplied = true;
            }
          }
        }

        // Si le filtre de distance n'a pas été appliqué (pas de distance ou lieu non reconnu comme wilaya)
        if (!locationFilterApplied) {
          if (wilaya) {
            const parsed = typeof wilaya === 'string' ? parseInt(wilaya) : wilaya;
            const resolvedCode =
              !isNaN(parsed) && parsed > 0
                ? parsed
                : typeof wilaya === 'string'
                  ? getWilayaCodeByName(wilaya)
                  : null;

            if (resolvedCode) {
              const w = wilayas.find(w => w.code === resolvedCode);
              const criteria = [
                resolvedCode.toString(),
                w?.name,
                w?.name_fr,
                w?.name_ar,
              ].filter((v): v is string => typeof v === 'string' && v.length > 0);
              dbQuery = dbQuery.in('wilaya', criteria);
            } else {
              dbQuery = dbQuery.eq('wilaya', wilaya);
            }
          } else if (location) {
            dbQuery = dbQuery.ilike('location', `%${location}%`);
          }
        }
        
        if (condition) dbQuery = dbQuery.eq('condition', condition);

        // Filter by dynamic attributes (JSONB)
        if (options.filters.attributes) {
           Object.entries(options.filters.attributes).forEach(([key, value]) => {
             if (value) {
                dbQuery = dbQuery.contains('attributes', { [key]: value });
             }
           });
        }

        if (specialization) {
           // Recherche dans service_type (compatible avec text)
           dbQuery = dbQuery.eq('service_type', specialization);
        }
        
        if (priceRange) {
          dbQuery = dbQuery.gte('price', priceRange[0]);
          if (priceRange[1] < 1000000000) { // arbitrary max check
             dbQuery = dbQuery.lte('price', priceRange[1]);
          }
        }

      }

      // 3. Sorting & Boosting (Business Logic)
      const sortBy = options.sortBy || 'relevance';
      
      // Boosting: Always prioritize Featured and Urgent ads unless specific price sort is requested
      // This is a common pattern: "Relevance" = Premium first, then matching quality/date
      const applyBoosting = sortBy === 'relevance' || sortBy === 'date_desc';
      
      if (applyBoosting) {
        // First Featured, then Urgent
        dbQuery = dbQuery.order('is_featured', { ascending: false });
        dbQuery = dbQuery.order('is_urgent', { ascending: false });
      }

      // Apply primary sort
      switch (sortBy) {
        case 'date_desc':
        case 'relevance': // Default fallback to date for relevance if no text match score (FTS sorts by rank automatically if not overridden, but here we enforce date for ties)
          dbQuery = dbQuery.order('created_at', { ascending: false });
          break;
        case 'date_asc':
          dbQuery = dbQuery.order('created_at', { ascending: true });
          break;
        case 'price_asc':
          dbQuery = dbQuery.order('price', { ascending: true });
          break;
        case 'price_desc':
          dbQuery = dbQuery.order('price', { ascending: false });
          break;
        case 'views_desc':
          dbQuery = dbQuery.order('view_count', { ascending: false });
          break;
        default:
          dbQuery = dbQuery.order('created_at', { ascending: false });
      }

      // Limit
      const from = options.offset || 0;
      const to = from + (options.limit || 20) - 1;
      
      dbQuery = dbQuery.range(from, to);
      
      const { data, error, count } = await dbQuery;

      if (error) {
        logger.error('Database search error:', error);
        throw error;
      }

      // Fallback strategy: If no results found with precise search (AND), try broad search (OR)
      if ((!data || data.length === 0) && !isFallback && query.trim()) {
         logger.info('No results found with precise search, trying fallback (OR logic)');
         return this.performClientSideSearch(query, sessionId, options, true);
      }

      // Map to SmartSearchResponse
      const results: SearchResult[] = (data || []).map(item => ({
        type: 'announcement',
        id: item.id,
        title: item.title,
        description: item.description,
        score: 1, // Basic score
        relevance: 'high',
        data: item
      }));

      return {
        results,
        totalCount: count || results.length,
        searchId: sessionId,
        suggestions: [],
        trending: [],
        isApproximate: isFallback
      };

    } catch (error) {
      logger.error('Client side search error:', error);
      return { results: [], totalCount: 0, searchId: sessionId, suggestions: [], trending: [] };
    }
  },

  async getPersonalizedSuggestions(query: string): Promise<string[]> {
    try {
      const { data } = await supabase
        .from('search_suggestions')
        .select('suggested_query, confidence_score')
        .ilike('original_query', `${query.toLowerCase()}%`)
        .eq('is_active', true)
        .order('confidence_score', { ascending: false })
        .limit(5);

      return data?.map(s => s.suggested_query) || [];
    } catch (error) {
      logger.warn('Erreur lors de la récupération des suggestions:', error);
      return [];
    }
  },

  async getTrendingKeywords(): Promise<string[]> {
    try {
      const { data } = await supabase
        .from('popular_keywords')
        .select('keyword')
        .order('trending_score', { ascending: false })
        .limit(10);

      return data?.map(k => k.keyword) || [];
    } catch (error) {
      logger.warn('Erreur lors de la récupération des tendances:', error);
      return [];
    }
  }
};
