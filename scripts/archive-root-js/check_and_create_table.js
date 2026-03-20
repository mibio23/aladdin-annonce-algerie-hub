// Script pour diagnostiquer et créer la table correctement
require('dotenv').config();

const { createClient } = require('@supabase/supabase-js');

// Configuration Supabase
const SUPABASE_URL = "https://smsvybphkdxzvgawzoru.supabase.co";
const SUPABASE_ANON_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g";

const supabase = createClient(SUPABASE_URL, SUPABASE_ANON_KEY);

/**
 * Vérifier l'existence de la table et sa structure
 */
async function checkTableStructure() {
    console.log('🔍 VÉRIFICATION DE LA STRUCTURE DE LA BASE\n');
    
    try {
        // Essayer de lister toutes les tables
        const { data: tables, error: tablesError } = await supabase
            .rpc('get_tables');
            
        if (tables) {
            console.log('📊 Tables existantes:');
            tables.forEach(table => {
                console.log(`  - ${table.table_name}`);
            });
        }
        
    } catch (error) {
        console.log('ℹ️  Impossible de lister automatiquement les tables');
    }
    
    // Vérifier si la table categories existe
    try {
        const { data, error } = await supabase
            .from('categories')
            .select('*')
            .limit(1);
            
        if (error) {
            console.log('\n❌ La table categories n\'existe pas ou a une erreur:', error.message);
            return false;
        }
        
        console.log('\n✅ La table categories existe !');
        
        // Obtenir la structure des colonnes
        try {
            const { data: columns, error: columnsError } = await supabase
                .rpc('get_table_columns', { table_name: 'categories' });
                
            if (columns) {
                console.log('\n📋 Structure actuelle:');
                columns.forEach(col => {
                    console.log(`  - ${col.column_name}: ${col.data_type}`);
                });
            }
        } catch (colError) {
            console.log('ℹ️  Impossible d\'obtenir la structure automatiquement');
        }
        
        return true;
        
    } catch (error) {
        console.log('\n❌ Erreur lors de la vérification:', error.message);
        return false;
    }
}

/**
 * Créer la table avec une approche très simple
 */
async function createTableSimple() {
    console.log('\n🏗️  CRÉATION DE LA TABLE CATEGORIES\n');
    
    // SQL très simple sans mot réservé
    const createSQL = `
        DROP TABLE IF EXISTS categories;
        
        CREATE TABLE categories (
            id TEXT NOT NULL,
            name TEXT NOT NULL,
            slug TEXT NOT NULL,
            parent_id TEXT,
            level INTEGER DEFAULT 0,
            langue TEXT NOT NULL,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
            updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
        );
    `;
    
    console.log('📋 SQL à exécuter dans Supabase:');
    console.log('='.repeat(60));
    console.log(createSQL);
    console.log('='.repeat(60));
    
    console.log('\n📌 Instructions:');
    console.log('1. Allez dans Supabase → SQL Editor');
    console.log('2. Copiez-collez le SQL ci-dessus');
    console.log('3. Cliquez sur "RUN"');
    console.log('4. Revenez ici et tapez "node check_and_create_table.js verify"');
}

/**
 * Vérifier après création
 */
async function verifyAfterCreation() {
    console.log('\n🔍 VÉRIFICATION APRÈS CRÉATION\n');
    
    try {
        // Test simple
        const { data, error } = await supabase
            .from('categories')
            .select('*')
            .limit(1);
            
        if (error) {
            console.log('❌ Erreur:', error.message);
            return false;
        }
        
        console.log('✅ La table fonctionne !');
        
        // Test d'insertion
        const testData = {
            id: 'test-cat',
            name: 'Test Catégorie',
            slug: 'test-categorie',
            parent_id: null,
            level: 0,
            langue: 'fr'
        };
        
        const { data: insertData, error: insertError } = await supabase
            .from('categories')
            .insert([testData])
            .select();
            
        if (insertError) {
            console.log('❌ Erreur insertion test:', insertError.message);
            return false;
        }
        
        console.log('✅ Insertion test réussie !');
        
        // Nettoyer le test
        await supabase
            .from('categories')
            .delete()
            .eq('id', 'test-cat');
            
        console.log('✅ Test terminé, table prête !');
        return true;
        
    } catch (error) {
        console.log('❌ Erreur:', error.message);
        return false;
    }
}

// Fonction principale
async function main() {
    const command = process.argv[2];
    
    if (command === 'verify') {
        const success = await verifyAfterCreation();
        process.exit(success ? 0 : 1);
    } else {
        const exists = await checkTableStructure();
        
        if (!exists) {
            await createTableSimple();
        } else {
            console.log('\n✅ La table existe déjà et semble fonctionner !');
            console.log('\n🔄 Vous pouvez maintenant lancer:');
            console.log('   node migrate_to_supabase_fixed.js');
        }
    }
}

if (require.main === module) {
    main().catch(error => {
        console.error('❌ Erreur fatale:', error);
        process.exit(1);
    });
}