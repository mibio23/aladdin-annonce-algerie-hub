
import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://smsvybphkdxzvgawzoru.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function checkTranslationCount() {
  const { count, error } = await supabase
    .from('category_translations')
    .select('*', { count: 'exact', head: true });

  if (error) {
    console.error('Error counting translations:', error.message);
  } else {
    console.log(`Total translations in DB: ${count}`);
  }
}

checkTranslationCount();
