
import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://smsvybphkdxzvgawzoru.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function testTranslationInsert() {
  console.log('Testing translation insertion...');

  // 1. Get a category
  const { data: categories, error: catError } = await supabase
    .from('categories')
    .select('id')
    .limit(1);

  if (catError || !categories.length) {
    console.error('❌ Could not fetch a category to test with:', catError);
    return;
  }

  const categoryId = categories[0].id;
  console.log(`Using category ID: ${categoryId}`);

  // 2. Try to insert a dummy translation
  const { data, error } = await supabase
    .from('category_translations')
    .insert({
      category_id: categoryId,
      language_code: 'it',
      name: 'Test Translation IT',
      description: 'Test Description'
    })
    .select();

  if (error) {
    console.error('❌ Insertion failed:', error.message);
    if (error.code === '42501') {
        console.error('⚠️ RLS Policy Violation still active!');
    }
  } else {
    console.log('✅ Insertion success:', data);
    // Cleanup
    await supabase.from('category_translations').delete().eq('id', data[0].id);
    console.log('✅ Cleanup success');
  }
}

testTranslationInsert();
