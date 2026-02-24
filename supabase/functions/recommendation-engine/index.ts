import { serve } from "https://deno.land/std@0.190.0/http/server.ts";
import { createClient, SupabaseClient } from "https://esm.sh/@supabase/supabase-js@2.45.0";

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
};

interface RecommendationRequest {
  userId?: string;
  sessionId?: string;
  currentAnnouncementId?: string;
  userPreferences?: Record<string, unknown>;
  type: 'similar' | 'personalized' | 'trending' | 'category' | 'price_range';
  limit?: number;
}

serve(async (req) => {
  if (req.method === "OPTIONS") {
    return new Response(null, { headers: corsHeaders });
  }

  try {
    const supabase = createClient(
      Deno.env.get("SUPABASE_URL") ?? "",
      Deno.env.get("SUPABASE_SERVICE_ROLE_KEY") ?? "",
      { auth: { persistSession: false } }
    );

    const { 
      userId, 
      sessionId, 
      currentAnnouncementId, 
      userPreferences, 
      type, 
      limit = 10 
    }: RecommendationRequest = await req.json();

    if (!type) {
      throw new Error("Type is required");
    }

    const sanitizedLimit = Math.min(Math.max(1, limit), 50);
    console.log(`[RECOMMENDATION-ENGINE] Type: ${type}, User: ${userId || sessionId}`);

    let recommendations: Array<Record<string, unknown>> = [];

    switch (type) {
      case 'similar':
        recommendations = await getSimilarAnnouncements(supabase, currentAnnouncementId || '', sanitizedLimit);
        break;
      case 'personalized':
        recommendations = await getPersonalizedRecommendations(supabase, userId || '', sessionId || 'anonymous', sanitizedLimit);
        break;
      case 'trending':
        recommendations = await getTrendingRecommendations(supabase, sanitizedLimit);
        break;
      case 'category':
        recommendations = await getCategoryBasedRecommendations(supabase, userPreferences || {}, sanitizedLimit);
        break;
      case 'price_range':
        recommendations = await getPriceBasedRecommendations(supabase, userPreferences || {}, sanitizedLimit);
        break;
      default:
        recommendations = await getDefaultRecommendations(supabase, sanitizedLimit);
    }

    // Score and rank recommendations
    const scoredRecommendations = await scoreRecommendations(supabase, recommendations, {
      userId,
      sessionId,
      currentAnnouncementId,
      userPreferences
    });

    // Log recommendation for learning
    await logRecommendation(supabase, {
      type,
      userId,
      sessionId,
      recommendationIds: scoredRecommendations.map(r => String((r as any).id)),
      context: { currentAnnouncementId, userPreferences }
    });

    return new Response(JSON.stringify({
      recommendations: scoredRecommendations,
      type,
      total: scoredRecommendations.length,
      generatedAt: new Date().toISOString()
    }), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });

  } catch (error) {
    console.error("[RECOMMENDATION-ENGINE] Error:", error);
    return new Response(JSON.stringify({ 
      error: "Recommendation generation failed", 
      details: error instanceof Error ? error.message : String(error)
    }), {
      status: 500,
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });
  }
});

async function getSimilarAnnouncements(supabase: SupabaseClient, announcementId: string, limit: number): Promise<Array<Record<string, unknown>>> {
  if (!announcementId) return [];

  console.log(`[RECOMMENDATION-ENGINE] Getting similar to announcement: ${announcementId}`);

  // Get the current announcement details
  const { data: currentAnnouncement } = await supabase
    .from('announcements')
    .select('*')
    .eq('id', announcementId)
    .single();

  if (!currentAnnouncement) return [];

  // Find similar announcements based on category, price range, and keywords
  const { data: similar } = await supabase
    .from('announcements')
    .select('*')
    .eq('is_active', true)
    .eq('category_id', currentAnnouncement.category_id)
    .neq('id', announcementId)
    .gte('price', currentAnnouncement.price * 0.7)
    .lte('price', currentAnnouncement.price * 1.3)
    .limit(limit);

  return similar || [];
}

async function getPersonalizedRecommendations(supabase: SupabaseClient, userId: string, sessionId: string, limit: number): Promise<Array<Record<string, unknown>>> {
  console.log(`[RECOMMENDATION-ENGINE] Getting personalized recommendations`);

  // Get user search history and preferences
  const userIdentifier = userId || sessionId;
  
  const { data: searchHistory } = await supabase
    .from('search_queries')
    .select('*')
    .eq(userId ? 'user_session_id' : 'user_session_id', userIdentifier)
    .order('created_at', { ascending: false })
    .limit(20);

  const { data: clickHistory } = await supabase
    .from('search_results_clicks')
    .select('*')
    .eq('session_id', userIdentifier)
    .order('created_at', { ascending: false })
    .limit(10);

  // Extract preferred categories and keywords
  const preferredCategories = await extractPreferredCategories(supabase, searchHistory || [], clickHistory || []);
  const _preferredKeywords = extractKeywords(searchHistory || []);

  // Get recommendations based on preferences
  let query = supabase
    .from('announcements')
    .select('*')
    .eq('status', 'active');

  if (preferredCategories.length > 0) {
    query = query.in('category_id', preferredCategories);
  }

  const { data: personalized } = await query
    .order('created_at', { ascending: false })
    .limit(limit);

  return personalized || [];
}

async function getTrendingRecommendations(supabase: SupabaseClient, limit: number): Promise<Array<Record<string, unknown>>> {
  console.log(`[RECOMMENDATION-ENGINE] Getting trending recommendations`);

  // Get announcements with high view counts and recent activity
  const { data: trending } = await supabase
    .from('announcements')
    .select('*')
    .eq('is_active', true)
    .order('views_count', { ascending: false })
    .order('created_at', { ascending: false })
    .limit(limit);

  return trending || [];
}

async function getCategoryBasedRecommendations(supabase: SupabaseClient, preferences: Record<string, unknown>, limit: number): Promise<Array<Record<string, unknown>>> {
  console.log(`[RECOMMENDATION-ENGINE] Getting category-based recommendations`);

  const categoryId = preferences?.categoryId as string | undefined;
  if (!categoryId) return [];

  const { data: categoryRecommendations } = await supabase
    .from('announcements')
    .select('*')
    .eq('is_active', true)
    .eq('category_id', categoryId)
    .order('created_at', { ascending: false })
    .limit(limit);

  return categoryRecommendations || [];
}

async function getPriceBasedRecommendations(supabase: SupabaseClient, preferences: Record<string, unknown>, limit: number): Promise<Array<Record<string, unknown>>> {
  console.log(`[RECOMMENDATION-ENGINE] Getting price-based recommendations`);

  const { minPrice, maxPrice } = (preferences || {}) as { minPrice?: number; maxPrice?: number };
  if (!minPrice && !maxPrice) return [];

  let query = supabase
    .from('announcements')
    .select('*')
    .eq('is_active', true);

  if (minPrice) query = query.gte('price', minPrice);
  if (maxPrice) query = query.lte('price', maxPrice);

  const { data: priceBasedRecommendations } = await query
    .order('created_at', { ascending: false })
    .limit(limit);

  return priceBasedRecommendations || [];
}

async function getDefaultRecommendations(supabase: SupabaseClient, limit: number): Promise<Array<Record<string, unknown>>> {
  console.log(`[RECOMMENDATION-ENGINE] Getting default recommendations`);

  const { data: defaultRecommendations } = await supabase
    .from('announcements')
    .select('*')
    .eq('is_active', true)
    .order('created_at', { ascending: false })
    .limit(limit);

  return defaultRecommendations || [];
}

async function scoreRecommendations(supabase: SupabaseClient, recommendations: Array<Record<string, unknown>>, _context: Record<string, unknown>): Promise<Array<Record<string, unknown>>> {
  console.log(`[RECOMMENDATION-ENGINE] Scoring ${recommendations.length} recommendations`);

  const scoredRecommendations = recommendations.map(recommendation => {
    let score = 0;

    // Base score from views and engagement
    score += Number(recommendation.view_count || 0) * 0.1;
    
    // Recent announcements get higher score
    const daysSinceCreated = (Date.now() - new Date(String(recommendation.created_at)).getTime()) / (1000 * 60 * 60 * 24);
    score += Math.max(0, 10 - daysSinceCreated);

    // Featured/urgent announcements get bonus
    if (recommendation.is_featured) score += 5;
    if (recommendation.is_urgent) score += 3;

    // Price factor (reasonable prices get better scores)
    const price = Number(recommendation.price);
    if (price && price > 0) {
      score += Math.min(5, 10000 / price); // Lower prices get higher scores
    }

    return {
      ...recommendation,
      recommendation_score: Math.round(score * 100) / 100
    };
  });

  // Sort by score descending
  return scoredRecommendations.sort((a, b) => b.recommendation_score - a.recommendation_score);
}

async function extractPreferredCategories(supabase: SupabaseClient, searchHistory: Array<{ query_text?: string }>, clickHistory: Array<{ result_type?: string; result_id?: string }>): Promise<string[]> {
  const categoryIds = new Set();

  // Extract from clicked announcements
  for (const click of clickHistory || []) {
    if (click.result_type === 'announcement') {
      const { data: announcement } = await supabase
        .from('announcements')
        .select('category_id')
        .eq('id', click.result_id)
        .single();
      
      if (announcement?.category_id) {
        categoryIds.add(announcement.category_id);
      }
    }
  }

  return Array.from(categoryIds) as string[];
}

function extractKeywords(searchHistory: Array<{ query_text?: string }>): string[] {
  const keywords = new Set();

  for (const search of searchHistory || []) {
    const searchKeywords = search.query_text
      ?.toLowerCase()
      .split(/[\s\p{P}]+/u)
      .filter((word: string) => word.length > 2);

    searchKeywords?.forEach((keyword: string) => keywords.add(keyword));
  }

  return Array.from(keywords).slice(0, 10) as string[];
}

async function logRecommendation(supabase: SupabaseClient, logData: { type: string; userId?: string; sessionId?: string; recommendationIds: string[]; context: Record<string, unknown> }) {
  try {
    console.log('[RECOMMENDATION-ENGINE] Logging recommendation:', logData);
    console.log('[RECOMMENDATION-ENGINE] Recommendation logged successfully');

  } catch (error) {
    console.error('[RECOMMENDATION-ENGINE] Failed to log recommendation:', error);
  }
}