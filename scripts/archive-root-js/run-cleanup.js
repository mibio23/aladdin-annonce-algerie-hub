
import { createClient } from '@supabase/supabase-js';
import { readFileSync } from 'fs';
import { join } from 'path';
import { config } from 'dotenv';

config();

const supabaseUrl = process.env.VITE_SUPABASE_URL || 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

const sqlFile = '02-cleanup-general-full.sql';

async function run() {
  try {
    console.log(`Reading ${sqlFile}...`);
    const sql = readFileSync(sqlFile, 'utf8');
    
    console.log('Executing SQL via execute_sql RPC (trying sql_statement parameter)...');
    const { error } = await supabase.rpc('execute_sql', { sql_statement: sql });
    
    if (error) {
      console.error('Error executing SQL:', error);
      console.log('Retrying with exec_sql and sql parameter...');
      const { error: error2 } = await supabase.rpc('exec_sql', { sql: sql });
      
      if (error2) {
         console.error('Error executing SQL (retry):', error2);
         console.log('Attempting to run statements individually...');
      
         // Split by semicolon and run valid statements
         const statements = sql.split(';')
           .map(s => s.trim())
           .filter(s => s.length > 0 && !s.startsWith('--') && !s.startsWith('BEGIN') && !s.startsWith('COMMIT'));
           
         for (const stmt of statements) {
            // Try to run via RPC again if possible, or just log that we can't
            // Without a valid RPC or direct connection, we can't do much from node.
            console.log('Skipping individual statement execution as exec_sql failed.');
         }
         
         console.log('\n!!! PLEASE RUN THE CONTENT OF 02-cleanup-general-full.sql IN SUPABASE SQL EDITOR MANUALLY !!!');
      }
    } else {
      console.log('Success!');
    }
  } catch (err) {
    console.error('Script failed:', err);
  }
}

run();
