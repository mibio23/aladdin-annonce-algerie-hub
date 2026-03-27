require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');

// Utilisation des mêmes variables que l'application React
const supabaseUrl =
  process.env.VITE_SUPABASE_URL || 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey =
  process.env.VITE_SUPABASE_PUBLISHABLE_KEY ||
  process.env.VITE_SUPABASE_ANON_KEY ||
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

async function testAppConnection() {
  console.log('=== Test avec configuration de l\'application ===');
  console.log('URL:', supabaseUrl);
  console.log('Clé:', supabaseKey.substring(0, 20) + '...');
  
  try {
    // Test simple: récupérer tous les profils
    console.log('\n1. Récupération de tous les profils...');
    const { data: profiles, error: profileError } = await supabase
      .from('profiles')
      .select('*');
    
    if (profileError) {
      console.log('❌ Erreur profils:', profileError.message);
      console.log('Code:', profileError.code);
      console.log('Détails:', profileError.details);
    } else {
      console.log(`✅ ${profiles.length} profil(s) trouvé(s)`);
      if (profiles.length > 0) {
        console.log('Premier profil:', {
          id: profiles[0].id,
          user_id: profiles[0].user_id,
          public_user_id: profiles[0].public_user_id,
          created_at: profiles[0].created_at
        });
      }
    }

    // Test avec une requête SQL brute via RPC
    console.log('\n2. Test avec requête SQL...');
    const { data: sqlData, error: sqlError } = await supabase
      .rpc('exec_sql', { query: 'SELECT COUNT(*) as total FROM public.profiles;' })
      .single();
    
    if (sqlError) {
      console.log('❌ Erreur SQL:', sqlError.message);
    } else {
      console.log('✅ Résultat SQL:', sqlData);
    }

  } catch (error) {
    console.error('❌ Erreur générale:', error.message);
  }
}

testAppConnection();
