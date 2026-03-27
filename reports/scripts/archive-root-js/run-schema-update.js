
import { createClient } from '@supabase/supabase-js';
import { readFileSync } from 'fs';
import { config } from 'dotenv';

config();

const supabaseUrl = process.env.VITE_SUPABASE_URL || 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY || 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

const sqlFile = '03-ensure-announcements-schema.sql';

async function run() {
  try {
    console.log(`Reading ${sqlFile}...`);
    const sql = readFileSync(sqlFile, 'utf8');
    
    // Remove transaction blocks as they might fail via RPC
    const cleanSql = sql
      .replace(/BEGIN;/g, '')
      .replace(/COMMIT;/g, '')
      .trim();
      
    console.log('Executing SQL...');
    
    // Split by semicolon to execute statements individually if needed
    // But for ALTER TABLE, we often can run them in batch if separated by ;
    // However, RPC usually takes one statement or a block.
    // Let's try the execute_sql RPC first
    
    const { error } = await supabase.rpc('execute_sql', { sql_statement: cleanSql });
    
    if (error) {
      console.error('Error executing SQL via RPC:', error);
      console.log('Trying to execute statements individually...');
      
      const statements = cleanSql.split(';')
        .map(s => s.trim())
        .filter(s => s.length > 0 && !s.startsWith('--'));
        
      for (const stmt of statements) {
        console.log(`Executing: ${stmt.substring(0, 50)}...`);
        const { error: stmtError } = await supabase.rpc('execute_sql', { sql_statement: stmt });
        if (stmtError) {
           // Fallback to REST if RPC fails (unlikely to work for DDL but worth a log)
           console.error(`  Failed: ${stmtError.message}`);
        } else {
           console.log('  Success');
        }
      }
    } else {
      console.log('Success!');
    }
  } catch (err) {
    console.error('Script failed:', err);
  }
}

run();
