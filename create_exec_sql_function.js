const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(
  'https://smsvybphkdxzvgawzoru.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0NzIxOTUwNiwiZXhwIjoyMDYyNzk1NTA2fQ.HTwGjtsglGgQhrkneTmWGmP40y0bAKSl26h5fRuOs54'
);

async function createExecSQLFunction() {
  try {
    // Créer la fonction exec_sql d'abord
    const { data, error } = await supabase.rpc('exec_sql', {
      sql: `
        CREATE OR REPLACE FUNCTION public.exec_sql(sql text)
        RETURNS void AS $$
        BEGIN
          EXECUTE sql;
        END;
        $$ LANGUAGE plpgsql SECURITY DEFINER;
      `
    });
    
    if (error) {
      console.log('Erreur création exec_sql:', error.message);
    } else {
      console.log('✅ Fonction exec_sql créée');
    }
    
  } catch (err) {
    console.error('Erreur:', err);
  }
}

createExecSQLFunction();