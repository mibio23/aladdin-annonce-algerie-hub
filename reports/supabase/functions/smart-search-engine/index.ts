import { serve } from "https://deno.land/std@0.190.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.45.0";

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
};

const logStep = (step: string, details?: unknown) => {
  const detailsStr = details ? ` - ${JSON.stringify(details)}` : '';
  console.log(`[SMART-SEARCH] ${step}${detailsStr}`);
};

serve(async (req) => {
  if (req.method === "OPTIONS") {
    return new Response(null, { headers: corsHeaders });
  }

  try {
    logStep("Function started");

    // Extract authorization header to determine if user is authenticated
    const authHeader = req.headers.get("authorization");
    const isAuthenticated = authHeader && authHeader.startsWith("Bearer ");
    
    logStep("User authentication status", { isAuthenticated });

    const supabaseClient = createClient(
      Deno.env.get("SUPABASE_URL") ?? "",
      Deno.env.get("SUPABASE_SERVICE_ROLE_KEY") ?? "",
      { auth: { persistSession: false } }
    );

    const { query, filters, limit = 20, offset = 0 } = await req.json();
    logStep("Search parameters", { query, filters, limit, offset });

    // Recherche intelligente
    // IMPORTANT: on utilise la vue "announcements_safe" pour éviter d'exposer des champs sensibles
    // (ex: phone_number) même si on exécute avec la service role key.
    let searchQuery = supabaseClient
      .from('announcements_safe')
      .select(`
        *,
        categories:categories!fk_announcements_category(
          name,
          slug
        )
      `)
      .eq('status', 'active');

    // Recherche flexible : titre OU description contiennent la requête
    const searchTerms = (query || '').trim().toLowerCase();
    if (searchTerms.length > 0) {
      searchQuery = searchQuery.or(
        `title.ilike.%${searchTerms}%,description.ilike.%${searchTerms}%`
      );
    }

    // Trier par pertinence : d'abord les correspondances exactes dans le titre, puis par date
    searchQuery = searchQuery.order('created_at', { ascending: false });

    // Appliquer les filtres
    // Filtre catégorie:
    // - si filters.category ressemble à un UUID => filtrage par category_id
    // - sinon => filtrage par slug de la catégorie (via jointure)
    if (filters?.category) {
      const category = String(filters.category);
      const looksLikeUuid = category.includes('-') && category.length >= 32;
      if (looksLikeUuid) {
        searchQuery = searchQuery.eq('category_id', category);
      } else {
        // PostgREST permet de filtrer sur une relation jointe avec "categories.slug"
        // (nécessite que la relation existe côté PostgREST)
        searchQuery = searchQuery.eq('categories.slug', category);
      }
    }

    if (filters?.subcategory) {
      searchQuery = searchQuery.eq('subcategory_id', filters.subcategory);
    }

    if (filters?.wilaya) {
      searchQuery = searchQuery.eq('wilaya', filters.wilaya);
    }

    if (filters?.specialization) {
      searchQuery = searchQuery.eq('specialization', filters.specialization);
    }

    // Gérer à la fois priceRange (client side) et priceMin/priceMax (edge function)
    if (filters?.priceRange) {
      searchQuery = searchQuery.gte('price', filters.priceRange[0]);
      searchQuery = searchQuery.lte('price', filters.priceRange[1]);
    } else {
      if (filters?.priceMin) {
        searchQuery = searchQuery.gte('price', filters.priceMin);
      }

      if (filters?.priceMax) {
        searchQuery = searchQuery.lte('price', filters.priceMax);
      }
    }

    if (filters?.location) {
      searchQuery = searchQuery.ilike('location', `%${filters.location}%`);
    }

    if (filters?.condition) {
      searchQuery = searchQuery.eq('condition', filters.condition);
    }

    if (filters?.distance) {
      // TODO: Implémenter le filtre de distance (nécessite des coordonnées GPS)
      // Pour l'instant, ce filtre n'est pas implémenté car il nécessite des données de géolocalisation
      logStep("Distance filter not implemented", { distance: filters.distance });
    }

    // Pagination
    searchQuery = searchQuery.range(offset, offset + limit - 1);

    const { data: announcements, error } = await searchQuery;

    if (error) {
      logStep("Database error", { error });
      throw error;
    }

    // Enregistrer la requête de recherche pour analytics
    await supabaseClient.from('search_queries').insert({
      query_text: query,
      query_normalized: query.toLowerCase().trim(),
      results_count: announcements?.length || 0,
      search_context: JSON.stringify(filters),
      user_session_id: req.headers.get('x-session-id') || crypto.randomUUID(),
      ip_hash: req.headers.get('x-forwarded-for') || 'unknown'
    });

    // SECURITY: "announcements_safe" ne doit pas contenir phone_number.
    // On conserve néanmoins un garde-fou si le schéma évolue.
    const securedAnnouncements = (announcements || []).map((announcement: any) => {
      if ('phone_number' in announcement) {
        return {
          ...announcement,
          phone_number: isAuthenticated
            ? announcement.phone_number
            : announcement.phone_number
              ? '**********'
              : null,
        };
      }

      return announcement;
    });

    logStep("Search completed with security applied", { 
      resultsCount: securedAnnouncements.length,
      phonesMasked: !isAuthenticated 
    });

    return new Response(JSON.stringify({
      success: true,
      data: securedAnnouncements,
      count: securedAnnouncements.length,
      hasMore: securedAnnouncements.length === limit
    }), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
      status: 200,
    });

  } catch (error) {
    const errorMessage = error instanceof Error ? error.message : String(error);
    logStep("ERROR in smart-search-engine", { message: errorMessage });
    return new Response(JSON.stringify({ error: errorMessage }), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
      status: 500,
    });
  }
});
