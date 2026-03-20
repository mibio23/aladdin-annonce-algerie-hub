const { createClient } = require('@supabase/supabase-js');

const supabase = createClient(
  'https://smsvybphkdxzvgawzoru.supabase.co',
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTc0NzIxOTUwNiwiZXhwIjoyMDYyNzk1NTA2fQ.HTwGjtsglGgQhrkneTmWGmP40y0bAKSl26h5fRuOs54'
);

async function verifyFunctionalTables() {
  console.log('🔍 Vérification des tables fonctionnelles créées...\n');
  
  try {
    // 1. Vérifier la table pro_favorites (favoris professionnels)
    console.log('⭐ Vérification table favoris professionnels (pro_favorites):');
    const { data: proFavData, error: proFavError } = await supabase
      .from('pro_favorites')
      .select('*')
      .limit(1);
    
    if (proFavError) {
      console.log(`  ❌ Erreur: ${proFavError.message}`);
    } else {
      console.log('  ✅ Table pro_favorites accessible');
    }
    
    // 2. Vérifier la table shops et sa colonne followers_count
    console.log('\n🏪 Vérification table commerces (shops):');
    const { data: shopsData, error: shopsError } = await supabase
      .from('shops')
      .select('id, name, followers_count')
      .limit(1);
    
    if (shopsError) {
      console.log(`  ❌ Erreur: ${shopsError.message}`);
    } else {
      console.log('  ✅ Table shops accessible');
      if (shopsData && shopsData.length > 0) {
        console.log(`  ✅ Colonne followers_count présente: ${shopsData[0].followers_count}`);
      }
    }
    
    // 3. Test d'insertion dans pro_favorites
    console.log('\n🧪 Test d\'insertion dans favoris professionnels:');
    const testUserId = '00000000-0000-0000-0000-000000000000'; // ID de test
    const testProId = '11111111-1111-1111-1111-111111111111'; // ID de test
    
    const { error: testError } = await supabase
      .from('pro_favorites')
      .insert({
        user_id: testUserId,
        pro_id: testProId
      });
    
    if (testError) {
      console.log(`  ⚠️ Test insertion: ${testError.message}`);
    } else {
      console.log('  ✅ Insertion test réussie');
      
      // Supprimer le test
      await supabase
        .from('pro_favorites')
        .delete()
        .eq('user_id', testUserId)
        .eq('pro_id', testProId);
    }
    
    console.log('\n🎉 Vérification terminée!');
    
  } catch (err) {
    console.error('❌ Erreur générale:', err);
  }
}

verifyFunctionalTables();