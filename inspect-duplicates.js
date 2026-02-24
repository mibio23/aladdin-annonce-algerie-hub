
import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://smsvybphkdxzvgawzoru.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function inspectDuplicates() {
  // Get all IDs for this slug
  const slug = 'vehicules-equipements';
  const { data: cats, error } = await supabase
    .from('categories')
    .select('id, slug, created_at')
    .eq('slug', slug);

  if (error) { console.error(error); return; }

  console.log(`Found ${cats.length} categories for slug '${slug}':`);
  
  for (const cat of cats) {
      const { data: trans } = await supabase
        .from('category_translations')
        .select('language_code, name')
        .eq('category_id', cat.id);
        
      console.log(`- ID: ${cat.id} (Created: ${cat.created_at})`);
      console.log(`  Translations: ${trans.map(t => t.language_code).join(', ')}`);
  }
}

inspectDuplicates();
