
require('dotenv').config();
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = process.env.VITE_SUPABASE_URL || 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

async function checkTable() {
  console.log('Checking announcements table structure...');
  
  // We can't directly query information_schema easily via js client without rpc usually, 
  // but we can try to select one row and see what comes back, or try to insert and fail.
  // Better: use a query that we know works to get column info if possible, or just check a known record.
  
  // But wait, we can use the RPC 'exec_sql' if it works (it failed before).
  // Let's try to just select * from announcements limit 1 to see keys.
  
  const { data, error } = await supabase
    .from('announcements')
    .select('*')
    .limit(1);
    
  if (error) {
    console.error('Error fetching announcements:', error);
  } else if (data && data.length > 0) {
    console.log('Columns found in announcements table:');
    console.log(Object.keys(data[0]).join(', '));
  } else {
    console.log('No data in announcements table to infer columns.');
    // Try to get definition via error message? No.
  }
}

checkTable();
