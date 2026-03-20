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

async function addLevelColumn() {
  try {
    console.log('🔄 Ajout de la colonne "level" à la table categories...');
    
    // Utiliser une requête SQL pour ajouter la colonne level
    const { data, error } = await supabase.rpc('exec_sql', {
      sql: `
        ALTER TABLE categories 
        ADD COLUMN IF NOT EXISTS level INTEGER DEFAULT 0;
      `
    });

    if (error) {
      console.error('❌ Erreur lors de l\'ajout de la colonne level:', error);
      return;
    }

    console.log('✅ Colonne "level" ajoutée avec succès!');
  } catch (error) {
    console.error('❌ Erreur:', error);
  }
}

// Alternative method using direct SQL if rpc doesn't work
async function addLevelColumnDirect() {
  try {
    console.log('🔄 Tentative alternative pour ajouter la colonne "level"...');
    
    // Using the SQL editor approach through Supabase client
    const { error } = await supabase
      .from('categories')
      .select('*')
      .limit(1);

    if (error && error.code === 'PGRST204') {
      console.log('📋 La colonne "level" n\'existe pas encore. Création en cours...');
      
      // Try to execute SQL through a different approach
      const response = await fetch(`${supabaseUrl}/rest/v1/sql`, {
        method: 'POST',
        headers: {
          'Authorization': `Bearer ${supabaseKey}`,
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        },
        body: JSON.stringify({
          query: 'ALTER TABLE categories ADD COLUMN IF NOT EXISTS level INTEGER DEFAULT 0;'
        })
      });

      if (response.ok) {
        console.log('✅ Colonne "level" ajoutée avec succès via SQL direct!');
      } else {
        console.error('❌ Erreur SQL:', await response.text());
      }
    }
  } catch (error) {
    console.error('❌ Erreur lors de la vérification:', error);
  }
}

// Run the function
console.log('🚀 Début de l\'ajout de la colonne level...');
addLevelColumn().then(() => {
  console.log('✅ Opération terminée');
}).catch(console.error);