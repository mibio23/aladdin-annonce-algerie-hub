
require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');

const SUPABASE_URL = process.env.VITE_SUPABASE_URL;
const SUPABASE_ANON_KEY = process.env.VITE_SUPABASE_ANON_KEY;

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function checkCount() {
  const { count, error } = await supabase
    .from('categories')
    .select('*', { count: 'exact', head: true });

  if (error) {
    console.error('Error counting categories:', error.message);
  } else {
    console.log(`Total categories in DB: ${count}`);
  }
}

checkCount();
