
// Script de test pour tracer l'inscription d'un nouvel utilisateur
// Ce script simule l'inscription et affiche les données à chaque étape

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
import fs from 'fs';
import path from 'path';

// Charger les variables d'environnement
const envPath = path.resolve(process.cwd(), '.env');
const envConfig = dotenv.parse(fs.readFileSync(envPath));

const supabaseUrl = envConfig.VITE_SUPABASE_URL;
const supabaseKey = envConfig.VITE_SUPABASE_PUBLISHABLE_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('Erreur: Variables d\'environnement manquantes dans .env');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

// Données de test avec email valide
const testUser = {
  email: 'testuser' + Date.now() + '@gmail.com',
  password: 'TestPassword123!',
  firstName: 'Test',
  lastName: 'User',
  phone: '+213123456789',
  gender: 'homme'
};

async function traceInscription() {
  console.log('🧪 Début du test d\'inscription pour :', testUser.email);
  console.log('Données envoyées :', testUser);

  try {
    // 1. Inscription
    console.log('\n1️⃣ Inscription...');
    const { data: authData, error: authError } = await supabase.auth.signUp({
      email: testUser.email,
      password: testUser.password,
      options: {
        data: {
          first_name: testUser.firstName,
          last_name: testUser.lastName,
          full_name: `${testUser.firstName} ${testUser.lastName}`,
          phone: testUser.phone,
          gender: testUser.gender,
          accept_newsletter: false
        }
      }
    });

    if (authError) {
      console.error('❌ Erreur d\'inscription:', authError);
      return;
    }

    console.log('✅ Inscription réussie');
    console.log('User ID:', authData.user?.id);
    console.log('Métadonnées auth:', authData.user?.user_metadata);

    // Attendre un peu pour que les triggers se déclenchent
    await new Promise(resolve => setTimeout(resolve, 2000));

    // 2. Vérifier le profil créé
    console.log('\n2️⃣ Vérification du profil créé...');
    const { data: profileData, error: profileError } = await supabase
      .from('profiles')
      .select('*')
      .eq('user_id', authData.user?.id)
      .single();

    if (profileError) {
      console.error('❌ Erreur lors de la récupération du profil:', profileError);
      return;
    }

    console.log('✅ Profil trouvé:');
    console.log('  - user_id:', profileData.user_id);
    console.log('  - first_name:', profileData.first_name);
    console.log('  - last_name:', profileData.last_name);
    console.log('  - phone:', profileData.phone);
    console.log('  - gender:', profileData.gender);
    console.log('  - display_name:', profileData.display_name);

    // 3. Comparaison
    console.log('\n3️⃣ Comparaison des données:');
    console.log('Prénom - Attendu:', testUser.firstName, '| Reçu:', profileData.first_name);
    console.log('Nom - Attendu:', testUser.lastName, '| Reçu:', profileData.last_name);
    console.log('Téléphone - Attendu:', testUser.phone, '| Reçu:', profileData.phone);
    console.log('Genre - Attendu:', testUser.gender, '| Reçu:', profileData.gender);

    // 4. Nettoyage
    console.log('\n4️⃣ Nettoyage du compte de test...');
    if (authData.user?.id) {
      console.log('ℹ️ Pour supprimer le compte de test, utilisez la console Supabase');
    }

  } catch (error) {
    console.error('❌ Erreur inattendue:', error);
  }
}

// Exécuter le test
traceInscription();
