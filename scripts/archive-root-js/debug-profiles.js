import { createClient } from '@supabase/supabase-js';

// Configuration avec vos variables d'environnement
const supabaseUrl = 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

async function debugProfiles() {
  console.log('=== Debug des profils ===');
  
  try {
    // Test 1: Vérifier la connexion
    console.log('1. Test de connexion...');
    const { data: health, error: healthError } = await supabase.rpc('version');
    if (healthError) {
      console.log('❌ Erreur de connexion:', healthError.message);
    } else {
      console.log('✅ Connexion réussie');
    }

    // Test 2: Vérifier que la table profiles existe
    console.log('\n2. Vérification de la table profiles...');
    const { data: tableInfo, error: tableError } = await supabase
      .from('profiles')
      .select('*')
      .limit(1);
    
    if (tableError) {
      console.log('❌ Erreur table profiles:', tableError.message);
      console.log('Code d\'erreur:', tableError.code);
    } else {
      console.log('✅ Table profiles accessible');
      console.log('Nombre de colonnes trouvées:', tableInfo && tableInfo.length > 0 ? Object.keys(tableInfo[0]).length : 0);
    }

    // Test 3: Compter tous les profils
    console.log('\n3. Comptage des profils...');
    const { count, error: countError } = await supabase
      .from('profiles')
      .select('*', { count: 'exact', head: true });
    
    if (countError) {
      console.log('❌ Erreur comptage:', countError.message);
    } else {
      console.log(`✅ Nombre total de profils: ${count}`);
    }

    // Test 4: Vérifier la colonne public_user_id
    console.log('\n4. Vérification de la colonne public_user_id...');
    const { data: sample, error: sampleError } = await supabase
      .from('profiles')
      .select('id, user_id, public_user_id, created_at')
      .limit(5);
    
    if (sampleError) {
      console.log('❌ Erreur échantillon:', sampleError.message);
    } else if (sample && sample.length > 0) {
      console.log('✅ Échantillon de profils:');
      sample.forEach((profile, index) => {
        console.log(`  Profil ${index + 1}:`);
        console.log(`    - ID: ${profile.id}`);
        console.log(`    - User ID: ${profile.user_id}`);
        console.log(`    - Public User ID: ${profile.public_user_id || 'NULL'}`);
        console.log(`    - Created: ${profile.created_at}`);
      });
    } else {
      console.log('⚠️  Aucun profil trouvé dans la table');
    }

    // Test 5: Vérifier les politiques RLS
    console.log('\n5. Vérification des politiques RLS...');
    const { data: policies, error: policiesError } = await supabase
      .from('profiles')
      .select('*')
      .limit(1);
    
    if (policiesError && policiesError.code === '42501') {
      console.log('⚠️  Politique RLS restrictive détectée');
      console.log('Message:', policiesError.message);
    }

  } catch (error) {
    console.error('❌ Erreur générale:', error.message);
  }
}

debugProfiles();