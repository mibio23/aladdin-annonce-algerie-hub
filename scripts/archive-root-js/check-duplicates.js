
import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://smsvybphkdxzvgawzoru.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function checkDuplicates() {
  const { data, error } = await supabase
    .from('categories')
    .select('slug, id')
    .eq('level', 0);

  if (error) {
    console.error(error);
    return;
  }

  const counts = {};
  data.forEach(d => {
    counts[d.slug] = (counts[d.slug] || 0) + 1;
  });

  const duplicates = Object.entries(counts).filter(([k, v]) => v > 1);
  
  if (duplicates.length > 0) {
      console.log('⚠️ Duplicates found (Slug: Count):');
      duplicates.forEach(([k, v]) => console.log(`   ${k}: ${v}`));
  } else {
      console.log('✅ No duplicates found in Level 0 slugs.');
  }
}

checkDuplicates();
