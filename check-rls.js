import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';

dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Variables d\'environnement Supabase manquantes');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkContactAccess() {
  console.log('🔍 Vérification de l’accès aux contacts...');

  const checks = [
    { table: 'announcements_safe', select: 'id, phone_number', label: 'annonces' },
    { table: 'business_contacts', select: '*', label: 'contacts boutiques' }
  ];

  for (const check of checks) {
    console.log(`\n📋 Source: ${check.table}`);
    const { data, error } = await supabase
      .from(check.table)
      .select(check.select)
      .limit(1);

    if (error) {
      console.log(`🔒 Accès refusé : ${error.message}`);
      continue;
    }

    if (check.table === 'announcements_safe') {
      const phoneNumber = data?.[0]?.phone_number;
      if (phoneNumber) {
        console.log('✅ Numéro de téléphone visible dans les annonces');
      } else {
        console.log('⚠️  Numéro de téléphone manquant dans les annonces');
      }
    } else {
      console.log(`✅ Accès public possible (${data.length} ligne(s) testée(s))`);
    }
  }
}

checkContactAccess();
