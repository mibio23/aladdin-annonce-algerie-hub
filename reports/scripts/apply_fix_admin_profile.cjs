const { createClient } = require('@supabase/supabase-js');
const fs = require('fs');
const path = require('path');
require('dotenv').config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.SUPABASE_SERVICE_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('Missing Supabase credentials in .env');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function applyFix() {
  try {
    const sqlPath = path.join(__dirname, '..', 'fix_admin_and_profile.sql');
    const sql = fs.readFileSync(sqlPath, 'utf8');

    console.log('Applying Admin & Profile fix from fix_admin_and_profile.sql...');
    const { error } = await supabase.rpc('exec_sql', { sql });

    if (error) {
      console.error('Error applying fix:', error);
    } else {
      console.log('✅ Fix applied successfully!');
      console.log('1. User roles policies updated.');
      console.log('2. Profiles policies updated (public read, owner update).');
      console.log('3. Missing profile for info18shopworld@gmail.com created (if it was missing).');
    }

  } catch (err) {
    console.error('Unexpected error:', err);
  }
}

applyFix();
