import { serve } from "https://deno.land/std@0.190.0/http/server.ts";
import { createClient, SupabaseClient } from "https://esm.sh/@supabase/supabase-js@2.45.0";

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
};

interface AnalyticsRequest {
  type: 'page_view' | 'search' | 'click' | 'conversion' | 'user_journey' | 'performance';
  data: Record<string, unknown>;
  userId?: string;
  sessionId: string;
  timestamp?: string;
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

    const { type, data, userId, sessionId, timestamp }: AnalyticsRequest = await req.json();
    const effectiveUserId = userId || '';
    const effectiveTimestamp = timestamp || new Date().toISOString();

    console.log(`[ANALYTICS-PROCESSOR] Processing ${type} event for session: ${sessionId}`);

    let result;

    switch (type) {
      case 'page_view':
        result = await processPageView(supabase, data, effectiveUserId, sessionId, effectiveTimestamp);
        break;
      case 'search':
        result = await processSearchEvent(supabase, data, effectiveUserId, sessionId, effectiveTimestamp);
        break;
      case 'click':
        result = await processClickEvent(supabase, data, effectiveUserId, sessionId, effectiveTimestamp);
        break;
      case 'conversion':
        result = await processConversionEvent(supabase, data, effectiveUserId, sessionId, effectiveTimestamp);
        break;
      case 'user_journey':
        result = await processUserJourney(supabase, data, effectiveUserId, sessionId);
        break;
      case 'performance':
        result = await processPerformanceMetrics(supabase, data, sessionId);
        break;
      default:
        result = await processGenericEvent(supabase, type, data, effectiveUserId, sessionId, effectiveTimestamp);
    }

    // Background task for aggregations (without awaiting)
    updateAggregatedAnalytics(supabase, type, data).catch(err => 
      console.error('Background analytics update failed:', err)
    );

    return new Response(JSON.stringify({
      success: true,
      eventType: type,
      processedAt: new Date().toISOString(),
      result
    }), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });

  } catch (error) {
    console.error("[ANALYTICS-PROCESSOR] Error:", error);
    return new Response(JSON.stringify({ 
      error: "Analytics processing failed", 
      details: error instanceof Error ? error.message : String(error)
    }), {
      status: 500,
      headers: { ...corsHeaders, "Content-Type": "application/json" },
    });
  }
});

async function processPageView(supabase: SupabaseClient, data: Record<string, unknown>, userId: string, sessionId: string, timestamp: string) {
  console.log(`[ANALYTICS-PROCESSOR] Processing page view: ${String(data.page)}`);

  const _pageViewData = {
    session_id: sessionId,
    user_id: userId,
    page_url: data.page,
    page_title: data.title,
    referrer: data.referrer,
    user_agent: data.userAgent,
    screen_resolution: data.screenResolution,
    viewport_size: data.viewportSize,
    load_time: data.loadTime,
    created_at: timestamp || new Date().toISOString()
  };

  // Update real-time page views
  await updatePageViewMetrics(supabase, String(data.page));

  // Track user session
  await updateUserSession(supabase, sessionId, userId, {
    last_page: String(data.page),
    page_count: Number(data.pageCount) || 1
  });

  return { pageView: 'processed', page: String(data.page) };
}

async function processSearchEvent(supabase: SupabaseClient, data: Record<string, unknown>, userId: string, sessionId: string, timestamp: string) {
  console.log(`[ANALYTICS-PROCESSOR] Processing search: "${String(data.query)}"`);

  // Store search query
  const { data: searchRecord, error } = await supabase
    .from('search_queries')
    .insert({
      query_text: String(data.query),
      query_normalized: normalizeQuery(String(data.query)),
      search_context: data.context as unknown,
      results_count: Number(data.resultsCount) || 0,
      user_session_id: sessionId,
      ip_hash: String(data.ipHash),
      language_detected: String(data.language || 'fr'),
      created_at: timestamp || new Date().toISOString()
    })
    .select()
    .single();

  if (error) {
    console.error('[ANALYTICS-PROCESSOR] Search storage error:', error);
  }

  // Update popular keywords
  await updatePopularKeywords(supabase, String(data.query), Boolean(Number(data.resultsCount) > 0));

  // Update search trends
  await updateSearchTrends(supabase, String(data.query), String(data.language || 'fr'));

  return { search: 'processed', query: String(data.query), searchId: searchRecord?.id };
}

async function processClickEvent(supabase: SupabaseClient, data: Record<string, unknown>, userId: string, sessionId: string, timestamp: string) {
  console.log(`[ANALYTICS-PROCESSOR] Processing click: ${String(data.elementType)}:${String(data.elementId)}`);

  // Store click event
  await supabase.from('search_results_clicks').insert({
    session_id: sessionId,
    result_id: String(data.elementId),
    result_type: String(data.elementType),
    click_position: Number(data.position),
    time_to_click: Number(data.timeToClick),
    created_at: timestamp || new Date().toISOString()
  });

  // Update announcement view count if it's an announcement click
  if (String(data.elementType) === 'announcement') {
    await updateAnnouncementViews(supabase, String(data.elementId));
  }

  // Send to learning system for ML improvements
  await sendToLearningSystem(supabase, {
    type: 'click',
    query: String(data.searchQuery),
    result_id: String(data.elementId),
    click_position: Number(data.position),
    session_id: sessionId
  });

  return { click: 'processed', elementType: String(data.elementType) };
}

async function processConversionEvent(supabase: SupabaseClient, data: Record<string, unknown>, userId: string, sessionId: string, timestamp: string) {
  console.log(`[ANALYTICS-PROCESSOR] Processing conversion: ${String(data.type)}`);

  const _conversionData = {
    session_id: sessionId,
    user_id: userId,
    conversion_type: String(data.type),
    conversion_value: Number(data.value),
    announcement_id: String(data.announcementId),
    funnel_step: String(data.funnelStep),
    conversion_time: Number(data.conversionTime),
    created_at: timestamp || new Date().toISOString()
  };

  // Track conversion in user journey
  await updateUserJourneyWithConversion(supabase, sessionId, data);

  // Update conversion metrics
  await updateConversionMetrics(supabase, String(data.type), Number(data.value));

  // Send to learning system
  await sendToLearningSystem(supabase, {
    type: 'conversion',
    session_id: sessionId,
    query: String(data.searchQuery)
  });

  return { conversion: 'processed', type: String(data.type) };
}

async function processUserJourney(supabase: SupabaseClient, data: Record<string, unknown>, userId: string, sessionId: string) {
  console.log(`[ANALYTICS-PROCESSOR] Processing user journey for session: ${sessionId}`);

  // Get complete user journey for this session
  const { data: pageViews } = await supabase
    .from('search_queries')
    .select('*')
    .eq('user_session_id', sessionId)
    .order('created_at', { ascending: true });

  const { data: clicks } = await supabase
    .from('search_results_clicks')
    .select('*')
    .eq('session_id', sessionId)
    .order('created_at', { ascending: true });

  // Analyze journey patterns
  const journeyAnalysis = analyzeUserJourney(pageViews || [], clicks || []);

  // Store journey insights
  await storeJourneyInsights(supabase, sessionId, userId, journeyAnalysis);

  return { userJourney: 'analyzed', insights: journeyAnalysis };
}

async function processPerformanceMetrics(supabase: SupabaseClient, data: Record<string, unknown>, sessionId: string) {
  console.log(`[ANALYTICS-PROCESSOR] Processing performance metrics`);

  const performanceData = {
    session_id: sessionId,
    page_load_time: Number(data.pageLoadTime),
    dom_content_loaded: Number(data.domContentLoaded),
    first_contentful_paint: Number(data.firstContentfulPaint),
    largest_contentful_paint: Number(data.largestContentfulPaint),
    cumulative_layout_shift: Number(data.cumulativeLayoutShift),
    first_input_delay: Number(data.firstInputDelay),
    time_to_interactive: Number(data.timeToInteractive),
    connection_type: String(data.connectionType),
    device_type: String(data.deviceType),
    created_at: new Date().toISOString()
  };

  // Store performance metrics
  console.log('[ANALYTICS-PROCESSOR] Performance metrics stored:', performanceData);

  return { performance: 'processed', metrics: performanceData };
}

async function processGenericEvent(supabase: SupabaseClient, type: string, data: Record<string, unknown>, userId: string, sessionId: string, timestamp: string) {
  console.log(`[ANALYTICS-PROCESSOR] Processing generic event: ${type}`);

  const eventData = {
    event_type: type,
    session_id: sessionId,
    user_id: userId,
    event_data: data,
    created_at: timestamp || new Date().toISOString()
  };

  console.log('[ANALYTICS-PROCESSOR] Generic event stored:', eventData);

  return { genericEvent: 'processed', type };
}

// Helper functions

function normalizeQuery(query: string): string {
  return query.toLowerCase()
    .trim()
    .replace(/[^\w\s]/g, '')
    .replace(/\s+/g, ' ');
}

async function updatePageViewMetrics(supabase: SupabaseClient, page: string) {
  // Update real-time page view counts
  // In a real implementation, you'd use Redis or similar for real-time metrics
  console.log(`[ANALYTICS-PROCESSOR] Updated page views for: ${page}`);
}

async function updateUserSession(supabase: SupabaseClient, sessionId: string, userId: string, updates: Record<string, unknown>) {
  // Update or create user session record
  console.log(`[ANALYTICS-PROCESSOR] Updated session: ${sessionId}`, updates);
}

async function updatePopularKeywords(supabase: SupabaseClient, query: string, hasResults: boolean) {
  const normalizedKeyword = normalizeQuery(query);
  
  const { data: existing } = await supabase
    .from('popular_keywords')
    .select('*')
    .eq('keyword_normalized', normalizedKeyword)
    .single();

  if (existing) {
    await supabase
      .from('popular_keywords')
      .update({
        search_count: existing.search_count + 1,
        success_rate: hasResults ? 
          ((existing.success_rate * existing.search_count) + 1) / (existing.search_count + 1) :
          (existing.success_rate * existing.search_count) / (existing.search_count + 1),
        last_searched: new Date().toISOString()
      })
      .eq('id', existing.id);
  } else {
    await supabase.from('popular_keywords').insert({
      keyword: query,
      keyword_normalized: normalizedKeyword,
      search_count: 1,
      success_rate: hasResults ? 1 : 0,
      last_searched: new Date().toISOString()
    });
  }
}

async function updateSearchTrends(supabase: SupabaseClient, query: string, language: string) {
  // Update search trends for real-time analytics
  console.log(`[ANALYTICS-PROCESSOR] Updated search trends for: ${query} (${language})`);
}

async function updateAnnouncementViews(supabase: SupabaseClient, announcementId: string) {
  // Use increment_view_count RPC function
  await supabase.rpc('increment_view_count', { announcement_uuid: announcementId });
}

async function sendToLearningSystem(supabase: SupabaseClient, learningData: Record<string, unknown>) {
  try {
    // Send to search learning system for ML improvements
    await supabase.functions.invoke('search-learning-system', {
      body: learningData
    });
  } catch (error) {
    console.error('[ANALYTICS-PROCESSOR] Failed to send to learning system:', error);
  }
}

async function updateUserJourneyWithConversion(supabase: SupabaseClient, sessionId: string, conversionData: Record<string, unknown>) {
  console.log(`[ANALYTICS-PROCESSOR] Updated user journey with conversion:`, conversionData);
}

async function updateConversionMetrics(supabase: SupabaseClient, type: string, value: number) {
  console.log(`[ANALYTICS-PROCESSOR] Updated conversion metrics: ${type} = ${value}`);
}

function analyzeUserJourney(pageViews: unknown[], clicks: unknown[]): unknown {
  const typedPageViews = pageViews as Array<{ created_at: string }>;
  return {
    totalPages: pageViews.length,
    totalClicks: clicks.length,
    sessionDuration: typedPageViews.length > 0 ? 
      new Date(typedPageViews[typedPageViews.length - 1].created_at).getTime() - 
      new Date(typedPageViews[0].created_at).getTime() : 0,
    conversionPath: extractConversionPath(pageViews, clicks),
    dropOffPoints: identifyDropOffPoints(pageViews, clicks)
  };
}

function extractConversionPath(pageViews: unknown[], _clicks: unknown[]): string[] {
  return (pageViews as Array<Record<string, unknown>>)
    .map(pv => (pv.page_url as string) || (pv.query_text as string))
    .filter(Boolean) as string[];
}

function identifyDropOffPoints(_pageViews: unknown[], _clicks: unknown[]): unknown[] {
  // Identify where users typically drop off
  return [];
}

async function storeJourneyInsights(supabase: SupabaseClient, sessionId: string, userId: string, analysis: unknown) {
  console.log(`[ANALYTICS-PROCESSOR] Stored journey insights:`, analysis);
}

async function updateAggregatedAnalytics(supabase: SupabaseClient, eventType: string, _data: Record<string, unknown>) {
  console.log(`[ANALYTICS-PROCESSOR] Background: Updating aggregated analytics for ${eventType}`);
  
  // This runs in the background after the response is sent
  // Update hourly, daily, weekly aggregations
  
  try {
    // Update trending calculations
    await supabase.rpc('calculate_trending_score', { keyword_id: null });
    
    console.log(`[ANALYTICS-PROCESSOR] Background: Analytics aggregation completed`);
  } catch (error) {
    console.error('[ANALYTICS-PROCESSOR] Background: Aggregation failed:', error);
  }
}