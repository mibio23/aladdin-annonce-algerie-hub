const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(
  'https://smsvybphkdxzvgawzoru.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0NzIxOTUwNiwiZXhwIjoyMDYyNzk1NTA2fQ.HTwGjtsglGgQhrkneTmWGmP40y0bAKSl26h5fRuOs54'
);

async function checkExistingTables() {
  console.log('🔍 Vérification complète de la structure de la base de données...\n');
  
  try {
    // Utiliser une requête SQL directe pour voir toutes les tables
    const { data, error } = await supabase.rpc('exec_sql', {
      sql: `
        SELECT table_name, table_type 
        FROM information_schema.tables 
        WHERE table_schema = 'public' 
        ORDER BY table_name;
      `
    });
    
    if (error) {
      console.log('❌ Erreur SQL:', error.message);
      return;
    }
    
    console.log('📋 Tables trouvées dans la base de données:');
    if (data && data.length > 0) {
      data.forEach(table => {
        console.log(`  - ${table.table_name} (${table.table_type})`);
      });
    } else {
      console.log('  Aucune table trouvée');
    }
    
    // Vérifier aussi les vues et autres objets
    const { data: objectsData } = await supabase.rpc('exec_sql', {
      sql: `
        SELECT table_name 
        FROM information_schema.tables 
        WHERE table_schema = 'public' 
        AND table_name LIKE '%shop%' 
        ORDER BY table_name;
      `
    });
    
    if (objectsData && objectsData.length > 0) {
      console.log('\n🏪 Objets contenant "shop":');
      objectsData.forEach(obj => {
        console.log(`  - ${obj.table_name}`);
      });
    }
    
    console.log('\n💡 Analyse:');
    console.log('  - Si vous ne voyez pas "shops", la table n\'existe pas');
    console.log('  - Vérifiez dans votre dashboard Supabase la structure complète');
    console.log('  - Il se peut que les tables aient des noms différents');
    
  } catch (err) {
    console.error('❌ Erreur générale:', err);
  }
}

checkExistingTables();