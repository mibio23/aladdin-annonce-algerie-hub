
import { createClient } from '@supabase/supabase-js';

const supabaseUrl = 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

async function verifyTables() {
  console.log('🔍 Vérification des tables de messagerie...');

  try {
    // Vérification de la table 'conversations'
    const { data: conversations, error: conversationsError } = await supabase
      .from('conversations')
      .select('count')
      .limit(1);

    if (conversationsError) {
      console.error('❌ Table "conversations" non trouvée ou erreur:', conversationsError.message);
    } else {
      console.log('✅ Table "conversations" existe.');
    }

    // Vérification de la table 'messages'
    const { data: messages, error: messagesError } = await supabase
      .from('messages')
      .select('count')
      .limit(1);

    if (messagesError) {
      console.error('❌ Table "messages" non trouvée ou erreur:', messagesError.message);
    } else {
      console.log('✅ Table "messages" existe.');
    }

  } catch (err) {
    console.error('❌ Erreur inattendue:', err);
  }
}

verifyTables();
