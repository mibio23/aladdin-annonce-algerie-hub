
import { createClient } from '@supabase/supabase-js';
import fs from 'fs';
import path from 'path';

const supabaseUrl = 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

async function runMigration() {
  const migrationPath = path.join(process.cwd(), 'supabase', 'migrations', '20260111_create_messages_table.sql');
  
  try {
    const sqlContent = fs.readFileSync(migrationPath, 'utf8');
    console.log(`Lecture du fichier de migration: ${migrationPath}`);
    
    // Essayer d'exécuter tout le bloc d'un coup
    console.log('Tentative d\'exécution via RPC exec_sql...');
    const { error } = await supabase.rpc('exec_sql', { sql: sqlContent });
    
    if (error) {
      console.error('❌ Erreur lors de l\'exécution:', error.message);
      // Fallback: Essayer sql_query paramètre
      console.log('Tentative avec le paramètre sql_query...');
      const { error: error2 } = await supabase.rpc('exec_sql', { sql_query: sqlContent });
      if (error2) {
          console.error('❌ Erreur lors de la seconde tentative:', error2.message);
      } else {
          console.log('✅ Migration appliquée avec succès (via sql_query)!');
      }
    } else {
      console.log('✅ Migration appliquée avec succès!');
    }
    
  } catch (err) {
    console.error('❌ Erreur inattendue:', err);
  }
}

runMigration();
