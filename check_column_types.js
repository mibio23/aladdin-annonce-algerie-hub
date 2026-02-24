// Vérifier les types de colonnes exacts
require('dotenv').config();

const { createClient } = require('@supabase/supabase-js');

const SUPABASE_URL = "https://smsvybphkdxzvgawzoru.supabase.co";
const SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g";

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

async function checkColumnTypes() {
    console.log('🔍 VÉRIFICATION DES TYPES DE COLONNES\n');
    
    try {
        // Obtenir les types de colonnes via information_schema
        const { data: columns, error } = await supabase
            .from('information_schema.columns')
            .select('column_name, data_type, is_nullable, column_default')
            .eq('table_name', 'categories')
            .order('ordinal_position');
            
        if (error) {
            console.log('❌ Erreur:', error.message);
            return;
        }
        
        if (columns) {
            console.log('📋 Structure complète avec types:');
            console.log('='.repeat(60));
            columns.forEach(col => {
                console.log(`  - ${col.column_name.padEnd(20)}: ${col.data_type.padEnd(15)} ${col.is_nullable === 'NO' ? 'NOT NULL' : 'NULL'.padEnd(8)} ${col.column_default ? 'DEFAULT: ' + col.column_default : ''}`);
            });
            console.log('='.repeat(60));
            
            // Vérifier le type de la colonne id
            const idColumn = columns.find(c => c.column_name === 'id');
            if (idColumn) {
                console.log(`\n🎯 Colonne ID: ${idColumn.data_type}`);
                
                if (idColumn.data_type === 'bigint') {
                    console.log('⚠️  La colonne id est bigint ! Nous devons utiliser des nombres.');
                } else if (idColumn.data_type === 'text') {
                    console.log('✅ La colonne id est text, parfait !');
                }
            }
        }
        
    } catch (error) {
        console.log('❌ Erreur:', error.message);
    }
}

checkColumnTypes();