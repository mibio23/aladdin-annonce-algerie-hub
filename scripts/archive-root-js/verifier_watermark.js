// Script pour vérifier si une fonction watermark existe dans Supabase
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

async function verifierWatermark() {
  console.log('🔍 Vérification des fonctions et tables liées au watermark...');
  
  try {
    // 1. Vérifier s'il existe une table ou fonction watermark
    const { data: functions, error: funcError } = await supabase
      .rpc('pg_proc', { proname: 'watermark' })
      .select('*');
    
    if (!funcError && functions && functions.length > 0) {
      console.log('✅ Fonction watermark trouvée dans pg_proc');
      console.log('Détails:', functions);
      return;
    }
    
    // 2. Vérifier dans les tables système PostgreSQL
    const { data: pgFunctions, error: pgError } = await supabase
      .from('pg_proc')
      .select('proname, prosrc')
      .ilike('proname', '%watermark%');
    
    if (!pgError && pgFunctions && pgFunctions.length > 0) {
      console.log('✅ Fonctions contenant "watermark" trouvées:');
      pgFunctions.forEach(func => {
        console.log(`  - ${func.proname}`);
      });
      return;
    }
    
    // 3. Vérifier s'il existe une table watermark
    const { data: tables, error: tableError } = await supabase
      .from('information_schema.tables')
      .select('table_name')
      .ilike('table_name', '%watermark%');
    
    if (!tableError && tables && tables.length > 0) {
      console.log('✅ Tables contenant "watermark" trouvées:');
      tables.forEach(table => {
        console.log(`  - ${table.table_name}`);
      });
      return;
    }
    
    // 4. Vérifier dans les colonnes
    const { data: columns, error: colError } = await supabase
      .from('information_schema.columns')
      .select('table_name, column_name')
      .ilike('column_name', '%watermark%');
    
    if (!colError && columns && columns.length > 0) {
      console.log('✅ Colonnes contenant "watermark" trouvées:');
      columns.forEach(col => {
        console.log(`  - ${col.table_name}.${col.column_name}`);
      });
      return;
    }
    
    // 5. Vérifier dans les triggers ou règles
    const { data: triggers, error: trigError } = await supabase
      .from('pg_trigger')
      .select('tgname')
      .ilike('tgname', '%watermark%');
    
    if (!trigError && triggers && triggers.length > 0) {
      console.log('✅ Triggers contenant "watermark" trouvés:');
      triggers.forEach(trig => {
        console.log(`  - ${trig.tgname}`);
      });
      return;
    }
    
    console.log('ℹ️ Aucune fonction, table ou colonne "watermark" trouvée dans Supabase');
    
    // 6. Vérifier les tables principales pour voir s'il y a des champs de type watermark
    console.log('\n📋 Vérification des champs possibles dans les tables principales:');
    
    const tablesPrincipales = ['annonces', 'categories', 'utilisateurs', 'images'];
    
    for (const tableName of tablesPrincipales) {
      try {
        const { data: tableData, error: tableCheckError } = await supabase
          .from(tableName)
          .select('*')
          .limit(1);
        
        if (!tableCheckError && tableData && tableData.length > 0) {
          const columns = Object.keys(tableData[0]);
          const watermarkLikeColumns = columns.filter(col => 
            col.toLowerCase().includes('water') || 
            col.toLowerCase().includes('mark') ||
            col.toLowerCase().includes('signature') ||
            col.toLowerCase().includes('logo')
          );
          
          if (watermarkLikeColumns.length > 0) {
            console.log(`  📊 ${tableName}: colonnes similaires trouvées:`, watermarkLikeColumns);
          }
        }
      } catch (err) {
        // Table n'existe pas ou autre erreur
      }
    }
    
  } catch (error) {
    console.error('❌ Erreur lors de la vérification:', error.message);
  }
}

verifierWatermark();