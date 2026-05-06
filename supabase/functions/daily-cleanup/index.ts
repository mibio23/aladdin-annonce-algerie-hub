import { serve } from "https://deno.land/std@0.190.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.45.0";

const corsHeaders = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Headers": "authorization, x-client-info, apikey, content-type",
};

serve(async (req) => {
  if (req.method === "OPTIONS") {
    return new Response(null, { headers: corsHeaders });
  }

  try {
    const supabaseClient = createClient(
      Deno.env.get("SUPABASE_URL") ?? "",
      Deno.env.get("SUPABASE_SERVICE_ROLE_KEY") ?? "",
      { auth: { persistSession: false } }
    );

    // SECURITY: Verify admin or service_role authorization
    const authHeader = req.headers.get("Authorization");
    if (!authHeader) throw new Error("No authorization header provided");

    const token = authHeader.replace("Bearer ", "");
    // Allow service_role key directly
    if (token !== Deno.env.get("SUPABASE_SERVICE_ROLE_KEY")) {
      const { data: userData, error: userError } = await supabaseClient.auth.getUser(token);
      if (userError || !userData.user) throw new Error("Authentication failed");

      const { data: adminRole } = await supabaseClient
        .from('user_roles')
        .select('id')
        .eq('user_id', userData.user.id)
        .eq('role', 'admin')
        .eq('is_active', true)
        .maybeSingle();

      if (!adminRole) throw new Error("Unauthorized: admin role required");
    }

    const nowIso = new Date().toISOString();

    const { data: downgraded } = await supabaseClient
      .from('announcements')
      .update({ type: 'normal' })
      .lt('premium_end_at', nowIso)
      .eq('type', 'premium')
      .select('id');

    return new Response(JSON.stringify({ success: true, premiumDowngraded: downgraded?.length || 0 }), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
      status: 200,
    });
  } catch (error) {
    const errorMessage = error instanceof Error ? error.message : String(error);
    return new Response(JSON.stringify({ error: errorMessage }), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
      status: 500,
    });
  }
});

