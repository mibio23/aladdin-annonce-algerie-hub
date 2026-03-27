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

async function checkTableStructure() {
  try {
    console.log('🔍 Vérification de la structure de la table categories...');
    
    // Try to get table information
    const { data, error } = await supabase
      .from('categories')
      .select('*')
      .limit(1);

    if (error) {
      console.error('❌ Erreur lors de la vérification:', error);
      return;
    }

    if (data && data.length > 0) {
      console.log('📊 Structure actuelle des colonnes:');
      const columns = Object.keys(data[0]);
      console.log('Colonnes existantes:', columns);
      
      if (!columns.includes('level')) {
        console.log('⚠️  La colonne "level" n\'existe pas encore.');
        console.log('💡 Vous devez ajouter la colonne "level" manuellement via le tableau de bord Supabase.');
        console.log('🔗 Instructions:');
        console.log('1. Allez dans votre tableau de bord Supabase');
        console.log('2. Naviguez vers votre projet → Table Editor → categories');
        console.log('3. Cliquez sur "New Column"');
        console.log('4. Nom: level, Type: int8, Default: 0');
        console.log('5. Cliquez sur "Save"');
      } else {
        console.log('✅ La colonne "level" existe déjà!');
      }
    } else {
      console.log('ℹ️  Aucune donnée dans la table pour vérifier la structure.');
    }
  } catch (error) {
    console.error('❌ Erreur:', error);
  }
}

// Run the check
checkTableStructure();