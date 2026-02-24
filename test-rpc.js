
import { createClient } from '@supabase/supabase-js';

const SUPABASE_URL = 'https://smsvybphkdxzvgawzoru.supabase.co';
const SUPABASE_ANON_KEY = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function testRpc() {
  const { data, error } = await supabase.rpc('exec_sql', { sql_query: 'SELECT 1' });
  if (error) {
    console.error('RPC failed:', error.message);
  } else {
    console.log('RPC success:', data);
  }
}

testRpc();
