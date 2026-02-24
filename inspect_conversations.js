
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

async function inspectConversationsTable() {
  console.log('🔍 Inspection de la structure de la table conversations...');

  try {
    // Tenter de récupérer une ligne pour voir les clés disponibles
    const { data, error } = await supabase
      .from('conversations')
      .select('*')
      .limit(1);

    if (error) {
      console.error('❌ Erreur lors de la lecture:', error.message);
      return;
    }

    if (data && data.length > 0) {
      console.log('✅ Colonnes trouvées:', Object.keys(data[0]));
    } else {
      console.log('⚠️ Table vide, impossible de déduire les colonnes par lecture directe.');
      // Fallback: Essayer d'insérer une donnée bidon pour provoquer une erreur explicite sur les colonnes manquantes
      // ou utiliser une requête RPC si possible pour décrire la table (mais souvent restreint).
    }

  } catch (err) {
    console.error('❌ Erreur inattendue:', err);
  }
}

inspectConversationsTable();
