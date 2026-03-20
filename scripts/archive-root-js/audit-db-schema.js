
import { createClient } from '@supabase/supabase-js';
import * as dotenv from 'dotenv';

dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || process.env.VITE_SUPABASE_PUBLISHABLE_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Erreur: Configuration Supabase manquante dans le fichier .env');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function auditDatabaseSchema() {
  console.log('🔍 Démarrage de l\'audit complet du schéma Supabase pour le formulaire d\'annonce...\n');

  const tablesToCheck = [
    'announcements',
    'categories',
    'vehicle_details',
    'real_estate_details',
    'appliance_details',
    'fashion_details',
    'multimedia_details'
  ];

  for (const tableName of tablesToCheck) {
    console.log(`--- Vérification de la table : ${tableName} ---`);
    
    // On tente une requête vide pour voir si la table existe et récupérer une ligne d'exemple pour les colonnes
    const { data, error } = await supabase
      .from(tableName)
      .select('*')
      .limit(1);

    if (error) {
      if (error.code === 'PGRST204' || error.message.includes('not find')) {
        console.log(`❌ ERREUR : La table '${tableName}' n'existe pas ou n'est pas accessible.`);
      } else if (error.code === '42P01') {
        console.log(`❌ ERREUR : La table '${tableName}' est manquante dans la base de données.`);
      } else {
        console.log(`⚠️  INFO : Table '${tableName}' accessible mais erreur de requête : ${error.message}`);
      }
    } else {
      console.log(`✅ SUCCÈS : La table '${tableName}' est présente et accessible.`);
      if (data && data.length > 0) {
        console.log(`📊 Colonnes détectées : ${Object.keys(data[0]).join(', ')}`);
      } else {
        console.log(`ℹ️  INFO : Table vide, impossible de lister les colonnes dynamiquement.`);
      }
    }
    console.log('');
  }

  // Vérification spécifique demandée par l'utilisateur (subcategory_id vs slug)
  console.log('--- Vérification spécifique : announcements.subcategory_id ---');
  const { data: annData, error: annError } = await supabase
    .from('announcements')
    .select('subcategory_id')
    .limit(1);

  if (!annError) {
    console.log('✅ Colonne subcategory_id trouvée dans la table announcements.');
  } else {
    console.log('❌ Colonne subcategory_id MANQUANTE dans la table announcements.');
  }

  console.log('\n🏁 Audit terminé.');
}

auditDatabaseSchema();
