const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(
  'https://smsvybphkdxzvgawzoru.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0NzIxOTUwNiwiZXhwIjoyMDYyNzk1NTA2fQ.HTwGjtsglGgQhrkneTmWGmP40y0bAKSl26h5fRuOs54'
);

async function checkDatabaseStructure() {
  console.log('🔍 Vérification de la structure de la base de données...\n');
  
  try {
    // Vérifier toutes les tables existantes
    const { data: tables, error } = await supabase
      .from('information_schema.tables')
      .select('table_name')
      .eq('table_schema', 'public')
      .order('table_name');
    
    if (error) {
      console.log('❌ Erreur lors de la vérification:', error.message);
      return;
    }
    
    console.log('📋 Tables existantes dans la base de données:');
    tables.forEach(table => {
      console.log(`  - ${table.table_name}`);
    });
    
    // Vérifier spécifiquement shops
    const shopsExists = tables.some(table => table.table_name === 'shops');
    console.log(`\n🏪 Table commerces (shops): ${shopsExists ? '✅ EXISTE' : '❌ N\'EXISTE PAS'}`);
    
    // Vérifier spécifiquement pro_favorites
    const proFavExists = tables.some(table => table.table_name === 'pro_favorites');
    console.log(`⭐ Table favoris professionnels (pro_favorites): ${proFavExists ? '✅ EXISTE' : '❌ N\'EXISTE PAS'}`);
    
    // Si shops existe, vérifier ses colonnes
    if (shopsExists) {
      console.log('\n📊 Colonnes de la table commerces (shops):');
      const { data: columns } = await supabase
        .from('information_schema.columns')
        .select('column_name, data_type')
        .eq('table_schema', 'public')
        .eq('table_name', 'shops')
        .order('ordinal_position');
      
      columns.forEach(col => {
        console.log(`  - ${col.column_name} (${col.data_type})`);
      });
      
      // Vérifier si followers_count existe
      const followersExists = columns.some(col => col.column_name === 'followers_count');
      console.log(`\n📈 Colonne compteur d'abonnés (followers_count): ${followersExists ? '✅ EXISTE' : '❌ N\'EXISTE PAS'}`);
    }
    
    console.log('\n💡 Recommandations:');
    if (!shopsExists) {
      console.log('  - La table commerces (shops) doit être créée en premier');
    }
    if (!proFavExists) {
      console.log('  - Créer la table favoris professionnels (pro_favorites)');
    }
    if (shopsExists && !followersExists) {
      console.log('  - Ajouter la colonne compteur d\'abonnés (followers_count) à shops');
    }
    
  } catch (err) {
    console.error('❌ Erreur générale:', err);
  }
}

checkDatabaseStructure();