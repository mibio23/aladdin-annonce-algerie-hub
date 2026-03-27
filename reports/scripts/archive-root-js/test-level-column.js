import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';

dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseKey = process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseKey) {
  console.error('❌ Variables d\'environnement Supabase manquantes');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseKey);

async function testLevelColumn() {
  try {
    console.log('🧪 Test d\'insertion avec colonne level...');
    
    // Try to insert a test category with level column
    const { data, error } = await supabase
      .from('categories')
      .insert({
        name: 'Test Category',
        slug: 'test-category',
        id_uuid: 'test-uuid-123',
        parent_id: null,
        level: 0,
        created_at: new Date().toISOString(),
        updated_at: new Date().toISOString()
      })
      .select();

    if (error) {
      if (error.code === 'PGRST204') {
        console.log('❌ La colonne "level" n\'existe pas dans la table categories.');
        console.log('');
        console.log('📝 Pour ajouter la colonne "level", suivez ces étapes:');
        console.log('');
        console.log('1. 🌐 Ouvrez votre tableau de bord Supabase');
        console.log('2. 📊 Allez dans "Table Editor"');
        console.log('3. 🗂️  Cliquez sur la table "categories"');
        console.log('4. ➕ Cliquez sur "New Column"');
        console.log('5. 🏷️  Configurez la colonne:');
        console.log('   - Name: level');
        console.log('   - Type: int8 (integer)');
        console.log('   - Default Value: 0');
        console.log('   - Allow Nullable: ✅');
        console.log('6. 💾 Cliquez sur "Save"');
        console.log('');
        console.log('🔄 Une fois la colonne ajoutée, réexécutez le script de migration.');
      } else {
        console.error('❌ Erreur lors de l\'insertion:', error);
      }
      return;
    }

    if (data) {
      console.log('✅ Test réussi! La colonne "level" existe.');
      console.log('🗑️  Suppression du test...');
      
      // Clean up the test category
      await supabase
        .from('categories')
        .delete()
        .eq('slug', 'test-category');
      
      console.log('✅ Test terminé avec succès!');
    }
  } catch (error) {
    console.error('❌ Erreur:', error);
  }
}

testLevelColumn();