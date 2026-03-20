// Script pour vérifier et ajouter la colonne level à la table categories

import { createClient } from '@supabase/supabase-js';

// Configuration Supabase
const supabaseUrl = process.env.VITE_SUPABASE_URL || 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkAndFixCategoriesTable() {
  console.log('🔍 Vérification de la structure de la table categories...');
  
  try {
    // Vérifier si la colonne level existe
    const { data, error } = await supabase
      .rpc('information_schema_check', {
        table_name: 'categories',
        column_name: 'level'
      });

    if (error) {
      console.log('La colonne level n\'existe pas, tentative d\'ajout...');
      
      // Ajouter la colonne level
      const { error: alterError } = await supabase.rpc('exec_sql', {
        sql: `
          ALTER TABLE categories 
          ADD COLUMN IF NOT EXISTS level INTEGER NOT NULL DEFAULT 0;
        `
      });

      if (alterError) {
        console.error('Erreur lors de l\'ajout de la colonne level:', alterError);
        return false;
      }
      
      console.log('✅ Colonne level ajoutée avec succès');
      return true;
    }
    
    console.log('✅ La colonne level existe déjà');
    return true;
  } catch (error) {
    console.error('Erreur lors de la vérification:', error);
    
    // Tentative alternative avec une requête directe
    try {
      console.log('🔄 Tentative alternative pour ajouter la colonne level...');
      
      // Utiliser une requête SQL directe
      const response = await fetch(`${supabaseUrl}/rest/v1/rpc/exec_sql`, {
        method: 'POST',
        headers: {
          'apikey': supabaseKey,
          'Authorization': `Bearer ${supabaseKey}`,
          'Content-Type': 'application/json'
        },
        body: JSON.stringify({
          sql: 'ALTER TABLE categories ADD COLUMN IF NOT EXISTS level INTEGER NOT NULL DEFAULT 0;'
        })
      });

      if (response.ok) {
        console.log('✅ Colonne level ajoutée avec succès (méthode alternative)');
        return true;
      } else {
        console.error('Échec de l\'ajout de la colonne level:', response.statusText);
        return false;
      }
    } catch (altError) {
      console.error('Erreur avec la méthode alternative:', altError);
      return false;
    }
  }
}

// Exécuter la vérification
checkAndFixCategoriesTable().then(success => {
  if (success) {
    console.log('\n✅ Vérification terminée avec succès');
  } else {
    console.log('\n❌ Problème lors de la vérification');
  }
}).catch(console.error);