
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

async function verifyProfileStructure() {
  console.log('🔍 Vérification de la structure de la table profiles...');

  const columnsToCheck = [
    'id', 'user_id', 'first_name', 'last_name', 'email', 'phone', 'gender', 
    'display_name', 'date_of_birth', 'profession', 'bio', 
    'phone_secondary', 'phone_tertiary', 'address', 'commune', 'wilaya' 
  ];

  const { data, error } = await supabase
    .from('profiles')
    .select(columnsToCheck.join(','))
    .limit(1);

  if (error) {
    console.error('❌ Erreur lors de la vérification:', error.message);
    
    // Essayer de trouver quelles colonnes manquent
    const { data: allData } = await supabase
        .from('profiles')
        .select('*')
        .limit(1);
        
    if (allData && allData.length > 0) {
        const existingColumns = Object.keys(allData[0]);
        const missingColumns = columnsToCheck.filter(col => !existingColumns.includes(col));
        
        if (missingColumns.length > 0) {
            console.error('❌ Colonnes manquantes détectées :', missingColumns);
        } else {
            console.log('⚠️ Erreur étrange, peut-être une permission RLS ?');
        }
    } else {
        console.log('⚠️ Impossible de vérifier les colonnes (table vide ou inaccessible).');
    }
  } else {
    console.log('✅ Toutes les colonnes attendues sont présentes et accessibles.');
  }
}

verifyProfileStructure();
