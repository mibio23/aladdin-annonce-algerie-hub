const { createClient } = require('@supabase/supabase-js');
const dotenv = require('dotenv');

dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('Variables Supabase manquantes: VITE_SUPABASE_URL ou VITE_SUPABASE_ANON_KEY');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

const run = async () => {
  console.log('Vérification accès public des numéros');

  const { data: safeData, error: safeError } = await supabase
    .from('announcements_safe')
    .select('id, phone_number, phone_number_masked')
    .limit(1);

  if (safeError) {
    console.error('announcements_safe erreur:', safeError.message);
  } else {
    console.log('announcements_safe ok:', safeData);
  }

  const { data: annData, error: annError } = await supabase
    .from('announcements')
    .select('id, phone_number')
    .limit(1);

  if (annError) {
    console.error('announcements erreur:', annError.message);
  } else {
    console.log('announcements ok:', annData);
  }

  const { data: contactsData, error: contactsError } = await supabase
    .from('business_contacts')
    .select('id, contact_type, contact_value, is_public, requires_auth')
    .limit(1);

  if (contactsError) {
    console.error('business_contacts erreur:', contactsError.message);
  } else {
    console.log('business_contacts ok:', contactsData);
  }
};

run();
