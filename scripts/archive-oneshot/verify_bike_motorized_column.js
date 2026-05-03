import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

async function main() {
  console.log('🔍 Vérification de la colonne "motorized" dans public.bike_details ...');
  try {
    const { data, error } = await supabase
      .from('bike_details')
      .select('motorized')
      .limit(1);
    if (error) {
      console.error('❌ Erreur de vérification:', error.message);
      process.exit(1);
    }
    console.log('✅ Colonne "motorized" détectée dans bike_details');
    console.log('Extrait (si présent):', data);
    process.exit(0);
  } catch (err) {
    console.error('❌ Exception:', err.message);
    process.exit(1);
  }
}

main();
