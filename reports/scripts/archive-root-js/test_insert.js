// Test simple d'insertion dans Supabase
require('dotenv').config();

const { createClient } = require('@supabase/supabase-js');

const SUPABASE_URL = "https://smsvybphkdxzvgawzoru.supabase.co";
const SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g";

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function testInsertion() {
    console.log('🧪 TEST D\'INSERTION SIMPLE\n');
    
    const testData = {
        id: 'test-categorie-fr',
        name: 'Test Catégorie',
        slug: 'test-categorie',
        parent_id: null,
        level: 0,
        langue: 'fr',
        description: 'Test description',
        icon: null,
        image_url: null,
        position_order: 0,
        is_active: true,
        id_uuid: null,
        parent_id_uuid: null
    };
    
    try {
        console.log('📋 Données de test:', testData);
        
        const { data, error } = await supabase
            .from('categories')
            .insert([testData])
            .select();
            
        if (error) {
            console.error('❌ Erreur insertion:', error.message);
            console.error('📊 Code erreur:', error.code);
            console.error('🔍 Détails:', error.details);
            return false;
        }
        
        console.log('✅ Insertion réussie !');
        console.log('📊 Données retournées:', data);
        
        // Nettoyer
        await supabase
            .from('categories')
            .delete()
            .eq('id', 'test-categorie-fr');
            
        console.log('🧹 Test nettoyé');
        return true;
        
    } catch (error) {
        console.error('❌ Erreur fatale:', error.message);
        return false;
    }
}

testInsertion().then(success => {
    console.log(success ? '\n✅ Test réussi !' : '\n❌ Test échoué');
    process.exit(success ? 0 : 1);
});