
import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
import path from 'path';
import { fileURLToPath } from 'url';

dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('Missing VITE_SUPABASE_URL or VITE_SUPABASE_ANON_KEY');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function verifySchema() {
  console.log('Verifying announcements table schema...');
  
  const { data, error } = await supabase
    .from('announcements')
    .select('id, shop_id')
    .limit(1);

  if (error) {
    console.error('Error selecting from announcements:', error);
  } else {
    console.log('Successfully selected shop_id from announcements.');
    console.log('Data sample:', data);
  }
}

verifySchema();
