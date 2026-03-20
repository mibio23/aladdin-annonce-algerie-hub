
import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://smsvybphkdxzvgawzoru.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function inspectTranslations() {
  const { data: trans, error } = await supabase
    .from('category_translations')
    .select('category_id, name, language_code')
    .limit(5);

  if (error) { console.error(error); return; }

  console.log('Sample Translations:');
  for (const t of trans) {
      const { data: cat } = await supabase
        .from('categories')
        .select('slug, id')
        .eq('id', t.category_id)
        .single();
      
      console.log(`- Trans: "${t.name}" (${t.language_code}) -> Cat ID: ${t.category_id} -> Slug: ${cat ? cat.slug : 'UNKNOWN'}`);
  }
}

inspectTranslations();
