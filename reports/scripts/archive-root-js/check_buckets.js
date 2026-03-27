
import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
import path from 'path';

// Load environment variables from .env file
dotenv.config({ path: path.resolve(process.cwd(), '.env') });

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('Error: Supabase URL or Anon Key not found in environment variables.');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkBuckets() {
  console.log('Checking Supabase Storage Buckets...');
  
  const { data, error } = await supabase.storage.listBuckets();

  if (error) {
    console.error('Error listing buckets:', error);
    return;
  }

  console.log('Available buckets:');
  if (data && data.length > 0) {
    data.forEach(bucket => {
      console.log(`- ${bucket.name} (public: ${bucket.public})`);
    });
  } else {
    console.log('No buckets found.');
  }
}

checkBuckets();
